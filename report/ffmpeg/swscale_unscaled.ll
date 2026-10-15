Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale_unscaled?download=true
inline.NumInlined: 35
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 106
begin_hunk_0_@rgbToPlanarRgbaWrapper:bb.a
  %i.gi = load ptr, ptr %1, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !53 ; 2 uses
  %i.gl = icmp sgt i32 %4, 0
  br i1 %i.gl, label %.lr.ph69.split.us.i93, label %packed24togbrap.exit

.thread146:                                       ; preds = %bb.a
  %i.gm = load ptr, ptr %1, align 8, !tbaa !52
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !53 ; 2 uses
  %i.gp = icmp sgt i32 %4, 0
  br i1 %i.gp, label %.lr.ph69.split.i78, label %packed24togbrap.exit

.lr.ph69.split.us.i93:                            ; preds = %bb.g
  %i.gq = load i32, ptr %2, align 4, !tbaa !16
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp sgt i32 %i.gk, 0
  br i1 %i.gs, label %.preheader.us.preheader.i94, label %packed24togbrap.exit

.preheader.us.preheader.i94:                      ; preds = %.lr.ph69.split.us.i93
  %wide.trip.count76.i95 = zext nneg i32 %i.gk to i64
  %i.gt = sext i32 %i.b to i64
  %i.gu = sext i32 %i.c to i64
  %i.gv = sext i32 %i.e to i64
  %i.gw = sext i32 %i.g to i64
  br label %.preheader.us.i96

.preheader.us.i96:                                ; preds = %..loopexit_crit_edge.us.i106, %.preheader.us.preheader.i94
  %.068.us.i97 = phi i32 [ %i.hp, %..loopexit_crit_edge.us.i106 ], [ 0, %.preheader.us.preheader.i94 ]
  %.sroa.0.066.us.i98 = phi ptr [ %i.hl, %..loopexit_crit_edge.us.i106 ], [ %i.l, %.preheader.us.preheader.i94 ] ; 2 uses
  %.sroa.7.064.us.i99 = phi ptr [ %i.hm, %..loopexit_crit_edge.us.i106 ], [ %i.p, %.preheader.us.preheader.i94 ] ; 2 uses
  %.sroa.12.062.us.i100 = phi ptr [ %i.hn, %..loopexit_crit_edge.us.i106 ], [ %i.u, %.preheader.us.preheader.i94 ] ; 2 uses
  %.sroa.17.060.us.i101 = phi ptr [ %i.ho, %..loopexit_crit_edge.us.i106 ], [ %i.z, %.preheader.us.preheader.i94 ] ; 2 uses
  %.05258.us.i102 = phi ptr [ %i.hk, %..loopexit_crit_edge.us.i106 ], [ %i.gi, %.preheader.us.preheader.i94 ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.us.i96
  %indvars.iv73.i103 = phi i64 [ 0, %.preheader.us.i96 ], [ %indvars.iv.next74.i104, %bb.h ] ; 6 uses
  %i.gx = shl nuw nsw i64 %indvars.iv73.i103, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.05258.us.i102, i64 %i.gx ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !64
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.066.us.i98, i64 %indvars.iv73.i103
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !64
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.7.064.us.i99, i64 %indvars.iv73.i103
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !64
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.12.062.us.i100, i64 %indvars.iv73.i103
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !64
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.17.060.us.i101, i64 %indvars.iv73.i103
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !64
  %indvars.iv.next74.i104 = add nuw nsw i64 %indvars.iv73.i103, 1 ; 2 uses
  %exitcond77.not.i105 = icmp eq i64 %indvars.iv.next74.i104, %wide.trip.count76.i95
  br i1 %exitcond77.not.i105, label %..loopexit_crit_edge.us.i106, label %bb.h, !llvm.loop !152

..loopexit_crit_edge.us.i106:                     ; preds = %bb.h
  %i.hk = getelementptr inbounds i8, ptr %.05258.us.i102, i64 %i.gr
  %i.hl = getelementptr inbounds i8, ptr %.sroa.0.066.us.i98, i64 %i.gt
  %i.hm = getelementptr inbounds i8, ptr %.sroa.7.064.us.i99, i64 %i.gu
  %i.hn = getelementptr inbounds i8, ptr %.sroa.12.062.us.i100, i64 %i.gv
  %i.ho = getelementptr inbounds i8, ptr %.sroa.17.060.us.i101, i64 %i.gw
  %i.hp = add nuw nsw i32 %.068.us.i97, 1         ; 2 uses
  %exitcond78.not.i107 = icmp eq i32 %i.hp, %4
  br i1 %exitcond78.not.i107, label %packed24togbrap.exit, label %.preheader.us.i96, !llvm.loop !153

.lr.ph69.split.i78:                               ; preds = %.thread146
  %i.hq = load i32, ptr %2, align 4, !tbaa !16
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp sgt i32 %i.go, 0
  br i1 %i.hs, label %.preheader53.preheader.i79, label %packed24togbrap.exit

.preheader53.preheader.i79:                       ; preds = %.lr.ph69.split.i78
  %wide.trip.count.i80 = zext nneg i32 %i.go to i64
  %i.ht = sext i32 %i.b to i64
  %i.hu = sext i32 %i.c to i64
  %i.hv = sext i32 %i.e to i64
  %i.hw = sext i32 %i.g to i64
  br label %.preheader53.i81

.preheader53.i81:                                 ; preds = %..loopexit54_crit_edge.i91, %.preheader53.preheader.i79
  %.068.i82 = phi i32 [ %i.ip, %..loopexit54_crit_edge.i91 ], [ 0, %.preheader53.preheader.i79 ]
  %.sroa.0.066.i83 = phi ptr [ %i.il, %..loopexit54_crit_edge.i91 ], [ %i.l, %.preheader53.preheader.i79 ] ; 2 uses
  %.sroa.7.064.i84 = phi ptr [ %i.im, %..loopexit54_crit_edge.i91 ], [ %i.p, %.preheader53.preheader.i79 ] ; 2 uses
  %.sroa.12.062.i85 = phi ptr [ %i.in, %..loopexit54_crit_edge.i91 ], [ %i.u, %.preheader53.preheader.i79 ] ; 2 uses
  %.sroa.17.060.i86 = phi ptr [ %i.io, %..loopexit54_crit_edge.i91 ], [ %i.z, %.preheader53.preheader.i79 ] ; 2 uses
  %.05258.i87 = phi ptr [ %i.ik, %..loopexit54_crit_edge.i91 ], [ %i.gm, %.preheader53.preheader.i79 ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader53.i81
  %indvars.iv.i88 = phi i64 [ 0, %.preheader53.i81 ], [ %indvars.iv.next.i89, %bb.i ] ; 6 uses
  %i.hx = shl nuw nsw i64 %indvars.iv.i88, 2
  %i.hy = getelementptr inbounds nuw i8, ptr %.05258.i87, i64 %i.hx ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i83, i64 %indvars.iv.i88
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !64
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.7.064.i84, i64 %indvars.iv.i88
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !64
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !64
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.12.062.i85, i64 %indvars.iv.i88
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !64
  %i.ii = load i8, ptr %i.hy, align 1, !tbaa !64
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.17.060.i86, i64 %indvars.iv.i88
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !64
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %indvars.iv.next.i89, %wide.trip.count.i80
  br i1 %exitcond.not.i90, label %..loopexit54_crit_edge.i91, label %bb.i, !llvm.loop !154

..loopexit54_crit_edge.i91:                       ; preds = %bb.i
  %i.ik = getelementptr inbounds i8, ptr %.05258.i87, i64 %i.hr
  %i.il = getelementptr inbounds i8, ptr %.sroa.0.066.i83, i64 %i.ht
  %i.im = getelementptr inbounds i8, ptr %.sroa.7.064.i84, i64 %i.hu
  %i.in = getelementptr inbounds i8, ptr %.sroa.12.062.i85, i64 %i.hv
  %i.io = getelementptr inbounds i8, ptr %.sroa.17.060.i86, i64 %i.hw
  %i.ip = add nuw nsw i32 %.068.i82, 1            ; 2 uses
  %exitcond72.not.i92 = icmp eq i32 %i.ip, %4
  br i1 %exitcond72.not.i92, label %packed24togbrap.exit, label %.preheader53.i81, !llvm.loop !153

bb.j:                                             ; preds = %bb.a
  %i.iq = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.ab) #14
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !54
  %i.it = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.is) #14
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, ptr noundef %i.iq, ptr noundef %i.it) #14
  br label %packed24togbrap.exit

packed24togbrap.exit:                             ; preds = %..loopexit_crit_edge.us.i106, %..loopexit54_crit_edge.i91, %..loopexit_crit_edge.us.i, %..loopexit54_crit_edge.i, %._crit_edge.i67, %._crit_edge.i, %.lr.ph69.split.i78, %.lr.ph69.split.us.i93, %bb.g, %.thread146, %.lr.ph69.split.i, %.lr.ph69.split.us.i, %bb.d, %.thread, %.preheader.lr.ph.i54, %bb.c, %.preheader.lr.ph.i, %bb.b, %bb.j
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, -2147483648) i32 @bayer_to_rgb24_wrapper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !52
  %i.b = load i32, ptr %6, align 4, !tbaa !16     ; 2 uses
  %i.c = mul nsw i32 %i.b, %3
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %switch.tableidx = add i32 %i.h, -139           ; 3 uses
  %i.i = icmp ult i32 %switch.tableidx, 12
  br i1 %i.i, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bayer_to_rgb24_wrapper, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep69 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bayer_to_rgb24_wrapper.1, i64 %i.k
  %switch.load70 = load ptr, ptr %switch.gep69, align 8
  %i.l = icmp sgt i32 %4, 1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1683) #14
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %switch.lookup
  %i.m = load i32, ptr %2, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %i.e, i32 noundef %i.b, i32 noundef %i.o) #14
  %i.p = load i32, ptr %2, align 4, !tbaa !16     ; 3 uses
  %i.q = shl nsw i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %6, align 4, !tbaa !16     ; 3 uses
  %i.u = shl nsw i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %4, -2
  %i.y = icmp samesign ugt i32 %4, 4
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.z = phi i32 [ %i.ag, %.lr.ph ], [ %i.t, %bb.c ]
  %i.aa = phi i32 [ %i.ac, %.lr.ph ], [ %i.p, %bb.c ]
  %.04754 = phi i32 [ %i.ak, %.lr.ph ], [ 2, %bb.c ]
  %.04853 = phi ptr [ %i.af, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %.04952 = phi ptr [ %i.aj, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load70(ptr noundef %.04853, i32 noundef %i.aa, ptr noundef %.04952, i32 noundef %i.z, i32 noundef %i.ab) #14
  %i.ac = load i32, ptr %2, align 4, !tbaa !16    ; 3 uses
  %i.ad = shl nsw i32 %i.ac, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %.04853, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !16    ; 3 uses
  %i.ah = shl nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %.04952, i64 %i.ai ; 2 uses
  %i.ak = add nuw nsw i32 %.04754, 2              ; 3 uses
  %i.al = icmp slt i32 %i.ak, %i.x
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.am = phi i32 [ %i.t, %bb.c ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.an = phi i32 [ %i.p, %bb.c ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.w, %bb.c ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.048.lcssa = phi ptr [ %i.s, %bb.c ], [ %i.af, %.lr.ph ] ; 2 uses
  %.047.lcssa = phi i32 [ 2, %bb.c ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.ao = or disjoint i32 %.047.lcssa, 1
  %i.ap = icmp eq i32 %i.ao, %4
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aq = sub nsw i32 0, %i.an
  %i.ar = sub nsw i32 0, %i.am
  %i.as = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %.048.lcssa, i32 noundef %i.aq, ptr noundef %.049.lcssa, i32 noundef %i.ar, i32 noundef %i.as) #14
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.at = icmp samesign ult i32 %.047.lcssa, %4
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %.048.lcssa, i32 noundef %i.an, ptr noundef %.049.lcssa, i32 noundef %i.am, i32 noundef %i.au) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.f, %bb.e
  %.050 = phi i32 [ 0, %bb.a ], [ %4, %bb.e ], [ %4, %bb.f ], [ %4, %bb.d ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, -2147483648) i32 @bayer_to_rgb48_wrapper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !52
  %i.b = load i32, ptr %6, align 4, !tbaa !16     ; 2 uses
  %i.c = mul nsw i32 %i.b, %3
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %switch.tableidx = add i32 %i.h, -139           ; 3 uses
  %i.i = icmp ult i32 %switch.tableidx, 12
  br i1 %i.i, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bayer_to_rgb48_wrapper, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep69 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bayer_to_rgb48_wrapper.2, i64 %i.k
  %switch.load70 = load ptr, ptr %switch.gep69, align 8
  %i.l = icmp sgt i32 %4, 1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1733) #14
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %switch.lookup
  %i.m = load i32, ptr %2, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %i.e, i32 noundef %i.b, i32 noundef %i.o) #14
  %i.p = load i32, ptr %2, align 4, !tbaa !16     ; 3 uses
  %i.q = shl nsw i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %6, align 4, !tbaa !16     ; 3 uses
  %i.u = shl nsw i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %4, -2
  %i.y = icmp samesign ugt i32 %4, 4
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.z = phi i32 [ %i.ag, %.lr.ph ], [ %i.t, %bb.c ]
  %i.aa = phi i32 [ %i.ac, %.lr.ph ], [ %i.p, %bb.c ]
  %.04754 = phi i32 [ %i.ak, %.lr.ph ], [ 2, %bb.c ]
  %.04853 = phi ptr [ %i.af, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %.04952 = phi ptr [ %i.aj, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load70(ptr noundef %.04853, i32 noundef %i.aa, ptr noundef %.04952, i32 noundef %i.z, i32 noundef %i.ab) #14
  %i.ac = load i32, ptr %2, align 4, !tbaa !16    ; 3 uses
  %i.ad = shl nsw i32 %i.ac, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %.04853, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !16    ; 3 uses
  %i.ah = shl nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %.04952, i64 %i.ai ; 2 uses
  %i.ak = add nuw nsw i32 %.04754, 2              ; 3 uses
  %i.al = icmp slt i32 %i.ak, %i.x
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !156

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.am = phi i32 [ %i.t, %bb.c ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.an = phi i32 [ %i.p, %bb.c ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.w, %bb.c ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.048.lcssa = phi ptr [ %i.s, %bb.c ], [ %i.af, %.lr.ph ] ; 2 uses
  %.047.lcssa = phi i32 [ 2, %bb.c ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.ao = or disjoint i32 %.047.lcssa, 1
  %i.ap = icmp eq i32 %i.ao, %4
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aq = sub nsw i32 0, %i.an
  %i.ar = sub nsw i32 0, %i.am
  %i.as = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %.048.lcssa, i32 noundef %i.aq, ptr noundef %.049.lcssa, i32 noundef %i.ar, i32 noundef %i.as) #14
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.at = icmp samesign ult i32 %.047.lcssa, %4
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.n, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %.048.lcssa, i32 noundef %i.an, ptr noundef %.049.lcssa, i32 noundef %i.am, i32 noundef %i.au) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.f, %bb.e
  %.050 = phi i32 [ 0, %bb.a ], [ %4, %bb.e ], [ %4, %bb.f ], [ %4, %bb.d ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, -2147483648) i32 @bayer_to_yv12_wrapper(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !52
  %i.c = load i32, ptr %6, align 4, !tbaa !16     ; 2 uses
  %i.d = mul nsw i32 %i.c, %3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = mul nsw i32 %i.j, %3
  %i.l = sdiv i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = mul nsw i32 %i.r, %3
  %i.t = sdiv i32 %i.s, 2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !51
  %switch.tableidx = add i32 %i.x, -139           ; 3 uses
  %i.y = icmp ult i32 %switch.tableidx, 12
  br i1 %i.y, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.z = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bayer_to_yv12_wrapper, i64 %i.z
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.aa = zext nneg i32 %switch.tableidx to i64
  %switch.gep107 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bayer_to_yv12_wrapper.3, i64 %i.aa
  %switch.load108 = load ptr, ptr %switch.gep107, align 8
  %i.ab = icmp sgt i32 %4, 1
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1785) #14
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %switch.lookup
  %i.ac = load i32, ptr %2, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 39552 ; 4 uses
  tail call void %switch.load(ptr noundef %i.a, i32 noundef %i.ac, ptr noundef %i.f, ptr noundef %i.n, ptr noundef %i.v, i32 noundef %i.c, i32 noundef %i.ae, ptr noundef nonnull %i.af) #14
  %i.ag = load i32, ptr %2, align 4, !tbaa !16    ; 3 uses
  %i.ah = shl nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %6, align 4, !tbaa !16    ; 3 uses
  %i.al = shl nsw i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !16
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.n, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.ap ; 2 uses
  %i.as = add nsw i32 %4, -2
  %i.at = icmp samesign ugt i32 %4, 4
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.au = phi i32 [ %i.bb, %.lr.ph ], [ %i.ak, %bb.c ]
  %i.av = phi i32 [ %i.ax, %.lr.ph ], [ %i.ag, %bb.c ]
  %.07384 = phi i32 [ %i.bj, %.lr.ph ], [ 2, %bb.c ]
  %.07483 = phi ptr [ %i.bi, %.lr.ph ], [ %i.ar, %bb.c ] ; 2 uses
  %.07582 = phi ptr [ %i.bh, %.lr.ph ], [ %i.aq, %bb.c ] ; 2 uses
  %.07681 = phi ptr [ %i.be, %.lr.ph ], [ %i.an, %bb.c ] ; 2 uses
  %.07780 = phi ptr [ %i.ba, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !53
  tail call void %switch.load108(ptr noundef %.07780, i32 noundef %i.av, ptr noundef %.07681, ptr noundef %.07582, ptr noundef %.07483, i32 noundef %i.au, i32 noundef %i.aw, ptr noundef nonnull %i.af) #14
  %i.ax = load i32, ptr %2, align 4, !tbaa !16    ; 3 uses
  %i.ay = shl nsw i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %.07780, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %6, align 4, !tbaa !16    ; 3 uses
  %i.bc = shl nsw i32 %i.bb, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %.07681, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.i, align 4, !tbaa !16
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.07582, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.07483, i64 %i.bg ; 2 uses
  %i.bj = add nuw nsw i32 %.07384, 2              ; 3 uses
  %i.bk = icmp slt i32 %i.bj, %i.as
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.bl = phi i32 [ %i.ak, %bb.c ], [ %i.bb, %.lr.ph ] ; 2 uses
  %i.bm = phi i32 [ %i.ag, %bb.c ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.077.lcssa = phi ptr [ %i.aj, %bb.c ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.076.lcssa = phi ptr [ %i.an, %bb.c ], [ %i.be, %.lr.ph ] ; 2 uses
  %.075.lcssa = phi ptr [ %i.aq, %bb.c ], [ %i.bh, %.lr.ph ] ; 2 uses
  %.074.lcssa = phi ptr [ %i.ar, %bb.c ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.073.lcssa = phi i32 [ 2, %bb.c ], [ %i.bj, %.lr.ph ] ; 2 uses
  %i.bn = or disjoint i32 %.073.lcssa, 1
  %i.bo = icmp eq i32 %i.bn, %4
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bp = sub nsw i32 0, %i.bm
  %i.bq = sub nsw i32 0, %i.bl
  %i.br = load i32, ptr %i.ad, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %.077.lcssa, i32 noundef %i.bp, ptr noundef %.076.lcssa, ptr noundef %.075.lcssa, ptr noundef %.074.lcssa, i32 noundef %i.bq, i32 noundef %i.br, ptr noundef nonnull %i.af) #14
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.bs = icmp samesign ult i32 %.073.lcssa, %4
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.ad, align 8, !tbaa !53
  tail call void %switch.load(ptr noundef %.077.lcssa, i32 noundef %i.bm, ptr noundef %.076.lcssa, ptr noundef %.075.lcssa, ptr noundef %.074.lcssa, i32 noundef %i.bl, i32 noundef %i.bt, ptr noundef nonnull %i.af) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.f, %bb.e
  %.078 = phi i32 [ 0, %bb.a ], [ %4, %bb.e ], [ %4, %bb.f ], [ %4, %bb.d ]
  ret i32 %.078
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bswap_16bpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef returned %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.c = sdiv i32 %i.b, 2                         ; 2 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !16     ; 2 uses
  %i.e = sdiv i32 %i.d, 2                         ; 3 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !52     ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.e, i1 false)
  %. = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.i) ; 4 uses
  %i.j = icmp ne ptr %i.f, null
  %i.k = icmp ne ptr %i.g, null
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %i.m = ashr i32 %4, %i.l                        ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %., 0
  %i.o = sext i32 %i.c to i64                     ; 2 uses
  %i.p = sext i32 %i.e to i64                     ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = ashr i32 %3, %i.l
  %i.r = mul i32 %i.q, %i.e
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr [2 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %wide.trip.count = zext i32 %. to i64           ; 10 uses
  %i.u = add nsw i32 %i.m, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = mul nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %wide.trip.count
  %i.y = add i64 %i.x, %i.s
  %i.z = shl i64 %i.y, 1
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.z
  %i.aa = mul nsw i64 %i.o, %i.v
  %i.ab = add i64 %i.aa, %wide.trip.count
  %i.ac = shl i64 %i.ab, 1
  %scevgep78 = getelementptr i8, ptr %i.g, i64 %i.ac
  %min.iters.check = icmp samesign ult i32 %., 4
  %bound0 = icmp ult ptr %i.t, %scevgep78
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.d, -1
  %i.ad = or i1 %found.conflict, %stride.check
  %stride.check79 = icmp slt i32 %i.b, -1
  %i.ae = or i1 %i.ad, %stride.check79
  %min.iters.check80 = icmp samesign ult i32 %., 16
  %i.af = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  %n.vec82 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n86 = icmp eq i64 %n.vec82, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.055 = phi ptr [ %i.bn, %._crit_edge ], [ %i.g, %.preheader.preheader ] ; 8 uses
  %.04454 = phi ptr [ %i.bo, %._crit_edge ], [ %i.t, %.preheader.preheader ] ; 8 uses
  %.04753 = phi i32 [ %i.bp, %._crit_edge ], [ 0, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <8 x i16>, ptr %i.ag, align 2, !tbaa !60, !alias.scope !187
  %wide.load81 = load <8 x i16>, ptr %i.ah, align 2, !tbaa !60, !alias.scope !187
  %i.ai = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.aj = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load81)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <8 x i16> %i.ai, ptr %i.ak, align 2, !tbaa !60, !alias.scope !188, !noalias !187
  store <8 x i16> %i.aj, ptr %i.al, align 2, !tbaa !60, !alias.scope !188, !noalias !187
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %index83
  %wide.load84 = load <4 x i16>, ptr %i.an, align 2, !tbaa !60, !alias.scope !187
  %i.ao = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load84)
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %index83
  store <4 x i16> %i.ao, ptr %i.ap, align 2, !tbaa !60, !alias.scope !188, !noalias !187
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec82, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %indvars.iv.prol
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !60
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %indvars.iv.prol
  store i16 %i.at, ptr %i.au, align 2, !tbaa !60
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !163

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.av = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3194, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !60
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %indvars.iv
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !60
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %indvars.iv.next
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !60
  %indvars.iv.next.1190 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %indvars.iv.next.1190
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !60
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %indvars.iv.next.1190
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !60
  %indvars.iv.next.2192 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.055, i64 %indvars.iv.next.2192
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !60
  %i.bl = tail call i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.04454, i64 %indvars.iv.next.2192
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !60
  %indvars.iv.next.3194 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3194, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bn = getelementptr inbounds [2 x i8], ptr %.055, i64 %i.o
  %i.bo = getelementptr inbounds [2 x i8], ptr %.04454, i64 %i.p
  %i.bp = add nuw nsw i32 %.04753, 1              ; 2 uses
  %exitcond58.not = icmp eq i32 %i.bp, %i.m
  br i1 %exitcond58.not, label %.loopexit, label %iter.check, !llvm.loop !165

end_hunk_0
