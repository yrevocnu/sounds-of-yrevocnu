define :yre do |n|
  sample "C:/Users/davcl/Desktop/yrevocnu.wav", rate: n, amp: 0.8
end

in_thread do
  with_fx :flanger do
    with_fx :wobble do
      loop do
        rate_sleep = []
        10.times do
          rate_sleep.push([rrand(0.6, 2), rrand(0.2, 8)])
        end
        
        rate_sleep.each do |rate, slp|
          yre rate
          sleep slp
        end
      end
    end
  end
end

in_thread do
  loop do
    sample :bass_woodsy_c
    sleep rrand(1.9, 2.2)
  end
end

in_thread do
  loop do
    sample :bass_hard_c, amp: 0.4, pitch: rrand(1, 8)
    sleep rrand(3.4, 4.5)
  end
end

loop do
  sample :ambi_dark_woosh
  sleep rrand(0.8, 1.2)
end


