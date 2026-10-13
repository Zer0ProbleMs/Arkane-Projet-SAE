#!/usr/bin/env fish

for f in **
	if string match --entire -r '.jpg|.png' $f
		printf "magick \"%s\" \"%s.webp\" \n" $f (string sub -e -4 $f)
		magick "$f" "$(string sub -e -4 $f).webp"
	end
end
