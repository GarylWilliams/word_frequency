class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']
  puts STOP_WORDS.class
  def initialize(filename)
    # nopun_paragraph = {}
        #Stores file as array of lines, lowercase with punctuation removed
    words = File.read(filename).downcase.gsub(/\W+/, ' ').split - STOP_WORDS
    
    # words_array = words.split(' ') - STOP_WORDS



    
    
    
    # clean_words = words.each {|word| words != STOP_WORDS[words]}

    puts words
    


    

    
    
    # nopun_paragraph =  paragraph.gsub(/[^a-z0-9\s]/i, '')
    # p nopun_paragraph
    
        # if word != STOP_WORDS
        #   clean_paragraph.push
        # puts clean_paragraph
       
    

    # # p paragraph
    # words = paragraph.split(" ")
    # frequencies = Hash.new(0)
    # words.each do |word|
    # frequencies[word] += 1
    # puts frequencies
    # end
  end
  

  def frequency(word)
  end

  def frequencies
  end

  def top_words(number)
  end

  def print_report
  end
end

if __FILE__ == $0
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
