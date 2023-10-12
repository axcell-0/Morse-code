class MorseCodeDecoder
    MORSE_TO_LETTER = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
      '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
      '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
      '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
      '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
      '-.--' => 'Y', '--..' => 'Z'
    }.freeze
  
    def decode_char(morse)
      MORSE_TO_LETTER[morse]
    end
  
    def decode_word(morse_word)
      morse_word.split.map { |morse| decode_char(morse) }.join
    end