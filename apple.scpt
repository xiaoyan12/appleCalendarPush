FasdUAS 1.101.10   ��   ��    k             l     ��  ��    &  �����ı��ļ�·�� ��ʽ������-����     � 	 	 "��Qee�g,e�N���_�  h<_�Y�T -��{�   
  
 l     ��  ��    e _set something to display dialog "������txt�ı����ƣ�txt���ݸ�ʽΪ������-����" default answer ""     �   � s e t   s o m e t h i n g   t o   d i s p l a y   d i a l o g   "����Qe t x te�g,Ty�� t x tQ�[�h<_N:�Y�T -��{� "   d e f a u l t   a n s w e r   " "      l     ��  ��    4 .set textReturned to text returned of something     �   \ s e t   t e x t R e t u r n e d   t o   t e x t   r e t u r n e d   o f   s o m e t h i n g      l     ��������  ��  ��        l     ��  ��    , &if the length of textReturned > 0 then     �   L i f   t h e   l e n g t h   o f   t e x t R e t u r n e d   >   0   t h e n      l     ��������  ��  ��        l     ��   ��     set listOfShows to {}      � ! ! * s e t   l i s t O f S h o w s   t o   { }   " # " l     �� $ %��   $  set dataRecord to {}    % � & & ( s e t   d a t a R e c o r d   t o   { } #  ' ( ' l     �� ) *��   ) j dset Shows to paragraphs of (read POSIX file ("/Users/yanshichao/Desktop/" & textReturned & ".text"))    * � + + � s e t   S h o w s   t o   p a r a g r a p h s   o f   ( r e a d   P O S I X   f i l e   ( " / U s e r s / y a n s h i c h a o / D e s k t o p / "   &   t e x t R e t u r n e d   &   " . t e x t " ) ) (  , - , l     �� . /��   . + %set fileName to textReturned & ".txt"    / � 0 0 J s e t   f i l e N a m e   t o   t e x t R e t u r n e d   &   " . t x t " -  1 2 1 l     �� 3 4��   3 1 +(path to desktop as text) & "contacts2.txt"    4 � 5 5 V ( p a t h   t o   d e s k t o p   a s   t e x t )   &   " c o n t a c t s 2 . t x t " 2  6 7 6 l     �� 8 9��   8 < 6set milefile to ((path to desktop as text) & fileName)    9 � : : l s e t   m i l e f i l e   t o   ( ( p a t h   t o   d e s k t o p   a s   t e x t )   &   f i l e N a m e ) 7  ; < ; l     �� = >��   = 5 /set Shows to paragraphs of (read file milefile)    > � ? ? ^ s e t   S h o w s   t o   p a r a g r a p h s   o f   ( r e a d   f i l e   m i l e f i l e ) <  @ A @ l     �� B C��   B ' !set Shows to (read file milefile)    C � D D B s e t   S h o w s   t o   ( r e a d   f i l e   m i l e f i l e ) A  E F E l     �� G H��   G   set the clipboard to Shows    H � I I 4 s e t   t h e   c l i p b o a r d   t o   S h o w s F  J K J l     �� L M��   L # repeat with nextLine in Shows    M � N N : r e p e a t   w i t h   n e x t L i n e   i n   S h o w s K  O P O l     �� Q R��   Q 0 *set resultArray to theSplit(nextLine, "-")    R � S S T s e t   r e s u l t A r r a y   t o   t h e S p l i t ( n e x t L i n e ,   " - " ) P  T U T l     �� V W��   V  addContacts(resultArray)    W � X X 0 a d d C o n t a c t s ( r e s u l t A r r a y ) U  Y Z Y l     �� [ \��   [  
end repeat    \ � ] ]  e n d   r e p e a t Z  ^ _ ^ l     �� ` a��   ` 
 ����    a � b b e�S� _  c d c l     e���� e I     �������� 0 addcanledar addCanledar��  ��  ��  ��   d  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j 
 else    k � l l  e l s e i  m n m l     �� o p��   o ) #display dialog "�������ı��ļ�����"    p � q q 4 d i s p l a y   d i a l o g   "����Qee�g,e�N�Ty� " n  r s r l     �� t u��   t  end if    u � v v  e n d   i f s  w x w l     ��������  ��  ��   x  y z y l     ��������  ��  ��   z  { | { l     ��������  ��  ��   |  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   �  add contacts func    � � � � " a d d   c o n t a c t s   f u n c �  � � � i      � � � I      �� ����� 0 addcontacts addContacts �  ��� � o      ���� 0 thearray theArray��  ��   � O     @ � � � k    ? � �  � � � r    
 � � � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 thearray theArray � o      ���� 0 thename theName �  � � � r     � � � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 thearray theArray � o      ���� 0 theemail theEmail �  � � � r      � � � I   ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ��
�� 
azf4 � �� ���
�� 
prdt � K     � � �� ���
�� 
azf7 � o    ���� 0 thename theName��  ��   � o      ���� 0 	theperson 	thePerson �  � � � O   ! 9 � � � I  % 8���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   ' (��
�� 
az21 � �� � �
�� 
insh � n   ) - � � �  ;   , - � n   ) , � � � 2  * ,��
�� 
az21 � o   ) *���� 0 	theperson 	thePerson � �� ���
�� 
prdt � K   . 4 � � �� � �
�� 
az18 � m   / 0 � � � � � [�^� � �� ���
�� 
az17 � o   1 2���� 0 theemail theEmail��  ��   � o   ! "���� 0 	theperson 	thePerson �  ��� � I  : ?������
�� .coresavenull���     null��  ��  ��   � m      � ��                                                                                  adrb  alis    V  Macintosh HD               �QH+     GContacts.app                                                     �Ѫ�>        ����  	                Applications    �P��      ѪN�       G  'Macintosh HD:Applications: Contacts.app     C o n t a c t s . a p p    M a c i n t o s h   H D  Applications/Contacts.app   / ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  sperect string func    � � � � & s p e r e c t   s t r i n g   f u n c �  � � � i     � � � I      �� ����� 0 thesplit theSplit �  � � � o      ���� 0 	thestring 	theString �  ��� � o      ���� 0 thedelimiter theDelimiter��  ��   � k      � �  � � � l     �� � ���   � . ( save delimiters to restore old settings    � � � � P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s �  � � � r      � � � n     � � � 1    ��
�� 
txdl � 1     ��
�� 
ascr � o      ���� 0 olddelimiters oldDelimiters �  � � � r     � � � o    ���� 0 thedelimiter theDelimiter � n      � � � 1    
��
�� 
txdl � 1    ��
�� 
ascr �  � � � l   �� � ���   �   create the array    � � � � "   c r e a t e   t h e   a r r a y �  � � � r     � � � n     � � � 2    ��
�� 
citm � o    ���� 0 	thestring 	theString � o      ���� 0 thearray theArray �  � � � l   �� � ���   �   restore the old setting    � � � � 0   r e s t o r e   t h e   o l d   s e t t i n g �  � � � r     � � � o    ���� 0 olddelimiters oldDelimiters � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � l   �� � ���   �   return the result    � � � � $   r e t u r n   t h e   r e s u l t �  ��� � L     � � o    ���� 0 thearray theArray��   �  � � � l     ��������  ��  ��   �  �  � l     ��������  ��  ��     l     ��~�}�  �~  �}    l     �|�|     addCanledar Func    � "   a d d C a n l e d a r   F u n c �{ i    	
	 I      �z�y�x�z 0 addcanledar addCanledar�y  �x  
 k     �  l     �w�v�u�w  �v  �u    l     �t�t    create contact group    � ( c r e a t e   c o n t a c t   g r o u p  O      k      r     l   	�s�r n    	 1    	�q
�q 
wr02 2    �p
�p 
wres�s  �r   o      �o�o &0 allcalendartitles allCalendarTitles �n Z     �m�l!  E    "#" o    �k�k &0 allcalendartitles allCalendarTitles# m    $$ �%% [�^��m  �l  ! I   �j�i&
�j .wrbtaec2null��� ��� null�i  & �h'�g
�h 
wtnm' m    (( �)) [�^��g  �n   m     **�                                                                                  wrbt  alis    V  Macintosh HD               �QH+     GCalendar.app                                                     	G��w4        ����  	                Applications    �P��      ���       G  'Macintosh HD:Applications: Calendar.app     C a l e n d a r . a p p    M a c i n t o s h   H D  Applications/Calendar.app   / ��   +,+ l   �f�e�d�f  �e  �d  , -.- l   �c/0�c  /  
add events   0 �11  a d d   e v e n t s. 232 l   �b45�b  4 # set theDate to (current date)   5 �66 : s e t   t h e D a t e   t o   ( c u r r e n t   d a t e )3 787 O    �9:9 k   # �;; <=< I  # (�a�`�_
�a .miscactvnull��� ��� null�`  �_  = >�^> O   ) �?@? k   0 �AA BCB l  0 0�]DE�]  D . (set timeString to time string of theDate   E �FF P s e t   t i m e S t r i n g   t o   t i m e   s t r i n g   o f   t h e D a t eC GHG l  0 0�\IJ�\  I � �set newEvent to make new event at end with properties {description:"ȥ��ȥ", summary:"һ��Ⱦ� " & timeString, location:"֣��", start date:theDate + 1 * minutes, end date:theDate + 24 * hours, status:none}   J �KK� s e t   n e w E v e n t   t o   m a k e   n e w   e v e n t   a t   e n d   w i t h   p r o p e r t i e s   { d e s c r i p t i o n : "S�NS� " ,   s u m m a r y : "N �wU��R   "   &   t i m e S t r i n g ,   l o c a t i o n : "��]� " ,   s t a r t   d a t e : t h e D a t e   +   1   *   m i n u t e s ,   e n d   d a t e : t h e D a t e   +   2 4   *   h o u r s ,   s t a t u s : n o n e }H LML I  0 5�[N�Z
�[ .sysodelanull��� ��� nmbrN m   0 1�Y�Y �Z  M OPO O   6 �QRQ O   : �STS k   A �UU VWV l  A A�XXY�X  X F @get attribute "AXRoleDescription" of pop over 1 of window "����"   Y �ZZ | g e t   a t t r i b u t e   " A X R o l e D e s c r i p t i o n "   o f   p o p   o v e r   1   o f   w i n d o w   "e�S� "W [\[ O  A N]^] r   E M_`_ m   E F�W
�W boovtrue` n      aba 1   J L�V
�V 
pisfb 4   F J�Uc
�U 
prcsc m   H Idd �ee  C a l e n d a r^ m   A Bff�                                                                                  sevs  alis    �  Macintosh HD               �QH+     'System Events.app                                               ����M        ����  	                CoreServices    �P��      ���       '   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  \ ghg I  O T�Ti�S
�T .sysodelanull��� ��� nmbri m   O P�R�R �S  h jkj I  U \�Ql�P
�Q .prcskprsnull���     ctxtl 1   U X�O
�O 
tab �P  k mnm I  ] j�Nop
�N .prcskprsnull���     ctxto m   ] `qq �rr  ep �Ms�L
�M 
faals m   c f�K
�K eMdsKcmd�L  n tut Y   k �v�Jwx�Iv I  u |�Hy�G
�H .prcskprsnull���     ctxty 1   u x�F
�F 
tab �G  �J 0 counter  w m   n o�E�E x m   o p�D�D �I  u z{z I  � ��C|�B
�C .sysodelanull��� ��� nmbr| m   � ��A�A �B  { }~} I  � ��@�
�@ .prcskprsnull���     ctxt m   � ��� ���  v� �?��>
�? 
faal� m   � ��=
�= eMdsKcmd�>  ~ ��� I  � ��<��;
�< .sysodelanull��� ��� nmbr� m   � ��:�: �;  � ��� l  � ��9�8�7�9  �8  �7  � ��� Y   � ���6���5� I  � ��4��3
�4 .prcskprsnull���     ctxt� 1   � ��2
�2 
tab �3  �6 0 counter  � m   � ��1�1 � m   � ��0�0 �5  � ��� I  � ��/��.
�/ .sysodelanull��� ��� nmbr� m   � ��-�- �.  � ��� I  � ��,��
�, .prcskprsnull���     ctxt� m   � ��� ���   � �+��*
�+ 
faal� m   � ��)
�) eMdsKsft�*  � ��� l  � ��(���(  � < 6click button "����" of pop over 1 of window "Calendar"   � ��� h c l i c k   b u t t o n   "Sѐ "   o f   p o p   o v e r   1   o f   w i n d o w   " C a l e n d a r "� ��'� l  � ��&�%�$�&  �%  �$  �'  T 4   : >�#�
�# 
prcs� m   < =�� ���  C a l e n d a rR m   6 7���                                                                                  sevs  alis    �  Macintosh HD               �QH+     'System Events.app                                               ����M        ����  	                CoreServices    �P��      ���       '   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  P ��"� l  � ��!� ��!  �   �  �"  @ 4   ) -��
� 
wres� m   + ,�� ��� [�^��^  : m     ���                                                                                  wrbt  alis    V  Macintosh HD               �QH+     GCalendar.app                                                     	G��w4        ����  	                Applications    �P��      ���       G  'Macintosh HD:Applications: Calendar.app     C a l e n d a r . a p p    M a c i n t o s h   H D  Applications/Calendar.app   / ��  8 ��� l  � �����  �  �  �  �{       �������  � ����� 0 addcontacts addContacts� 0 thesplit theSplit� 0 addcanledar addCanledar
� .aevtoappnull  �   � ****� � ������� 0 addcontacts addContacts� ��� �  �� 0 thearray theArray�  � ����� 0 thearray theArray� 0 thename theName� 0 theemail theEmail� 0 	theperson 	thePerson�  ��
�	�������� �� ����
�
 
cobj
�	 
kocl
� 
azf4
� 
prdt
� 
azf7� 
� .corecrel****      � null
� 
az21
� 
insh
� 
az18
�  
az17�� 
�� .coresavenull���     null� A� =��k/E�O��l/E�O*����l� E�O� *����-6������ UO*j U� �� ����������� 0 thesplit theSplit�� ����� �  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  � ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray� ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�� ��
���������� 0 addcanledar addCanledar��  ��  � ������ &0 allcalendartitles allCalendarTitles�� 0 counter  � *����$��(�����������d��������q����������
�� 
wres
�� 
wr02
�� 
wtnm
�� .wrbtaec2null��� ��� null
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr
�� 
prcs
�� 
pisf�� 
�� 
tab 
�� .prcskprsnull���     ctxt
�� 
faal
�� eMdsKcmd�� 
�� eMdsKsft�� �� *�-�,E�O�� hY 	*��l UO� �*j O*��/ �kj 	O� �*��/ �� 
e*��/�,FUO�j 	O_ j Oa a a l O kmkh _ j [OY��Okj 	Oa a a l Omj 	O ka kh _ j [OY��Olj 	Oa a a l OPUUOPUUOP� �����������
�� .aevtoappnull  �   � ****� k     ��  c����  ��  ��  �  � ���� 0 addcanledar addCanledar�� *j+   ascr  ��ޭ