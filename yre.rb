define :yre do |n|
  sample "C:/Users/davcl/Desktop/yrevocnu.wav", rate: n, amp: 0.6
end

in_thread do
  with_fx :flanger do
    with_fx :wobble do
      loop do
        yre rrand(0.6, 2)
        sleep rrand(0.2, 8)
      end
    end
  end
end

loop do
  sample :ambi_dark_woosh
  sleep 1
end

