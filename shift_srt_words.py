import sys
import re

def parse_srt(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    # Split into blocks by double newlines
    blocks = re.split(r'\n{2,}', content.strip())
    subtitles = []
    for block in blocks:
        lines = block.split('\n')
        if len(lines) >= 3:
            index = lines[0]
            timing = lines[1]
            text = lines[2:]
            subtitles.append({'index': index, 'timing': timing, 'text': text})
    return subtitles

def shift_words(subtitles):
    prev_last_word = None
    for i, sub in enumerate(subtitles):
        # Join multi-line text for processing
        text = ' '.join(sub['text'])
        words = text.split()
        if i == 0:
            # First line: just remove the first word
            sub['text'] = [' '.join(words[1:])]
            prev_last_word = words[0] if words else ''
        else:
            # Move first word to previous line
            if words:
                first_word = words[0]
                # Append to previous subtitle
                prev_text = ' '.join(subtitles[i-1]['text'])
                subtitles[i-1]['text'] = [prev_text + ' ' + first_word]
                # Remove first word from current
                sub['text'] = [' '.join(words[1:])]
    return subtitles

def write_srt(subtitles, filename):
    with open(filename, 'w', encoding='utf-8') as f:
        for sub in subtitles:
            f.write(f"{sub['index']}\n")
            f.write(f"{sub['timing']}\n")
            for line in sub['text']:
                f.write(f"{line}\n")
            f.write('\n')

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python shift_srt_words.py input.srt output.srt")
        sys.exit(1)
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    subtitles = parse_srt(input_file)
    shifted = shift_words(subtitles)
    write_srt(shifted, output_file)
    print(f"Processed file saved as {output_file}")
