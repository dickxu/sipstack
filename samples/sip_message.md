### for sip invite

##------------
NVITE sip:2012@sip.uskee.org SIP/2.0
Via: SIP/2.0/TCP 192.168.1.106:5062;rport;branch=z9hG4bK135316270
From: <sip:2011@sip.uskee.org>;tag=117828978
To: <sip:2012@sip.uskee.org>
Call-ID: 1104955113
CSeq: 20 INVITE
Contact: <sip:2011@120.210.164.244:19962;transport=TCP>
Content-Type: application/sdp
Max-Forwards: 70
User-Agent: xrtcsip/1.0.0
Subject: call 2011
Content-Length: 0

##----------
SIP/2.0 407 Proxy Authentication Required
Via: SIP/2.0/TCP
192.168.1.106:5062;rport=19962;branch=z9hG4bK135316270;received=120.210.164.244
From: <sip:2011@sip.uskee.org>;tag=117828978
To: <sip:2012@sip.uskee.org>;tag=8efe5181a3e4d00de4c4603d543163b6.5373
Call-ID: 1104955113
CSeq: 20 INVITE
Proxy-Authenticate: Digest realm="sip.uskee.org",
nonce="U7iaElO4mOYzO/bWNPsPeLdEX7vmruOL"
Server: kamailio (4.1.4 (x86_64/linux))
Content-Length: 0

##----------
ACK sip:2012@sip.uskee.org SIP/2.0
Via: SIP/2.0/TCP 192.168.1.106:5062;rport;branch=z9hG4bK135316270
From: <sip:2011@sip.uskee.org>;tag=117828978
To: <sip:2012@sip.uskee.org>;tag=8efe5181a3e4d00de4c4603d543163b6.5373
Call-ID: 1104955113
CSeq: 20 ACK
Content-Length: 0

##----------
INVITE sip:2012@sip.uskee.org SIP/2.0
Via: SIP/2.0/TCP 192.168.1.106:5062;rport;branch=z9hG4bK1152731194
From: <sip:2011@sip.uskee.org>;tag=117828978
To: <sip:2012@sip.uskee.org>
Call-ID: 1104955113
CSeq: 21 INVITE
Contact: <sip:2011@120.210.164.244:19962;transport=TCP>
Proxy-Authorization: Digest username="2011", realm="sip.uskee.org",
nonce="U7iaElO4mOYzO/bWNPsPeLdEX7vmruOL", uri="sip:2012@sip.uskee.org",
response="4d59dcca68596bcc0645eb637efaff90", algorithm=MD5
Content-Type: application/sdp
Max-Forwards: 70
User-Agent: xrtcsip/1.0.0
Subject: call 2011
Content-Length: 0


##----------
SIP/2.0 100 trying -- your call is important to us
Via: SIP/2.0/TCP
192.168.1.106:5062;rport=19962;branch=z9hG4bK1152731194;received=120.210.164.244
From: <sip:2011@sip.uskee.org>;tag=117828978
To: <sip:2012@sip.uskee.org>
Call-ID: 1104955113
CSeq: 21 INVITE
Server: kamailio (4.1.4 (x86_64/linux))
Content-Length: 0



