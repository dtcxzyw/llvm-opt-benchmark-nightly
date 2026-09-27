Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ahd_demosaic?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6LibRaw6cielabEPtPs:bb.a
._crit_edge:                                      ; preds = %.preheader68, %.lr.ph
  %.sroa.22.0.lcssa = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.preheader68 ]
  %.sroa.11.0.lcssa = phi i64 [ %i.ae, %.lr.ph ], [ 0, %.preheader68 ]
  %.sroa.0.0.lcssa = phi i64 [ %i.aa, %.lr.ph ], [ 0, %.preheader68 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.e, i64 21040 ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.0.0.lcssa
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !76
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.11.0.lcssa
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !76 ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.22.0.lcssa
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !76
  %i.ia = fsub reassoc nsz arcp contract afn float %i.hv, %i.hx
  %i.ib = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ic = insertelement <2 x float> %i.ib, float %i.ia, i64 1
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.ic, <float 7.424000e+03, float 3.200000e+04>
  %i.ie = fadd reassoc nsz arcp contract afn <2 x float> %i.id, <float -1.024000e+03, float -0.000000e+00>
  %i.if = fptosi <2 x float> %i.ie to <2 x i16>
  store <2 x i16> %i.if, ptr %2, align 2, !tbaa !77
  %i.ig = fsub reassoc nsz arcp contract afn float %i.hx, %i.hz
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, 1.280000e+04
  %i.ii = fptosi float %i.ih to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !77
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %scalar.ph166, %middle.block184, %.loopexit67, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !81
  %i.c = zext i16 %i.b to i32
  %i.d = add nsw i32 %i.c, -2                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !82
  %i.g = zext i16 %i.f to i32
  %i.h = add nsw i32 %i.g, -2                     ; 2 uses
  %i.i = icmp sgt i32 %i.d, %1
  br i1 %i.i, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %bb.a
  %i.j = add nsw i32 %2, 512
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h)
  %i.l = add nsw i32 %1, 512
  %. = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.o = load i32, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = and i32 %2, 1
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = sext i32 %2 to i64                       ; 2 uses
  %i.s = sext i32 %i.k to i64
  %i.t = sext i32 %1 to i64                       ; 2 uses
  %i.u = sext i32 %. to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %._crit_edge
  %indvars.iv130 = phi i64 [ %i.t, %.lr.ph127 ], [ %indvars.iv.next131, %._crit_edge ] ; 4 uses
  %i.v = trunc nsw i64 %indvars.iv130 to i32
  %i.w = shl i32 %i.v, 1
  %i.x = and i32 %i.w, 14                         ; 2 uses
  %i.y = or disjoint i32 %i.x, %i.p
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = lshr i32 %i.o, %i.z                     ; 2 uses
  %i.ab = and i32 %i.aa, 1
  %i.ac = add nsw i32 %i.ab, %2                   ; 2 uses
  %i.ad = icmp sgt i32 %i.h, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ae = and i32 %i.ac, 1
  %i.af = or disjoint i32 %i.ae, %i.x
  %i.ag = shl nuw nsw i32 %i.af, 1
  %i.ah = lshr i32 %i.o, %i.ag
  %i.ai = and i32 %i.ah, 3
  %i.aj = zext nneg i32 %i.ai to i64              ; 5 uses
  %i.ak = sub nsw i64 %indvars.iv130, %i.t
  %i.al = getelementptr inbounds [3072 x i8], ptr %3, i64 %i.ak
  %i.am = and i32 %i.aa, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.r, %i.an
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ap = load i16, ptr %i.e, align 2, !tbaa !82
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nsw i64 %indvars.iv130, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv ; 11 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !77 ; 3 uses
  %i.aw = zext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aj ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !77
  %i.az = zext i16 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.az, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !77 ; 3 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nuw nsw i32 %i.ba, %i.bd
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = getelementptr inbounds i8, ptr %i.at, i64 -16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.aj
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !77
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.aj
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !77
  %i.bn = zext i16 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bn, %i.bj
  %i.bp = sub nsw i32 %i.bf, %i.bo
  %i.bq = ashr i32 %i.bp, 2
  %.137139 = tail call i16 @llvm.umax.i16(i16 %i.av, i16 %i.bc)
  %.137 = zext i16 %.137139 to i32
  %.138140 = tail call i16 @llvm.umin.i16(i16 %i.av, i16 %i.bc)
  %.138 = zext i16 %.138140 to i32
  %.112 = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.137)
  %spec.select118 = tail call i32 @llvm.smax.i32(i32 %.112, i32 %.138)
  %i.br = trunc nuw i32 %spec.select118 to i16
  %i.bs = sub nsw i64 %indvars.iv, %i.r
  %i.bt = getelementptr inbounds [6 x i8], ptr %i.al, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 %i.br, ptr %i.bu, align 2, !tbaa !77
  %i.bv = load i16, ptr %i.e, align 2, !tbaa !82  ; 2 uses
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  %i.bx = sub nsw i32 0, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !77 ; 2 uses
  %i.cc = zext i16 %i.cb to i32                   ; 2 uses
  %i.cd = load i16, ptr %i.ax, align 2, !tbaa !77
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, %i.cc
  %i.cg = zext i16 %i.bv to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !77 ; 2 uses
  %i.ck = zext i16 %i.cj to i32                   ; 4 uses
  %i.cl = add nuw nsw i32 %i.cf, %i.ck
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = mul nsw i32 %i.bw, -2
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.co
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.aj
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !77
  %i.cs = zext i16 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.bw, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.aj
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !77
  %i.cy = zext i16 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cy, %i.cs
  %i.da = sub nsw i32 %i.cm, %i.cz
  %i.db = ashr i32 %i.da, 2                       ; 4 uses
  %i.dc = icmp ult i16 %i.cb, %i.cj
  br i1 %i.dc, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.114 = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.ck)
  %i.dd = icmp slt i32 %i.db, %i.cc
  br i1 %i.dd, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.de = sub nsw i64 0, %i.cg
  %i.df = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !77
  %i.di = zext i16 %i.dh to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.dj = icmp slt i32 %i.db, %i.ck
  br i1 %i.dj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = sub nsw i64 0, %i.cg
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !77
  %i.do = zext i16 %i.dn to i32
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.db, i32 %i.do)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.g, %bb.e
  %i.dq = phi i32 [ %i.dp, %bb.g ], [ %i.di, %bb.e ], [ %.114, %bb.d ], [ %i.ck, %bb.f ]
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = getelementptr i8, ptr %i.bt, i64 1572866
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.dt = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.dt, label %bb.c, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next131, %i.u
  br i1 %4, label %bb.b, label %._crit_edge128, !llvm.loop !1

._crit_edge128:                                   ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw52ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielabEiiPA512_A3_tPA512_A3_s(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82   ; 2 uses
  %i.c = zext i16 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = add nsw i32 %1, 511
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !81
  %i.h = zext i16 %i.g to i32
  %i.i = add nsw i32 %i.h, -3
  %. = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.i) ; 2 uses
  %i.j = add i32 %2, 511
  %i.k = zext i16 %i.b to i32
  %i.l = add nsw i32 %i.k, -3
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %.087112 = add i32 %1, 1                        ; 2 uses
  %i.n = icmp ult i32 %.087112, %.
  br i1 %i.n, label %.lr.ph115, label %._crit_edge.split

.lr.ph115:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.q = sext i32 %2 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %.086107 = add i32 %2, 1                        ; 2 uses
  %i.r = icmp ult i32 %.086107, %i.m
  %i.s = sub nsw i64 0, %i.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.w, i32 4)
  %wide.trip.count.i = zext nneg i32 %i.y to i64
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph115
  %i.z = zext i32 %.087112 to i64
  %i.aa = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !75 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 283184
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 283200
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 283216
  %trip.count.minus.1 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ae = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 21040 ; 3 uses
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %_ZN6LibRaw6cielabEPtPs.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond119.not = icmp eq i32 %., %lftr.wideiv
  br i1 %exitcond119.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !110

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv = phi i64 [ %i.z, %.lr.ph.preheader ], [ %indvars.iv.next, %..loopexit_crit_edge ] ; 3 uses
  %.087.in113 = phi i32 [ %1, %.lr.ph.preheader ], [ %i.ai, %..loopexit_crit_edge ]
  %i.ag = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ah = zext i16 %i.ag to i64
  %i.ai = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.aj = mul i64 %indvars.iv, %i.ah
  %i.ak = and i64 %i.aj, 4294967295
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ak
  %i.al = sub i32 %i.ai, %1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.am
  %i.ao = getelementptr inbounds nuw [3072 x i8], ptr %4, i64 %i.am
  %i.ap = shl i32 %i.ai, 1
  %i.aq = and i32 %i.ap, 14
  %i.ar = shl i32 %.087.in113, 1
  %i.as = add i32 %i.ar, 4
  %i.at = and i32 %i.as, 14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6LibRaw6cielabEPtPs.exit
  %.086111 = phi i32 [ %.086107, %.lr.ph ], [ %.086, %_ZN6LibRaw6cielabEPtPs.exit ] ; 2 uses
  %.0110 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ay, %_ZN6LibRaw6cielabEPtPs.exit ] ; 2 uses
  %.082109 = phi ptr [ %i.an, %.lr.ph ], [ %i.ax, %_ZN6LibRaw6cielabEPtPs.exit ] ; 10 uses
  %.083108 = phi ptr [ %gep, %.lr.ph ], [ %i.au, %_ZN6LibRaw6cielabEPtPs.exit ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.083108, i64 8 ; 4 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.s ; 3 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.d ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.082109, i64 6 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0110, i64 6 ; 2 uses
  %i.az = and i32 %.086111, 1                     ; 2 uses
  %i.ba = or disjoint i32 %i.az, %i.aq
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = lshr i32 %i.u, %i.bb
  %i.bd = and i32 %i.bc, 3                        ; 5 uses
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = or disjoint i32 %i.az, %i.at
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %i.bh = lshr i32 %i.u, %i.bg
  %i.bi = and i32 %i.bh, 3                        ; 3 uses
  %i.bj = sub nsw i32 2, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.083108, i64 10 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !77
  %i.bm = zext i16 %i.bl to i32
  %i.bn = sext i32 %i.bj to i64                   ; 3 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr %.083108, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !77
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.083108, i64 16
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bn
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !77
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %.082109, i64 2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !77
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.082109, i64 14
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !77
  %i.ca = zext i16 %i.bz to i32
  %.neg101 = add nuw nsw i32 %i.bu, %i.bq
  %i.cb = add nuw nsw i32 %i.bx, %i.ca
  %i.cc = sub nsw i32 %.neg101, %i.cb
  %i.cd = ashr i32 %i.cc, 1
  %i.ce = add nsw i32 %i.cd, %i.bm
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 65535)
  %i.ch = trunc nuw i32 %i.cg to i16
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bn
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !77
  %i.cj = load i16, ptr %i.bk, align 2, !tbaa !77
  %i.ck = zext i16 %i.cj to i32
  %i.cl = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !77
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.cl
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !77
  %i.cr = zext i16 %i.cq to i32
  %i.cs = getelementptr inbounds i8, ptr %.082109, i64 -3064
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !77
  %i.cu = zext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.082109, i64 3080
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !77
  %i.cx = zext i16 %i.cw to i32
  %.neg104 = add nuw nsw i32 %i.cr, %i.co
  %i.cy = add nuw nsw i32 %i.cu, %i.cx
  %i.cz = sub nsw i32 %.neg104, %i.cy
  %i.da = ashr i32 %i.cz, 1
  %i.db = add nsw i32 %i.da, %i.ck
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.dc = sub nsw i32 2, %i.bd
  %i.dd = sub nuw nsw i32 -2, %i.bd
  %i.de = sub nuw nsw i32 6, %i.bd
  %i.df = getelementptr inbounds nuw i8, ptr %.082109, i64 8
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !77
  %i.dh = zext i16 %i.dg to i32
  %i.di = sext i32 %i.dd to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !77
  %i.dl = zext i16 %i.dk to i32
  %i.dm = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !77
  %i.dp = zext i16 %i.do to i32
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.di
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !77
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.dm
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !77
  %i.dv = zext i16 %i.du to i32
  %i.dw = getelementptr inbounds i8, ptr %.082109, i64 -3070
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !77
  %i.dy = zext i16 %i.dx to i32
  %i.dz = getelementptr inbounds i8, ptr %.082109, i64 -3058
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !77
  %i.eb = zext i16 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %.082109, i64 3074
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !77
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.082109, i64 3086
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !77
  %i.eh = zext i16 %i.eg to i32
  %.neg94 = add nuw nsw i32 %i.dl, 1
  %.neg96 = add nuw nsw i32 %.neg94, %i.dp
  %.neg98 = add nuw nsw i32 %.neg96, %i.ds
  %i.ei = add nuw nsw i32 %.neg98, %i.dv
  %i.ej = add nuw nsw i32 %i.dy, %i.eb
  %i.ek = add nuw nsw i32 %i.ej, %i.ee
  %i.el = add nuw nsw i32 %i.ek, %i.eh
  %i.em = sub nsw i32 %i.ei, %i.el
  %i.en = ashr i32 %i.em, 2
  %i.eo = add nsw i32 %i.en, %i.dh
  br label %bb.e
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15ahd_interpolateEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.o = add nsw i32 %i.l, -7
  %i.p = trunc i64 %indvars.iv48 to i32
  %i.q = add i32 %i.p, -2
  %i.r = tail call noundef i32 %i.m(ptr noundef %i.n, i32 noundef 2048, i32 noundef %i.q, i32 noundef %i.o)
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !127  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3145728 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 6291456 ; 2 uses
  %.not36 = icmp eq i32 %.03244, 0
  br i1 %.not36, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %select.unfold
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1572864
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4718592
  %i.x = trunc i64 %indvars.iv48 to i32
  %i.y = add i32 %i.x, 512
  %i.z = trunc nuw nsw i64 %indvars.iv48 to i32   ; 4 uses
  %i.aa = load i16, ptr %i.h, align 2, !tbaa !82  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 7
  br i1 %i.ab, label %.lr.ph60, label %.critedge

.lr.ph60:                                         ; preds = %.lr.ph
  %i.ac = zext i16 %i.aa to i32
  br label %bb.d

.critedge:                                        ; preds = %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit, %.lr.ph, %bb.c, %select.unfold
  %.258 = phi i32 [ 1, %bb.c ], [ %.03244, %select.unfold ], [ %.03244, %.lr.ph ], [ %.03244, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 506 ; 2 uses
  %i.ad = load i16, ptr %i.b, align 4, !tbaa !81
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = add nsw i32 %i.ae, -5
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next49, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !124

bb.d:                                             ; preds = %.lr.ph60, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit
  %i.ai = phi i32 [ %i.ac, %.lr.ph60 ], [ %i.et, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit ]
  %indvars.iv59 = phi i64 [ 2, %.lr.ph60 ], [ %indvars.iv.next, %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit ] ; 4 uses
  %i.aj = load i16, ptr %i.b, align 4, !tbaa !81
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -2                   ; 2 uses
  %i.am = add nsw i32 %i.ai, -2                   ; 2 uses
  %i.an = sext i32 %i.al to i64
  %i.ao = icmp slt i64 %indvars.iv48, %i.an
  %i.ap = trunc i64 %indvars.iv59 to i32          ; 2 uses
  br i1 %i.ao, label %.lr.ph127.i, label %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit

.lr.ph127.i:                                      ; preds = %bb.d
  %i.aq = add i32 %i.ap, 512
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.am)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.al)
  %i.as = load i32, ptr %i.j, align 8, !tbaa !83  ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8
  %i.au = sext i32 %i.ar to i64
  %i.av = sext i32 %..i to i64
  %i.aw = trunc nuw nsw i64 %indvars.iv59 to i32  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %indvars.iv48, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv130.i to i32
  %i.ay = shl i32 %i.ax, 1
  %i.az = and i32 %i.ay, 14                       ; 2 uses
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = lshr i32 %i.as, %i.ba
  %i.bc = and i32 %i.bb, 1                        ; 2 uses
  %i.bd = or disjoint i32 %i.bc, %i.aw            ; 2 uses
  %i.be = icmp sgt i32 %i.am, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bf = or disjoint i32 %i.bc, %i.az
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %i.bh = lshr i32 %i.as, %i.bg
  %i.bi = and i32 %i.bh, 3
  %i.bj = zext nneg i32 %i.bi to i64              ; 5 uses
  %i.bk = sub nuw nsw i64 %indvars.iv130.i, %indvars.iv48
  %i.bl = getelementptr inbounds nuw [3072 x i8], ptr %i.s, i64 %i.bk
  %i.bm = zext nneg i32 %i.bd to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.bn = load i16, ptr %i.h, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i64
  %i.bp = mul nuw nsw i64 %indvars.iv130.i, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i ; 11 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !77 ; 3 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bj ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !77
  %i.bx = zext i16 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !77 ; 3 uses
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.by, %i.cb
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = getelementptr inbounds i8, ptr %i.br, i64 -16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.bj
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !77
  %i.ch = zext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.bj
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !77
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.cl, %i.ch
  %i.cn = sub nsw i32 %i.cd, %i.cm
  %i.co = ashr i32 %i.cn, 2
  %.137139.i = tail call i16 @llvm.umax.i16(i16 %i.bt, i16 %i.ca)
  %.137.i = zext i16 %.137139.i to i32
  %.138140.i = tail call i16 @llvm.umin.i16(i16 %i.bt, i16 %i.ca)
  %.138.i = zext i16 %.138140.i to i32
  %.112.i = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %.137.i)
  %spec.select118.i = tail call i32 @llvm.smax.i32(i32 %.112.i, i32 %.138.i)
  %i.cp = trunc nuw i32 %spec.select118.i to i16
  %i.cq = sub nuw nsw i64 %indvars.iv.i, %indvars.iv59
  %i.cr = getelementptr inbounds nuw [6 x i8], ptr %i.bl, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i16 %i.cp, ptr %i.cs, align 2, !tbaa !77
  %i.ct = load i16, ptr %i.h, align 2, !tbaa !82  ; 2 uses
  %i.cu = zext i16 %i.ct to i32                   ; 3 uses
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !77 ; 2 uses
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = load i16, ptr %i.bv, align 2, !tbaa !77
  %i.dc = zext i16 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  %i.de = zext i16 %i.ct to i64                   ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !77 ; 2 uses
  %i.di = zext i16 %i.dh to i32                   ; 4 uses
  %i.dj = add nuw nsw i32 %i.dd, %i.di
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = mul nsw i32 %i.cu, -2
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.dm
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.bj
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !77
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.cu, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.bj
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !77
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, %i.dq
  %i.dy = sub nsw i32 %i.dk, %i.dx
  %i.dz = ashr i32 %i.dy, 2                       ; 4 uses
  %i.ea = icmp ult i16 %i.cz, %i.dh
  br i1 %i.ea, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.114.i = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 %i.di)
  %i.eb = icmp slt i32 %i.dz, %i.da
  br i1 %i.eb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ec = sub nsw i64 0, %i.de
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !77
  %i.eg = zext i16 %i.ef to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.eh = icmp slt i32 %i.dz, %i.di
  br i1 %i.eh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ei = sub nsw i64 0, %i.de
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !77
  %i.em = zext i16 %i.el to i32
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.em)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.eo = phi i32 [ %i.en, %bb.j ], [ %i.eg, %bb.h ], [ %.114.i, %bb.g ], [ %i.di, %bb.i ]
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr i8, ptr %i.cr, i64 1572866
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.er, label %bb.f, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.k, %bb.e
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %1 = icmp slt i64 %indvars.iv.next131.i, %i.av
  br i1 %1, label %bb.e, label %_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit, !llvm.loop !1

_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t.exit: ; preds = %._crit_edge.i, %bb.d
  %.pre-phi = phi i32 [ %i.ap, %bb.d ], [ %i.aw, %._crit_edge.i ] ; 4 uses
  tail call void @_ZN6LibRaw52ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielabEiiPA512_A3_tPA512_A3_s(ptr noundef nonnull readonly align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef %i.s, ptr noundef nonnull %i.t)
  tail call void @_ZN6LibRaw52ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielabEiiPA512_A3_tPA512_A3_s(ptr noundef nonnull readonly align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  tail call void @_ZN6LibRaw37ahd_interpolate_build_homogeneity_mapEiiPA512_A512_A3_sPA512_A2_c(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u)
  tail call void @_ZN6LibRaw42ahd_interpolate_combine_homogeneous_pixelsEiiPA512_A512_A3_tPA512_A2_c(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.z, i32 noundef %.pre-phi, ptr noundef %i.s, ptr noundef nonnull %i.u)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv59, 506 ; 2 uses
  %i.es = load i16, ptr %i.h, align 2, !tbaa !82
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = add nsw i32 %i.et, -5
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next, %i.ev
  br i1 %i.ew, label %bb.d, label %.critedge

bb.l:                                             ; preds = %._crit_edge
  %i.ex = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.ex, align 16, !tbaa !129
  tail call void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.m:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

declare void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i16> @llvm.masked.load.v4i16.p0(ptr captures(none), <4 x i1>, <4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { cold noreturn }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !78}
!1 = distinct !{!1, !78}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!"short", !9, i64 0}
!16 = !{!"double", !9, i64 0}
!17 = !{!"_ZTS20libraw_image_sizes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !10, i64 16, !16, i64 24, !10, i64 32, !9, i64 36, !15, i64 164, !9, i64 166}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !10, i64 428, !18, i64 432}
!20 = !{!"float", !9, i64 0}
!21 = !{!"_ZTS18libraw_nikonlens_t", !20, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!22 = !{!"_ZTS16libraw_dnglens_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12}
!23 = !{!"long long", !9, i64 0}
!24 = !{!"_ZTS24libraw_makernotes_lens_t", !23, i64 0, !9, i64 8, !15, i64 136, !15, i64 138, !23, i64 144, !15, i64 152, !15, i64 154, !9, i64 156, !15, i64 220, !9, i64 222, !9, i64 238, !20, i64 256, !20, i64 260, !20, i64 264, !20, i64 268, !20, i64 272, !20, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !20, i64 292, !20, i64 296, !20, i64 300, !20, i64 304, !20, i64 308, !20, i64 312, !23, i64 320, !9, i64 328, !23, i64 456, !9, i64 464, !23, i64 592, !9, i64 600, !15, i64 728, !20, i64 732}
!25 = !{!"_ZTS17libraw_lensinfo_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !15, i64 532, !21, i64 536, !22, i64 544, !24, i64 560}
!26 = !{!"_ZTS13libraw_area_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!27 = !{!"_ZTS25libraw_canon_makernotes_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !9, i64 16, !10, i64 32, !9, i64 36, !15, i64 52, !15, i64 54, !9, i64 56, !15, i64 58, !15, i64 60, !15, i64 62, !15, i64 64, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !10, i64 84, !20, i64 88, !15, i64 92, !15, i64 94, !15, i64 96, !15, i64 98, !10, i64 100, !15, i64 104, !10, i64 108, !10, i64 112, !15, i64 116, !10, i64 120, !26, i64 124, !26, i64 132, !26, i64 140, !26, i64 148, !26, i64 156, !9, i64 164}
!28 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!29 = !{!"_ZTS25libraw_nikon_makernotes_t", !16, i64 0, !15, i64 8, !15, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !15, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !10, i64 148, !10, i64 152, !10, i64 156, !9, i64 160, !9, i64 162, !15, i64 170, !28, i64 172, !15, i64 180, !15, i64 182, !15, i64 184, !10, i64 188, !9, i64 192, !9, i64 212, !10, i64 232, !9, i64 236, !10, i64 248, !18, i64 256, !15, i64 264, !15, i64 266, !9, i64 268, !15, i64 270, !16, i64 272, !16, i64 280, !16, i64 288}
!30 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !10, i64 0, !16, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !9, i64 168, !9, i64 200, !10, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!31 = !{!"_ZTS18libraw_fuji_info_t", !20, i64 0, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !9, i64 20, !9, i64 53, !20, i64 88, !15, i64 92, !15, i64 94, !9, i64 96, !15, i64 100, !10, i64 104, !10, i64 108, !15, i64 112, !9, i64 114, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !15, i64 128, !10, i64 132, !15, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !10, i64 164, !15, i64 168, !10, i64 172, !15, i64 176, !9, i64 178, !9, i64 196, !10, i64 324, !10, i64 328, !10, i64 332, !9, i64 336, !10, i64 344}
!32 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !15, i64 6, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !9, i64 64, !9, i64 72, !15, i64 82, !9, i64 84, !15, i64 88, !15, i64 90, !9, i64 92, !9, i64 352, !15, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !15, i64 416, !15, i64 418, !15, i64 420, !15, i64 422, !16, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !10, i64 452, !15, i64 456, !15, i64 458}
!33 = !{!"_ZTS18libraw_sony_info_t", !15, i64 0, !9, i64 2, !9, i64 3, !10, i64 4, !9, i64 8, !10, i64 12, !9, i64 16, !9, i64 17, !15, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !15, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !15, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !15, i64 54, !10, i64 56, !15, i64 60, !9, i64 62, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !10, i64 80, !20, i64 84, !15, i64 88, !10, i64 92, !10, i64 96, !15, i64 100, !9, i64 102, !10, i64 124, !15, i64 128, !10, i64 132, !9, i64 136, !9, i64 137, !15, i64 138, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !15, i64 152, !15, i64 154, !10, i64 156, !15, i64 160, !9, i64 162, !20, i64 180}
!34 = !{!"_ZTS25libraw_kodak_makernotes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !20, i64 236, !20, i64 240}
!35 = !{!"_ZTS29libraw_panasonic_makernotes_t", !15, i64 0, !15, i64 2, !9, i64 4, !10, i64 36, !20, i64 40, !9, i64 44, !15, i64 56, !15, i64 58, !10, i64 60, !10, i64 64}
!36 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !15, i64 12, !10, i64 16, !10, i64 20, !15, i64 24, !9, i64 26, !15, i64 30, !9, i64 32, !9, i64 33, !15, i64 34}
!37 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!38 = !{!"_ZTS25libraw_ricoh_makernotes_t", !15, i64 0, !9, i64 4, !9, i64 12, !15, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !15, i64 40, !15, i64 42, !15, i64 44, !15, i64 46, !15, i64 48, !15, i64 50, !16, i64 56, !16, i64 64}
!39 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !16, i64 88, !10, i64 96, !9, i64 100}
!40 = !{!"_ZTS24libraw_metadata_common_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !20, i64 60, !15, i64 64, !9, i64 66, !20, i64 196, !9, i64 200, !10, i64 296}
!41 = !{!"_ZTS19libraw_makernotes_t", !27, i64 0, !29, i64 168, !30, i64 464, !31, i64 848, !32, i64 1200, !33, i64 1664, !34, i64 1848, !35, i64 2092, !36, i64 2160, !37, i64 2196, !38, i64 2648, !39, i64 2720, !40, i64 2856}
!42 = !{!"_ZTS21libraw_shootinginfo_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !9, i64 14, !9, i64 78}
!43 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !20, i64 128, !20, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !9, i64 224, !10, i64 240, !10, i64 244, !20, i64 248, !20, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !20, i64 288, !20, i64 292, !10, i64 296, !10, i64 300}
!44 = !{!"any p2 pointer", !13, i64 0}
!45 = !{!"p2 omnipotent char", !44, i64 0}
!46 = !{!"_ZTS26libraw_raw_unpack_params_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !20, i64 28, !9, i64 32, !45, i64 40}
!47 = !{!"_ZTS5ph1_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !20, i64 32}
!48 = !{!"_ZTS19libraw_dng_levels_t", !10, i64 0, !9, i64 4, !10, i64 16420, !9, i64 16424, !20, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !10, i64 32884, !9, i64 32888, !9, i64 32904, !20, i64 32920, !20, i64 32924, !9, i64 32928}
!49 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !10, i64 147488, !10, i64 147492, !10, i64 147496, !9, i64 147500, !20, i64 147516, !20, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !47, i64 147876, !20, i64 147912, !20, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !13, i64 148264, !10, i64 148272, !9, i64 148276, !9, i64 148308, !48, i64 148648, !9, i64 181624, !9, i64 185720, !10, i64 187000, !9, i64 187004, !10, i64 187076, !10, i64 187080}
!50 = !{!"long", !9, i64 0}
!51 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !20, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!52 = !{!"_ZTS17libraw_imgother_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !50, i64 16, !10, i64 24, !9, i64 28, !51, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!53 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!54 = !{!"_ZTS18libraw_thumbnail_t", !53, i64 0, !15, i64 4, !15, i64 6, !10, i64 8, !10, i64 12, !18, i64 16}
!55 = !{!"_ZTS23libraw_thumbnail_list_t", !10, i64 0, !9, i64 8}
!56 = !{!"p1 float", !13, i64 0}
!57 = !{!"_ZTS31libraw_internal_output_params_t", !10, i64 0, !10, i64 4, !10, i64 8, !15, i64 12, !15, i64 14}
!58 = !{!"_ZTS16libraw_rawdata_t", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !17, i64 512, !57, i64 696, !49, i64 712}
!59 = !{!"_ZTS13libraw_data_t", !14, i64 0, !17, i64 8, !19, i64 192, !25, i64 632, !41, i64 1928, !42, i64 5088, !43, i64 5232, !46, i64 5536, !10, i64 5584, !10, i64 5588, !49, i64 5592, !52, i64 192680, !54, i64 193480, !55, i64 193504, !58, i64 193768, !13, i64 381568}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !13, i64 0}
!61 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !13, i64 0}
!62 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!63 = !{!"_ZTS15internal_data_t", !61, i64 0, !62, i64 8, !10, i64 16, !18, i64 24, !23, i64 32, !23, i64 40, !9, i64 48}
!64 = !{!"p1 int", !13, i64 0}
!65 = !{!"_ZTS13output_data_t", !64, i64 0, !64, i64 8}
!66 = !{!"_ZTS15identify_data_t", !10, i64 0, !23, i64 8, !23, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!67 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!68 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !15, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !15, i64 148, !15, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!69 = !{!"_ZTS15unpacker_data_t", !15, i64 0, !9, i64 2, !9, i64 10, !10, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !67, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !23, i64 144, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !68, i64 192, !9, i64 440, !10, i64 2488, !10, i64 2492, !15, i64 2496, !15, i64 2498, !10, i64 2500, !10, i64 2504, !10, i64 2508, !10, i64 2512, !10, i64 2516, !10, i64 2520, !10, i64 2524, !9, i64 2528, !15, i64 2608}
!70 = !{!"_ZTS22libraw_internal_data_t", !63, i64 0, !57, i64 64, !65, i64 80, !66, i64 96, !69, i64 136}
!71 = !{!"p1 _ZTS6decode", !13, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !44, i64 0, !10, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!74 = !{!"_ZTS6LibRaw", !59, i64 8, !60, i64 381584, !70, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !13, i64 768448, !13, i64 768456, !13, i64 768464, !50, i64 768472, !13, i64 768480, !13, i64 768488, !13, i64 768496, !13, i64 768504}
!75 = !{!74, !60, i64 381584}
!76 = !{!20, !20, i64 0}
!77 = !{!15, !15, i64 0}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!74, !15, i64 20}
!82 = !{!74, !15, i64 22}
!83 = !{!74, !10, i64 544}
!84 = !{!74, !14, i64 8}
!85 = !{!9, !9, i64 0}
!86 = distinct !{!86, !78}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !78, !79, !80}
!91 = distinct !{!91, !78, !79}
end_hunk_1
