alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
input = 'hello';
shiftFactor = 3;

enc = "";
for ii = 1:length(input)
   if(input(ii) == ' ')
        enc = enc + ' ';
   else
       if(strfind(alphabet,input(ii)) == 26)
            enc = enc + alphabet(shiftFactor);
       else
           enc = enc + alphabet(rem(shiftFactor + strfind(alphabet,input(ii)),26));
       end
   end
end

disp(enc);









%dec = '';
%for jj = 1:3
%   if(enc(jj) == ' ')
%        dec = dec + ' ';
%   else
%       if(strfind(alphabet,enc(jj)) < shiftFactor)
%           dec = dec + alphabet(26 - (shiftFactor - strfind(alphabet,enc(jj))));
%           disp(26 - (shiftFactor - strfind(alphabet,enc(jj))));
%       else
%            dec = dec + alphabet(strfind(alphabet,enc(jj)) - shiftFactor);
%       end
%   end
%end