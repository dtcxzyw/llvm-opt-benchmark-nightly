Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sigcomp?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.518 = private unnamed_addr constant [141 x i8] c"Addr: %u ## STATE-CREATE(32) (state_length=%u, state_address=%u, state_instruction=%u,minimum_access_length=%u, state_retention_priority=%u)\00", align 1
@.str.519 = private unnamed_addr constant [58 x i8] c"               Addr: %5u State value: %u (0x%x) ASCII(%s)\00", align 1
@.str.520 = private unnamed_addr constant [55 x i8] c" (partial_identifier_start, partial_identifier_length)\00", align 1
@.str.521 = private unnamed_addr constant [83 x i8] c"Addr: %u ## STATE-FREE (partial_identifier_start=%u, partial_identifier_length=%u)\00", align 1
@.str.522 = private unnamed_addr constant [31 x i8] c" (output_start, output_length)\00", align 1
@.str.523 = private unnamed_addr constant [30 x i8] c"Addr: %u      output_start %u\00", align 1
@.str.524 = private unnamed_addr constant [31 x i8] c"Addr: %u      output_length %u\00", align 1
@.str.525 = private unnamed_addr constant [55 x i8] c"Addr: %u ## OUTPUT (output_start=%u, output_length=%u)\00", align 1
@.str.526 = private unnamed_addr constant [97 x i8] c"               Output value: %u (0x%x) ASCII(%s) from Addr: %u ,output to dispatcher position %u\00", align 1
@.str.527 = private unnamed_addr constant [97 x i8] c" (requested_feedback_location,state_instruction, minimum_access_length,state_retention_priority)\00", align 1
@.str.528 = private unnamed_addr constant [45 x i8] c"Addr: %u      requested_feedback_location %u\00", align 1
@.str.529 = private unnamed_addr constant [46 x i8] c"Addr: %u      returned_parameters_location %u\00", align 1
@.str.530 = private unnamed_addr constant [30 x i8] c"Addr: %u      state_length %u\00", align 1
@.str.531 = private unnamed_addr constant [31 x i8] c"Addr: %u      state_address %u\00", align 1
@.str.532 = private unnamed_addr constant [35 x i8] c"Addr: %u      state_instruction %u\00", align 1
@.str.533 = private unnamed_addr constant [39 x i8] c"Addr: %u      minimum_access_length %u\00", align 1
@.str.534 = private unnamed_addr constant [42 x i8] c"Addr: %u      state_retention_priority %u\00", align 1
@.str.535 = private unnamed_addr constant [202 x i8] c"Addr: %u ## END-MESSAGE (requested_feedback_location=%u, returned_parameters_location=%u, state_length=%u, state_address=%u, state_instruction=%u, minimum_access_length=%u, state_retention_priority=%u)\00", align 1
@.str.536 = private unnamed_addr constant [29 x i8] c"Decompressed SigComp message\00", align 1
@.str.537 = private unnamed_addr constant [39 x i8] c"Addr %u Invalid instruction: %u (0x%x)\00", align 1
@.str.538 = private unnamed_addr constant [26 x i8] c"DECOMPRESSION FAILURE: %s\00", align 1
@.str.539 = private unnamed_addr constant [54 x i8] c"               Getting value: %u (0x%x) From Addr: %u\00", align 1
@reverse = internal unnamed_addr constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16
@.str.540 = private unnamed_addr constant [66 x i8] c"######### UDVM instruction %u at UDVM-address %u (0x%x) #########\00", align 1
@.str.541 = private unnamed_addr constant [63 x i8] c"0 (Not in the uploaded code as UDVM buffer initialized to Zero\00", align 1
@.str.542 = private unnamed_addr constant [72 x i8] c"Remaining %u bytes starting at UDVM addr %u (0x%x)- State information ?\00", align 1
@.str.543 = private unnamed_addr constant [40 x i8] c"              Escape digit found (0xFF)\00", align 1
@.str.544 = private unnamed_addr constant [34 x i8] c"              Illegal escape code\00", align 1
@.str.545 = private unnamed_addr constant [63 x i8] c"              End of SigComp message indication found (0xFFFF)\00", align 1
@.str.546 = private unnamed_addr constant [41 x i8] c"              Addr: %u tvb value(0x%0x) \00", align 1
@.str.547 = private unnamed_addr constant [41 x i8] c"              Copying %u bytes literally\00", align 1
@.str.548 = private unnamed_addr constant [45 x i8] c"                  Addr: %u tvb value(0x%0x) \00", align 1
@.str.549 = private unnamed_addr constant [47 x i8] c"Unescaped Data handed to the SigComp dissector\00", align 1
@sip_sdp_state_identifier = internal constant [20 x i8] c"\FB\E5\07\DF\E5\E6\AAZ\F2\AB\B9\14\CE\AA\05\F9\9C\E6\1B\A5", align 16
@sip_sdp_static_dictionary_for_sigcomp = internal unnamed_addr constant [4836 x i8] c"\0D\0AReject-Contact: \0D\0AError-Info: \0D\0ATimestamp: \0D\0ACall-Info: \0D\0AReply-To: \0D\0AWarning: \0D\0ASubject: ;handling=image;purpose=;cause=;text=card300 Multiple Choicesmimessage/sipfrag407 Proxy Authentication Requiredigest-integrity484 Address Incompletelephone-events494 Security Agreement Requiredeactivated481 Call/Transaction Does Not Existale=500 Server Internal Errorobust-sorting=416 Unsupported URI Schemergency415 Unsupported Media Typending488 Not Acceptable Herejected423 Interval Too Briefrom-tagQ.8505 Version Not Supported403 Forbiddenon-urgent429 Provide Referror Identity420 Bad Extensionoresource\0D\0Aa=key-mgmt:mikeyOPTIONS Language: 504 Server Time-outo-tag\0D\0AAuthentication-Info: Dec 380 Alternative Service503 Service Unavailable421 Extension Required405 Method Not Allowed487 Request Terminatedauth-interleaving=\0D\0Am=application Aug 513 Message Too Large687 Dialog Terminated302 Moved Temporarily301 Moved Permanentlymultipart/signed\0D\0ARetry-After: GMThu, 402 Payment Required\0D\0Aa=orient:landscape400 Bad Requestrue491 Request Pending501 Not Implemented406 Not Acceptable606 Not Acceptable\0D\0Aa=type:broadcastone493 Undecipherable\0D\0AMIME-Version: May 482 Loop Detected\0D\0AOrganization: Jun mode-change-neighbor=criticalertcp-fb489 Bad Eventls\0D\0AUnsupported: Jan 502 Bad Gatewaymode-change-period=\0D\0Aa=orient:seascape\0D\0Aa=type:moderated404 Not Found305 Use Proxy\0D\0Aa=type:recvonly\0D\0Aa=type:meeting\0D\0Ak=prompt:\0D\0AReferred-By: \0D\0AIn-Reply-To: TRUEncoding: 182 QueuedAuthenticate: \0D\0AUser-Agent: \0D\0Aa=framerate:\0D\0AAlert-Info: CANCEL \0D\0Aa=maxptime:;retry-after=uachannels=410 Gone\0D\0ARefer-To: \0D\0APriority: \0D\0Am=control \0D\0Aa=quality:\0D\0Aa=sdplang:\0D\0Aa=charset:\0D\0AReplaces: REFER ipsec-ike;transport=\0D\0Aa=keywds:\0D\0Ak=base64:;refresher=\0D\0Aa=ptime:\0D\0Ak=clear:;received=;duration=\0D\0AAccept: \0D\0Aa=group:FALSE: INFO \0D\0AAccept-\0D\0Aa=lang:\0D\0Am=data mode-set=\0D\0Aa=tool:TLSun, \0D\0ADate: \0D\0Aa=cat:\0D\0Ak=uri:\0D\0AProxy-;reason=;method=\0D\0Aa=mid:;maddr=opaque=\0D\0AMin-;alg=Mon, Tue, Wed, Fri, Sat, ;ttl=auts=\0D\0Ar=\0D\0Az=\0D\0Ae=;id=\0D\0Ai=crc=\0D\0Au=;q=uas414 Request-URI Too Longiveuprivacyudprefer600 Busy Everywherequired480 Temporarily Unavailable\0D\0Aa=type:H.33202 Accepted\0D\0ASession-Expires: \0D\0ASubscription-State: Nov \0D\0AService-Route: Sep \0D\0AAllow-Events: Feb \0D\0Aa=inactiveRTP/SAVP RTP/AVPF Anonymousips:\0D\0Aa=type:testel:MESSAGE \0D\0Aa=recvonly\0D\0Aa=sendonly\0D\0Ac=IN IP4 \0D\0AReason: \0D\0AAllow: \0D\0AEvent: \0D\0APath: ;user=\0D\0Ab=AS CT \0D\0AWWW-Authenticate: Digest \0D\0Aa=sendrecvideoctet-align=application/sdpatheaderspauth=\0D\0Aa=orient:portraitimeouttr-inticonc=483 Too Many Hopslinfoptionalgorithm=604 Does Not Exist Anywheresponse=\0D\0A\0D\0ARequest-Disposition: MD580 Precondition Failureplaces422 Session Interval Too Smallocal181 Call Is Being Forwardedomain=failurenderealm=SUBSCRIBE preconditionormalipsec-mandatory413 Request Entity Too Large2e183 Session Progressctp486 Busy HeremoterminatedAKAv1-MD5-sessionone\0D\0AAuthorization: 603 Declinextnonce=485 Ambiguousername=audio\0D\0AContent-Type: Mar \0D\0ARecord-Route: Jul 401 Unauthorized\0D\0ARequire: \0D\0At=0 0.0.0.0\0D\0AServer: REGISTER \0D\0Ac=IN IP6 180 Ringing100 Tryingv=0\0D\0Ao=UPDATE NOTIFY \0D\0ASupported: unknownAMRTP/AVP \0D\0APrivacy: \0D\0ASecurity-\0D\0AExpires: \0D\0Aa=rtpmap:\0D\0Am=video \0D\0Am=audio \0D\0As= false\0D\0Aa=conf:;expires=\0D\0ARoute: \0D\0Aa=fmtp:\0D\0Aa=curr:Client: Verify: \0D\0Aa=des:\0D\0ARAck: \0D\0ARSeq: BYE cnonce=100reluri=qop=TCPUDPqosxml;lr\0D\0AVia: SIP/2.0/TCP 408 Request Timeoutimerpsip:\0D\0AContent-Length: Oct \0D\0AVia: SIP/2.0/UDP ;comp=sigcomprobationack;branch=z9hG4bK\0D\0AMax-Forwards: Apr SCTPRACK INVITE \0D\0ACall-ID: \0D\0AContact: 200 OK\0D\0AFrom: \0D\0ACSeq: \0D\0ATo: ;tag=\04\10\DD\10\111\0D\11\0A\07\10\B9\0C\10\FE\12\10\E1\06\11N\07\11N\03\11J\04\11J\07\10\B2\08\11y\06\11\81\0F\11\22\0B\11U\06\11k\0B\11`\13\10\B2\08\11q\05\11\87\13\10\F7\09\0E\8D\08\0D\AE\0C\10\B9\07\10\8E\03\0D\96\03\10\8A\04\10\8A\09\0D\D7\0A\0F\12\08\0F\8F\09\0F\8F\08\0Dl\06\0Ef\09\0El\0A\0El\06\0F\C6\07\0F\C6\05\11H\06\11H\06\0F\BF\07\0F\BF\07\0EU\06\0F\16\04\0E\F4\03\0E\B1\03\10\A6\09\10P\03\10\A3\0A\0D\B4\05\0E6\06\0E\D6\03\0D\F9\11\0E\F8\04\0C\D9\08\0E\EA\04\09S\03\0AK\04\0E\E4\10\0F5\09\0E\E4\08\0D?\03\0F\E1\0B\10\01\03\10\AC\06\10\95\0C\0Ev\0B\0F\EB\0A\0F\AE\05\10+\04\10+\08\10z\10\0FI\07\0F\B8\09\10>\0B\10\0C\07\0Fx\0B\0Fm\09\10G\08\10\82\0B\0F\F6\08\10b\08\0F\87\08\10j\04\0Fx\0D\0F\CD\08\0D\AE\10\0F]\0B\0F\98\14\0D \1B\0D \04\0D\E0\14\0E\B4\0B\0F\A3\0B\074\0F\0DV\04\0E\F4\03\10\AF\07\0D4\09\0F'\04\10\9B\04\10\9F\09\10Y\08\10r\09\105\0A\10!\0A\10\17\08\0F\E3\03\10\A9\05\0C\AC\04\0C\BD\07\0C\C1\08\0C\C1\09\0C\F6\10\0Cr\0C\0C\86\04\0Dd\0C\0C\D5\09\0C\FF\1B\0B\FC\11\0C]\13\0C0\09\0C\A4\0C\0C$\0C\0D;\03\0D\1A\03\0D\1D\16\0CC\09\0C\92\09\0C\9B\0D\0E\CB\04\0D\16\06\0D\10\05\04\F2\0B\0C\E1\05\0B\DE\0A\0C\EC\13\0B\E3\07\0B\D4\08\0D\08\0C\0C\C9\09\0C:\04\0A\E5\0C\0A#\08\0B:\0E\09\AB\0F\0E\FA\09\0Fo\0C\0A\17\0F\09v\0C\0A_\17\0D\E2\0F\07\A8\0A\0F\85\0F\08\D6\0E\09\B9\0B\0Az\03\0B\DB\03\08\C1\04\0E\C7\03\08\D3\02\04\8D\08\0BJ\05\0B\8C\07\0Ba\06\05H\04\07\F4\05\100\04\07\1E\08\07\1E\05\0B\91\10\04\CA\09\0Aq\09\0E\87\05\04\98\05\0Bn\0B\04\9B\0F\04\9B\07\04\9B\03\04\A3\07\04\A3\10\07\98\09\07\98\05\0Bs\05\0Bx\05\0B}\05\07\B9\05\0B\82\05\0B\87\05\0B\1D\05\08\E4\05\0C\81\05\0FD\05\11@\05\08x\05\08\9D\05\0FX\05\07?\05\0Cm\05\10\F2\05\0CX\05\06\A9\04\07\B6\09\05\8C\06\06\1A\06\0E\81\0A\06\16\0A\0A\C4\07\0BZ\0A\0A\BA\03\0B\1B\04\11E\06\0C\8C\07\05\AD\0A\0E\DA\08\0BB\0D\09\F7\0B\05\1C\09\11\16\08\05\C9\07\0D\86\06\0B\CF\0A\06M\04\0B\A2\06\06\8D\08\05\E6\08\0E\11\0B\0A\9B\03\0A\04\03\0B\B5\05\10\D7\04\09\94\05\0A\E2\03\0B\B2\06\0Dg\04\0D\11\08\08\B7\1B\0E;\0A\09\A1\14\04\85\15\07\83\15\07n\0D\09=\17\06\AE\0F\07\E6\14\07\BE\0D\06\0A\0D\090\16\06\F2\12\08\1E!\04\AA\13\10\C5\08\0A\0F\1C\0E\96\18\0B\B8\1A\05\95\1A\05u\11\06=\16\06\DC\1E\0E\19\16\05\D1\1D\06 #\05'\11\08}\11\0D\99\16\04\DA\0D\0F\1C\16\07\08\17\05\B4\0D\08\C7\13\07\F8\12\08W\1F\04\FE\19\05N\13\08\0B\0F\08\E9\17\06\C5\13\06{\19\05\F1\15\07D\18\0D\FB\0B\0F\09\1B\0D\BE\12\080\15\07Y\04\0B\A6\04\0B\AE\04\0B\9E\04\0B\96\04\0B\9A\0A\0A\B0\0B\0A\90\08\0B2\0B\09k\08\0B*\0B\0A\85\09\0B\12\0A\0A\A6\0D\09\EA\13\0Dt\14\07\D2\13\09\0B\12\08B\10\09[\12\09\1E\0D\0C\B1\0E\0C\17\11\09J\0C\0AS\0C\0AG\09\0A\F7\0E\09\C7\0C\0A;\07\06i\08\06i\06\09\E3\08\0BR\0A\0A\D8\12\06W\0D\06W\07\09\E3\04\0A\E9\10\070\09\0B\00\0C\0A/\05\0A\E9\05\0Ak\06\0Ak\0A\0A\CE\09\0A\EE\03\0B\DB\07\0F~\0A\09\97\0A\06q\0E\09\D5\17\06\93\07\0E\\\07\0F\DA\0A\0F5\0D\0D\EC\0A\09\97\0A\06q\08\0B\22\0F\09\85\06\0Bh\0C\0DJ\09\0B\09\13\08\F8\15\08\A2\04\0B\AA\0F\05f\0D\07#\09\0A\06\0B\0DJ\0F\04\EE\06\04\F8\04\09+\04\08S\07\08\C0\03\11\1F\04\11\1E\07\0D\8C\03\074\04\10\DB\03\076\03\0D\A9\0D\04 \0B\04Q\0C\04:\04\0B\B8\04\0C$\04\05\95\04\04|\04\05u\04\04\85\04\09k\04\06=\06\04{\04\06\DC\04\07\83\04\0E\19\12\04\00\10\08\8E\10\08i\0E\04\12\0D\04-\03\10\B9\04\05\D1\04\07n\04\06 \07\04t\04\0B\FC\0A\04\\\04\05'\04\09=\04\08}\04\0F\AE\04\0D\99\04\06\AE\04\04\DA\09\04\09\08\11\22\04\0F\1C\04\07\E6\04\0E\CB\05\08\BD\04\07\08\04\0F\A3\04\06W\04\05\B4\04\0F]\04\08\C7\08\0B\F4\04\07\F8\04\070\04\07\BE\04\08W\05\0DF\04\04\FE\04\06\0A\04\05N\04\0E;\04\08\0B\04\090\04\08\E9\05\05\EE\04\06\C5\04\06\F2\04\06{\04\09\A1\04\05\F1\04\08\1E\04\07D\04\0B\DD\04\0D\FB\04\04\AA\04\0B\E3\07\0E\EE\04\0F\09\04\0E\B4\04\0D\BE\04\10\C5\04\080\05\0F0\04\07Y\04\0A\0F\06\0Ea\04\04\81\04\0D\AB\04\0D\93\04\11k\04\0E\96\05\04f\09\04k\0B\04F\04\0C\E1", align 16
@presence_state_identifier = internal constant [20 x i8] c"\D9B)}\0B\B3\8F\C0\1DgA\D6\B3\B4\81W\AC\8E\1B\E0", align 16
@presence_static_dictionary_for_sigcomp = internal unnamed_addr constant [3475 x i8] c"convention-centerminatedepressedisgustedindustrialast-input=humiliatedomain=automobilecuriouspirits-INDPsend-onlypatheaterestlessleepyin-personalonelyplayfulowerthannoyeduncomfortablexclude=confusedvacationclubus-stationaircrafthirstycourierejectedhistinfofficeremove=arenabled=REFEREGISTERwaitingrumpyprefix=halfreightmeangrySUBSCRIBEprovationinclude=approvedholidayunknownparkingMESSAGEworriedhumbledairportashamedplayingPUBLISHhungrycrankyamazedafraidUPDATENOTIFYINVITECANCELfriendpostalfamilyprisonin_awebravequietboredPRACKproudfixedhotelhappycafecid=bankmin=awaymax=mealbusyworkurn=coldhurtjealouspirits-user-progovernmentrain-stationorefersubscribeforetransmission-alloweduration-subscribed=higherthanxiouservice-description=breakfastadiumsg-takeremorsefull:civicLoconferencequalstressedwatercrafterange:basicPolicyclecountrychangeduntil=addeduri=whatpermanent-absencembarrassedeactivatedistractedinnervouselfilterelievedflirtatiousage-ruleservcapspheregistration-state=barring-statexternal-rulesetime-offsetdialogin_loverriding-willingnesspectatoresidencevent-packagesupervisorestaurantruckplmobilityjoinappropriateventlisteeringiveuprincipalanguageschemessage-summaryplace-of-worshiplace-type=:timed-status-iconstructioneutralINFOPTIONSiemens-RTP-Statservice-idle-threshold=public-transportoobrightriggeresource=:geopriv100relationshipoc-settingsurprisedarkurn:oma:xml:prs:pidf:oma-presentationoisy:simple-filter-setimeoutdoorschoolpartialocation-informationameetingcalmethodstoretention-expiry:watcherinfoffendedcontrolooking-for-workingwatcher-listreetplace-isfocusounderwayhomepageprivacywarehouser-inputravelbothereceive-only:rlminvalue=:capsleepinguiltyinvinciblevent=moodypackage=priorityvideofrom=audiocardpos=automatapplicationotsupportedeviceIDimpressedisappointednote-wellibrary:data-modelectronicivicAddressarcasticontentedindignantimereplaceshockedclassistantimestamprovided-by:cipidf-fullState=actoremovedbusinesseriousel=:schemaxvalue=:rpidurn:ietf:params:xml-patch-opsec-agreearly-session-paticipation-the-phonetwork-availabilityperformancexcitedpreconditionoresource-priority=falservice-classroomustUnderstandisplay-name=instancextensions-bindingsdp-anattendantrue:pidf-diffrustrateduplexpiration=contactivitieshopping-areason=appointmentity=associatencoding=interestedevcapstatus=activersion=winfopendingin-transituplehospitalang=<?xmlns=sickpresenceUTF-8?>closed\05\0D4\08\0D\06\09\0C\E3\07\0DH\06\0D6\13\0B\AB\05\09e\07\0C\D4\08\0D@\05\0D#\05\0C5\07\0C\AE\05\0D/\06\08\B9\05\07+\04\0D\12\06\0DO\09\0C,\04\0C\89\04\0A\F6\09\0BW\0B\0B\05\08\0A\DA\06\0A\DA\06\04\89\05\0B\A6\04\0B\94\06\05\05\07\0B?\0E\0B\BA\07\0B\98\0A\0C\8D\09\0Bm\09\0C\8E\0E\0CH\0A\0C\B2\1D\09V\0D\0C8\06\07\BA\0B\08\B9\0B\07\EC\06\0D\02\0A\0AF\04\08\F4\06\0Bj\04\0A\B6\0C\0CU\08\0A1\04\0A\92\08\0A\1B\05\0A\B1\04\08\C0\05\0A'\05\0A\A7\05\0A\AC\04\0A\BA\04\07\DC\05\08\AD\0A\09)\0A\08\A7\05\0AV\05\0BM\07\09*\0D\09\A7\0B\07\A9\06\09\C6\0B\0B_\0C\09\DF\0B\09\E0\06\07\CB\0C\0A\0B\09\09 \08\0A\97\07\09\E0\07\0C\FB\06\0A\8C\0E\09\7F\0A\09\87\0B\0Cq\0A\0Cq\06\07\93\05\0Af\04\08g\04\09\BA\08\09 \0A\0Br\05\0Ar\08\07\B3\0B\0A\C5\07\09\F2\07\08\89\04\08\AD\08\0A\BE\06\0C\9F\0B\06\D0\0E\08&\08\0A\9F\07\09\C6\0A\0Ci\07\08\85\05\0B|\07\0A9\0C\094\07\0A!\09\08}\07\0C\F5\0B\0C\A3\14\06\A6\0D\08\B2\0C\07*\0C\08\B3\04\07V\07\09\1A\04\07R\07\07@\05\07M\07\0B\80\06\07G\16\06\91\08\0Cb\10\09\CF\10\07\DD\09\0A\F6\09\06\FC\0C\0B\17\07\079\04\06\F8\07\09\A1\06\06\8D\05\07!\04\0AU\09\0A\D2\0C\0A\CF\13\06\C8\0A\08\EC\07\0D\06\0B\08\0C\14\0B\D5\12\07\BE\0D\07\D1\16\08\01\14\0B\F1\06\05\B4\07\04V\09\04\17\0C\0A\EA\09\04\1F\0A\07~\0B\07j\07\0C\0F\0B\07\A0\0A\0C\96\06\05(\06\0A}\05\06\1F\07\05\8B\0A\04<\06\05\AE\04\06P\09\0A\E2\06\05\F6\07\07\FD\09\0B3\0A\0C\EC\0A\0A\83\07\06T\06\04\90\04\05?\05\0A\92\07\07\8A\07\08\CC\08\09\EA\07\04\96\05\06\10\08\07\98\0A\06\F1\08\04y\09\0B\22\07\0B\8E\07\0BF\04\0D<\06\04\80\08\07\12\09\09J\07\04\E3\07\05\84\05\09z\05\06\01\09\09\12\04\09R\0D\04\AA\0D\08V\08\04\DC\07\05\92\05\05\0C\0A\04L\04\06,\0B\04\D1\04\06$\09\0C@\04\04\CE\0C\08\C1\11\04\00\05\074\0A\06j\08\0D(\05\06\1A\0A\04(\07\0A\FE\06\04\FF\08\09\94\07\05v\10\08\98\06\05\F0\06\09\03\10\09\03\09\08\1E\0A\08<\06\09\9B\0D\0C\BB\07\06\E3\05\09\CC\06\0A\15\07\04s\05\06s\0D\06s\05\08E\08\0A)\09\0A@\05\07\1A\0A\07\1A\09\0BO\09\0C\DB\06\05\EA\06\05\DE\0A\04\0E\0A\0B\0E\09\06\86\08\05`\0B\07t\09\05O\08\04\F0\07\09\90\06\08p\0A\0C!\07\05o\0B\0C\CC\04\07\90\07\04\EA\0A\083\04\064\09\06\DC\04\06@\07\05.\04\06H\06\07\87\07\05h\0A\0D\1A\07\04E\07\05\05\08\05\0E\08\05X\08\04\B6\10\09\F8\04\06<\07\09\BC\0C\06\D0\0C\0B\E7\04\06D\04\0A1\0B\0C\05\04\06(\11\07Z\07\0C\C5\07\05\A0\0C\09o\08\0C\BB\08\0Av\09\08\16\08\08i\06\05\E4\09\04\86\07\058\06\0AO\08\04\C6\0F\08\F4\0B\041\07\0A\04\07\08\A1\0D\0CU\06\05\C0\06\05\BA\05\05A\08\0B\87\08\04\89\04\055\0C\0AZ\09\04h\09\04\9C\0A\06\BA\06\07\0D\05\07%\09\0B\9D\09\0Ai\06\0Al\04\068\04\060\07\0D\13\08\08L\05\06\15\06\04P\0A\07\04\06\07\F7\04\08I\0F\08\89\0C\09?\05\06\81\11\08\DC\0D\04\\\11\06Z\05\0D\0E\06\05\D8\04\08\D3\06\05\D2\07\05}\06\05\CC\07\08\D6\05\06\0B\07\05\A7\05\05\16\08\05\1A\09\05F\06\05\C6\06\091\0D\0B\CF\09\08b\08\04\F8\04\08T\0A\06\7F\04\04q\0C\0C\16\04\05.\08\0B?\11\0C#\08\0C{\09\0B\C7\07\07\F6\05\0B;\09\08u\09\0C\81\09\06\E9\0B\09\B0\07\05\22\07\04\A3\07\06\C2\07\05\99\05\06\06\05\05\FC\04\09\C3\04\06L\08\04\BE\09\0B*", align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_sigcomp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.261)
  store i32 %i.a, ptr @proto_sigcomp, align 4
  %i.b = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
  store i32 %i.b, ptr @proto_raw_sigcomp, align 4
  %i.c = load i32, ptr @proto_sigcomp, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef nonnull @.str.261, ptr noundef nonnull @dissect_sigcomp, i32 noundef %i.c)
  store ptr %i.d, ptr @sigcomp_handle, align 8
  %i.e = load i32, ptr @proto_sigcomp, align 4
  %i.f = tail call ptr @register_dissector(ptr noundef nonnull @.str.265, ptr noundef nonnull @dissect_sigcomp_tcp, i32 noundef %i.e)
  store ptr %i.f, ptr @sigcomp_tcp_handle, align 8
  %i.g = load i32, ptr @proto_sigcomp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.g, ptr noundef nonnull @proto_register_sigcomp.hf, i32 noundef 100)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_sigcomp.ett, i32 noundef 3)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_sigcomp.ett_raw, i32 noundef 1)
  %i.h = load i32, ptr @proto_sigcomp, align 4
  %i.i = tail call ptr @expert_register_protocol(i32 noundef %i.h)
  tail call void @expert_register_field_array(ptr noundef %i.i, ptr noundef nonnull @proto_register_sigcomp.ei, i32 noundef 9)
  %i.j = load i32, ptr @proto_sigcomp, align 4
  %i.k = tail call ptr @prefs_register_protocol(i32 noundef %i.j, ptr noundef null) ; 5 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.k, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.268, ptr noundef nonnull @dissect_udvm_code)
  tail call void @prefs_register_bool_preference(ptr noundef %i.k, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271, ptr noundef nonnull @display_udvm_bytecode)
  tail call void @prefs_register_bool_preference(ptr noundef %i.k, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.274, ptr noundef nonnull @decompress)
  tail call void @prefs_register_bool_preference(ptr noundef %i.k, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, ptr noundef nonnull @display_raw_txt)
  tail call void @prefs_register_enum_preference(ptr noundef %i.k, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.280, ptr noundef nonnull @udvm_print_detail_level, ptr noundef nonnull @proto_register_sigcomp.udvm_detail_vals, i1 noundef zeroext false)
  tail call void @register_init_routine(ptr noundef nonnull @sigcomp_init_udvm)
  tail call void @register_cleanup_routine(ptr noundef nonnull @sigcomp_cleanup_udvm)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_sigcomp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 284
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @dissect_sigcomp_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp ugt i8 %i.e, -9
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 35, ptr noundef nonnull @.str.260)
  %i.h = load ptr, ptr %i.f, align 8
  tail call void @col_clear(ptr noundef %i.h, i32 noundef 25)
  store ptr %2, ptr @top_tree, align 8
  %i.i = load i32, ptr @proto_sigcomp, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.k = load i32, ptr @ett_sigcomp, align 4
  %i.l = tail call ptr @proto_item_add_subtree(ptr noundef %i.j, i32 noundef %i.k)
  %i.m = tail call fastcc i32 @dissect_sigcomp_common(ptr noundef %0, ptr noundef %1, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_sigcomp_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  store ptr %2, ptr @top_tree, align 8
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.b = icmp eq i16 %i.a, -1
  %. = select i1 %i.b, i32 2, i32 0               ; 6 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.)
  %.not = icmp ugt i8 %i.c, -9
  br i1 %.not, label %bb.b, label %.loopexit163

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.)
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %.0145193, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0145193 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.h = add nuw i32 %.0145193, %.
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.h)
  %i.j = icmp eq i16 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %1, i64 336
  %i.l = load i16, ptr %i.k, align 8
  %.not158 = icmp eq i16 %i.l, 0
  br i1 %.not158, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.m = getelementptr i8, ptr %1, i64 338
  %i.n = load i16, ptr %i.m, align 2
  %.not159 = icmp eq i16 %i.n, 0
  br i1 %.not159, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.o = getelementptr i8, ptr %1, i64 340
  store i32 %., ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.p, align 8
  br label %.loopexit163

.thread:                                          ; preds = %.lr.ph, %bb.d
  %i.q = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 35, ptr noundef nonnull @.str.260)
  %i.s = load ptr, ptr %i.q, align 8
  tail call void @col_clear(ptr noundef %i.s, i32 noundef 25)
  %i.t = tail call i32 @tvb_reported_length(ptr noundef %0) ; 7 uses
  %i.u = getelementptr i8, ptr %1, i64 416
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %.thread
  %.1149 = phi i32 [ %., %.thread ], [ %.2150.lcssa, %bb.ag ] ; 5 uses
  %i.v = load i32, ptr @proto_sigcomp, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.x = load i32, ptr @ett_sigcomp, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 11 uses
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = sub i32 %i.t, %.1149
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @wmem_alloc(ptr noundef %i.z, i64 noundef %i.ab) #9 ; 5 uses
  %i.ad = load i32, ptr @udvm_print_detail_level, align 4
  %i.ae = icmp sgt i32 %i.ad, 2
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr @hf_sigcomp_starting_to_remove_escape_digits, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.af, ptr noundef %0, i32 noundef %.1149, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = icmp slt i32 %.1149, %i.t
  br i1 %i.ah, label %.lr.ph198, label %.outer._crit_edge

..loopexit_crit_edge:                             ; preds = %bb.aa
  br label %.outer.backedge, !llvm.loop !10

.lr.ph198:                                        ; preds = %bb.h, %.outer.backedge
  %.1.ph216 = phi i32 [ %.1.ph.be, %.outer.backedge ], [ 0, %bb.h ] ; 10 uses
  %.2150.ph215 = phi i32 [ %.2150.ph.be, %.outer.backedge ], [ %.1149, %bb.h ] ; 14 uses
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2150.ph215) ; 3 uses
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %.lr.ph198
  %i.ak = add nsw i32 %.2150.ph215, 1             ; 3 uses
  %.not160.not = icmp slt i32 %i.ak, %i.t
  br i1 %.not160.not, label %bb.j, label %.outer._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr @udvm_print_detail_level, align 4
  %i.am = icmp sgt i32 %i.al, 2
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr @hf_sigcomp_escape_digit_found, align 4
  %i.ao = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.y, i32 noundef %i.an, ptr noundef %0, i32 noundef %.2150.ph215, i32 noundef 2, ptr noundef nonnull @.str.543) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ak) ; 5 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = sext i32 %.1.ph216 to i64
  %i.as = getelementptr i8, ptr %i.ac, i64 %i.ar
  store i8 -1, ptr %i.as, align 1
  %i.at = add nsw i32 %.2150.ph215, 2
  %i.au = add i32 %.1.ph216, 1
  br label %.outer.backedge

bb.n:                                             ; preds = %bb.l
  %or.cond = icmp slt i8 %i.ap, -1
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr @udvm_print_detail_level, align 4
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load i32, ptr @hf_sigcomp_illegal_escape_code, align 4
  %i.ay = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.y, i32 noundef %i.ax, ptr noundef %0, i32 noundef %.2150.ph215, i32 noundef 2, ptr noundef nonnull @.str.544) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.az = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.2150.ph215)
  %i.ba = add i32 %i.az, %.2150.ph215
  br label %.loopexit163

bb.r:                                             ; preds = %bb.n
  %i.bb = icmp eq i8 %i.ap, -1
  br i1 %i.bb, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bc = load i32, ptr @udvm_print_detail_level, align 4
  %i.bd = icmp sgt i32 %i.bc, 2
  br i1 %i.bd, label %bb.t, label %.backedge.thread

bb.t:                                             ; preds = %bb.s
  %i.be = load i32, ptr @hf_sigcomp_end_of_sigcomp_message_indication_found, align 4
  %i.bf = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.y, i32 noundef %i.be, ptr noundef %0, i32 noundef %.2150.ph215, i32 noundef 2, ptr noundef nonnull @.str.545) ; 0 uses
  br label %.backedge.thread

.backedge.thread:                                 ; preds = %bb.s, %bb.t
  %i.bg = add nsw i32 %.2150.ph215, 2             ; 2 uses
  %4 = icmp slt i32 %i.bg, %i.t
  br label %.outer._crit_edge

bb.u:                                             ; preds = %bb.r
  %i.bh = zext nneg i8 %i.ap to i32               ; 3 uses
  %i.bi = sext i32 %.1.ph216 to i64
  %i.bj = getelementptr i8, ptr %i.ac, i64 %i.bi
  store i8 -1, ptr %i.bj, align 1
  %i.bk = load i32, ptr @udvm_print_detail_level, align 4
  %i.bl = icmp sgt i32 %i.bk, 2
  br i1 %i.bl, label %bb.v, label %.thread162

.thread162:                                       ; preds = %bb.u
  %i.bm = add nsw i32 %.2150.ph215, 2
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bn = load i32, ptr @hf_sigcomp_addr_value, align 4
  %i.bo = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.y, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.2150.ph215, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.546, i32 noundef %.1.ph216, i32 noundef 255) ; 0 uses
  %.pr = load i32, ptr @udvm_print_detail_level, align 4
  %i.bp = add nsw i32 %.2150.ph215, 2             ; 3 uses
  %i.bq = icmp sgt i32 %.pr, 2
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = load i32, ptr @hf_sigcomp_copying_bytes_literally, align 4
  %i.bs = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.y, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.bh, ptr noundef null, ptr noundef nonnull @.str.547, i32 noundef %i.bh) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.thread162, %bb.w, %bb.v
  %i.bt = phi i32 [ %i.bm, %.thread162 ], [ %i.bp, %bb.w ], [ %i.bp, %bb.v ] ; 4 uses
  %i.bu = add i32 %i.bt, %i.bh
  %.not161 = icmp slt i32 %i.bu, %i.t
  %i.bv = sub i32 %i.t, %i.bt
  %i.bw = trunc i32 %i.bv to i8
  %.1147 = select i1 %.not161, i8 %i.ap, i8 %i.bw ; 2 uses
  %.2207 = add i32 %.1.ph216, 1                   ; 3 uses
  %.not222 = icmp eq i8 %.1147, 0
  br i1 %.not222, label %.outer.backedge, label %.lr.ph212, !llvm.loop !10

.lr.ph212:                                        ; preds = %bb.x
  %i.bx = zext i8 %.1147 to i32
  %i.by = add i32 %.2207, %i.bx                   ; 2 uses
  br label %bb.y, !llvm.loop !10

bb.y:                                             ; preds = %.lr.ph212, %bb.aa
  %.2210 = phi i32 [ %.2207, %.lr.ph212 ], [ %.2, %bb.aa ] ; 3 uses
  %.3208 = phi i32 [ %i.bt, %.lr.ph212 ], [ %i.ch, %bb.aa ] ; 3 uses
  %i.bz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3208) ; 2 uses
  %i.ca = sext i32 %.2210 to i64
  %i.cb = getelementptr i8, ptr %i.ac, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1
  %i.cc = load i32, ptr @udvm_print_detail_level, align 4
  %i.cd = icmp sgt i32 %i.cc, 2
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = load i32, ptr @hf_sigcomp_addr_value, align 4
  %i.cf = zext i8 %i.bz to i32                    ; 2 uses
  %i.cg = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.y, i32 noundef %i.ce, ptr noundef %0, i32 noundef %.3208, i32 noundef 1, i32 noundef %i.cf, ptr noundef nonnull @.str.548, i32 noundef %.2210, i32 noundef %i.cf) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ch = add i32 %.3208, 1                       ; 2 uses
  %.2 = add i32 %.2210, 1                         ; 2 uses
  %exitcond247.not = icmp eq i32 %.2, %i.by
  br i1 %exitcond247.not, label %..loopexit_crit_edge, label %bb.y, !llvm.loop !11

bb.ab:                                            ; preds = %.lr.ph198
  %i.ci = sext i32 %.1.ph216 to i64
  %i.cj = getelementptr i8, ptr %i.ac, i64 %i.ci
  store i8 %i.ai, ptr %i.cj, align 1
  %i.ck = load i32, ptr @udvm_print_detail_level, align 4
  %i.cl = icmp sgt i32 %i.ck, 2
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cm = zext i8 %i.ai to i32                    ; 2 uses
  %i.cn = load i32, ptr @hf_sigcomp_addr_value, align 4
  %i.co = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.y, i32 noundef %i.cn, ptr noundef %0, i32 noundef %.2150.ph215, i32 noundef 1, i32 noundef %i.cm, ptr noundef nonnull @.str.546, i32 noundef %.1.ph216, i32 noundef %i.cm) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cp = add i32 %.1.ph216, 1
  %i.cq = add nsw i32 %.2150.ph215, 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.x, %..loopexit_crit_edge, %bb.ad, %bb.m
  %.2150.ph.be = phi i32 [ %i.cq, %bb.ad ], [ %i.at, %bb.m ], [ %i.ch, %..loopexit_crit_edge ], [ %i.bt, %bb.x ] ; 3 uses
  %.1.ph.be = phi i32 [ %i.cp, %bb.ad ], [ %i.au, %bb.m ], [ %i.by, %..loopexit_crit_edge ], [ %.2207, %bb.x ] ; 2 uses
  %i.cr = icmp slt i32 %.2150.ph.be, %i.t
  br i1 %i.cr, label %.lr.ph198, label %.outer._crit_edge, !llvm.loop !10

.outer._crit_edge:                                ; preds = %.outer.backedge, %bb.i, %.backedge.thread, %bb.h
  %.1.ph.lcssa190 = phi i32 [ %.1.ph216, %.backedge.thread ], [ 0, %bb.h ], [ %.1.ph.be, %.outer.backedge ], [ %.1.ph216, %bb.i ] ; 2 uses
  %.2150.lcssa = phi i32 [ %i.bg, %.backedge.thread ], [ %.1149, %bb.h ], [ %.2150.ph.be, %.outer.backedge ], [ %i.ak, %bb.i ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %.backedge.thread ], [ false, %bb.h ], [ false, %bb.i ], [ false, %.outer.backedge ]
  %.lcssa = phi i1 [ %4, %.backedge.thread ], [ false, %bb.h ], [ false, %bb.i ], [ false, %.outer.backedge ]
  %i.cs = tail call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ac, i32 noundef %.1.ph.lcssa190, i32 noundef %.1.ph.lcssa190) ; 4 uses
  %i.ct = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.cs, ptr noundef nonnull @.str.549) ; 0 uses
  %i.cu = load i32, ptr @hf_sigcomp_data_for_sigcomp_dissector, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.cu, ptr noundef %i.cs, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br i1 %.0.lcssa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.outer._crit_edge
  %i.cw = tail call fastcc i32 @dissect_sigcomp_common(ptr noundef %i.cs, ptr noundef %1, ptr noundef %i.y) ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %.outer._crit_edge
  %i.cx = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %i.y, ptr noundef %1, ptr noundef nonnull @ei_sigcomp_tcp_fragment, ptr noundef %i.cs, i32 noundef 0) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %.lcssa, label %bb.f, label %.loopexit163

.loopexit163:                                     ; preds = %bb.ag, %bb.a, %bb.q, %bb.e
  %.0151 = phi i32 [ %., %bb.a ], [ -1, %bb.e ], [ %i.ba, %bb.q ], [ %.2150.lcssa, %bb.ag ]
  ret i32 %.0151
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_init_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sigcomp_init_udvm() #0 {
g_strdup_inline.exit18:
  %i.a = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @g_free)
  store ptr %i.a, ptr @state_buffer_table, align 8
  %i.b = tail call noalias dereferenceable_or_null(4844) ptr @g_malloc(i64 noundef 4844) #10 ; 3 uses
  %i.c = tail call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef nonnull @sip_sdp_state_identifier, i64 noundef 6, i64 noundef 36) ; 2 uses
  store i64 58386, ptr %i.b, align 1
  %i.d = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(4836) %i.d, ptr noundef nonnull align 16 dereferenceable(4836) @sip_sdp_static_dictionary_for_sigcomp, i64 noundef 4836, i1 noundef false) #11
  %i.e = load ptr, ptr @state_buffer_table, align 8
  %i.f = tail call noalias ptr @g_strdup(ptr noundef %i.c)
  %i.g = tail call i32 @g_hash_table_insert(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.b) ; 0 uses
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.c)
  %i.h = tail call noalias dereferenceable_or_null(3483) ptr @g_malloc(i64 noundef 3483) #10 ; 3 uses
  %i.i = tail call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef nonnull @presence_state_identifier, i64 noundef 6, i64 noundef 36) ; 2 uses
  store i64 37645, ptr %i.h, align 1
  %i.j = getelementptr i8, ptr %i.h, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3475) %i.j, ptr noundef nonnull align 16 dereferenceable(3475) @presence_static_dictionary_for_sigcomp, i64 noundef 3475, i1 noundef false) #11
  %i.k = load ptr, ptr @state_buffer_table, align 8
  %i.l = tail call noalias ptr @g_strdup(ptr noundef %i.i)
  %i.m = tail call i32 @g_hash_table_insert(ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.h) ; 0 uses
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_cleanup_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sigcomp_cleanup_udvm() #0 {
bb.a:
  %i.a = load ptr, ptr @state_buffer_table, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_sigcomp() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_sigcomp, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.281, i32 noundef %i.a)
  store ptr %i.b, ptr @sip_handle, align 8
  %i.c = load ptr, ptr @sigcomp_tcp_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.283, ptr noundef %i.c)
  %i.d = load ptr, ptr @sigcomp_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.283, ptr noundef %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_sigcomp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %i.b = alloca [12 x i8], align 1                ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.g = load i32, ptr @hf_sigcomp_t_bit, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_sigcomp_len, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = lshr i8 %i.f, 2
  %i.l = and i8 %i.k, 1                           ; 2 uses
  %i.m = and i8 %i.f, 3                           ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = mul nuw nsw i8 %i.m, 3
  %narrow255 = add nuw nsw i8 %narrow, 3          ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 25, ptr noundef nonnull @.str.411)
  %.not256 = icmp eq i8 %i.l, 0
  br i1 %.not256, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not257 = icmp sgt i8 %i.p, -1
  br i1 %.not257, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i8 %i.p, 127                         ; 2 uses
  %i.r = load i32, ptr @hf_sigcomp_returned_feedback_item_len, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = zext nneg i8 %i.q to i64
  %i.u = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, i64 noundef %i.t) ; 0 uses
  %i.v = zext nneg i8 %i.q to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.x = and i8 %i.w, 127
  store i8 %i.x, ptr %i.a, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0241 = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]     ; 2 uses
  %.0240 = phi i32 [ %i.v, %bb.d ], [ 1, %bb.e ]  ; 2 uses
  %i.y = load i32, ptr @hf_sigcomp_returned_feedback_item, align 4
  %i.z = call ptr @proto_tree_add_bytes(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %.0241, i32 noundef %.0240, ptr noundef nonnull %i.a) ; 0 uses
  %i.aa = add nuw nsw i32 %.0240, %.0241
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1242 = phi i32 [ %i.aa, %bb.f ], [ 1, %bb.b ] ; 3 uses
  %i.ab = zext nneg i8 %narrow255 to i64          ; 2 uses
  %i.ac = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %.1242, i64 noundef %i.ab) ; 0 uses
  %i.ad = getelementptr i8, ptr %1, i64 416       ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call ptr @bytes_to_str_maxlen(ptr noundef %i.ae, ptr noundef nonnull %i.b, i64 noundef %i.ab, i64 noundef 36)
  %i.ag = load i32, ptr @hf_sigcomp_partial_state, align 4
  %i.ah = zext nneg i8 %narrow255 to i32          ; 3 uses
  %i.ai = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.1242, i32 noundef %i.ah, ptr noundef %i.af) ; 0 uses
  %i.aj = add nuw nsw i32 %.1242, %i.ah           ; 4 uses
  %i.ak = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aj) ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %proto_item_set_generated.exit

bb.h:                                             ; preds = %bb.g
end_hunk_0
