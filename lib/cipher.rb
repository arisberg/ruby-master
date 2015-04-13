class Cipher
        def encrypt (message, shift)
            alph = ('a'..'z').to_a
            arr = []
            finalarr = []
            endarr = []
            arr = message.gsub(/\s+/, "").split('')
            arr.each do |i|
                finalarr.push(alph.index(i))
            end
            finalarr.each do |x|
                endarr.push(alph[x + shift])
            end
            return endarr
        end
end

new = Cipher.new
new.encrypt("cat", 2)

