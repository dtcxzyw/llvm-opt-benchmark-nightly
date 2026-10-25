Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tx?download=true
inline.NumInlined: 938
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ieee80211_build_hdr:bb.a
  %i.ej = getelementptr i8, ptr %i.ei, i64 18
  %i.ek = load volatile i8, ptr %i.ej, align 2
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw i32 1, %i.el
  %i.en = and i32 %i.em, -4161
  %.not3.i = icmp eq i32 %i.en, 0
  br i1 %.not3.i, label %sk_requests_wifi_status.exit, label %sock_flag.exit.i

sock_flag.exit.i:                                 ; preds = %bb.aj
  %i.eo = getelementptr i8, ptr %i.ei, i64 96
  %i.ep = load volatile i64, ptr %i.eo, align 8
  %.in.in.i.i = and i64 %i.ep, 524288
  %.in.i.i = icmp ne i64 %.in.in.i.i, 0
  br label %sk_requests_wifi_status.exit

sk_requests_wifi_status.exit:                     ; preds = %bb.ai, %bb.aj, %sock_flag.exit.i
  %i.eq = phi i1 [ false, %bb.aj ], [ false, %bb.ai ], [ %.in.i.i, %sock_flag.exit.i ]
  %i.er = trunc i32 %4 to i1
  %i.es = or i1 %i.eq, %i.er
  br i1 %i.es, label %bb.ak, label %.critedge274, !prof !17

bb.ak:                                            ; preds = %sk_requests_wifi_status.exit
  %i.et = call fastcc zeroext i16 @ieee80211_store_ack_skb(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %5) #18, !srcloc !174
  br label %.critedge274

.critedge274:                                     ; preds = %.critedge270, %bb.ak, %sk_requests_wifi_status.exit
  %.0232 = phi i16 [ %i.et, %bb.ak ], [ 0, %sk_requests_wifi_status.exit ], [ 0, %.critedge270 ] ; 4 uses
  %i.eu = getelementptr i8, ptr %1, i64 220
  %i.ev = load volatile i32, ptr %i.eu, align 4
  %.not9.i = icmp eq i32 %i.ev, 1
  br i1 %.not9.i, label %skb_share_check.exit, label %bb.al

bb.al:                                            ; preds = %.critedge274
  %i.ew = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2080) #16 ; 2 uses
  %.not8.i = icmp eq ptr %i.ew, null
  br i1 %.not8.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread308, !prof !17

skb_share_check.exit.thread308:                   ; preds = %bb.al
  tail call void @consume_skb(ptr noundef %1) #16
  br label %bb.am

skb_share_check.exit.thread:                      ; preds = %bb.al
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 2) #16
  br label %.critedge272

skb_share_check.exit:                             ; preds = %.critedge274
  %.not257 = icmp eq ptr %1, null
  br i1 %.not257, label %.critedge272, label %bb.am, !prof !41

bb.am:                                            ; preds = %skb_share_check.exit.thread308, %skb_share_check.exit
  %.0.i311 = phi ptr [ %i.ew, %skb_share_check.exit.thread308 ], [ %1, %skb_share_check.exit ] ; 18 uses
  store i16 %.3215, ptr %6, align 2
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %.2..2..2..sroa_idx, align 2
  %.22..22..22..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 0, ptr %.22..22..22..sroa_idx, align 2
  switch i16 %i.p, label %bb.an [
    i16 -32457, label %bb.ao
    i16 -32525, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.ex = icmp ult i8 %i.j, 6                     ; 4 uses
  %. = select i1 %i.ex, i32 14, i32 12
  %.275 = select i1 %i.ex, i32 0, i32 6
  %rfc1042_header. = select i1 %i.ex, ptr null, ptr @rfc1042_header
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.am
  %.0223 = phi i32 [ 12, %bb.am ], [ %., %bb.an ], [ 12, %bb.am ]
  %.0217 = phi i32 [ 6, %bb.am ], [ %.275, %bb.an ], [ 6, %bb.am ] ; 3 uses
  %.not260 = phi i1 [ false, %bb.am ], [ %i.ex, %bb.an ], [ false, %bb.am ]
  %.0216 = phi ptr [ @bridge_tunnel_header, %bb.am ], [ %rfc1042_header., %bb.an ], [ @bridge_tunnel_header, %bb.am ]
  %i.ey = tail call ptr @skb_pull(ptr noundef nonnull %.0.i311, i32 noundef %.0223) #16 ; 0 uses
  %i.ez = zext nneg i16 %.4 to i32                ; 3 uses
  %i.fa = add nuw nsw i32 %.0217, %i.ez
  %i.fb = getelementptr i8, ptr %.0.i311, i64 200 ; 2 uses
  %.val282 = load ptr, ptr %i.fb, align 8         ; 2 uses
  %i.fc = getelementptr i8, ptr %.0.i311, i64 208 ; 2 uses
  %.val283 = load ptr, ptr %i.fc, align 8
  %i.fd = ptrtoint ptr %.val283 to i64
  %i.fe = ptrtoint ptr %.val282 to i64
  %.neg = sub i64 %i.fe, %i.fd
  %.neg323 = trunc i64 %.neg to i32
  %i.ff = add i32 %i.fa, %.neg323                 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fh = getelementptr i8, ptr %.0.i311, i64 126
  %i.fi = load i8, ptr %i.fh, align 2
  %i.fj = and i8 %i.fi, 1
  %.not.i292 = icmp eq i8 %i.fj, 0
  br i1 %.not.i292, label %skb_cloned.exit.thread, label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %bb.ap
  %i.fk = getelementptr i8, ptr %.0.i311, i64 192
  %.val.i = load i32, ptr %i.fk, align 8
  %i.fl = zext i32 %.val.i to i64
  %i.fm = getelementptr i8, ptr %.val282, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 32
  %i.fo = load volatile i32, ptr %i.fn, align 4
  %i.fp = and i32 %i.fo, 65535
  %.not324 = icmp eq i32 %i.fp, 1
  br i1 %.not324, label %skb_cloned.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %skb_cloned.exit, %bb.ao
  %i.fq = add i32 %i.ff, 8
  %i.fr = getelementptr i8, ptr %i.c, i64 1524
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add i32 %i.fq, %i.fs
  %i.fu = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 0)
  %i.fv = tail call fastcc i32 @ieee80211_skb_resize(ptr noundef %0, ptr noundef nonnull %.0.i311, i32 noundef %i.fu, i32 noundef 2) #18, !srcloc !175
  %.not259 = icmp eq i32 %i.fv, 0
  br i1 %.not259, label %skb_cloned.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @ieee80211_free_txskb(ptr noundef %i.c, ptr noundef nonnull %.0.i311) #16
  br label %.critedge272

skb_cloned.exit.thread:                           ; preds = %bb.ap, %bb.aq, %skb_cloned.exit
  br i1 %.not260, label %bb.at, label %bb.as

bb.as:                                            ; preds = %skb_cloned.exit.thread
  %i.fw = tail call ptr @skb_push(ptr noundef nonnull %.0.i311, i32 noundef %.0217) #16
  %i.fx = zext nneg i32 %.0217 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %.0216, i64 %i.fx, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %skb_cloned.exit.thread
  %i.fy = and i16 %.3215, 140
  %i.fz = icmp eq i16 %i.fy, 136
  br i1 %i.fz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ga = tail call ptr @skb_push(ptr noundef nonnull %.0.i311, i32 noundef 2) #16
  %i.gb = add nsw i32 %i.ez, -2                   ; 2 uses
  %i.gc = tail call ptr @skb_push(ptr noundef nonnull %.0.i311, i32 noundef %i.gb) #16
  %i.gd = sext i32 %i.gb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr nonnull align 2 %6, i64 %i.gd, i1 false)
  store i16 0, ptr %i.ga, align 2
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ge = tail call ptr @skb_push(ptr noundef nonnull %.0.i311, i32 noundef %i.ez) #16
  %i.gf = zext nneg i16 %.4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 2 %6, i64 %i.gf, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gg = load ptr, ptr %i.fc, align 8
  %i.gh = load ptr, ptr %i.fb, align 8
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr i8, ptr %.0.i311, i64 186
  store i16 %i.gl, ptr %i.gm, align 2
  %i.gn = getelementptr i8, ptr %.0.i311, i64 40
  %i.go = getelementptr i8, ptr %.0.i311, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %i.go, i8 0, i64 40, i1 false)
  %i.gp = load i32, ptr %i.a, align 4
  store i32 %i.gp, ptr %i.gn, align 8
  %.not261 = icmp eq i16 %.0232, 0
  br i1 %.not261, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = and i16 %.0232, 8191
  %i.gr = zext nneg i16 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 4
  %i.gt = or disjoint i32 %i.gs, %.0238
  %i.gu = or disjoint i32 %i.gt, 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gv = phi i32 [ %i.gu, %bb.ax ], [ %.0238, %bb.aw ]
  %i.gw = getelementptr i8, ptr %.0.i311, i64 44
  store i32 %i.gv, ptr %i.gw, align 4
  %.not262 = icmp eq ptr %5, null
  %i.gx = zext i8 %.1245346 to i32                ; 2 uses
  br i1 %.not262, label %u32_encode_bits.exit, label %bb.az, !prof !18

u32_encode_bits.exit:                             ; preds = %bb.ay
  %i.gy = shl i32 %i.gx, 28
  %i.gz = or i32 %i.gy, %4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ha = icmp ne i32 %i.d, %i.gx
  %i.hb = icmp ne i8 %.1245346, 15
  %or.cond11 = and i1 %i.hb, %i.ha
  br i1 %or.cond11, label %.critedge272, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %u32_encode_bits.exit
  %.0210 = phi i32 [ %i.gz, %u32_encode_bits.exit ], [ %4, %bb.az ]
  %i.hc = getelementptr i8, ptr %.0.i311, i64 80
  store i32 %.0210, ptr %i.hc, align 8
  br label %bb.bc

.critedge272:                                     ; preds = %skb_share_check.exit.thread, %bb.az, %skb_share_check.exit, %bb.ar
  %.7 = phi i64 [ -22, %bb.az ], [ 4294967284, %skb_share_check.exit ], [ 4294967284, %skb_share_check.exit.thread ], [ 4294967284, %bb.ar ] ; 2 uses
  %.0208 = phi ptr [ %.0.i311, %bb.az ], [ null, %skb_share_check.exit ], [ null, %skb_share_check.exit.thread ], [ null, %bb.ar ] ; 2 uses
  %.not263 = icmp eq i16 %.0232, 0
  br i1 %.not263, label %.critedge272.thread, label %bb.bb

bb.bb:                                            ; preds = %.critedge272
  %i.hd = getelementptr i8, ptr %i.c, i64 5848    ; 2 uses
  %i.he = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.hd) #16
  %i.hf = getelementptr i8, ptr %i.c, i64 5824
  %i.hg = zext i16 %.0232 to i64
  %i.hh = tail call ptr @idr_remove(ptr noundef %i.hf, i64 noundef %i.hg) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.hd, i64 noundef %i.he) #16
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %i.hh, i32 noundef 2) #16
  br label %.critedge272.thread

.critedge272.thread:                              ; preds = %bb.aa, %bb.t, %bb.k, %bb.ag, %bb.c, %bb.ah, %bb.ad, %bb.p, %bb.bb, %.critedge272
  %.0208318 = phi ptr [ %.0208, %.critedge272 ], [ %.0208, %bb.bb ], [ %1, %bb.p ], [ %1, %bb.ad ], [ %1, %bb.ah ], [ %1, %bb.c ], [ %1, %bb.ag ], [ %1, %bb.k ], [ %1, %bb.t ], [ %1, %bb.aa ]
  %.7317 = phi i64 [ %.7, %.critedge272 ], [ %.7, %bb.bb ], [ 4294967229, %bb.p ], [ 4294967189, %bb.ad ], [ 4294967295, %bb.ah ], [ 4294967274, %bb.c ], [ 4294967295, %bb.ag ], [ 4294967229, %bb.k ], [ 4294967274, %bb.t ], [ 4294967189, %bb.aa ]
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.0208318, i32 noundef 2) #16
  %sext = shl i64 %.7317, 32
  %7 = ashr exact i64 %sext, 32
  %i.hi = inttoptr i64 %7 to ptr
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge272.thread, %bb.ba
  %.0 = phi ptr [ %i.hi, %.critedge272.thread ], [ %.0.i311, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.sk_buff_head, align 8       ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8
  %.val = load i32, ptr %i.b, align 4
  %i.c = trunc i32 %.val to i1
  br i1 %i.c, label %ieee80211_sdata_running.exit, label %u32_encode_bits.exit, !prof !17

ieee80211_sdata_running.exit:                     ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4496
  %i.e = load volatile i64, ptr %i.d, align 8
  %.in.i = trunc i64 %i.e to i1
  br i1 %.in.i, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %ieee80211_sdata_running.exit
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #16
  br label %bb.i

bb.c:                                             ; preds = %ieee80211_sdata_running.exit
  %i.f = tail call fastcc zeroext i1 @ieee80211_multicast_to_unicast(ptr noundef %0, ptr noundef %1) #18, !srcloc !177
  br i1 %i.f, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8, !annotation !24
  store ptr %2, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call fastcc void @ieee80211_convert_to_unicast(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #18, !srcloc !178
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
  %i.k = icmp eq ptr %i.j, %2
  %.not.i232829 = icmp eq ptr %i.j, null
  %.not.i2330 = or i1 %i.k, %.not.i232829
  br i1 %.not.i2330, label %._crit_edge, label %u32_encode_bits.exit21

u32_encode_bits.exit21:                           ; preds = %bb.d, %u32_encode_bits.exit21
  %i.l = phi ptr [ %i.s, %u32_encode_bits.exit21 ], [ %i.j, %bb.d ] ; 4 uses
  %i.m = load i32, ptr %i.i, align 8
  %i.n = add i32 %i.m, -1
  store volatile i32 %i.n, ptr %i.i, align 8
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store volatile ptr %i.q, ptr %i.r, align 8
  store volatile ptr %i.o, ptr %i.q, align 8
  call void @__ieee80211_subif_start_xmit(ptr noundef nonnull %i.l, ptr noundef %1, i32 noundef 0, i32 noundef -268435456, ptr noundef null) #18
  %i.s = load ptr, ptr %2, align 8                ; 3 uses
  %i.t = icmp eq ptr %i.s, %2
  %.not.i2328 = icmp eq ptr %i.s, null
  %.not.i23 = or i1 %i.t, %.not.i2328
  br i1 %.not.i23, label %._crit_edge, label %u32_encode_bits.exit21, !llvm.loop !176

._crit_edge:                                      ; preds = %u32_encode_bits.exit21, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %1, i64 9784
  %.val22 = load i16, ptr %i.u, align 8
  %.not = icmp eq i16 %.val22, 0
  br i1 %.not, label %u32_encode_bits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 7696
  %i.w = load i32, ptr %i.v, align 8
  switch i32 %i.w, label %u32_encode_bits.exit [
    i32 3, label %_ieee80211_hw_check.exit
    i32 4, label %bb.g
  ]

_ieee80211_hw_check.exit:                         ; preds = %bb.f
  %i.x = getelementptr i8, ptr %1, i64 4480
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 104
  %i.aa = load volatile i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 9007199254740992
  %.not26 = icmp eq i64 %i.ab, 0
  br i1 %.not26, label %bb.h, label %u32_encode_bits.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %1, i64 2705
  %i.ad = load i8, ptr %i.ac, align 1, !range !15, !noundef !16
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %u32_encode_bits.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ieee80211_hw_check.exit
  tail call fastcc void @ieee80211_mlo_multicast_tx(ptr noundef %1, ptr noundef %0) #18, !srcloc !179
  br label %bb.i

u32_encode_bits.exit:                             ; preds = %bb.f, %_ieee80211_hw_check.exit, %bb.a, %bb.g, %bb.e
  tail call void @__ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef -268435456, ptr noundef null) #18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %u32_encode_bits.exit, %bb.h, %bb.b
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc noundef zeroext i1 @ieee80211_multicast_to_unicast(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 7696
  %i.d = load i32, ptr %i.c, align 8
  switch i32 %i.d, label %.thread [
    i32 4, label %bb.b
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 5144
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 2705
  %i.h = load i8, ptr %i.g, align 1, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = getelementptr i8, ptr %1, i64 4896
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 316
  %i.m = load i8, ptr %i.l, align 4, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.b, i64 12
  %i.p = load i16, ptr %i.o, align 1              ; 2 uses
  %i.q = icmp eq i16 %i.p, 129
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 112
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp ugt i32 %i.s, 17
  br i1 %i.t, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.b, i64 16
  %i.v = load i16, ptr %i.u, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0 = phi i16 [ %i.v, %bb.g ], [ %i.p, %bb.e ]
  switch i16 %.0, label %.thread [
    i16 1544, label %bb.i
    i16 8, label %bb.i
    i16 -8826, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.a, %bb.d, %bb.c, %bb.b, %bb.i
  %.012 = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.f ]
  ret i1 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_convert_to_unicast(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2624
  %i.b = getelementptr i8, ptr %1, i64 4480
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  tail call void @__rcu_read_lock() #16
  %i.f = getelementptr i8, ptr %i.c, i64 1632     ; 3 uses
  %i.g = load volatile ptr, ptr %i.f, align 8     ; 2 uses
  %.not51 = icmp eq ptr %i.g, %i.f
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 6
  %i.i = getelementptr i8, ptr %i.e, i64 10
  %i.j = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 16         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.053 = phi ptr [ %i.g, %.lr.ph ], [ %i.af, %bb.h ] ; 5 uses
  %.03552 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
end_hunk_0
