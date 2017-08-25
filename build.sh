#compile command-t using ruby and make
cd ~/.vim/bundle/command-t/ruby/command-t

/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby extconf.rb

make

#compile YouCompleteMe (option)
brew install make
cd ~/.vim/bundle/YouCompleteMe
./install.py 

