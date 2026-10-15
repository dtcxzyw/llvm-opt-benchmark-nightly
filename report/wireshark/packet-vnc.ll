Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-vnc?download=true
inline.NumInlined: 49
inline.NumDeleted: 40
begin_hunk_0_@dissect_vnc:bb.a
  %i.arm = load i32, ptr %i.h, align 4
  %i.arn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.arm) ; 2 uses
  %i.aro = load i32, ptr @hf_vnc_desktop_screen_num, align 4
  %i.arp = load i32, ptr %i.h, align 4
  %i.arq = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.aro, ptr noundef %0, i32 noundef %i.arp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.arr = load i32, ptr %i.h, align 4
  %i.ars = add i32 %i.arr, 1                      ; 2 uses
  store i32 %i.ars, ptr %i.h, align 4
  %i.art = load i32, ptr @hf_vnc_padding, align 4
  %i.aru = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.art, ptr noundef %0, i32 noundef %i.ars, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.arv = zext i8 %i.arn to i32                  ; 2 uses
  %i.arw = shl nuw nsw i32 %i.arv, 4
  %i.arx = or disjoint i32 %i.arw, 3              ; 2 uses
  %i.ary = load i32, ptr %i.h, align 4
  %i.arz = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ary)
  %i.asa = icmp ugt i32 %i.arx, %i.arz
  br i1 %i.asa, label %vnc_server_framebuffer_update.exit.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.asb = load i32, ptr %i.h, align 4
  %i.asc = add i32 %i.asb, 3                      ; 2 uses
  store i32 %i.asc, ptr %i.h, align 4
  %.not.i170.i.i = icmp eq i8 %i.arn, 0
  br i1 %.not.i170.i.i, label %vnc_raw_encoding.exit.i.i, label %.lr.ph.i171.i.i

.lr.ph.i171.i.i:                                  ; preds = %bb.ii, %.lr.ph.i171.i.i
  %i.asd = phi i32 [ %i.atf, %.lr.ph.i171.i.i ], [ %i.asc, %bb.ii ]
  %indvars.iv.i172.i.i = phi i32 [ %i.asf, %.lr.ph.i171.i.i ], [ 0, %bb.ii ]
  %i.ase = load i32, ptr @ett_vnc_desktop_screen, align 4
  %i.asf = add nuw nsw i32 %indvars.iv.i172.i.i, 1 ; 3 uses
  %i.asg = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.aau, ptr noundef %0, i32 noundef %i.asd, i32 noundef 16, i32 noundef %i.ase, ptr noundef null, ptr noundef nonnull @.str.936, i32 noundef %i.asf) ; 6 uses
  %i.ash = load i32, ptr @hf_vnc_desktop_screen_id, align 4
  %i.asi = load i32, ptr %i.h, align 4
  %i.asj = call ptr @proto_tree_add_item(ptr noundef %i.asg, i32 noundef %i.ash, ptr noundef %0, i32 noundef %i.asi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ask = load i32, ptr %i.h, align 4
  %i.asl = add i32 %i.ask, 4                      ; 2 uses
  store i32 %i.asl, ptr %i.h, align 4
  %i.asm = load i32, ptr @hf_vnc_desktop_screen_x, align 4
  %i.asn = call ptr @proto_tree_add_item(ptr noundef %i.asg, i32 noundef %i.asm, ptr noundef %0, i32 noundef %i.asl, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aso = load i32, ptr %i.h, align 4
  %i.asp = add i32 %i.aso, 2                      ; 2 uses
  store i32 %i.asp, ptr %i.h, align 4
  %i.asq = load i32, ptr @hf_vnc_desktop_screen_y, align 4
  %i.asr = call ptr @proto_tree_add_item(ptr noundef %i.asg, i32 noundef %i.asq, ptr noundef %0, i32 noundef %i.asp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ass = load i32, ptr %i.h, align 4
  %i.ast = add i32 %i.ass, 2                      ; 2 uses
  store i32 %i.ast, ptr %i.h, align 4
  %i.asu = load i32, ptr @hf_vnc_desktop_screen_width, align 4
  %i.asv = call ptr @proto_tree_add_item(ptr noundef %i.asg, i32 noundef %i.asu, ptr noundef %0, i32 noundef %i.ast, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.asw = load i32, ptr %i.h, align 4
  %i.asx = add i32 %i.asw, 2                      ; 2 uses
  store i32 %i.asx, ptr %i.h, align 4
  %i.asy = load i32, ptr @hf_vnc_desktop_screen_height, align 4
  %i.asz = call ptr @proto_tree_add_item(ptr noundef %i.asg, i32 noundef %i.asy, ptr noundef %0, i32 noundef %i.asx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ata = load i32, ptr %i.h, align 4
  %i.atb = add i32 %i.ata, 2                      ; 2 uses
  store i32 %i.atb, ptr %i.h, align 4
  %i.atc = load i32, ptr @hf_vnc_desktop_screen_flags, align 4
  %i.atd = call ptr @proto_tree_add_item(ptr noundef %i.asg, i32 noundef %i.atc, ptr noundef %0, i32 noundef %i.atb, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ate = load i32, ptr %i.h, align 4
  %i.atf = add i32 %i.ate, 4                      ; 2 uses
  store i32 %i.atf, ptr %i.h, align 4
  %exitcond.not.i173.i.i = icmp eq i32 %i.asf, %i.arv
  br i1 %exitcond.not.i173.i.i, label %vnc_raw_encoding.exit.i.i, label %.lr.ph.i171.i.i, !llvm.loop !16

bb.ij:                                            ; preds = %bb.fj
  %i.atg = zext i16 %i.aad to i32                 ; 4 uses
  %i.ath = load i32, ptr %i.h, align 4
  %i.ati = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ath)
  %i.atj = icmp ult i32 %i.ati, %i.atg
  br i1 %i.atj, label %vnc_server_framebuffer_update.exit.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.atk = icmp ugt i16 %i.aad, 63
  br i1 %i.atk, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.atl = load i32, ptr @hf_vnc_supported_messages_client2server, align 4
  %i.atm = load i32, ptr %i.h, align 4
  %i.atn = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.atl, ptr noundef %0, i32 noundef %i.atm, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ato = load i32, ptr %i.h, align 4
  %i.atp = add i32 %i.ato, 32                     ; 2 uses
  store i32 %i.atp, ptr %i.h, align 4
  %i.atq = load i32, ptr @hf_vnc_supported_messages_server2client, align 4
  %i.atr = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.atq, ptr noundef %0, i32 noundef %i.atp, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ats = load i32, ptr %i.h, align 4
  %i.att = add nsw i32 %i.atg, -32
  %i.atu = add i32 %i.att, %i.ats
  br label %bb.in

bb.im:                                            ; preds = %bb.ik
  %i.atv = load i32, ptr %i.h, align 4
  %i.atw = add i32 %i.atv, %i.atg
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %storemerge.i.i.i = phi i32 [ %i.atw, %bb.im ], [ %i.atu, %bb.il ]
  store i32 %storemerge.i.i.i, ptr %i.h, align 4
  br label %vnc_raw_encoding.exit.i.i

bb.io:                                            ; preds = %bb.fj
  %i.atx = load i32, ptr @hf_vnc_num_supported_encodings, align 4
  %i.aty = load i32, ptr %i.h, align 4
  %i.atz = zext i16 %i.aaj to i32
  %i.aua = call ptr @proto_tree_add_uint(ptr noundef %i.aau, i32 noundef %i.atx, ptr noundef %0, i32 noundef %i.aty, i32 noundef 0, i32 noundef %i.atz) ; 0 uses
  %i.aub = zext i16 %i.aad to i32                 ; 3 uses
  %i.auc = load i32, ptr %i.h, align 4
  %i.aud = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.auc)
  %i.aue = icmp ult i32 %i.aud, %i.aub
  br i1 %i.aue, label %vnc_server_framebuffer_update.exit.i, label %.preheader.i176.i.i

.preheader.i176.i.i:                              ; preds = %bb.io
  %i.auf = icmp ugt i16 %i.aad, 3
  %.pre21.i.i.i = load i32, ptr %i.h, align 4     ; 2 uses
  br i1 %i.auf, label %.lr.ph.i177.i.i, label %._crit_edge.i.i.i

.lr.ph.i177.i.i:                                  ; preds = %.preheader.i176.i.i, %.lr.ph.i177.i.i
  %i.aug = phi i32 [ %i.auk, %.lr.ph.i177.i.i ], [ %.pre21.i.i.i, %.preheader.i176.i.i ]
  %.020.i.i.i = phi i16 [ %i.aul, %.lr.ph.i177.i.i ], [ %i.aad, %.preheader.i176.i.i ]
  %i.auh = load i32, ptr @hf_vnc_supported_encodings, align 4
  %i.aui = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.auh, ptr noundef %0, i32 noundef %i.aug, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.auj = load i32, ptr %i.h, align 4
  %i.auk = add i32 %i.auj, 4                      ; 3 uses
  store i32 %i.auk, ptr %i.h, align 4
  %i.aul = add i16 %.020.i.i.i, -4                ; 3 uses
  %i.aum = icmp ugt i16 %i.aul, 3
  br i1 %i.aum, label %.lr.ph.i177.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !17

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i177.i.i
  %.pre.i178.i.i = zext nneg i16 %i.aul to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i176.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i178.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aub, %.preheader.i176.i.i ]
  %i.aun = phi i32 [ %i.auk, %._crit_edge.loopexit.i.i.i ], [ %.pre21.i.i.i, %.preheader.i176.i.i ]
  %i.auo = add i32 %i.aun, %.pre-phi.i.i.i
  store i32 %i.auo, ptr %i.h, align 4
  br label %vnc_raw_encoding.exit.i.i

bb.ip:                                            ; preds = %bb.fj
  %i.aup = zext i16 %i.aad to i32                 ; 4 uses
  %i.auq = load i32, ptr %i.h, align 4
  %i.aur = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.auq)
  %i.aus = icmp ult i32 %i.aur, %i.aup
  br i1 %i.aus, label %vnc_server_framebuffer_update.exit.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aut = load i32, ptr @hf_vnc_server_identity, align 4
  %i.auu = load i32, ptr %i.h, align 4
  %i.auv = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.aut, ptr noundef %0, i32 noundef %i.auu, i32 noundef %i.aup, i32 noundef 0) ; 0 uses
  %i.auw = load i32, ptr %i.h, align 4
  %i.aux = add i32 %i.auw, %i.aup
  store i32 %i.aux, ptr %i.h, align 4
  br label %vnc_raw_encoding.exit.i.i

bb.ir:                                            ; preds = %bb.fj
  %i.auy = load i32, ptr %i.h, align 4
  %i.auz = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.auy)
  %i.ava = icmp ult i32 %i.auz, 20
  br i1 %i.ava, label %vnc_server_framebuffer_update.exit.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.avb = load i32, ptr @hf_vnc_context_information_app_id, align 4
  %i.avc = load i32, ptr %i.h, align 4
  %i.avd = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.avb, ptr noundef %0, i32 noundef %i.avc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ave = load i32, ptr %i.h, align 4
  %i.avf = add i32 %i.ave, 4                      ; 2 uses
  store i32 %i.avf, ptr %i.h, align 4
  %i.avg = load i32, ptr @hf_vnc_context_information_app_trust_level, align 4
  %i.avh = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.avg, ptr noundef %0, i32 noundef %i.avf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.avi = load i32, ptr %i.h, align 4
  %i.avj = add i32 %i.avi, 2                      ; 2 uses
  store i32 %i.avj, ptr %i.h, align 4
  %i.avk = load i32, ptr @hf_vnc_context_information_content_trust_level, align 4
  %i.avl = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.avk, ptr noundef %0, i32 noundef %i.avj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.avm = load i32, ptr %i.h, align 4
  %i.avn = add i32 %i.avm, 2                      ; 2 uses
  store i32 %i.avn, ptr %i.h, align 4
  %i.avo = load i32, ptr @hf_vnc_context_information_app_category, align 4
  %i.avp = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.avo, ptr noundef %0, i32 noundef %i.avn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.avq = load i32, ptr %i.h, align 4
  %i.avr = add i32 %i.avq, 4                      ; 2 uses
  store i32 %i.avr, ptr %i.h, align 4
  %i.avs = load i32, ptr @hf_vnc_context_information_content_category, align 4
  %i.avt = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.avs, ptr noundef %0, i32 noundef %i.avr, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.avu = load i32, ptr %i.h, align 4
  %i.avv = add i32 %i.avu, 4                      ; 2 uses
  store i32 %i.avv, ptr %i.h, align 4
  %i.avw = load i32, ptr @hf_vnc_context_information_content_rules, align 4
  %i.avx = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.avw, ptr noundef %0, i32 noundef %i.avv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.avy = load i32, ptr %i.h, align 4
  %i.avz = add i32 %i.avy, 4
  store i32 %i.avz, ptr %i.h, align 4
  br label %vnc_raw_encoding.exit.i.i

bb.it:                                            ; preds = %bb.fj
  %i.awa = call ptr @wmem_file_scope()
  %i.awb = load i32, ptr @proto_vnc, align 4
  %i.awc = call ptr @p_get_proto_data(ptr noundef %i.awa, ptr noundef %1, i32 noundef %i.awb, i32 noundef 0) ; 2 uses
  %.not.i.i181.i.i = icmp eq ptr %i.awc, null
  br i1 %.not.i.i181.i.i, label %bb.iu, label %vnc_get_depth.exit.i.i.i

bb.iu:                                            ; preds = %bb.it
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.897, ptr noundef nonnull @.str.898, i32 noundef 3878, ptr noundef nonnull @.str.899) #9
  unreachable

vnc_get_depth.exit.i.i.i:                         ; preds = %bb.it
  %.not.i182.i.i = icmp eq i16 %i.aaj, 0
  br i1 %.not.i182.i.i, label %vnc_raw_encoding.exit.i.i, label %.lr.ph.i183.i.i

.lr.ph.i183.i.i:                                  ; preds = %vnc_get_depth.exit.i.i.i
  %i.awd = getelementptr i8, ptr %i.awc, i64 5
  %i.awe = load i8, ptr %i.awd, align 1           ; 2 uses
  %4 = zext i8 %i.awe to i32
  %i.awf = and i8 %i.awe, 7                       ; 2 uses
  %5 = zext nneg i8 %i.awf to i32
  %reass.sub41.i.i.i = sub nsw i32 %4, %5
  %6 = icmp samesign ult i8 %i.awf, 5
  %.035.in.in.v.i.i.i = select i1 %6, i32 8, i32 16
  %.035.in.in.i.i.i = add nsw i32 %reass.sub41.i.i.i, %.035.in.in.v.i.i.i
  %.035.in424344.i.i.i = lshr i32 %.035.in.in.i.i.i, 3
  %wide.trip.count.i.i.i = zext i16 %i.aaj to i32
  %.pre.i184.i.i = load i32, ptr %i.h, align 4
  br label %bb.iv

bb.iv:                                            ; preds = %bb.ix, %.lr.ph.i183.i.i
  %i.awg = phi i32 [ %.pre.i184.i.i, %.lr.ph.i183.i.i ], [ %i.axd, %bb.ix ]
  %indvars.iv.i185.i.i = phi i32 [ 0, %.lr.ph.i183.i.i ], [ %i.awq, %bb.ix ]
  %i.awh = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.awg)
  %i.awi = icmp ult i32 %i.awh, 2
  br i1 %i.awi, label %vnc_server_framebuffer_update.exit.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.awj = load i32, ptr %i.h, align 4
  %i.awk = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.awj)
  %i.awl = zext i16 %i.awk to i32
  %i.awm = mul nuw nsw i32 %.035.in424344.i.i.i, %i.awl ; 5 uses
  %i.awn = load i32, ptr %i.h, align 4
  %i.awo = add nuw nsw i32 %i.awm, 2
  %i.awp = load i32, ptr @ett_vnc_slrle_subline, align 4
  %i.awq = add nuw nsw i32 %indvars.iv.i185.i.i, 1 ; 3 uses
  %i.awr = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.aau, ptr noundef %0, i32 noundef %i.awn, i32 noundef %i.awo, i32 noundef %i.awp, ptr noundef null, ptr noundef nonnull @.str.937, i32 noundef %i.awq) ; 2 uses
  %i.aws = load i32, ptr @hf_vnc_slrle_run_num, align 4
  %i.awt = load i32, ptr %i.h, align 4
  %i.awu = call ptr @proto_tree_add_item(ptr noundef %i.awr, i32 noundef %i.aws, ptr noundef %0, i32 noundef %i.awt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.awv = load i32, ptr %i.h, align 4
  %i.aww = add i32 %i.awv, 2                      ; 2 uses
  store i32 %i.aww, ptr %i.h, align 4
  %i.awx = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aww)
  %i.awy = icmp ugt i32 %i.awm, %i.awx
  br i1 %i.awy, label %vnc_server_framebuffer_update.exit.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.awz = load i32, ptr @hf_vnc_slrle_run_data, align 4
  %i.axa = load i32, ptr %i.h, align 4
  %i.axb = call ptr @proto_tree_add_item(ptr noundef %i.awr, i32 noundef %i.awz, ptr noundef %0, i32 noundef %i.axa, i32 noundef %i.awm, i32 noundef 0) ; 0 uses
  %i.axc = load i32, ptr %i.h, align 4
  %i.axd = add i32 %i.axc, %i.awm                 ; 2 uses
  store i32 %i.axd, ptr %i.h, align 4
  %exitcond.not.i186.i.i = icmp eq i32 %i.awq, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i186.i.i, label %vnc_raw_encoding.exit.i.i, label %bb.iv, !llvm.loop !18

bb.iy:                                            ; preds = %bb.fj
  %i.axe = load i32, ptr %i.h, align 4
  %i.axf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.axe)
  %i.axg = icmp ult i32 %i.axf, 16
  br i1 %i.axg, label %vnc_server_framebuffer_update.exit.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.axh = load i32, ptr %i.h, align 4
  %i.axi = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.axh) ; 4 uses
  %i.axj = load i32, ptr @hf_vnc_h264_nbytes, align 4
  %i.axk = load i32, ptr %i.h, align 4
  %i.axl = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.axj, ptr noundef %0, i32 noundef %i.axk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.axm = load i32, ptr %i.h, align 4
  %i.axn = add i32 %i.axm, 4                      ; 2 uses
  store i32 %i.axn, ptr %i.h, align 4
  %i.axo = load i32, ptr @hf_vnc_h264_slice_type, align 4
  %i.axp = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.axo, ptr noundef %0, i32 noundef %i.axn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.axq = load i32, ptr %i.h, align 4
  %i.axr = add i32 %i.axq, 4                      ; 2 uses
  store i32 %i.axr, ptr %i.h, align 4
  %i.axs = load i32, ptr @hf_vnc_h264_width, align 4
  %i.axt = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.axs, ptr noundef %0, i32 noundef %i.axr, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.axu = load i32, ptr %i.h, align 4
  %i.axv = add i32 %i.axu, 4                      ; 2 uses
  store i32 %i.axv, ptr %i.h, align 4
  %i.axw = load i32, ptr @hf_vnc_h264_height, align 4
  %i.axx = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.axw, ptr noundef %0, i32 noundef %i.axv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.axy = load i32, ptr %i.h, align 4
  %i.axz = add i32 %i.axy, 4                      ; 2 uses
  store i32 %i.axz, ptr %i.h, align 4
  %i.aya = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.axz)
  %i.ayb = icmp ugt i32 %i.axi, %i.aya
  br i1 %i.ayb, label %vnc_server_framebuffer_update.exit.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ayc = load i32, ptr @hf_vnc_h264_data, align 4
  %i.ayd = load i32, ptr %i.h, align 4
  %i.aye = call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.ayc, ptr noundef %0, i32 noundef %i.ayd, i32 noundef %i.axi, i32 noundef 0) ; 0 uses
  %i.ayf = load i32, ptr %i.h, align 4
  %i.ayg = add i32 %i.ayf, %i.axi
  store i32 %i.ayg, ptr %i.h, align 4
  br label %vnc_raw_encoding.exit.i.i

vnc_raw_encoding.exit.i.i:                        ; preds = %bb.ix, %.lr.ph.i171.i.i, %..loopexit153_crit_edge.i.i.i, %.lr.ph.i.i.i, %bb.ja, %vnc_get_depth.exit.i.i.i, %bb.is, %bb.iq, %._crit_edge.i.i.i, %bb.in, %bb.ii, %bb.ig, %bb.if, %bb.ic, %bb.hx, %bb.hw, %bb.hj, %bb.hi, %bb.hg, %bb.gx, %.lr.ph162.i.i.i, %vnc_get_bytes_per_pixel.exit.i155.i.i, %.preheader.i.i.i, %bb.fr, %bb.fn, %bb.fm, %bb.fj
  %.1.i.i = phi i32 [ 0, %bb.ic ], [ 0, %bb.hw ], [ 0, %bb.fn ], [ 0, %bb.if ], [ 0, %.lr.ph.i171.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %bb.ja ], [ 0, %bb.hi ], [ 0, %bb.ii ], [ 0, %bb.ig ], [ 0, %bb.in ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.fj ], [ 0, %..loopexit153_crit_edge.i.i.i ], [ 0, %bb.gx ], [ 0, %bb.iq ], [ 0, %bb.fm ], [ 0, %bb.is ], [ 0, %bb.fr ], [ %i.amy, %bb.hj ], [ %i.amo, %bb.hg ], [ 0, %.preheader.i.i.i ], [ 0, %vnc_get_bytes_per_pixel.exit.i155.i.i ], [ 0, %.lr.ph162.i.i.i ], [ 0, %vnc_get_depth.exit.i.i.i ], [ 0, %bb.hx ], [ 0, %bb.ix ] ; 2 uses
  %.not.i.i50 = icmp eq i32 %.1.i.i, 0
  br i1 %.not.i.i50, label %bb.ff, label %vnc_server_framebuffer_update.exit.i, !llvm.loop !11

bb.jb:                                            ; preds = %bb.fa
  %i.ayh = load ptr, ptr %i.r, align 8
  call void @col_append_sep_str(ptr noundef %i.ayh, i32 noundef 25, ptr noundef nonnull @.str.900, ptr noundef nonnull @.str.938)
  %i.ayi = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.ayj = load i32, ptr %i.h, align 4
  %i.ayk = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ayj)
  %i.ayl = icmp ult i32 %i.ayk, 3
  br i1 %i.ayl, label %vnc_server_framebuffer_update.exit.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aym = load i32, ptr @hf_vnc_padding, align 4
  %i.ayn = load i32, ptr %i.h, align 4
  %i.ayo = call ptr @proto_tree_add_item(ptr noundef %i.yq, i32 noundef %i.aym, ptr noundef %0, i32 noundef %i.ayn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ayp = load i32, ptr %i.h, align 4
  %i.ayq = add i32 %i.ayp, 1                      ; 2 uses
  store i32 %i.ayq, ptr %i.h, align 4
  %i.ayr = load i32, ptr @hf_vnc_colormap_first_color, align 4
  %i.ays = call ptr @proto_tree_add_item(ptr noundef %i.yq, i32 noundef %i.ayr, ptr noundef %0, i32 noundef %i.ayq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ayt = load i32, ptr %i.h, align 4
  %i.ayu = add i32 %i.ayt, 2                      ; 2 uses
  store i32 %i.ayu, ptr %i.h, align 4
  %i.ayv = load i32, ptr @hf_vnc_colormap_num_colors, align 4
  %i.ayw = call ptr @proto_tree_add_item(ptr noundef %i.yq, i32 noundef %i.ayv, ptr noundef %0, i32 noundef %i.ayu, i32 noundef 2, i32 noundef 0)
  %i.ayx = zext i16 %i.ayi to i32                 ; 3 uses
  %i.ayy = icmp ugt i16 %i.ayi, 10000
  br i1 %i.ayy, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.ayz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ayw, ptr noundef nonnull @ei_vnc_too_many_colors, ptr noundef nonnull @.str.939, i32 noundef %i.ayx) ; 0 uses
  br label %vnc_server_framebuffer_update.exit.thread.i

bb.je:                                            ; preds = %bb.jc
  %i.aza = mul nuw nsw i32 %i.ayx, 6              ; 2 uses
  %i.azb = add nuw nsw i32 %i.aza, 5              ; 2 uses
  %i.azc = load i32, ptr %i.h, align 4
  %i.azd = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.azc)
  %i.aze = icmp ugt i32 %i.azb, %i.azd
  br i1 %i.aze, label %vnc_server_framebuffer_update.exit.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.azf = load i32, ptr %i.h, align 4
  %i.azg = add i32 %i.azf, 2                      ; 2 uses
  store i32 %i.azg, ptr %i.h, align 4
  %i.azh = load i32, ptr @hf_vnc_color_groups, align 4
  %i.azi = call ptr @proto_tree_add_item(ptr noundef %i.yq, i32 noundef %i.azh, ptr noundef %0, i32 noundef %i.azg, i32 noundef %i.aza, i32 noundef 0)
  %i.azj = load i32, ptr @ett_vnc_colormap_num_groups, align 4
  %i.azk = call ptr @proto_item_add_subtree(ptr noundef %i.azi, i32 noundef %i.azj)
  %.not.i49.i = icmp eq i16 %i.ayi, 0
  br i1 %.not.i49.i, label %vnc_server_framebuffer_update.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.jf
  %.pre.i.i47 = load i32, ptr %i.h, align 4
  br label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %.lr.ph.i.i48, %.lr.ph.preheader.i.i
  %i.azl = phi i32 [ %i.bab, %.lr.ph.i.i48 ], [ %.pre.i.i47, %.lr.ph.preheader.i.i ]
  %.052.i.i = phi i32 [ %i.azn, %.lr.ph.i.i48 ], [ 0, %.lr.ph.preheader.i.i ]
  %i.azm = load i32, ptr @ett_vnc_colormap_color_group, align 4
  %i.azn = add nuw nsw i32 %.052.i.i, 1           ; 3 uses
  %i.azo = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.azk, ptr noundef %0, i32 noundef %i.azl, i32 noundef 6, i32 noundef %i.azm, ptr noundef null, ptr noundef nonnull @.str.940, i32 noundef %i.azn) ; 3 uses
  %i.azp = load i32, ptr @hf_vnc_colormap_red, align 4
  %i.azq = load i32, ptr %i.h, align 4
  %i.azr = call ptr @proto_tree_add_item(ptr noundef %i.azo, i32 noundef %i.azp, ptr noundef %0, i32 noundef %i.azq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.azs = load i32, ptr %i.h, align 4
  %i.azt = add i32 %i.azs, 2                      ; 2 uses
  store i32 %i.azt, ptr %i.h, align 4
  %i.azu = load i32, ptr @hf_vnc_colormap_green, align 4
  %i.azv = call ptr @proto_tree_add_item(ptr noundef %i.azo, i32 noundef %i.azu, ptr noundef %0, i32 noundef %i.azt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.azw = load i32, ptr %i.h, align 4
  %i.azx = add i32 %i.azw, 2                      ; 2 uses
  store i32 %i.azx, ptr %i.h, align 4
  %i.azy = load i32, ptr @hf_vnc_colormap_blue, align 4
  %i.azz = call ptr @proto_tree_add_item(ptr noundef %i.azo, i32 noundef %i.azy, ptr noundef %0, i32 noundef %i.azx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.baa = load i32, ptr %i.h, align 4
  %i.bab = add i32 %i.baa, 2                      ; 2 uses
  store i32 %i.bab, ptr %i.h, align 4
  %exitcond.not.i50.i = icmp eq i32 %i.azn, %i.ayx
  br i1 %exitcond.not.i50.i, label %vnc_server_framebuffer_update.exit.thread.i, label %.lr.ph.i.i48, !llvm.loop !19

bb.jg:                                            ; preds = %bb.fa
  %.val.i46 = load ptr, ptr %i.r, align 8
  call void @col_append_sep_str(ptr noundef %.val.i46, i32 noundef 25, ptr noundef nonnull @.str.900, ptr noundef nonnull @.str.941)
  br label %vnc_server_framebuffer_update.exit.i

bb.jh:                                            ; preds = %bb.fa
  %i.bac = load ptr, ptr %i.r, align 8
  call void @col_append_sep_str(ptr noundef %i.bac, i32 noundef 25, ptr noundef nonnull @.str.900, ptr noundef nonnull @.str.942)
  %i.bad = load i32, ptr %i.h, align 4
  %i.bae = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bad) ; 6 uses
  %i.baf = load i32, ptr @hf_vnc_server_cut_text_len, align 4
  %i.bag = load i32, ptr %i.h, align 4
  %i.bah = call ptr @proto_tree_add_item(ptr noundef %i.yq, i32 noundef %i.baf, ptr noundef %0, i32 noundef %i.bag, i32 noundef 4, i32 noundef 0)
  %i.bai = load i32, ptr %i.h, align 4
  %i.baj = add i32 %i.bai, 4                      ; 2 uses
  store i32 %i.baj, ptr %i.h, align 4
  %i.bak = icmp ugt i32 %i.bae, 100000
  br i1 %i.bak, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.bal = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bah, ptr noundef nonnull @ei_vnc_too_many_cut_text, ptr noundef nonnull @.str.943, i32 noundef %i.bae) ; 0 uses
  br label %vnc_server_framebuffer_update.exit.thread.i

bb.jj:                                            ; preds = %bb.jh
  %i.bam = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.baj)
  %i.ban = icmp ugt i32 %i.bae, %i.bam
  br i1 %i.ban, label %vnc_server_framebuffer_update.exit.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bao = load i32, ptr @hf_vnc_server_cut_text, align 4
  %i.bap = load i32, ptr %i.h, align 4
  %i.baq = call ptr @proto_tree_add_item(ptr noundef %i.yq, i32 noundef %i.bao, ptr noundef %0, i32 noundef %i.bap, i32 noundef %i.bae, i32 noundef 0) ; 0 uses
  %i.bar = load i32, ptr %i.h, align 4
  %i.bas = add i32 %i.bar, %i.bae                 ; 2 uses
  store i32 %i.bas, ptr %i.h, align 4
  br label %vnc_server_framebuffer_update.exit.i

bb.jl:                                            ; preds = %bb.fa
  %i.bat = call fastcc i32 @vnc_mirrorlink(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.h, ptr noundef %i.yq)
  br label %vnc_server_framebuffer_update.exit.i

bb.jm:                                            ; preds = %bb.fa
  %i.bau = load ptr, ptr %i.r, align 8
  call void @col_append_sep_str(ptr noundef %i.bau, i32 noundef 25, ptr noundef nonnull @.str.900, ptr noundef nonnull @.str.915)
  %i.bav = load i32, ptr %i.h, align 4
  %i.baw = add i32 %i.bav, 1
  store i32 %i.baw, ptr %i.h, align 4
  br label %vnc_server_framebuffer_update.exit.i

bb.jn:                                            ; preds = %bb.fa
  %i.bax = call fastcc i32 @vnc_fence(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.h, ptr noundef %i.yq)
  br label %vnc_server_framebuffer_update.exit.i

bb.jo:                                            ; preds = %bb.fa
  %i.bay = load ptr, ptr %i.r, align 8
  call void @col_append_sep_str(ptr noundef %i.bay, i32 noundef 25, ptr noundef nonnull @.str.900, ptr noundef nonnull @.str.916)
  %i.baz = call i32 @tvb_reported_length(ptr noundef %0)
  store i32 %i.baz, ptr %i.h, align 4
  br label %vnc_server_framebuffer_update.exit.i

vnc_server_framebuffer_update.exit.i:             ; preds = %vnc_raw_encoding.exit.i.i, %bb.iz, %bb.iy, %bb.ir, %bb.ip, %bb.io, %bb.ij, %bb.ih, %bb.ie, %bb.id, %vnc_get_bytes_per_pixel.exit.i168.i.i, %bb.hx, %bb.hv, %bb.hd, %bb.ha, %bb.gu, %bb.gr, %bb.go, %vnc_get_bytes_per_pixel.exit.i162.i.i, %bb.ft, %bb.fs, %vnc_get_bytes_per_pixel.exit.i153.i.i, %vnc_get_bytes_per_pixel.exit.i.i.i, %bb.fh, %bb.iw, %bb.iv, %bb.gi, %bb.gh, %bb.ge, %bb.gb, %bb.fy, %bb.fw, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.jg, %bb.je, %bb.jb, %.loopexit.i51
  %.1.i = phi i32 [ %.0.i43, %bb.jo ], [ %i.bax, %bb.jn ], [ 1, %bb.fw ], [ %.0.i43, %bb.jg ], [ 3, %bb.jb ], [ %i.bat, %bb.jl ], [ %.0.i43, %bb.jm ], [ %i.azb, %bb.je ], [ %i.bae, %bb.jj ], [ %i.bas, %bb.jk ], [ %i.awm, %bb.iw ], [ %.0102.i.i.i, %.loopexit.i51 ], [ %i.ahp, %bb.gi ], [ 3, %bb.gh ], [ %i.aef, %bb.ge ], [ %i.aef, %bb.gb ], [ %i.agd, %bb.fy ], [ 2, %bb.iv ], [ %i.atg, %bb.ij ], [ %i.aub, %bb.io ], [ %i.acw, %bb.ft ], [ 4, %vnc_get_bytes_per_pixel.exit.i153.i.i ], [ %i.acn, %bb.fs ], [ 20, %bb.ir ], [ %i.aup, %bb.ip ], [ %i.abe, %vnc_get_bytes_per_pixel.exit.i.i.i ], [ %i.akn, %bb.gu ], [ %i.aqa, %vnc_get_bytes_per_pixel.exit.i168.i.i ], [ %i.ake, %bb.gr ], [ 4, %vnc_get_bytes_per_pixel.exit.i162.i.i ], [ %i.aje, %bb.go ], [ 1, %bb.ha ], [ 3, %bb.hd ], [ 6, %bb.id ], [ %i.arx, %bb.ih ], [ %i.apb, %bb.hv ], [ %i.apk, %bb.hx ], [ %i.ara, %bb.ie ], [ 16, %bb.iy ], [ %.1.i.i, %vnc_raw_encoding.exit.i.i ], [ 12, %bb.fh ], [ %i.axi, %bb.iz ] ; 3 uses
  %i.bba = icmp sgt i32 %.1.i, 0
  %i.bbb = load i8, ptr @vnc_preference_desegment, align 1, !range !20
  %i.bbc = trunc nuw i8 %i.bbb to i1
  %or.cond.i44 = select i1 %i.bba, i1 %i.bbc, i1 false
  br i1 %or.cond.i44, label %bb.jp, label %vnc_server_framebuffer_update.exit.thread.i

bb.jp:                                            ; preds = %vnc_server_framebuffer_update.exit.i
  %i.bbd = load i16, ptr %i.yj, align 8
  %.not.i45 = icmp eq i16 %i.bbd, 0
  br i1 %.not.i45, label %vnc_server_framebuffer_update.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bbe = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.yq, ptr noundef %1, ptr noundef nonnull @ei_vnc_reassemble, ptr noundef %0, i32 noundef %i.yk) ; 0 uses
  %i.bbf = getelementptr i8, ptr %1, i64 340
  store i32 %i.yk, ptr %i.bbf, align 4
  %i.bbg = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.bbg, align 8
  br label %vnc_client_to_server.exit

vnc_server_framebuffer_update.exit.thread.i:      ; preds = %.lr.ph.i.i48, %bb.ff, %bb.fi, %bb.fe, %bb.jp, %vnc_server_framebuffer_update.exit.i, %bb.ji, %bb.jf, %bb.jd, %bb.fg, %bb.fd
  %.161.i = phi i32 [ %.1.i, %vnc_server_framebuffer_update.exit.i ], [ %.1.i, %bb.jp ], [ 0, %bb.fe ], [ 0, %bb.fd ], [ 0, %bb.fg ], [ 0, %bb.jf ], [ 0, %bb.ji ], [ 0, %bb.jd ], [ 0, %bb.ff ], [ 0, %bb.fi ], [ 0, %.lr.ph.i.i48 ]
  %i.bbh = load i32, ptr %i.h, align 4
  %i.bbi = call i32 @tvb_reported_length(ptr noundef %0)
  %i.bbj = icmp ult i32 %i.bbh, %i.bbi
  br i1 %i.bbj, label %bb.fa, label %vnc_client_to_server.exit

vnc_client_to_server.exit:                        ; preds = %vnc_server_framebuffer_update.exit.thread.i, %bb.jq, %bb.ey, %vnc_qemu.exit.i, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %vnc_client_cut_text_extended.exit.i, %bb.dq, %bb.dp, %bb.do, %._crit_edge.thread.i.i, %._crit_edge.i.i, %vnc_client_set_pixel_format.exit.i
  %i.bbk = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jr

bb.jr:                                            ; preds = %vnc_client_to_server.exit, %bb.cx, %bb.cv
  %.038 = phi i32 [ %i.pl, %bb.cv ], [ %i.pr, %bb.cx ], [ %i.bbk, %vnc_client_to_server.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  ret i32 %.038
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

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @apply_vnc_prefs() #0 {
bb.a:
  %i.a = tail call ptr @prefs_get_range_value(ptr noundef nonnull @.str.721, ptr noundef nonnull @.str.725)
  store ptr %i.a, ptr @vnc_tcp_range, align 8
end_hunk_0
