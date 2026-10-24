Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-rdpudp?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
begin_hunk_0_@dissect_rdpudp:bb.a
bb.t:                                             ; preds = %bb.s
  %i.ed = load i32, ptr @hf_rdpudp_resetseqenum, align 4
  %i.ee = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ed, ptr noundef %0, i32 noundef %.6.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ef = add i32 %.6.i, 4
  %i.eg = load ptr, ptr %i.ac, align 8
  tail call void @col_append_sep_str(ptr noundef %i.eg, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.159)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.7.i = phi i32 [ %i.ef, %bb.t ], [ %.6.i, %bb.s ] ; 5 uses
  %i.eh = and i32 %i.an, 8
  %.not155.i = icmp eq i32 %i.eh, 0
  br i1 %.not155.i, label %dissect_rdpudp_v1.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %i.ac, align 8
  tail call void @col_append_sep_str(ptr noundef %i.ei, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.160)
  %i.ej = load i32, ptr @ett_rdpudp_data, align 4
  %i.ek = tail call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %0, i32 noundef %.7.i, i32 noundef -1, i32 noundef %i.ej, ptr noundef null, ptr noundef @.str.12) ; 3 uses
  %i.el = load i32, ptr @hf_rdpudp_source_sncoded, align 4
  %i.em = tail call ptr @proto_tree_add_item(ptr noundef %i.ek, i32 noundef %i.el, ptr noundef %0, i32 noundef %.7.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.en = add i32 %.7.i, 4
  %i.eo = load i32, ptr @hf_rdpudp_source_snSourceStart, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.ek, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.en, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.eq = add i32 %.7.i, 8
  %i.er = getelementptr i8, ptr %.0, i64 4
  %i.es = load i8, ptr %i.er, align 4, !range !6, !noundef !7
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = load ptr, ptr @dtls_handle, align 8
  %i.ev = load ptr, ptr @tls_handle, align 8
  %i.ew = select i1 %i.et, ptr %i.eu, ptr %i.ev
  %i.ex = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.eq)
  %i.ey = tail call i32 @call_dissector(ptr noundef %i.ew, ptr noundef %i.ex, ptr noundef %1, ptr noundef %i.ek) ; 0 uses
  %i.ez = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_rdpudp_v1.exit

bb.w:                                             ; preds = %bb.c
  %i.fa = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.fb = getelementptr i8, ptr %1, i64 416
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = sext i32 %i.fa to i64                   ; 2 uses
  %i.fe = tail call noalias ptr @wmem_alloc(ptr noundef %i.fc, i64 noundef %i.fd) #7 ; 4 uses
  %i.ff = tail call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.fe, i32 noundef 0, i64 noundef %i.fd) ; 0 uses
  %i.fg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  store i8 %i.fg, ptr %i.fe, align 1
  %i.fh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.fi = getelementptr i8, ptr %i.fe, i64 7
  store i8 %i.fh, ptr %i.fi, align 1
  %i.fj = tail call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.fe, i32 noundef %i.fa, i32 noundef %i.fa) ; 43 uses
  %i.fk = getelementptr i8, ptr %1, i64 8         ; 8 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void @col_set_str(ptr noundef %i.fl, i32 noundef 35, ptr noundef @.str.161)
  %i.fm = load ptr, ptr %i.fk, align 8
  tail call void @col_clear(ptr noundef %i.fm, i32 noundef 25)
  %i.fn = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.fj, ptr noundef @.str.162) ; 0 uses
  %i.fo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.fj, i32 noundef 0)
  %i.fp = lshr i8 %i.fo, 1
  %i.fq = and i8 %i.fp, 15                        ; 2 uses
  %i.fr = load i32, ptr @hf_rdpudp2_PacketPrefixByte, align 4
  %i.fs = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.fr, ptr noundef %i.fj, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648)
  %i.ft = load i32, ptr @ett_rdpudp2_packetType, align 4
  %i.fu = tail call ptr @proto_item_add_subtree(ptr noundef %i.fs, i32 noundef %i.ft) ; 2 uses
  %i.fv = load i32, ptr @hf_rdpudp2_packetType, align 4
  %i.fw = tail call ptr @proto_tree_add_item(ptr noundef %i.fu, i32 noundef %i.fv, ptr noundef %i.fj, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fx = load i32, ptr @hf_rdpudp2_shortPacketLength, align 4
  %i.fy = tail call ptr @proto_tree_add_item(ptr noundef %i.fu, i32 noundef %i.fx, ptr noundef %i.fj, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fz = load i32, ptr @hf_rdpudp2_flags, align 4
  %i.ga = load i32, ptr @ett_rdpudp2_flags, align 4
  %i.gb = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef 1, i32 noundef %i.fz, i32 noundef %i.ga, ptr noundef @rdpudp2_flags, i32 noundef -2147483648) ; 0 uses
  %i.gc = tail call zeroext i16 @tvb_get_uint16(ptr noundef %i.fj, i32 noundef 1, i32 noundef -2147483648)
  %i.gd = tail call zeroext i1 @rdp_isServerAddressTarget(ptr noundef %1) ; 3 uses
  %.v.i = select i1 %i.gd, i64 88, i64 48
  %i.ge = getelementptr i8, ptr %.0, i64 %.v.i    ; 5 uses
  %i.gf = zext i16 %i.gc to i32                   ; 6 uses
  %i.gg = and i32 %i.gf, 1
  %.not.i25 = icmp eq i32 %i.gg, 0
  br i1 %.not.i25, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 9)
  %i.gi = and i8 %i.gh, 15
  %i.gj = zext nneg i8 %i.gi to i32               ; 3 uses
  %i.gk = add nuw nsw i32 %i.gj, 7
  %i.gl = load i32, ptr @ett_rdpudp2_ack, align 4
  %i.gm = tail call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef 3, i32 noundef %i.gk, i32 noundef %i.gl, ptr noundef null, ptr noundef @.str.10) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.gn = load i32, ptr @hf_rdpudp2_AckSeq, align 4
  %i.go = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gm, i32 noundef %i.gn, ptr noundef %i.fj, i32 noundef 3, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.gp = load i32, ptr @hf_rdpudp2_AckTs, align 4
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.gm, i32 noundef %i.gp, ptr noundef %i.fj, i32 noundef 5, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.gr = load i32, ptr @hf_rdpudp2_AckSendTimeGap, align 4
  %i.gs = call ptr @proto_tree_add_item(ptr noundef %i.gm, i32 noundef %i.gr, ptr noundef %i.fj, i32 noundef 8, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gt = load i32, ptr @hf_rdpudp2_ndelayedAcks, align 4
  %i.gu = call ptr @proto_tree_add_item(ptr noundef %i.gm, i32 noundef %i.gt, ptr noundef %i.fj, i32 noundef 9, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gv = load i32, ptr @hf_rdpudp2_delayedTimeScale, align 4
  %i.gw = call ptr @proto_tree_add_item(ptr noundef %i.gm, i32 noundef %i.gv, ptr noundef %i.fj, i32 noundef 9, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gx = load i32, ptr @hf_rdpudp2_AckedRange, align 4
  %i.gy = load i32, ptr %i.a, align 4             ; 2 uses
  %i.gz = sub i32 %i.gy, %i.gj
  %i.ha = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %i.gm, i32 noundef %i.gx, ptr noundef %i.fj, i32 noundef 3, i32 noundef 2, ptr noundef null, ptr noundef @.str.163, i32 noundef %i.gz, i32 noundef %i.gy) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = getelementptr i8, ptr %i.ha, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.hc, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hd = getelementptr i8, ptr %i.hc, i64 28     ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = or i32 %i.he, 2
  store i32 %i.hf, ptr %i.hd, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.z, %bb.y, %bb.x
  %i.hg = add nuw nsw i32 %i.gj, 10
  %i.hh = load ptr, ptr %i.fk, align 8
  call void @col_append_sep_str(ptr noundef %i.hh, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.aa

bb.aa:                                            ; preds = %proto_item_set_generated.exit.i, %bb.w
  %.0257.i = phi i32 [ %i.hg, %proto_item_set_generated.exit.i ], [ 3, %bb.w ] ; 4 uses
  %i.hi = and i32 %i.gf, 64
  %.not264.i = icmp eq i32 %i.hi, 0
  br i1 %.not264.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = load i32, ptr @ett_rdpudp2_overhead, align 4
  %i.hk = call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef %.0257.i, i32 noundef 1, i32 noundef %i.hj, ptr noundef null, ptr noundef @.str.164)
  %i.hl = load i32, ptr @hf_rdpudp2_OverHeadSize, align 4
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.hl, ptr noundef %i.fj, i32 noundef %.0257.i, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hn = add nuw nsw i32 %.0257.i, 1
  %i.ho = load ptr, ptr %i.fk, align 8
  call void @col_append_sep_str(ptr noundef %i.ho, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.165)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i26 = phi i32 [ %i.hn, %bb.ab ], [ %.0257.i, %bb.aa ] ; 5 uses
  %i.hp = and i32 %i.gf, 256
  %.not265.i = icmp eq i32 %i.hp, 0
  br i1 %.not265.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = load i32, ptr @ett_rdpudp2_delayack, align 4
  %i.hr = call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef %.1.i26, i32 noundef 3, i32 noundef %i.hq, ptr noundef null, ptr noundef @.str.166) ; 2 uses
  %i.hs = load i32, ptr @hf_rdpudp2_DelayAckMax, align 4
  %i.ht = call ptr @proto_tree_add_item(ptr noundef %i.hr, i32 noundef %i.hs, ptr noundef %i.fj, i32 noundef %.1.i26, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hu = add nuw nsw i32 %.1.i26, 1
  %i.hv = load i32, ptr @hf_rdpudp2_DelayAckTimeout, align 4
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.hr, i32 noundef %i.hv, ptr noundef %i.fj, i32 noundef %i.hu, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hx = add nuw nsw i32 %.1.i26, 3
  %i.hy = load ptr, ptr %i.fk, align 8
  call void @col_append_sep_str(ptr noundef %i.hy, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.167)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.i = phi i32 [ %i.hx, %bb.ad ], [ %.1.i26, %bb.ac ] ; 4 uses
  %i.hz = and i32 %i.gf, 16
  %.not266.i = icmp eq i32 %i.hz, 0
  br i1 %.not266.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ia = load i32, ptr @ett_rdpudp2_aoa, align 4
  %i.ib = call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef %.2.i, i32 noundef 1, i32 noundef %i.ia, ptr noundef null, ptr noundef @.str.20)
  %i.ic = load i32, ptr @hf_rdpudp2_AckOfAcksSeqNum, align 4
  %i.id = call ptr @proto_tree_add_item(ptr noundef %i.ib, i32 noundef %i.ic, ptr noundef %i.fj, i32 noundef %.2.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ie = add nuw nsw i32 %.2.i, 2
  %i.if = load ptr, ptr %i.fk, align 8
  call void @col_append_sep_str(ptr noundef %i.if, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.159)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3.i27 = phi i32 [ %i.ie, %bb.af ], [ %.2.i, %bb.ae ] ; 5 uses
  %i.ig = and i32 %i.gf, 4
  %i.ih = icmp ne i32 %i.ig, 0                    ; 2 uses
  br i1 %i.ih, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ii = icmp eq i8 %i.fq, 8                     ; 2 uses
  %i.ij = load i32, ptr @ett_rdpudp2_data, align 4
  %i.ik = select i1 %i.ii, ptr @.str.168, ptr @.str.12
  %i.il = call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef %.3.i27, i32 noundef 1, i32 noundef %i.ij, ptr noundef null, ptr noundef nonnull %i.ik) ; 3 uses
  %i.im = load i32, ptr @hf_rdpudp2_DataSeqNumber, align 4
  %i.in = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.il, i32 noundef %i.im, ptr noundef %i.fj, i32 noundef %.3.i27, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.io = getelementptr i8, ptr %1, i64 80
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr i8, ptr %i.ip, i64 53
  %i.ir = load i16, ptr %i.iq, align 1
  %i.is = and i16 %i.ir, 8
  %.not267.i = icmp eq i16 %i.is, 0
  %i.it = call ptr @wmem_file_scope()             ; 2 uses
  br i1 %.not267.i, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.iu = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.it, i64 noundef 8) #7 ; 3 uses
  %i.iv = load i32, ptr %i.b, align 4             ; 4 uses
  %i.iw = trunc i32 %i.iv to i16                  ; 6 uses
  %i.ix = getelementptr i8, ptr %i.ge, i64 8      ; 3 uses
  %i.iy = load i16, ptr %i.ix, align 8            ; 4 uses
  %4 = icmp ugt i16 %i.iy, %i.iw                  ; 2 uses
  %5 = sub nuw i16 %i.iy, %i.iw
  %i.iz = sub nuw i16 %i.iw, %i.iy
  %6 = select i1 %4, i16 %5, i16 %i.iz
  %i.ja = icmp ult i16 %6, 8000
  br i1 %i.ja, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.jb = icmp ult i16 %i.iy, %i.iw
  br i1 %i.jb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.iw, ptr %i.ix, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jc = load i64, ptr %i.ge, align 8
  %.mask296.i = and i32 %i.iv, 65535
  %i.jd = zext nneg i32 %.mask296.i to i64
  %i.je = add i64 %i.jc, %i.jd
  br label %computeAndUpdateSeqContext.exit.i

bb.am:                                            ; preds = %bb.ai
  br i1 %4, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i16 %i.iw, ptr %i.ix, align 8
  %i.jf = load i64, ptr %i.ge, align 8
  %i.jg = add i64 %i.jf, 65536                    ; 2 uses
  store i64 %i.jg, ptr %i.ge, align 8
  %.mask.i = and i32 %i.iv, 65535
  %i.jh = zext nneg i32 %.mask.i to i64
  %i.ji = add i64 %i.jg, %i.jh
  br label %computeAndUpdateSeqContext.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.jj = load i64, ptr %i.ge, align 8
  %i.jk = zext i32 %i.iv to i64
  %i.jl = or i64 %i.jk, -65536
  %i.jm = add i64 %i.jj, %i.jl
  br label %computeAndUpdateSeqContext.exit.i

computeAndUpdateSeqContext.exit.i:                ; preds = %bb.ao, %bb.an, %bb.al
  %.0.i.i.i = phi i64 [ %i.je, %bb.al ], [ %i.ji, %bb.an ], [ %i.jm, %bb.ao ]
  store i64 %.0.i.i.i, ptr %i.iu, align 8
  %i.jn = call ptr @wmem_file_scope()
  %i.jo = load i32, ptr @proto_rdpudp, align 4
  call void @p_set_proto_data(ptr noundef %i.jn, ptr noundef %1, i32 noundef %i.jo, i32 noundef 1, ptr noundef %i.iu)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.jp = load i32, ptr @proto_rdpudp, align 4
  %i.jq = call ptr @p_get_proto_data(ptr noundef %i.it, ptr noundef %1, i32 noundef %i.jp, i32 noundef 1)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %computeAndUpdateSeqContext.exit.i
  %.0256.i = phi ptr [ %i.jq, %bb.ap ], [ %i.iu, %computeAndUpdateSeqContext.exit.i ]
  %i.jr = load i32, ptr @hf_rdpudp2_DataFullSeqNumber, align 4
  %i.js = load i64, ptr %.0256.i, align 8
  %i.jt = trunc i64 %i.js to i32
  %i.ju = call ptr @proto_tree_add_uint(ptr noundef %i.il, i32 noundef %i.jr, ptr noundef %i.fj, i32 noundef %.3.i27, i32 noundef 2, i32 noundef %i.jt) ; 2 uses
  %.not.i286.i = icmp eq ptr %i.ju, null
  br i1 %.not.i286.i, label %proto_item_set_generated.exit288.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jv = getelementptr i8, ptr %i.ju, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  %.not5.i287.i = icmp eq ptr %i.jw, null
  br i1 %.not5.i287.i, label %proto_item_set_generated.exit288.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jx = getelementptr i8, ptr %i.jw, i64 28     ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = or i32 %i.jy, 2
  store i32 %i.jz, ptr %i.jx, align 4
  br label %proto_item_set_generated.exit288.i

proto_item_set_generated.exit288.i:               ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ka = add nuw nsw i32 %.3.i27, 2
  %i.kb = load ptr, ptr %i.fk, align 8
  %i.kc = select i1 %i.ii, ptr @.str.169, ptr @.str.160
  call void @col_append_sep_str(ptr noundef %i.kb, i32 noundef 25, ptr noundef @.str.153, ptr noundef nonnull %i.kc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.at

bb.at:                                            ; preds = %proto_item_set_generated.exit288.i, %bb.ag
  %.0258.i = phi ptr [ %i.il, %proto_item_set_generated.exit288.i ], [ null, %bb.ag ] ; 3 uses
  %.4.i = phi i32 [ %i.ka, %proto_item_set_generated.exit288.i ], [ %.3.i27, %bb.ag ] ; 7 uses
  %i.kd = and i32 %i.gf, 8
  %.not268.i = icmp eq i32 %i.kd, 0
  br i1 %.not268.i, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ke = add nuw nsw i32 %.4.i, 2                ; 3 uses
  %i.kf = call zeroext i8 @tvb_get_uint8(ptr noundef %i.fj, i32 noundef %i.ke) ; 2 uses
  %i.kg = and i8 %i.kf, 127                       ; 2 uses
  %.not269.i = icmp sgt i8 %i.kf, -1              ; 2 uses
  %i.kh = zext nneg i8 %i.kg to i32               ; 4 uses
  %spec.select.v.i = select i1 %.not269.i, i32 3, i32 6
  %spec.select.i28 = add nuw nsw i32 %spec.select.v.i, %i.kh
  %i.ki = load i32, ptr @ett_rdpudp2_ackvec, align 4
  %i.kj = call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %i.fj, i32 noundef %.4.i, i32 noundef %spec.select.i28, i32 noundef %i.ki, ptr noundef null, ptr noundef @.str.72) ; 6 uses
  %i.kk = load i32, ptr @hf_rdpudp2_AckvecBaseSeq, align 4
  %i.kl = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.kj, i32 noundef %i.kk, ptr noundef %i.fj, i32 noundef %.4.i, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.km = load i32, ptr @hf_rdpudp2_AckvecCodecAckVecSize, align 4
  %i.kn = call ptr @proto_tree_add_item(ptr noundef %i.kj, i32 noundef %i.km, ptr noundef %i.fj, i32 noundef %i.ke, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ko = load i32, ptr @hf_rdpudp2_AckvecHaveTs, align 4
  %i.kp = call ptr @proto_tree_add_item(ptr noundef %i.kj, i32 noundef %i.ko, ptr noundef %i.fj, i32 noundef %i.ke, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.kq = add nuw nsw i32 %.4.i, 3                ; 2 uses
  br i1 %.not269.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kr = load i32, ptr @hf_rdpudp2_AckvecTimeStamp, align 4
  %i.ks = call ptr @proto_tree_add_item(ptr noundef %i.kj, i32 noundef %i.kr, ptr noundef %i.fj, i32 noundef %i.kq, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.kt = add nuw nsw i32 %.4.i, 6
  %i.ku = load i32, ptr @hf_rdpudp2_SendAckTimeGapInMs, align 4
  %i.kv = call ptr @proto_tree_add_item(ptr noundef %i.kj, i32 noundef %i.ku, ptr noundef %i.fj, i32 noundef %i.kt, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.kw = add nuw nsw i32 %.4.i, 7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.5.i29 = phi i32 [ %i.kw, %bb.av ], [ %i.kq, %bb.au ] ; 3 uses
  %i.kx = load i32, ptr @ett_rdpudp2_ackvec_vecs, align 4
  %i.ky = call ptr @proto_tree_add_subtree(ptr noundef %i.kj, ptr noundef %i.fj, i32 noundef %.5.i29, i32 noundef %i.kh, i32 noundef %i.kx, ptr noundef null, ptr noundef @.str.170) ; 2 uses
  %.not301.i = icmp eq i8 %i.kg, 0
  br i1 %.not301.i, label %._crit_edge.i31, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.aw, %bb.ay
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %i.kz = add nuw nsw i32 %indvars.iv.i, %.5.i29  ; 6 uses
  %i.la = call zeroext i8 @tvb_get_uint8(ptr noundef %i.fj, i32 noundef %i.kz) ; 4 uses
  %i.lb = zext i8 %i.la to i32                    ; 7 uses
  %.not277.i = icmp sgt i8 %i.la, -1
  br i1 %.not277.i, label %.thread.i, label %bb.ax

.thread.i:                                        ; preds = %.lr.ph.i30
  %i.lc = load i32, ptr @ett_rdpudp2_ackvec_vec, align 4
  %i.ld = and i32 %i.lb, 1
  %.not278.i = icmp eq i32 %i.ld, 0
  %i.le = select i1 %.not278.i, ptr @.str.174, ptr @.str.173
  %i.lf = load i32, ptr %i.c, align 4             ; 7 uses
  %i.lg = and i32 %i.lb, 2
  %.not279.i = icmp eq i32 %i.lg, 0
  %i.lh = select i1 %.not279.i, ptr @.str.174, ptr @.str.173
  %i.li = add i32 %i.lf, 1
  %i.lj = and i32 %i.lb, 4
  %.not280.i = icmp eq i32 %i.lj, 0
  %i.lk = select i1 %.not280.i, ptr @.str.174, ptr @.str.173
  %i.ll = add i32 %i.lf, 2
  %i.lm = and i32 %i.lb, 8
  %.not281.i = icmp eq i32 %i.lm, 0
  %i.ln = select i1 %.not281.i, ptr @.str.174, ptr @.str.173
  %i.lo = add i32 %i.lf, 3
  %i.lp = and i32 %i.lb, 16
  %.not282.i = icmp eq i32 %i.lp, 0
  %i.lq = select i1 %.not282.i, ptr @.str.174, ptr @.str.173
  %i.lr = add i32 %i.lf, 4
  %i.ls = and i32 %i.lb, 32
  %.not283.i = icmp eq i32 %i.ls, 0
  %i.lt = select i1 %.not283.i, ptr @.str.174, ptr @.str.173
  %i.lu = add i32 %i.lf, 5
  %.not284.i = icmp samesign ult i8 %i.la, 64
  %i.lv = select i1 %.not284.i, ptr @.str.174, ptr @.str.173
  %i.lw = add i32 %i.lf, 6
  %i.lx = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ky, ptr noundef %i.fj, i32 noundef %i.kz, i32 noundef 1, i32 noundef %i.lc, ptr noundef null, ptr noundef @.str.172, ptr noundef nonnull %i.le, i32 noundef %i.lf, ptr noundef nonnull %i.lh, i32 noundef %i.li, ptr noundef nonnull %i.lk, i32 noundef %i.ll, ptr noundef nonnull %i.ln, i32 noundef %i.lo, ptr noundef nonnull %i.lq, i32 noundef %i.lr, ptr noundef nonnull %i.lt, i32 noundef %i.lu, ptr noundef nonnull %i.lv, i32 noundef %i.lw)
  %i.ly = load i32, ptr %i.c, align 4
  %i.lz = add i32 %i.ly, 7
  store i32 %i.lz, ptr %i.c, align 4
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i30
  %i.ma = and i8 %i.la, 63
  %i.mb = load i32, ptr @ett_rdpudp2_ackvec_vec, align 4
  %i.mc = and i32 %i.lb, 64
  %.not285.i = icmp eq i32 %i.mc, 0
  %i.md = select i1 %.not285.i, ptr @.str.150, ptr @.str.151
  %i.me = load i32, ptr %i.c, align 4             ; 2 uses
  %i.mf = zext nneg i8 %i.ma to i32               ; 2 uses
  %i.mg = add i32 %i.me, %i.mf
  %i.mh = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ky, ptr noundef %i.fj, i32 noundef %i.kz, i32 noundef 1, i32 noundef %i.mb, ptr noundef null, ptr noundef @.str.171, ptr noundef nonnull %i.md, i32 noundef %i.me, i32 noundef %i.mg) ; 3 uses
  %i.mi = load i32, ptr %i.c, align 4
  %i.mj = add i32 %i.mi, %i.mf
  store i32 %i.mj, ptr %i.c, align 4
  %i.mk = load i32, ptr @hf_rdpudp2_AckvecCodedAckMode, align 4
  %i.ml = call ptr @proto_tree_add_item(ptr noundef %i.mh, i32 noundef %i.mk, ptr noundef %i.fj, i32 noundef %i.kz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mm = load i32, ptr @hf_rdpudp2_AckvecCodedAckRleState, align 4
  %i.mn = call ptr @proto_tree_add_item(ptr noundef %i.mh, i32 noundef %i.mm, ptr noundef %i.fj, i32 noundef %i.kz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread.i
  %hf_rdpudp2_AckvecCodedAckMode.sink.i = phi ptr [ @hf_rdpudp2_AckvecCodedAckMode, %.thread.i ], [ @hf_rdpudp2_AckvecCodedAckRleLen, %bb.ax ]
  %.sink.i = phi ptr [ %i.lx, %.thread.i ], [ %i.mh, %bb.ax ]
  %i.mo = load i32, ptr %hf_rdpudp2_AckvecCodedAckMode.sink.i, align 4
  %i.mp = call ptr @proto_tree_add_item(ptr noundef %.sink.i, i32 noundef %i.mo, ptr noundef %i.fj, i32 noundef %i.kz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %i.kh
  br i1 %exitcond.not.i, label %._crit_edge.i31, label %.lr.ph.i30, !llvm.loop !9

._crit_edge.i31:                                  ; preds = %bb.ay, %bb.aw
  %i.mq = add nuw nsw i32 %.5.i29, %i.kh
  %i.mr = load ptr, ptr %i.fk, align 8
  call void @col_append_sep_str(ptr noundef %i.mr, i32 noundef 25, ptr noundef @.str.153, ptr noundef @.str.175)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i31, %bb.at
  %.6.i32 = phi i32 [ %i.mq, %._crit_edge.i31 ], [ %.4.i, %bb.at ] ; 4 uses
  %i.ms = icmp ne i8 %i.fq, 8
  %or.cond.i = select i1 %i.ih, i1 %i.ms, i1 false
  br i1 %or.cond.i, label %bb.ba, label %dissect_rdpudp_v1.exit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %.in.v.i = select i1 %i.gd, i64 80, i64 40
  %.in.i = getelementptr i8, ptr %.0, i64 %.in.v.i
  %i.mt = load ptr, ptr %.in.i, align 8           ; 3 uses
  %i.mu = load i32, ptr @hf_rdpudp2_DataChannelSeqNumber, align 4
  %i.mv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0258.i, i32 noundef %i.mu, ptr noundef %i.fj, i32 noundef %.6.i32, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.mw = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = getelementptr i8, ptr %i.mx, i64 53
  %i.mz = load i16, ptr %i.my, align 1
  %i.na = and i16 %i.mz, 8
  %.not271.i = icmp eq i16 %i.na, 0
  br i1 %.not271.i, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %.v270.i = select i1 %i.gd, i64 104, i64 64
  %i.nb = getelementptr i8, ptr %.0, i64 %.v270.i ; 5 uses
  %i.nc = call ptr @wmem_file_scope()
  %i.nd = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.nc, i64 noundef 8) #7 ; 3 uses
  %i.ne = load i32, ptr %i.d, align 4             ; 4 uses
  %i.nf = trunc i32 %i.ne to i16                  ; 6 uses
  %i.ng = getelementptr i8, ptr %i.nb, i64 8      ; 3 uses
  %i.nh = load i16, ptr %i.ng, align 8            ; 4 uses
  %7 = icmp ugt i16 %i.nh, %i.nf                  ; 2 uses
  %8 = sub nuw i16 %i.nh, %i.nf
  %i.ni = sub nuw i16 %i.nf, %i.nh
  %9 = select i1 %7, i16 %8, i16 %i.ni
  %i.nj = icmp ult i16 %9, 8000
  br i1 %i.nj, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.nk = icmp ult i16 %i.nh, %i.nf
  br i1 %i.nk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i16 %i.nf, ptr %i.ng, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.nl = load i64, ptr %i.nb, align 8
  %.mask299.i.a = and i32 %i.ne, 65535
  %i.nm = zext nneg i32 %.mask299.i.a to i64
  %i.nn = add i64 %i.nl, %i.nm
  br label %computeAndUpdateSeqContext.exit290.i

bb.bf:                                            ; preds = %bb.bb
  br i1 %7, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i16 %i.nf, ptr %i.ng, align 8
  %i.no = load i64, ptr %i.nb, align 8
  %i.np = add i64 %i.no, 65536                    ; 2 uses
  store i64 %i.np, ptr %i.nb, align 8
  %.mask298.i = and i32 %i.ne, 65535
  %i.nq = zext nneg i32 %.mask298.i to i64
  %i.nr = add i64 %i.np, %i.nq
  br label %computeAndUpdateSeqContext.exit290.i

bb.bh:                                            ; preds = %bb.bf
  %i.ns = load i64, ptr %i.nb, align 8
  %i.nt = zext i32 %i.ne to i64
  %i.nu = or i64 %i.nt, -65536
  %i.nv = add i64 %i.ns, %i.nu
  br label %computeAndUpdateSeqContext.exit290.i

computeAndUpdateSeqContext.exit290.i:             ; preds = %bb.bh, %bb.bg, %bb.be
  %.0.i.i289.i = phi i64 [ %i.nn, %bb.be ], [ %i.nr, %bb.bg ], [ %i.nv, %bb.bh ]
  store i64 %.0.i.i289.i, ptr %i.nd, align 8
  %i.nw = call ptr @wmem_file_scope()
  %i.nx = load i32, ptr @proto_rdpudp, align 4
  call void @p_set_proto_data(ptr noundef %i.nw, ptr noundef %1, i32 noundef %i.nx, i32 noundef 2, ptr noundef %i.nd)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.ba
  %i.ny = call ptr @wmem_file_scope()
  %i.nz = load i32, ptr @proto_rdpudp, align 4
  %i.oa = call ptr @p_get_proto_data(ptr noundef %i.ny, ptr noundef %1, i32 noundef %i.nz, i32 noundef 2)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %computeAndUpdateSeqContext.exit290.i
  %.0.i34 = phi ptr [ %i.oa, %bb.bi ], [ %i.nd, %computeAndUpdateSeqContext.exit290.i ] ; 4 uses
  %i.ob = load i32, ptr @hf_rdpudp2_DataChannelFullSeqNumber, align 4
  %i.oc = load i64, ptr %.0.i34, align 8
  %i.od = trunc i64 %i.oc to i32
  %i.oe = call ptr @proto_tree_add_uint(ptr noundef %.0258.i, i32 noundef %i.ob, ptr noundef %i.fj, i32 noundef %.6.i32, i32 noundef 2, i32 noundef %i.od) ; 2 uses
  %.not.i291.i = icmp eq ptr %i.oe, null
  br i1 %.not.i291.i, label %proto_item_set_generated.exit293.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.of = getelementptr i8, ptr %i.oe, i64 40
  %i.og = load ptr, ptr %i.of, align 8            ; 2 uses
  %.not5.i292.i = icmp eq ptr %i.og, null
  br i1 %.not5.i292.i, label %proto_item_set_generated.exit293.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oh = getelementptr i8, ptr %i.og, i64 28     ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = or i32 %i.oi, 2
  store i32 %i.oj, ptr %i.oh, align 4
  br label %proto_item_set_generated.exit293.i

proto_item_set_generated.exit293.i:               ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.ok = add nuw nsw i32 %.6.i32, 2              ; 2 uses
  %i.ol = load i64, ptr %.0.i34, align 8
  %i.om = trunc i64 %i.ol to i32
  %i.on = call ptr @wmem_tree_lookup32(ptr noundef %i.mt, i32 noundef %i.om) ; 2 uses
  %i.oo = call ptr @tvb_new_composite()           ; 7 uses
  %.not272.i = icmp eq ptr %i.on, null
  br i1 %.not272.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %proto_item_set_generated.exit293.i
  call void @tvb_composite_prepend(ptr noundef %i.oo, ptr noundef nonnull %i.on)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %proto_item_set_generated.exit293.i
  %i.op = call i32 @tvb_captured_length_remaining(ptr noundef %i.fj, i32 noundef %i.ok)
  %i.oq = call ptr @tvb_new_subset_length(ptr noundef %i.fj, i32 noundef %i.ok, i32 noundef %i.op)
  call void @tvb_composite_append(ptr noundef %i.oo, ptr noundef %i.oq)
  call void @tvb_composite_finalize(ptr noundef %i.oo)
  %i.or = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.oo, ptr noundef @.str.176) ; 0 uses
  %i.os = getelementptr i8, ptr %1, i64 336
  store i16 2, ptr %i.os, align 8
  %i.ot = getelementptr i8, ptr %1, i64 340       ; 3 uses
  store i32 0, ptr %i.ot, align 4
  %i.ou = getelementptr i8, ptr %1, i64 344       ; 2 uses
  store i32 0, ptr %i.ou, align 8
  %i.ov = load ptr, ptr @tls_handle, align 8
  %i.ow = call i32 @call_dissector(ptr noundef %i.ov, ptr noundef %i.oo, ptr noundef %1, ptr noundef %.0258.i) ; 0 uses
  %i.ox = load ptr, ptr %i.mw, align 8
  %i.oy = getelementptr i8, ptr %i.ox, i64 53
  %i.oz = load i16, ptr %i.oy, align 1
  %i.pa = and i16 %i.oz, 8
  %.not273.i = icmp eq i16 %i.pa, 0
  br i1 %.not273.i, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.pb = load i32, ptr %i.ou, align 8
  %.not274.i = icmp eq i32 %i.pb, 0
  br i1 %.not274.i, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pc = load i32, ptr %i.ot, align 4
  %i.pd = call i32 @tvb_captured_length_remaining(ptr noundef %i.oo, i32 noundef %i.pc) ; 2 uses
  %.not275.i = icmp eq i32 %i.pd, 0
  br i1 %.not275.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pe = load i64, ptr %.0.i34, align 8
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = add i32 %i.pf, 1
  %i.ph = call ptr @wmem_tree_lookup32(ptr noundef %i.mt, i32 noundef %i.pg) ; 2 uses
  %.not276.i = icmp eq ptr %i.ph, null
  br i1 %.not276.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @tvb_free(ptr noundef nonnull %i.ph)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.pi = load i32, ptr %i.ot, align 4
  %i.pj = call ptr @tvb_clone_offset_len(ptr noundef %i.oo, i32 noundef %i.pi, i32 noundef %i.pd)
  %i.pk = load i64, ptr %.0.i34, align 8
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = add i32 %i.pl, 1
  call void @wmem_tree_insert32(ptr noundef %i.mt, i32 noundef %i.pm, ptr noundef %i.pj)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp, %bb.bo, %bb.bn
  %i.pn = call i32 @tvb_captured_length(ptr noundef %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %dissect_rdpudp_v1.exit

dissect_rdpudp_v1.exit:                           ; preds = %bb.bt, %bb.az, %bb.v, %bb.u
  %.023 = phi i32 [ %.7.i, %bb.u ], [ %i.ez, %bb.v ], [ %i.pn, %bb.bt ], [ %.6.i32, %bb.az ]
  ret i32 %.023
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_rdpudp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_dissector(ptr noundef @.str.134)
  store ptr %i.a, ptr @tls_handle, align 8
  %i.b = tail call ptr @find_dissector(ptr noundef @.str.135)
  store ptr %i.b, ptr @dtls_handle, align 8
  %i.c = load ptr, ptr @rdpudp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.136, i32 noundef 3389, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_register_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @rdpudp_info_free_cb(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call zeroext i1 @wmem_tree_foreach(ptr noundef %i.b, ptr noundef @rdpudp_chunk_free_cb, ptr noundef null) ; 0 uses
  %i.d = getelementptr i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 @wmem_tree_foreach(ptr noundef %i.e, ptr noundef @rdpudp_chunk_free_cb, ptr noundef null) ; 0 uses
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @rdpudp_chunk_free_cb(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call void @tvb_free(ptr noundef %1)
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare void @tvb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
