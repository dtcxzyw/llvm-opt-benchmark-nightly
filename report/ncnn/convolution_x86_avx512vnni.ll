Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.idx ; 5 uses
  %i.oz = shl nsw i32 %i.u, 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pa ; 2 uses
  %i.pc = shl nsw i32 %i.u, 5
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pd ; 2 uses
  %i.pf = mul nsw i32 %i.u, 48
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pg ; 2 uses
  %i.pi = add nsw <16 x i16> %i.el, %i.li
  %i.pj = sub nsw <16 x i16> %i.eo, %i.pi
  %i.pk = add nsw <16 x i16> %i.li, %i.hx
  %i.pl = sub nsw <16 x i16> %i.li, %i.hx
  %i.pm = add nsw <16 x i16> %i.op, %i.hx
  %i.pn = sub nsw <16 x i16> %i.os, %i.pm
  store <16 x i16> %i.pj, ptr %i.oy, align 32, !tbaa !30
  store <16 x i16> %i.pk, ptr %i.pb, align 32, !tbaa !30
  store <16 x i16> %i.pl, ptr %i.pe, align 32, !tbaa !30
  store <16 x i16> %i.pn, ptr %i.ph, align 32, !tbaa !30
  %i.po = load i32, ptr %3, align 4, !tbaa !10
  %i.pp = shl nsw i32 %i.po, 6
  %i.pq = sext i32 %i.pp to i64                   ; 4 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.pb, i64 %i.pq ; 2 uses
  %i.pt = getelementptr inbounds [2 x i8], ptr %i.pe, i64 %i.pq ; 2 uses
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.pq ; 2 uses
  %i.pv = sub nsw <16 x i16> %i.ep, %i.lj
  %i.pw = add nsw <16 x i16> %i.lj, %i.hy
  %i.px = sub nsw <16 x i16> %i.lj, %i.hy
  %i.py = sub nsw <16 x i16> %i.ot, %i.hy
  store <16 x i16> %i.pv, ptr %i.pr, align 32, !tbaa !30
  store <16 x i16> %i.pw, ptr %i.ps, align 32, !tbaa !30
  store <16 x i16> %i.px, ptr %i.pt, align 32, !tbaa !30
  store <16 x i16> %i.py, ptr %i.pu, align 32, !tbaa !30
  %i.pz = load i32, ptr %3, align 4, !tbaa !10
  %i.qa = shl nsw i32 %i.pz, 6
  %i.qb = sext i32 %i.qa to i64                   ; 4 uses
  %i.qc = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.ps, i64 %i.qb ; 2 uses
  %i.qe = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.qb ; 2 uses
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.pu, i64 %i.qb ; 2 uses
  %i.qg = add nsw <16 x i16> %i.en, %i.lk
  %i.qh = sub nsw <16 x i16> %i.el, %i.qg
  %i.qi = add nsw <16 x i16> %i.lk, %i.hz
  %i.qj = sub nsw <16 x i16> %i.lk, %i.hz
  %i.qk = add nsw <16 x i16> %i.or, %i.hz
  %i.ql = sub nsw <16 x i16> %i.op, %i.qk
  store <16 x i16> %i.qh, ptr %i.qc, align 32, !tbaa !30
  store <16 x i16> %i.qi, ptr %i.qd, align 32, !tbaa !30
  store <16 x i16> %i.qj, ptr %i.qe, align 32, !tbaa !30
  store <16 x i16> %i.ql, ptr %i.qf, align 32, !tbaa !30
  %i.qm = load i32, ptr %3, align 4, !tbaa !10
  %i.qn = shl nsw i32 %i.qm, 6
  %i.qo = sext i32 %i.qn to i64                   ; 4 uses
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.qo
  %i.qq = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.qo
  %i.qr = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.qo
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qo
  %i.qt = add nsw <16 x i16> %i.en, %i.ll
  %i.qu = sub nsw <16 x i16> %i.em, %i.qt
  %i.qv = add nsw <16 x i16> %i.ll, %i.ia
  %i.qw = sub nsw <16 x i16> %i.ll, %i.ia
  %i.qx = add nsw <16 x i16> %i.or, %i.ia
  %i.qy = sub nsw <16 x i16> %i.oq, %i.qx
  store <16 x i16> %i.qu, ptr %i.qp, align 32, !tbaa !30
  store <16 x i16> %i.qv, ptr %i.qq, align 32, !tbaa !30
  store <16 x i16> %i.qw, ptr %i.qr, align 32, !tbaa !30
  store <16 x i16> %i.qy, ptr %i.qs, align 32, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qz = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.ra = sext i32 %i.qz to i64
  %i.rb = icmp slt i64 %indvars.iv.next, %i.ra
  br i1 %i.rb, label %.noexc, label %._crit_edge, !llvm.loop !727

._crit_edge:                                      ; preds = %.thread150.3, %.lr.ph.split
  %i.rc = phi i32 [ %i.q, %.lr.ph.split ], [ %i.qz, %.thread150.3 ]
  %i.rd = add i32 %.0164, 1
  %exitcond.not = icmp eq i32 %.0164, %i.j
  br i1 %exitcond.not, label %._crit_edge166, label %.lr.ph.split, !llvm.loop !728

._crit_edge166:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge166, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.h = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !10
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !10
  %i.k = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %.not781 = icmp sgt i32 %i.k, %i.j
  br i1 %.not781, label %._crit_edge785, label %.lr.ph784

.lr.ph784:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph784, %._crit_edge780
  %i.p = phi i32 [ %.pre, %.lr.ph784 ], [ %i.aaf, %._crit_edge780 ] ; 2 uses
  %i.q = phi i32 [ %.pre, %.lr.ph784 ], [ %i.aag, %._crit_edge780 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph784 ], [ %indvars.iv.next, %._crit_edge780 ] ; 7 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !28
  %i.s = load i32, ptr %i.l, align 4, !tbaa !16
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !29
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w ; 2 uses
  %i.y = icmp sgt i32 %i.q, 15
  br i1 %i.y, label %.lr.ph620.preheader, label %.preheader584

.lr.ph620.preheader:                              ; preds = %bb.c
  %.pre847 = load i32, ptr %6, align 4, !tbaa !10
  %i.z = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  br label %.lr.ph620

.preheader584:                                    ; preds = %._crit_edge615, %bb.c
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %i.fo, %._crit_edge615 ] ; 2 uses
  %i.ab = phi i32 [ %i.q, %bb.c ], [ %i.fp, %._crit_edge615 ] ; 2 uses
  %i.ac = phi i32 [ %i.q, %bb.c ], [ %i.fq, %._crit_edge615 ] ; 3 uses
  %.0526.lcssa = phi i32 [ 0, %bb.c ], [ %i.fs, %._crit_edge615 ] ; 3 uses
  %.0522.lcssa = phi ptr [ %i.x, %bb.c ], [ %.4.lcssa, %._crit_edge615 ] ; 2 uses
  %i.ad = or disjoint i32 %.0526.lcssa, 7
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %.lr.ph659.preheader, label %.preheader583

.lr.ph659.preheader:                              ; preds = %.preheader584
  %.pre848 = load i32, ptr %6, align 4, !tbaa !10
  %i.af = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  br label %.lr.ph659

.lr.ph620:                                        ; preds = %.lr.ph620.preheader, %._crit_edge615
  %i.ag = phi i32 [ %i.fo, %._crit_edge615 ], [ %i.p, %.lr.ph620.preheader ]
  %i.ah = phi i32 [ %i.fp, %._crit_edge615 ], [ %i.q, %.lr.ph620.preheader ]
  %i.ai = phi i32 [ %i.fq, %._crit_edge615 ], [ %i.q, %.lr.ph620.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.fr, %._crit_edge615 ], [ %.pre847, %.lr.ph620.preheader ] ; 2 uses
  %.0522618 = phi ptr [ %.4.lcssa, %._crit_edge615 ], [ %i.x, %.lr.ph620.preheader ] ; 2 uses
  %.0526617 = phi i32 [ %i.fs, %._crit_edge615 ], [ 0, %.lr.ph620.preheader ] ; 5 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !28
  %i.al = mul nsw i32 %i.ai, %i.z
  %i.am = add nsw i32 %i.al, %.0526617            ; 2 uses
  %i.an = shl nsw i32 %i.am, 4
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.aj, 15
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph620, %.lr.ph
  %.1523589 = phi ptr [ %i.cj, %.lr.ph ], [ %.0522618, %.lr.ph620 ] ; 9 uses
  %.0539588 = phi ptr [ %i.ci, %.lr.ph ], [ %i.ap, %.lr.ph620 ] ; 9 uses
  %.0543587 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.lr.ph620 ]
  %i.ar = load <16 x i32>, ptr %.0539588, align 1, !tbaa !30 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0539588, i64 64
  %i.at = load <16 x i32>, ptr %i.as, align 1, !tbaa !30 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0539588, i64 128
  %i.av = load <16 x i32>, ptr %i.au, align 1, !tbaa !30 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0539588, i64 192
  %i.ax = load <16 x i32>, ptr %i.aw, align 1, !tbaa !30 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0539588, i64 256
  %i.az = load <16 x i32>, ptr %i.ay, align 1, !tbaa !30 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0539588, i64 320
  %i.bb = load <16 x i32>, ptr %i.ba, align 1, !tbaa !30 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0539588, i64 384
  %i.bd = load <16 x i32>, ptr %i.bc, align 1, !tbaa !30 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0539588, i64 448
  %i.bf = load <16 x i32>, ptr %i.be, align 1, !tbaa !30 ; 2 uses
  %7 = shufflevector <16 x i32> %i.ar, <16 x i32> %i.av, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %8 = shufflevector <16 x i32> %i.ar, <16 x i32> %i.av, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %9 = shufflevector <16 x i32> %i.at, <16 x i32> %i.ax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %10 = shufflevector <16 x i32> %i.at, <16 x i32> %i.ax, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %11 = shufflevector <16 x i32> %i.az, <16 x i32> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %12 = shufflevector <16 x i32> %i.az, <16 x i32> %i.bd, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %13 = shufflevector <16 x i32> %i.bb, <16 x i32> %i.bf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %14 = shufflevector <16 x i32> %i.bb, <16 x i32> %i.bf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %15 = shufflevector <16 x i32> %7, <16 x i32> %8, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %16 = shufflevector <16 x i32> %7, <16 x i32> %8, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %17 = shufflevector <16 x i32> %9, <16 x i32> %10, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %18 = shufflevector <16 x i32> %9, <16 x i32> %10, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %19 = shufflevector <16 x i32> %11, <16 x i32> %12, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %20 = shufflevector <16 x i32> %11, <16 x i32> %12, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %21 = shufflevector <16 x i32> %13, <16 x i32> %14, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %22 = shufflevector <16 x i32> %13, <16 x i32> %14, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i32> %15, <16 x i32> %17, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bh = shufflevector <16 x i32> %15, <16 x i32> %17, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i32> %16, <16 x i32> %18, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bj = shufflevector <16 x i32> %16, <16 x i32> %18, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i32> %19, <16 x i32> %21, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bl = shufflevector <16 x i32> %19, <16 x i32> %21, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i32> %20, <16 x i32> %22, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bn = shufflevector <16 x i32> %20, <16 x i32> %22, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bo = shufflevector <16 x i32> %i.bg, <16 x i32> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bp = shufflevector <16 x i32> %i.bh, <16 x i32> %i.bl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bq = shufflevector <16 x i32> %i.bi, <16 x i32> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.br = shufflevector <16 x i32> %i.bj, <16 x i32> %i.bn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bs = shufflevector <16 x i32> %i.bg, <16 x i32> %i.bk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bt = shufflevector <16 x i32> %i.bh, <16 x i32> %i.bl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bu = shufflevector <16 x i32> %i.bi, <16 x i32> %i.bm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bv = shufflevector <16 x i32> %i.bj, <16 x i32> %i.bn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x i32> %i.bo, ptr %.1523589, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.1523589, i64 64
  store <16 x i32> %i.bp, ptr %i.bw, align 1, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %.1523589, i64 128
  store <16 x i32> %i.bq, ptr %i.bx, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %.1523589, i64 192
  store <16 x i32> %i.br, ptr %i.by, align 1, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %.1523589, i64 256
  store <16 x i32> %i.bs, ptr %i.bz, align 1, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %.1523589, i64 320
  store <16 x i32> %i.bt, ptr %i.ca, align 1, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %.1523589, i64 384
  store <16 x i32> %i.bu, ptr %i.cb, align 1, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %.1523589, i64 448
  store <16 x i32> %i.bv, ptr %i.cc, align 1, !tbaa !30
  %i.cd = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.ce = load i32, ptr %2, align 4, !tbaa !10
  %i.cf = shl i32 %i.cd, 4
  %i.cg = mul i32 %i.cf, %i.ce
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %.0539588, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1523589, i64 512 ; 2 uses
  %i.ck = add nuw nsw i32 %.0543587, 16           ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 15
  %i.cm = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !730

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre852 = mul nsw i32 %i.cd, %i.z
  %.pre853 = add nsw i32 %.pre852, %.0526617      ; 2 uses
  %.pre855 = shl nsw i32 %.pre853, 4
  %.pre857 = sext i32 %.pre855 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph620
  %.pre-phi858 = phi i64 [ %.pre857, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph620 ]
  %.pre-phi854 = phi i32 [ %.pre853, %._crit_edge.loopexit ], [ %i.am, %.lr.ph620 ] ; 2 uses
  %i.co = phi i32 [ %i.cd, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph620 ]
  %i.cp = phi i32 [ %i.cd, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph620 ]
  %i.cq = phi i32 [ %i.cd, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph620 ]
  %i.cr = phi i32 [ %i.cm, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph620 ] ; 2 uses
  %.0543.lcssa = phi i32 [ %i.ck, %._crit_edge.loopexit ], [ 0, %.lr.ph620 ] ; 3 uses
  %.0539.lcssa = phi ptr [ %i.ci, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph620 ]
  %.1523.lcssa = phi ptr [ %i.cj, %._crit_edge.loopexit ], [ %.0522618, %.lr.ph620 ] ; 2 uses
  %i.cs = sub nsw i64 0, %.pre-phi858
  %i.ct = getelementptr inbounds [2 x i8], ptr %.0539.lcssa, i64 %i.cs
  %i.cu = shl nsw i32 %.pre-phi854, 3
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.cx = or disjoint i32 %.0543.lcssa, 7
  %i.cy = icmp slt i32 %i.cx, %i.cr
  br i1 %i.cy, label %.lr.ph596, label %._crit_edge597

.lr.ph596:                                        ; preds = %._crit_edge, %.lr.ph596
  %.2524594 = phi ptr [ %i.dt, %.lr.ph596 ], [ %.1523.lcssa, %._crit_edge ] ; 5 uses
  %.1540593 = phi ptr [ %i.ds, %.lr.ph596 ], [ %i.cw, %._crit_edge ] ; 5 uses
  %.1544592 = phi i32 [ %i.du, %.lr.ph596 ], [ %.0543.lcssa, %._crit_edge ]
  %i.cz = load <16 x i32>, ptr %.1540593, align 1, !tbaa !30 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1540593, i64 64
  %i.db = load <16 x i32>, ptr %i.da, align 1, !tbaa !30 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1540593, i64 128
  %i.dd = load <16 x i32>, ptr %i.dc, align 1, !tbaa !30 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1540593, i64 192
  %i.df = load <16 x i32>, ptr %i.de, align 1, !tbaa !30 ; 2 uses
  %23 = shufflevector <16 x i32> %i.cz, <16 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %24 = shufflevector <16 x i32> %i.cz, <16 x i32> %i.db, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %25 = shufflevector <16 x i32> %i.dd, <16 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %26 = shufflevector <16 x i32> %i.dd, <16 x i32> %i.df, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %27 = shufflevector <16 x i32> %23, <16 x i32> %24, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %28 = shufflevector <16 x i32> %23, <16 x i32> %24, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %29 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %30 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dg = shufflevector <16 x i32> %27, <16 x i32> %29, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  %i.dh = shufflevector <16 x i32> %27, <16 x i32> %29, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  %i.di = shufflevector <16 x i32> %28, <16 x i32> %30, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  %i.dj = shufflevector <16 x i32> %28, <16 x i32> %30, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  store <16 x i32> %i.dg, ptr %.2524594, align 1, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %.2524594, i64 64
  store <16 x i32> %i.dh, ptr %i.dk, align 1, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %.2524594, i64 128
  store <16 x i32> %i.di, ptr %i.dl, align 1, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %.2524594, i64 192
  store <16 x i32> %i.dj, ptr %i.dm, align 1, !tbaa !30
  %i.dn = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.do = load i32, ptr %2, align 4, !tbaa !10
  %i.dp = shl i32 %i.dn, 3
  %i.dq = mul i32 %i.dp, %i.do
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [2 x i8], ptr %.1540593, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.2524594, i64 256 ; 2 uses
  %i.du = add nuw nsw i32 %.1544592, 8            ; 3 uses
  %i.dv = or disjoint i32 %i.du, 7
  %i.dw = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph596, label %._crit_edge597.loopexit, !llvm.loop !731

._crit_edge597.loopexit:                          ; preds = %.lr.ph596
  %.pre859 = mul nsw i32 %i.dn, %i.z
  %.pre861 = add nsw i32 %.pre859, %.0526617      ; 2 uses
  %.pre863 = shl nsw i32 %.pre861, 3
  %.pre865 = sext i32 %.pre863 to i64
  br label %._crit_edge597

._crit_edge597:                                   ; preds = %._crit_edge597.loopexit, %._crit_edge
  %.pre-phi866 = phi i64 [ %.pre865, %._crit_edge597.loopexit ], [ %i.cv, %._crit_edge ]
  %.pre-phi862 = phi i32 [ %.pre861, %._crit_edge597.loopexit ], [ %.pre-phi854, %._crit_edge ] ; 2 uses
  %i.dy = phi i32 [ %i.dn, %._crit_edge597.loopexit ], [ %i.co, %._crit_edge ]
  %i.dz = phi i32 [ %i.dn, %._crit_edge597.loopexit ], [ %i.cp, %._crit_edge ]
  %i.ea = phi i32 [ %i.dn, %._crit_edge597.loopexit ], [ %i.cq, %._crit_edge ]
  %i.eb = phi i32 [ %i.dw, %._crit_edge597.loopexit ], [ %i.cr, %._crit_edge ] ; 2 uses
  %.1544.lcssa = phi i32 [ %i.du, %._crit_edge597.loopexit ], [ %.0543.lcssa, %._crit_edge ] ; 3 uses
  %.1540.lcssa = phi ptr [ %i.ds, %._crit_edge597.loopexit ], [ %i.cw, %._crit_edge ]
  %.2524.lcssa = phi ptr [ %i.dt, %._crit_edge597.loopexit ], [ %.1523.lcssa, %._crit_edge ] ; 2 uses
  %i.ec = sub nsw i64 0, %.pre-phi866
  %i.ed = getelementptr inbounds [2 x i8], ptr %.1540.lcssa, i64 %i.ec
  %i.ee = shl nsw i32 %.pre-phi862, 1
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.ef ; 2 uses
  %i.eh = or disjoint i32 %.1544.lcssa, 1
  %i.ei = icmp slt i32 %i.eh, %i.eb
  br i1 %i.ei, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %._crit_edge597, %.lr.ph605
  %.3525603 = phi ptr [ %i.eq, %.lr.ph605 ], [ %.2524.lcssa, %._crit_edge597 ] ; 2 uses
  %.2541602 = phi ptr [ %i.ep, %.lr.ph605 ], [ %i.eg, %._crit_edge597 ] ; 2 uses
  %.2545601 = phi i32 [ %i.er, %.lr.ph605 ], [ %.1544.lcssa, %._crit_edge597 ]
  %i.ej = load <8 x i64>, ptr %.2541602, align 1, !tbaa !30
  store <8 x i64> %i.ej, ptr %.3525603, align 1, !tbaa !30
  %i.ek = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.el = load i32, ptr %2, align 4, !tbaa !10
  %i.em = shl i32 %i.ek, 1
  %i.en = mul i32 %i.em, %i.el
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [2 x i8], ptr %.2541602, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.3525603, i64 64 ; 2 uses
  %i.er = add nuw nsw i32 %.2545601, 2            ; 3 uses
  %i.es = or disjoint i32 %i.er, 1
  %i.et = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph605, label %._crit_edge606.loopexit, !llvm.loop !732

._crit_edge606.loopexit:                          ; preds = %.lr.ph605
  %.pre867 = mul nsw i32 %i.ek, %i.z
  %.pre869 = add nsw i32 %.pre867, %.0526617      ; 2 uses
  %.pre871 = shl nsw i32 %.pre869, 1
  %.pre873 = sext i32 %.pre871 to i64
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %._crit_edge606.loopexit, %._crit_edge597
  %.pre-phi874 = phi i64 [ %.pre873, %._crit_edge606.loopexit ], [ %i.ef, %._crit_edge597 ]
  %.pre-phi870 = phi i32 [ %.pre869, %._crit_edge606.loopexit ], [ %.pre-phi862, %._crit_edge597 ]
  %i.ev = phi i32 [ %i.ek, %._crit_edge606.loopexit ], [ %i.dy, %._crit_edge597 ]
  %i.ew = phi i32 [ %i.ek, %._crit_edge606.loopexit ], [ %i.dz, %._crit_edge597 ]
  %i.ex = phi i32 [ %i.ek, %._crit_edge606.loopexit ], [ %i.ea, %._crit_edge597 ]
  %i.ey = phi i32 [ %i.et, %._crit_edge606.loopexit ], [ %i.eb, %._crit_edge597 ] ; 2 uses
  %.2545.lcssa = phi i32 [ %i.er, %._crit_edge606.loopexit ], [ %.1544.lcssa, %._crit_edge597 ] ; 2 uses
  %.2541.lcssa = phi ptr [ %i.ep, %._crit_edge606.loopexit ], [ %i.eg, %._crit_edge597 ]
  %.3525.lcssa = phi ptr [ %i.eq, %._crit_edge606.loopexit ], [ %.2524.lcssa, %._crit_edge597 ] ; 2 uses
  %i.ez = icmp slt i32 %.2545.lcssa, %i.ey
  br i1 %i.ez, label %.lr.ph614.preheader, label %._crit_edge615

.lr.ph614.preheader:                              ; preds = %._crit_edge606
  %i.fa = sub nsw i64 0, %.pre-phi874
  %i.fb = getelementptr inbounds [2 x i8], ptr %.2541.lcssa, i64 %i.fa
  %i.fc = sext i32 %.pre-phi870 to i64
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.fc
  br label %.lr.ph614

.lr.ph614:                                        ; preds = %.lr.ph614.preheader, %.lr.ph614
  %.4612 = phi ptr [ %i.fk, %.lr.ph614 ], [ %.3525.lcssa, %.lr.ph614.preheader ] ; 2 uses
  %.3542611 = phi ptr [ %i.fj, %.lr.ph614 ], [ %i.fd, %.lr.ph614.preheader ] ; 2 uses
  %.3546610 = phi i32 [ %i.fl, %.lr.ph614 ], [ %.2545.lcssa, %.lr.ph614.preheader ]
  %i.fe = load <4 x i64>, ptr %.3542611, align 1, !tbaa !30
  store <4 x i64> %i.fe, ptr %.4612, align 32, !tbaa !30
  %i.ff = load i32, ptr %4, align 4, !tbaa !10    ; 4 uses
  %i.fg = load i32, ptr %2, align 4, !tbaa !10
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %.3542611, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.4612, i64 32 ; 2 uses
  %i.fl = add nuw nsw i32 %.3546610, 1            ; 2 uses
  %i.fm = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.fn = icmp slt i32 %i.fl, %i.fm
  br i1 %i.fn, label %.lr.ph614, label %._crit_edge615, !llvm.loop !733

._crit_edge615:                                   ; preds = %.lr.ph614, %._crit_edge606
  %i.fo = phi i32 [ %i.ev, %._crit_edge606 ], [ %i.ff, %.lr.ph614 ] ; 2 uses
  %i.fp = phi i32 [ %i.ew, %._crit_edge606 ], [ %i.ff, %.lr.ph614 ] ; 2 uses
  %i.fq = phi i32 [ %i.ex, %._crit_edge606 ], [ %i.ff, %.lr.ph614 ] ; 3 uses
  %i.fr = phi i32 [ %i.ey, %._crit_edge606 ], [ %i.fm, %.lr.ph614 ]
  %.4.lcssa = phi ptr [ %.3525.lcssa, %._crit_edge606 ], [ %i.fk, %.lr.ph614 ] ; 2 uses
  %i.fs = add nuw nsw i32 %.0526617, 16           ; 3 uses
  %i.ft = or disjoint i32 %i.fs, 15
  %i.fu = icmp slt i32 %i.ft, %i.fq
  br i1 %i.fu, label %.lr.ph620, label %.preheader584, !llvm.loop !734

.preheader583:                                    ; preds = %._crit_edge655, %.preheader584
  %i.fv = phi i32 [ %i.aa, %.preheader584 ], [ %i.kl, %._crit_edge655 ] ; 2 uses
  %i.fw = phi i32 [ %i.ab, %.preheader584 ], [ %i.km, %._crit_edge655 ] ; 2 uses
  %i.fx = phi i32 [ %i.ac, %.preheader584 ], [ %i.kn, %._crit_edge655 ] ; 3 uses
  %.1527.lcssa = phi i32 [ %.0526.lcssa, %.preheader584 ], [ %i.kp, %._crit_edge655 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.0522.lcssa, %.preheader584 ], [ %.9.lcssa, %._crit_edge655 ] ; 2 uses
  %i.fy = or disjoint i32 %.1527.lcssa, 3
  %i.fz = icmp slt i32 %i.fy, %i.fx
  br i1 %i.fz, label %.lr.ph699.preheader, label %.preheader582

.lr.ph699.preheader:                              ; preds = %.preheader583
  %.pre849 = load i32, ptr %6, align 4, !tbaa !10
  %i.ga = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  br label %.lr.ph699

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %._crit_edge655
  %i.gb = phi i32 [ %i.kl, %._crit_edge655 ], [ %i.aa, %.lr.ph659.preheader ]
  %i.gc = phi i32 [ %i.km, %._crit_edge655 ], [ %i.ab, %.lr.ph659.preheader ]
  %i.gd = phi i32 [ %i.kn, %._crit_edge655 ], [ %i.ac, %.lr.ph659.preheader ] ; 2 uses
  %i.ge = phi i32 [ %i.ko, %._crit_edge655 ], [ %.pre848, %.lr.ph659.preheader ] ; 2 uses
  %.5658 = phi ptr [ %.9.lcssa, %._crit_edge655 ], [ %.0522.lcssa, %.lr.ph659.preheader ] ; 2 uses
  %.1527657 = phi i32 [ %i.kp, %._crit_edge655 ], [ %.0526.lcssa, %.lr.ph659.preheader ] ; 5 uses
  %i.gf = load ptr, ptr %5, align 8, !tbaa !28
  %i.gg = mul nsw i32 %i.gd, %i.af
  %i.gh = add nsw i32 %i.gg, %.1527657            ; 2 uses
  %i.gi = shl nsw i32 %i.gh, 4
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gj ; 2 uses
  %i.gl = icmp sgt i32 %i.ge, 15
  br i1 %i.gl, label %.lr.ph627, label %._crit_edge628

.lr.ph627:                                        ; preds = %.lr.ph659, %.lr.ph627
  %.6625 = phi ptr [ %i.hg, %.lr.ph627 ], [ %.5658, %.lr.ph659 ] ; 5 uses
  %.0547624 = phi ptr [ %i.hf, %.lr.ph627 ], [ %i.gk, %.lr.ph659 ] ; 5 uses
  %.0551623 = phi i32 [ %i.hh, %.lr.ph627 ], [ 0, %.lr.ph659 ]
  %i.gm = load <16 x i32>, ptr %.0547624, align 1, !tbaa !30 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0547624, i64 64
  %i.go = load <16 x i32>, ptr %i.gn, align 1, !tbaa !30 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0547624, i64 128
  %i.gq = load <16 x i32>, ptr %i.gp, align 1, !tbaa !30 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0547624, i64 192
  %i.gs = load <16 x i32>, ptr %i.gr, align 1, !tbaa !30 ; 2 uses
  %31 = shufflevector <16 x i32> %i.gm, <16 x i32> %i.gq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %32 = shufflevector <16 x i32> %i.gm, <16 x i32> %i.gq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %33 = shufflevector <16 x i32> %i.go, <16 x i32> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %34 = shufflevector <16 x i32> %i.go, <16 x i32> %i.gs, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %35 = shufflevector <16 x i32> %31, <16 x i32> %32, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %36 = shufflevector <16 x i32> %31, <16 x i32> %32, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %37 = shufflevector <16 x i32> %33, <16 x i32> %34, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %38 = shufflevector <16 x i32> %33, <16 x i32> %34, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gt = shufflevector <16 x i32> %35, <16 x i32> %37, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27>
  %i.gu = shufflevector <16 x i32> %36, <16 x i32> %38, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27>
  %i.gv = shufflevector <16 x i32> %35, <16 x i32> %37, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31>
  %i.gw = shufflevector <16 x i32> %36, <16 x i32> %38, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31>
  store <16 x i32> %i.gt, ptr %.6625, align 1, !tbaa !30
  %i.gx = getelementptr inbounds nuw i8, ptr %.6625, i64 64
  store <16 x i32> %i.gu, ptr %i.gx, align 1, !tbaa !30
  %i.gy = getelementptr inbounds nuw i8, ptr %.6625, i64 128
  store <16 x i32> %i.gv, ptr %i.gy, align 1, !tbaa !30
  %i.gz = getelementptr inbounds nuw i8, ptr %.6625, i64 192
  store <16 x i32> %i.gw, ptr %i.gz, align 1, !tbaa !30
  %i.ha = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.hb = load i32, ptr %2, align 4, !tbaa !10
  %i.hc = shl i32 %i.ha, 4
  %i.hd = mul i32 %i.hc, %i.hb
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %.0547624, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.6625, i64 256 ; 2 uses
  %i.hh = add nuw nsw i32 %.0551623, 16           ; 3 uses
  %i.hi = or disjoint i32 %i.hh, 15
  %i.hj = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.hk = icmp slt i32 %i.hi, %i.hj
  br i1 %i.hk, label %.lr.ph627, label %._crit_edge628.loopexit, !llvm.loop !735

._crit_edge628.loopexit:                          ; preds = %.lr.ph627
  %.pre875 = mul nsw i32 %i.ha, %i.af
  %.pre877 = add nsw i32 %.pre875, %.1527657      ; 2 uses
  %.pre879 = shl nsw i32 %.pre877, 4
  %.pre881 = sext i32 %.pre879 to i64
  br label %._crit_edge628

._crit_edge628:                                   ; preds = %._crit_edge628.loopexit, %.lr.ph659
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge628.loopexit ], [ %i.gj, %.lr.ph659 ]
  %.pre-phi878 = phi i32 [ %.pre877, %._crit_edge628.loopexit ], [ %i.gh, %.lr.ph659 ] ; 2 uses
  %i.hl = phi i32 [ %i.ha, %._crit_edge628.loopexit ], [ %i.gb, %.lr.ph659 ]
  %i.hm = phi i32 [ %i.ha, %._crit_edge628.loopexit ], [ %i.gc, %.lr.ph659 ]
  %i.hn = phi i32 [ %i.ha, %._crit_edge628.loopexit ], [ %i.gd, %.lr.ph659 ]
  %i.ho = phi i32 [ %i.hj, %._crit_edge628.loopexit ], [ %i.ge, %.lr.ph659 ] ; 2 uses
  %.0551.lcssa = phi i32 [ %i.hh, %._crit_edge628.loopexit ], [ 0, %.lr.ph659 ] ; 3 uses
  %.0547.lcssa = phi ptr [ %i.hf, %._crit_edge628.loopexit ], [ %i.gk, %.lr.ph659 ]
  %.6.lcssa = phi ptr [ %i.hg, %._crit_edge628.loopexit ], [ %.5658, %.lr.ph659 ] ; 2 uses
  %i.hp = sub nsw i64 0, %.pre-phi882
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0547.lcssa, i64 %i.hp
  %i.hr = shl nsw i32 %.pre-phi878, 3
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.hs ; 2 uses
  %i.hu = or disjoint i32 %.0551.lcssa, 7
  %i.hv = icmp slt i32 %i.hu, %i.ho
  br i1 %i.hv, label %.lr.ph636, label %._crit_edge637

.lr.ph636:                                        ; preds = %._crit_edge628, %.lr.ph636
  %.7634 = phi ptr [ %i.iq, %.lr.ph636 ], [ %.6.lcssa, %._crit_edge628 ] ; 5 uses
  %.1548633 = phi ptr [ %i.ip, %.lr.ph636 ], [ %i.ht, %._crit_edge628 ] ; 5 uses
  %.1552632 = phi i32 [ %i.ir, %.lr.ph636 ], [ %.0551.lcssa, %._crit_edge628 ]
  %i.hw = load <8 x float>, ptr %.1548633, align 1, !tbaa !30 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.1548633, i64 32
  %i.hy = load <8 x float>, ptr %i.hx, align 1, !tbaa !30 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1548633, i64 64
  %i.ia = load <8 x float>, ptr %i.hz, align 1, !tbaa !30 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1548633, i64 96
  %i.ic = load <8 x float>, ptr %i.ib, align 1, !tbaa !30 ; 2 uses
  %39 = shufflevector <8 x float> %i.hw, <8 x float> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %40 = shufflevector <8 x float> %i.hw, <8 x float> %i.ia, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %41 = shufflevector <8 x float> %i.hy, <8 x float> %i.ic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %42 = shufflevector <8 x float> %i.hy, <8 x float> %i.ic, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %43 = shufflevector <8 x float> %39, <8 x float> %40, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %44 = shufflevector <8 x float> %39, <8 x float> %40, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %45 = shufflevector <8 x float> %41, <8 x float> %42, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %46 = shufflevector <8 x float> %41, <8 x float> %42, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.id = shufflevector <8 x float> %43, <8 x float> %45, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ie = shufflevector <8 x float> %43, <8 x float> %45, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.if = shufflevector <8 x float> %44, <8 x float> %46, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ig = shufflevector <8 x float> %44, <8 x float> %46, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.id, ptr %.7634, align 1, !tbaa !30
  %i.ih = getelementptr inbounds nuw i8, ptr %.7634, i64 32
  store <8 x float> %i.ie, ptr %i.ih, align 1, !tbaa !30
  %i.ii = getelementptr inbounds nuw i8, ptr %.7634, i64 64
  store <8 x float> %i.if, ptr %i.ii, align 1, !tbaa !30
  %i.ij = getelementptr inbounds nuw i8, ptr %.7634, i64 96
  store <8 x float> %i.ig, ptr %i.ij, align 1, !tbaa !30
  %i.ik = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.il = load i32, ptr %2, align 4, !tbaa !10
  %i.im = shl i32 %i.ik, 3
  %i.in = mul i32 %i.im, %i.il
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %.1548633, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.7634, i64 128 ; 2 uses
  %i.ir = add nuw nsw i32 %.1552632, 8            ; 3 uses
  %i.is = or disjoint i32 %i.ir, 7
  %i.it = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.iu = icmp slt i32 %i.is, %i.it
  br i1 %i.iu, label %.lr.ph636, label %._crit_edge637.loopexit, !llvm.loop !736

._crit_edge637.loopexit:                          ; preds = %.lr.ph636
  %.pre883 = mul nsw i32 %i.ik, %i.af
  %.pre885 = add nsw i32 %.pre883, %.1527657      ; 2 uses
  %.pre887 = shl nsw i32 %.pre885, 3
  %.pre889 = sext i32 %.pre887 to i64
  br label %._crit_edge637

._crit_edge637:                                   ; preds = %._crit_edge637.loopexit, %._crit_edge628
  %.pre-phi890 = phi i64 [ %.pre889, %._crit_edge637.loopexit ], [ %i.hs, %._crit_edge628 ]
  %.pre-phi886 = phi i32 [ %.pre885, %._crit_edge637.loopexit ], [ %.pre-phi878, %._crit_edge628 ] ; 2 uses
  %i.iv = phi i32 [ %i.ik, %._crit_edge637.loopexit ], [ %i.hl, %._crit_edge628 ]
  %i.iw = phi i32 [ %i.ik, %._crit_edge637.loopexit ], [ %i.hm, %._crit_edge628 ]
  %i.ix = phi i32 [ %i.ik, %._crit_edge637.loopexit ], [ %i.hn, %._crit_edge628 ]
  %i.iy = phi i32 [ %i.it, %._crit_edge637.loopexit ], [ %i.ho, %._crit_edge628 ] ; 2 uses
  %.1552.lcssa = phi i32 [ %i.ir, %._crit_edge637.loopexit ], [ %.0551.lcssa, %._crit_edge628 ] ; 3 uses
  %.1548.lcssa = phi ptr [ %i.ip, %._crit_edge637.loopexit ], [ %i.ht, %._crit_edge628 ]
  %.7.lcssa = phi ptr [ %i.iq, %._crit_edge637.loopexit ], [ %.6.lcssa, %._crit_edge628 ] ; 2 uses
  %i.iz = sub nsw i64 0, %.pre-phi890
  %i.ja = getelementptr inbounds [2 x i8], ptr %.1548.lcssa, i64 %i.iz
  %i.jb = shl nsw i32 %.pre-phi886, 1
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = or disjoint i32 %.1552.lcssa, 1
  %i.jf = icmp slt i32 %i.je, %i.iy
  br i1 %i.jf, label %.lr.ph645, label %._crit_edge646

.lr.ph645:                                        ; preds = %._crit_edge637, %.lr.ph645
  %.8643 = phi ptr [ %i.jn, %.lr.ph645 ], [ %.7.lcssa, %._crit_edge637 ] ; 2 uses
  %.2549642 = phi ptr [ %i.jm, %.lr.ph645 ], [ %i.jd, %._crit_edge637 ] ; 2 uses
  %.2553641 = phi i32 [ %i.jo, %.lr.ph645 ], [ %.1552.lcssa, %._crit_edge637 ]
  %i.jg = load <8 x float>, ptr %.2549642, align 1, !tbaa !30
  store <8 x float> %i.jg, ptr %.8643, align 1, !tbaa !30
  %i.jh = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.ji = load i32, ptr %2, align 4, !tbaa !10
  %i.jj = shl i32 %i.jh, 1
  %i.jk = mul i32 %i.jj, %i.ji
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %.2549642, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.8643, i64 32 ; 2 uses
  %i.jo = add nuw nsw i32 %.2553641, 2            ; 3 uses
  %i.jp = or disjoint i32 %i.jo, 1
  %i.jq = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.jr = icmp slt i32 %i.jp, %i.jq
  br i1 %i.jr, label %.lr.ph645, label %._crit_edge646.loopexit, !llvm.loop !737

._crit_edge646.loopexit:                          ; preds = %.lr.ph645
  %.pre891 = mul nsw i32 %i.jh, %i.af
  %.pre893 = add nsw i32 %.pre891, %.1527657      ; 2 uses
  %.pre895 = shl nsw i32 %.pre893, 1
  %.pre897 = sext i32 %.pre895 to i64
  br label %._crit_edge646

._crit_edge646:                                   ; preds = %._crit_edge646.loopexit, %._crit_edge637
  %.pre-phi898 = phi i64 [ %.pre897, %._crit_edge646.loopexit ], [ %i.jc, %._crit_edge637 ]
  %.pre-phi894 = phi i32 [ %.pre893, %._crit_edge646.loopexit ], [ %.pre-phi886, %._crit_edge637 ]
  %i.js = phi i32 [ %i.jh, %._crit_edge646.loopexit ], [ %i.iv, %._crit_edge637 ]
  %i.jt = phi i32 [ %i.jh, %._crit_edge646.loopexit ], [ %i.iw, %._crit_edge637 ]
  %i.ju = phi i32 [ %i.jh, %._crit_edge646.loopexit ], [ %i.ix, %._crit_edge637 ]
  %i.jv = phi i32 [ %i.jq, %._crit_edge646.loopexit ], [ %i.iy, %._crit_edge637 ] ; 2 uses
  %.2553.lcssa = phi i32 [ %i.jo, %._crit_edge646.loopexit ], [ %.1552.lcssa, %._crit_edge637 ] ; 2 uses
  %.2549.lcssa = phi ptr [ %i.jm, %._crit_edge646.loopexit ], [ %i.jd, %._crit_edge637 ]
  %.8.lcssa = phi ptr [ %i.jn, %._crit_edge646.loopexit ], [ %.7.lcssa, %._crit_edge637 ] ; 2 uses
  %i.jw = icmp slt i32 %.2553.lcssa, %i.jv
  br i1 %i.jw, label %.lr.ph654.preheader, label %._crit_edge655

.lr.ph654.preheader:                              ; preds = %._crit_edge646
  %i.jx = sub nsw i64 0, %.pre-phi898
  %i.jy = getelementptr inbounds [2 x i8], ptr %.2549.lcssa, i64 %i.jx
  %i.jz = sext i32 %.pre-phi894 to i64
  %i.ka = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.jz
  br label %.lr.ph654

.lr.ph654:                                        ; preds = %.lr.ph654.preheader, %.lr.ph654
  %.9652 = phi ptr [ %i.kh, %.lr.ph654 ], [ %.8.lcssa, %.lr.ph654.preheader ] ; 2 uses
  %.3550651 = phi ptr [ %i.kg, %.lr.ph654 ], [ %i.ka, %.lr.ph654.preheader ] ; 2 uses
  %.3554650 = phi i32 [ %i.ki, %.lr.ph654 ], [ %.2553.lcssa, %.lr.ph654.preheader ]
  %i.kb = load <2 x i64>, ptr %.3550651, align 1, !tbaa !30
  store <2 x i64> %i.kb, ptr %.9652, align 16, !tbaa !30
  %i.kc = load i32, ptr %4, align 4, !tbaa !10    ; 4 uses
  %i.kd = load i32, ptr %2, align 4, !tbaa !10
  %i.ke = mul nsw i32 %i.kd, %i.kc
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [2 x i8], ptr %.3550651, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %.9652, i64 16 ; 2 uses
  %i.ki = add nuw nsw i32 %.3554650, 1            ; 2 uses
  %i.kj = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.kk = icmp slt i32 %i.ki, %i.kj
  br i1 %i.kk, label %.lr.ph654, label %._crit_edge655, !llvm.loop !738

._crit_edge655:                                   ; preds = %.lr.ph654, %._crit_edge646
  %i.kl = phi i32 [ %i.js, %._crit_edge646 ], [ %i.kc, %.lr.ph654 ] ; 2 uses
  %i.km = phi i32 [ %i.jt, %._crit_edge646 ], [ %i.kc, %.lr.ph654 ] ; 2 uses
  %i.kn = phi i32 [ %i.ju, %._crit_edge646 ], [ %i.kc, %.lr.ph654 ] ; 3 uses
  %i.ko = phi i32 [ %i.jv, %._crit_edge646 ], [ %i.kj, %.lr.ph654 ]
  %.9.lcssa = phi ptr [ %.8.lcssa, %._crit_edge646 ], [ %i.kh, %.lr.ph654 ] ; 2 uses
  %i.kp = add nuw nsw i32 %.1527657, 8            ; 3 uses
  %i.kq = or disjoint i32 %i.kp, 7
  %i.kr = icmp slt i32 %i.kq, %i.kn
  br i1 %i.kr, label %.lr.ph659, label %.preheader583, !llvm.loop !739

.preheader582:                                    ; preds = %._crit_edge695, %.preheader583
  %i.ks = phi i32 [ %i.fv, %.preheader583 ], [ %i.on, %._crit_edge695 ] ; 2 uses
  %i.kt = phi i32 [ %i.fw, %.preheader583 ], [ %i.oo, %._crit_edge695 ] ; 2 uses
  %i.ku = phi i32 [ %i.fx, %.preheader583 ], [ %i.op, %._crit_edge695 ] ; 2 uses
  %.2528.lcssa = phi i32 [ %.1527.lcssa, %.preheader583 ], [ %i.qr, %._crit_edge695 ] ; 3 uses
  %.10.lcssa = phi ptr [ %.5.lcssa, %.preheader583 ], [ %.14.lcssa, %._crit_edge695 ] ; 2 uses
  %i.kv = or disjoint i32 %.2528.lcssa, 1
  %i.kw = icmp slt i32 %i.kv, %i.ku
  br i1 %i.kw, label %.lr.ph739.preheader, label %.preheader

.lr.ph739.preheader:                              ; preds = %.preheader582
  %.pre850 = load i32, ptr %6, align 4, !tbaa !10
  %i.kx = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br label %.lr.ph739

.lr.ph699:                                        ; preds = %.lr.ph699.preheader, %._crit_edge695
  %i.ky = phi i32 [ %i.on, %._crit_edge695 ], [ %i.fv, %.lr.ph699.preheader ]
  %i.kz = phi i32 [ %i.oo, %._crit_edge695 ], [ %i.fw, %.lr.ph699.preheader ]
  %i.la = phi i32 [ %i.op, %._crit_edge695 ], [ %i.fx, %.lr.ph699.preheader ] ; 2 uses
  %i.lb = phi i32 [ %i.oq, %._crit_edge695 ], [ %.pre849, %.lr.ph699.preheader ] ; 2 uses
  %.10698 = phi ptr [ %.14.lcssa, %._crit_edge695 ], [ %.5.lcssa, %.lr.ph699.preheader ] ; 2 uses
  %.2528697 = phi i32 [ %i.qr, %._crit_edge695 ], [ %.1527.lcssa, %.lr.ph699.preheader ] ; 5 uses
  %i.lc = load ptr, ptr %5, align 8, !tbaa !28
  %i.ld = mul nsw i32 %i.la, %i.ga
  %i.le = add nsw i32 %i.ld, %.2528697            ; 2 uses
  %i.lf = shl nsw i32 %i.le, 4
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.lc, i64 %i.lg ; 2 uses
  %i.li = icmp sgt i32 %i.lb, 15
  br i1 %i.li, label %.lr.ph666, label %._crit_edge667

.lr.ph666:                                        ; preds = %.lr.ph699, %.lr.ph666
  %.11664 = phi ptr [ %i.lx, %.lr.ph666 ], [ %.10698, %.lr.ph699 ] ; 3 uses
  %.0555663 = phi ptr [ %i.lw, %.lr.ph666 ], [ %i.lh, %.lr.ph699 ] ; 3 uses
  %.0559662 = phi i32 [ %i.ly, %.lr.ph666 ], [ 0, %.lr.ph699 ]
  %i.lj = load <16 x i32>, ptr %.0555663, align 1, !tbaa !30
  %i.lk = getelementptr inbounds nuw i8, ptr %.0555663, i64 64
  %i.ll = load <16 x i32>, ptr %i.lk, align 1, !tbaa !30
  %i.lm = shufflevector <16 x i32> %i.lj, <16 x i32> poison, <16 x i32> <i32 0, i32 8, i32 4, i32 12, i32 1, i32 9, i32 5, i32 13, i32 2, i32 10, i32 6, i32 14, i32 3, i32 11, i32 7, i32 15> ; 2 uses
  %i.ln = shufflevector <16 x i32> %i.ll, <16 x i32> poison, <16 x i32> <i32 0, i32 8, i32 4, i32 12, i32 1, i32 9, i32 5, i32 13, i32 2, i32 10, i32 6, i32 14, i32 3, i32 11, i32 7, i32 15> ; 2 uses
  %i.lo = shufflevector <16 x i32> %i.lm, <16 x i32> %i.ln, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.lp = shufflevector <16 x i32> %i.lm, <16 x i32> %i.ln, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  store <16 x i32> %i.lo, ptr %.11664, align 1, !tbaa !30
  %i.lq = getelementptr inbounds nuw i8, ptr %.11664, i64 64
  store <16 x i32> %i.lp, ptr %i.lq, align 1, !tbaa !30
  %i.lr = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.ls = load i32, ptr %2, align 4, !tbaa !10
  %i.lt = shl i32 %i.lr, 4
  %i.lu = mul i32 %i.lt, %i.ls
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [2 x i8], ptr %.0555663, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.11664, i64 128 ; 2 uses
  %i.ly = add nuw nsw i32 %.0559662, 16           ; 3 uses
  %i.lz = or disjoint i32 %i.ly, 15
  %i.ma = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.mb = icmp slt i32 %i.lz, %i.ma
  br i1 %i.mb, label %.lr.ph666, label %._crit_edge667.loopexit, !llvm.loop !740

._crit_edge667.loopexit:                          ; preds = %.lr.ph666
  %.pre899 = mul nsw i32 %i.lr, %i.ga
  %.pre901 = add nsw i32 %.pre899, %.2528697      ; 2 uses
  %.pre903 = shl nsw i32 %.pre901, 4
  %.pre905 = sext i32 %.pre903 to i64
  br label %._crit_edge667

._crit_edge667:                                   ; preds = %._crit_edge667.loopexit, %.lr.ph699
  %.pre-phi906 = phi i64 [ %.pre905, %._crit_edge667.loopexit ], [ %i.lg, %.lr.ph699 ]
  %.pre-phi902 = phi i32 [ %.pre901, %._crit_edge667.loopexit ], [ %i.le, %.lr.ph699 ] ; 2 uses
  %i.mc = phi i32 [ %i.lr, %._crit_edge667.loopexit ], [ %i.ky, %.lr.ph699 ]
  %i.md = phi i32 [ %i.lr, %._crit_edge667.loopexit ], [ %i.kz, %.lr.ph699 ]
  %i.me = phi i32 [ %i.lr, %._crit_edge667.loopexit ], [ %i.la, %.lr.ph699 ]
  %i.mf = phi i32 [ %i.ma, %._crit_edge667.loopexit ], [ %i.lb, %.lr.ph699 ] ; 2 uses
  %.0559.lcssa = phi i32 [ %i.ly, %._crit_edge667.loopexit ], [ 0, %.lr.ph699 ] ; 3 uses
  %.0555.lcssa = phi ptr [ %i.lw, %._crit_edge667.loopexit ], [ %i.lh, %.lr.ph699 ]
  %.11.lcssa = phi ptr [ %i.lx, %._crit_edge667.loopexit ], [ %.10698, %.lr.ph699 ] ; 2 uses
  %i.mg = sub nsw i64 0, %.pre-phi906
  %i.mh = getelementptr inbounds [2 x i8], ptr %.0555.lcssa, i64 %i.mg
  %i.mi = shl nsw i32 %.pre-phi902, 3
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.mh, i64 %i.mj ; 2 uses
end_hunk_0
