Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-skinny?download=true
inline.NumInlined: 25
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 30
begin_hunk_0_@handle_OpenReceiveChannelMessage:bb.a
  %.not175 = icmp eq i16 %i.bm, 7
  br i1 %.not175, label %.thread156, label %bb.aj

.thread156:                                       ; preds = %bb.ai, %.thread155
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread157

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load i32, ptr @hf_skinny_salt, align 4
  %i.ed = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ec, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ee = icmp samesign ugt i16 %i.bm, 8
  br i1 %i.ee, label %bb.ak, label %.thread157

.thread157:                                       ; preds = %bb.aj, %.thread156
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread158

bb.ak:                                            ; preds = %bb.aj
  %i.ef = load i32, ptr @hf_skinny_salt, align 4
  %i.eg = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ef, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %.not176 = icmp eq i16 %i.bm, 9
  br i1 %.not176, label %.thread158, label %bb.al

.thread158:                                       ; preds = %bb.ak, %.thread157
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread159

bb.al:                                            ; preds = %bb.ak
  %i.eh = load i32, ptr @hf_skinny_salt, align 4
  %i.ei = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.eh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ej = icmp samesign ugt i16 %i.bm, 10
  br i1 %i.ej, label %bb.am, label %.thread159

.thread159:                                       ; preds = %bb.al, %.thread158
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread160

bb.am:                                            ; preds = %bb.al
  %i.ek = load i32, ptr @hf_skinny_salt, align 4
  %i.el = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ek, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %.not177 = icmp eq i16 %i.bm, 11
  br i1 %.not177, label %.thread160, label %bb.an

.thread160:                                       ; preds = %bb.am, %.thread159
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread161

bb.an:                                            ; preds = %bb.am
  %i.em = load i32, ptr @hf_skinny_salt, align 4
  %i.en = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.em, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eo = icmp samesign ugt i16 %i.bm, 12
  br i1 %i.eo, label %bb.ao, label %.thread161

.thread161:                                       ; preds = %bb.an, %.thread160
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread162

bb.ao:                                            ; preds = %bb.an
  %i.ep = load i32, ptr @hf_skinny_salt, align 4
  %i.eq = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ep, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %.not178 = icmp eq i16 %i.bm, 13
  br i1 %.not178, label %.thread162, label %bb.ap

.thread162:                                       ; preds = %bb.ao, %.thread161
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %.thread163

bb.ap:                                            ; preds = %bb.ao
  %i.er = load i32, ptr @hf_skinny_salt, align 4
  %i.es = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.er, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.et = icmp samesign ugt i16 %i.bm, 14
  br i1 %i.et, label %bb.aq, label %.thread163

.thread163:                                       ; preds = %bb.ap, %.thread162
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eu = load i32, ptr @hf_skinny_salt, align 4
  %i.ev = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.eu, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ew = icmp eq i16 %i.bm, 16
  br i1 %i.ew, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread163, %bb.aq
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 1)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ex = load i32, ptr @hf_skinny_salt, align 4
  %i.ey = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ex, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void @ptvcursor_pop_subtree(ptr noundef %0)
  br label %bb.av

bb.au:                                            ; preds = %bb.aa
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 16)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ez = load i32, ptr @hf_skinny_isMKIPresent, align 4
  %i.fa = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ez, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fb = load i32, ptr @hf_skinny_keyDerivationRate, align 4
  %i.fc = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.fb, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  tail call void @ptvcursor_pop_subtree(ptr noundef %0)
  %i.fd = load i32, ptr @hf_skinny_streamPassThroughId, align 4
  %i.fe = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.fd, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ff = load i32, ptr @hf_skinny_associatedStreamId, align 4
  %i.fg = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ff, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fh = load i32, ptr @hf_skinny_RFC2833PayloadType, align 4
  %i.fi = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.fh, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fj = load i32, ptr @hf_skinny_dtmfType, align 4
  %i.fk = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.fj, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br i1 %i.ab, label %bb.aw, label %.thread129

bb.aw:                                            ; preds = %bb.av
  %i.fl = load i32, ptr @hf_skinny_mixingMode, align 4
  %i.fm = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.fl, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fn = load i32, ptr @hf_skinny_partyDirection, align 4
  %i.fo = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.fn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fp = tail call i32 @ptvcursor_current_offset(ptr noundef %0) ; 3 uses
  %i.fq = tail call ptr @ptvcursor_tvbuff(ptr noundef %0) ; 4 uses
  %i.fr = tail call i32 @tvb_get_letohl(ptr noundef %i.fq, i32 noundef 4)
  %i.fs = icmp ugt i32 %i.fr, 16
  br i1 %i.fs, label %bb.ax, label %.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.ft = tail call i32 @tvb_get_letohl(ptr noundef %i.fq, i32 noundef %i.fp) ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %.thread.i, label %bb.ay

.thread.i:                                        ; preds = %bb.ax, %bb.aw
  %.021.i = phi i32 [ 4, %bb.ax ], [ 0, %bb.aw ]
  %i.fv = add i32 %.021.i, %i.fp
  %i.fw = tail call ptr @tvb_get_ptr(ptr noundef %i.fq, i32 noundef %i.fv, i32 noundef 4)
  store i32 2, ptr %3, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 4, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.fw, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.fz, align 8
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %or.cond.i = icmp ult i32 %i.ft, 3
  br i1 %or.cond.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ga = add i32 %i.fp, 4
  %i.gb = tail call ptr @tvb_get_ptr(ptr noundef %i.fq, i32 noundef %i.ga, i32 noundef 16)
  store i32 3, ptr %3, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 16, ptr %i.gc, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.gb, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.ge, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.thread.i
  %i.gf = load i32, ptr @hf_skinny_sourceIpAddr_ipv4, align 4
  %i.gg = load i32, ptr @hf_skinny_sourceIpAddr_ipv6, align 4
  tail call fastcc void @dissect_skinny_ipv4or6(ptr noundef %0, i32 noundef %i.gf, i32 noundef %i.gg)
  %i.gh = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.gi = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.gj = tail call i32 @tvb_get_letohl(ptr noundef %i.gh, i32 noundef %i.gi) ; 2 uses
  %i.gk = load i32, ptr @hf_skinny_sourcePortNumber, align 4
  %i.gl = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.gk, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.gm = getelementptr i8, ptr %1, i64 20
  %i.gn = load i32, ptr %i.gm, align 4
  call void @srtp_add_address(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3, i32 noundef %i.gj, i32 noundef 0, ptr noundef @.str.966, i32 noundef %i.gn, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.go = call ptr @address_to_display(ptr noundef null, ptr noundef nonnull %3) ; 2 uses
  %i.gp = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.2185, ptr noundef %i.go, i32 noundef %i.gj)
  %i.gq = load ptr, ptr @si, align 8
  %i.gr = getelementptr i8, ptr %i.gq, i64 80
  store ptr %i.gp, ptr %i.gr, align 8
  call void @wmem_free(ptr noundef null, ptr noundef %i.go)
  %i.gs = icmp ugt i32 %i.d, 15
  br i1 %i.gs, label %bb.bc, label %.thread129

bb.bc:                                            ; preds = %bb.bb
  %i.gt = load i32, ptr @hf_skinny_requestedIpAddrType, align 4
  %i.gu = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.gt, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.gv = icmp ne i32 %i.d, 16
  %i.gw = icmp ugt i32 %i.b, 132                  ; 2 uses
  %or.cond = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gx = load i32, ptr @hf_skinny_audioLevelAdjustment, align 4
  %i.gy = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.gx, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gz = icmp ugt i32 %i.d, 20
  %or.cond3 = select i1 %i.gz, i1 %i.gw, i1 false
  br i1 %or.cond3, label %bb.bf, label %.thread129

bb.bf:                                            ; preds = %bb.be
  %i.ha = load i32, ptr @ett_skinny_tree, align 4
  %i.hb = call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.ha, ptr noundef @.str.2225) ; 0 uses
  %i.hc = load i32, ptr @hf_skinny_active, align 4
  %i.hd = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hc, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.he = load i32, ptr @ett_skinny_tree, align 4
  %i.hf = call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.he, ptr noundef @.str.2179) ; 0 uses
  %i.hg = load i32, ptr @hf_skinny_capAndVer, align 4
  %i.hh = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hi = load i32, ptr @hf_skinny_modAnd2833, align 4
  %i.hj = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hi, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  call void @ptvcursor_pop_subtree(ptr noundef %0)
  %i.hk = load i32, ptr @ett_skinny_tree, align 4
  %i.hl = call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.hk, ptr noundef @.str.2181) ; 0 uses
  %i.hm = load i32, ptr @hf_skinny_chan0MaxPayload, align 4
  %i.hn = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hm, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ho = load i32, ptr @hf_skinny_chan2MaxPayload, align 4
  %i.hp = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ho, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hq = load i32, ptr @hf_skinny_chan3MaxPayload, align 4
  %i.hr = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hs = load i32, ptr @hf_skinny_chan2MaxWindow, align 4
  %i.ht = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hs, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  call void @ptvcursor_pop_subtree(ptr noundef %0)
  %i.hu = load i32, ptr @ett_skinny_tree, align 4
  %i.hv = call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.hu, ptr noundef @.str.590) ; 0 uses
  %i.hw = load i32, ptr @hf_skinny_standard, align 4
  %i.hx = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hw, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hy = load i32, ptr @hf_skinny_vendor, align 4
  %i.hz = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.hy, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  call void @ptvcursor_pop_subtree(ptr noundef %0)
  %i.ia = load i32, ptr @ett_skinny_tree, align 4
  %i.ib = call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.ia, ptr noundef @.str.2226) ; 0 uses
  %i.ic = load i32, ptr @hf_skinny_nse, align 4
  %i.id = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ie = load i32, ptr @hf_skinny_rfc2833, align 4
  %i.if = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ie, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ig = load i32, ptr @hf_skinny_sse, align 4
  %i.ih = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ig, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ii = load i32, ptr @hf_skinny_v150sprt, align 4
  %i.ij = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ii, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ik = load i32, ptr @hf_skinny_noaudio, align 4
  %i.il = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.ik, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.im = load i32, ptr @hf_skinny_FutureUse1, align 4
  %i.in = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.im, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.io = load i32, ptr @hf_skinny_FutureUse2, align 4
  %i.ip = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.io, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.iq = load i32, ptr @hf_skinny_FutureUse3, align 4
  %i.ir = call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.iq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  call void @ptvcursor_pop_subtree(ptr noundef %0)
  call void @ptvcursor_pop_subtree(ptr noundef %0)
  br label %.thread129

.thread129:                                       ; preds = %bb.av, %bb.bb, %bb.bf, %bb.be
  %i.is = xor i32 %i.i, 261
  call fastcc void @skinny_reqrep_add_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_CloseReceiveChannelMessage(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_skinny_conferenceId, align 4
  %i.b = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.a, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.c = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.d = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.e = tail call i32 @tvb_get_letohl(ptr noundef %i.c, i32 noundef %i.d)
  %i.f = load ptr, ptr @si, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i32 %i.e, ptr %i.g, align 8
  %i.h = load i32, ptr @hf_skinny_passThroughPartyId, align 4
  %i.i = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.j = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.k = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.l = tail call i32 @tvb_get_letohl(ptr noundef %i.j, i32 noundef %i.k)
  %i.m = load ptr, ptr @si, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 12
  store i32 %i.l, ptr %i.n, align 4
  %i.o = load i32, ptr @hf_skinny_callReference, align 4
  %i.p = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_skinny_portHandlingFlag, align 4
  %i.r = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_ConnectionStatisticsReqMessage(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.b = tail call i32 @tvb_get_letohl(ptr noundef %i.a, i32 noundef 4)
  %i.c = icmp ult i32 %i.b, 18
  %i.d = load i32, ptr @hf_skinny_directoryNum, align 4
  %. = select i1 %i.c, i32 24, i32 28
  %i.e = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.d, i32 noundef %., i32 noundef 0) ; 0 uses
  %i.f = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.g = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.h = tail call i32 @tvb_get_letohl(ptr noundef %i.f, i32 noundef %i.g)
  %i.i = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.j = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.k = tail call i32 @tvb_get_letohl(ptr noundef %i.i, i32 noundef %i.j)
  %i.l = load ptr, ptr @si, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 12
  store i32 %i.k, ptr %i.m, align 4
  %i.n = load i32, ptr @hf_skinny_callReference, align 4
  %i.o = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.p = load i32, ptr @hf_skinny_statsProcessingMode, align 4
  %i.q = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.r = xor i32 %i.h, 263
  tail call fastcc void @skinny_reqrep_add_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.r)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_SoftKeyTemplateResMessage(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_skinny_tree, align 4
  %i.b = tail call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.a, ptr noundef @.str.2240) ; 0 uses
  %i.c = load i32, ptr @hf_skinny_softKeyOffset, align 4
  %i.d = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.c, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_skinny_softKeyCount, align 4
  %i.f = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.e, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.h = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.i = tail call i32 @tvb_get_letohl(ptr noundef %i.g, i32 noundef %i.h) ; 7 uses
  %i.j = load i32, ptr @hf_skinny_totalSoftKeyCount, align 4
  %i.k = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.j, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.l = icmp ult i32 %i.i, 33
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @ett_skinny_tree, align 4
  %i.n = tail call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.m, ptr noundef @.str.2241, i32 noundef %i.i) ; 0 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.p = tail call i32 @tvb_get_letohl(ptr noundef %i.o, i32 noundef 0)
  %i.q = add i32 %i.p, 8
  %i.r = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.s = mul nuw nsw i32 %i.i, 20
  %i.t = add i32 %i.r, %i.s
  %.not34 = icmp ult i32 %i.q, %i.t
  br i1 %.not34, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.f
  %.035 = phi i32 [ %i.v, %bb.f ], [ 0, %bb.c ]   ; 2 uses
  %i.u = icmp ult i32 %.035, %i.i
  %i.v = add nuw nsw i32 %.035, 1                 ; 3 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = load i32, ptr @ett_skinny_tree, align 4
  %i.x = tail call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.w, ptr noundef @.str.2232, i32 noundef %i.v, i32 noundef %i.i) ; 0 uses
  %i.y = load i32, ptr @hf_skinny_softKeyLabel, align 4
  tail call fastcc void @dissect_skinny_displayLabel(ptr noundef %0, ptr noundef %1, i32 noundef %i.y, i32 noundef 16)
  %i.z = load i32, ptr @hf_skinny_softKeyEvent, align 4
  %i.aa = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.z, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef 20)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ptvcursor_pop_subtree(ptr noundef %0)
  %exitcond.not = icmp eq i32 %i.v, 32
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !24

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.b
  tail call void @ptvcursor_pop_subtree(ptr noundef %0)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ab = mul i32 %i.i, 20
  tail call void @ptvcursor_advance(ptr noundef %0, i32 noundef %i.ab)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  tail call void @ptvcursor_pop_subtree(ptr noundef %0)
  tail call fastcc void @skinny_reqrep_add_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 40)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_SoftKeySetResMessage(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_skinny_tree, align 4
  %i.b = tail call ptr (ptr, i32, i32, ptr, ...) @ptvcursor_add_text_with_subtree(ptr noundef %0, i32 noundef -1, i32 noundef %i.a, ptr noundef @.str.2384) ; 0 uses
  %i.c = load i32, ptr @hf_skinny_softKeySetOffset, align 4
  %i.d = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.c, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_skinny_softKeySetCount, align 4
  %i.f = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.e, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = tail call ptr @ptvcursor_tvbuff(ptr noundef %0)
  %i.h = tail call i32 @ptvcursor_current_offset(ptr noundef %0)
  %i.i = tail call i32 @tvb_get_letohl(ptr noundef %i.g, i32 noundef %i.h) ; 7 uses
  %i.j = load i32, ptr @hf_skinny_totalSoftKeySetCount, align 4
  %i.k = tail call ptr @ptvcursor_add(ptr noundef %0, i32 noundef %i.j, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
end_hunk_0
