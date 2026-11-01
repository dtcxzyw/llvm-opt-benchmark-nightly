Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btBoxBoxDetector?download=true
inline.NumInlined: 302
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z11cullPoints2iPfiiPi:bb.a
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cf
  store i32 0, ptr %i.cg, align 4, !tbaa !7
  store i32 %3, ptr %4, align 4, !tbaa !7
  %i.ch = icmp sgt i32 %2, 1
  br i1 %i.ch, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %._crit_edge129
  %.0108135 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.ci = uitofp nneg i32 %2 to float
  %i.cj = fdiv float f0x40C90FDB, %i.ci
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !17
  br i1 %i.ce, label %.lr.ph133.us.preheader, label %.lr.ph139.split.preheader

.lr.ph139.split.preheader:                        ; preds = %.lr.ph139
  %i.cm = add nsw i32 %2, -1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %min.iters.check178 = icmp ult i32 %2, 9
  br i1 %min.iters.check178, label %.lr.ph139.split.preheader188, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph139.split.preheader
  %n.vec180 = and i64 %i.cn, 4294967288           ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec180, 2
  %i.cp = getelementptr i8, ptr %.0108135, i64 %i.co
  %i.cq = trunc nuw i64 %n.vec180 to i32
  %i.cr = or disjoint i32 %i.cq, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next183, %vector.body181 ] ; 2 uses
  %i.cs = shl i64 %index182, 2
  %next.gep = getelementptr i8, ptr %.0108135, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4, !tbaa !7
  %index.next183 = add nuw i64 %index182, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next183, %n.vec180
  br i1 %i.cu, label %middle.block184, label %vector.body181, !llvm.loop !20

middle.block184:                                  ; preds = %vector.body181
  %cmp.n185 = icmp eq i64 %n.vec180, %i.cn
  br i1 %cmp.n185, label %._crit_edge140, label %.lr.ph139.split.preheader188

.lr.ph139.split.preheader188:                     ; preds = %.lr.ph139.split.preheader, %middle.block184
  %.0108137.ph = phi ptr [ %.0108135, %.lr.ph139.split.preheader ], [ %i.cp, %middle.block184 ]
  %.0104136.ph = phi i32 [ 1, %.lr.ph139.split.preheader ], [ %i.cr, %middle.block184 ]
  br label %.lr.ph139.split

.lr.ph133.us.preheader:                           ; preds = %.lr.ph139
  %wide.trip.count159 = zext nneg i32 %0 to i64
  br label %.lr.ph133.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us.preheader, %._crit_edge134.us
  %.0108137.us = phi ptr [ %.0108.us, %._crit_edge134.us ], [ %.0108135, %.lr.ph133.us.preheader ] ; 3 uses
  %.0104136.us = phi i32 [ %i.dn, %._crit_edge134.us ], [ 1, %.lr.ph133.us.preheader ] ; 2 uses
  %i.cv = uitofp nneg i32 %.0104136.us to float
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cj, float %i.cl) ; 3 uses
  %i.cx = fcmp ogt float %i.cw, f0x40490FDB
  %i.cy = fadd float %i.cw, f0xC0C90FDB
  %.2.us = select i1 %i.cx, float %i.cy, float %i.cw
  store i32 %3, ptr %.0108137.us, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph133.us, %bb.g
  %i.cz = phi i32 [ %3, %.lr.ph133.us ], [ %i.dk, %bb.g ] ; 2 uses
  %indvars.iv156 = phi i64 [ 0, %.lr.ph133.us ], [ %indvars.iv.next157, %bb.g ] ; 4 uses
  %.097131.us = phi float [ 1.000000e+09, %.lr.ph133.us ], [ %.1.us, %bb.g ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv156
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  %.not.us = icmp eq i32 %i.db, 0
  br i1 %.not.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv156
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !17
  %i.de = fsub float %i.dd, %.2.us
  %i.df = tail call noundef float @llvm.fabs.f32(float %i.de) ; 3 uses
  %i.dg = fcmp ogt float %i.df, f0x40490FDB
  %i.dh = fsub float f0x40C90FDB, %i.df
  %.0.us = select i1 %i.dg, float %i.dh, float %i.df ; 2 uses
  %i.di = fcmp olt float %.0.us, %.097131.us
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dj = trunc nuw nsw i64 %indvars.iv156 to i32 ; 2 uses
  store i32 %i.dj, ptr %.0108137.us, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.dk = phi i32 [ %i.dj, %bb.f ], [ %i.cz, %bb.e ], [ %i.cz, %bb.d ] ; 2 uses
  %.1.us = phi float [ %.0.us, %bb.f ], [ %.097131.us, %bb.e ], [ %.097131.us, %bb.d ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge134.us, label %bb.d

._crit_edge134.us:                                ; preds = %bb.g
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dl
  store i32 0, ptr %i.dm, align 4, !tbaa !7
  %i.dn = add nuw nsw i32 %.0104136.us, 1         ; 2 uses
  %.0108.us = getelementptr inbounds nuw i8, ptr %.0108137.us, i64 4
  %exitcond161.not = icmp eq i32 %i.dn, %2
  br i1 %exitcond161.not, label %._crit_edge140, label %.lr.ph133.us

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader188, %.lr.ph139.split
  %.0108137 = phi ptr [ %.0108, %.lr.ph139.split ], [ %.0108137.ph, %.lr.ph139.split.preheader188 ] ; 2 uses
  %.0104136 = phi i32 [ %i.do, %.lr.ph139.split ], [ %.0104136.ph, %.lr.ph139.split.preheader188 ]
  store i32 %3, ptr %.0108137, align 4, !tbaa !7
  %i.do = add nuw nsw i32 %.0104136, 1            ; 2 uses
  %.0108 = getelementptr inbounds nuw i8, ptr %.0108137, i64 4
  %exitcond155.not = icmp eq i32 %i.do, %2
  br i1 %exitcond155.not, label %._crit_edge140, label %.lr.ph139.split, !llvm.loop !21

._crit_edge140:                                   ; preds = %.lr.ph139.split, %._crit_edge134.us, %middle.block184, %._crit_edge129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, i32 noundef %9, ptr nofree readnone captures(none) %10, i32 %11, ptr noundef nonnull align 8 dereferenceable(8) %12) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %13 = alloca %class.btVector3, align 16         ; 7 uses
  %14 = alloca %class.btVector3, align 4          ; 9 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %15 = alloca %class.btVector3, align 4          ; 6 uses
  %16 = alloca %class.btVector3, align 4          ; 6 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %i.e = alloca [8 x float], align 16             ; 5 uses
  %i.f = alloca [2 x float], align 4              ; 5 uses
  %i.g = alloca [16 x float], align 16            ; 6 uses
  %i.h = alloca [24 x float], align 16            ; 8 uses
  %i.i = alloca [8 x float], align 16             ; 9 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %i.j = alloca [8 x i32], align 16               ; 4 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !17
  %i.o = load float, ptr %1, align 4, !tbaa !17   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !17 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !17
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 4 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1  ; 10 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0  ; 12 uses
  store <2 x float> %i.z, ptr %i.a, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !17
  %i.ae = fmul float %i.ad, 5.000000e-01          ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ae, ptr %i.af, align 8, !tbaa !17
  %i.ag = load <2 x float>, ptr %5, align 4, !tbaa !17
  %i.ah = fmul <2 x float> %i.ag, splat (float 5.000000e-01) ; 3 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1 ; 11 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 0 ; 11 uses
  store float %i.aj, ptr %i.b, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.ai, ptr %i.ak, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !17
  %i.an = fmul float %i.am, 5.000000e-01          ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = load <2 x float>, ptr %3, align 4, !tbaa !17 ; 2 uses
  %i.ax = load <4 x float>, ptr %0, align 4       ; 2 uses
  %i.ay = load float, ptr %i.p, align 4, !tbaa !17 ; 3 uses
  %i.az = load <2 x float>, ptr %i.ap, align 4, !tbaa !17 ; 4 uses
  %i.ba = shufflevector <2 x float> %i.aw, <2 x float> %i.az, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.ay, i64 2
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bd = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ax, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.be = fsub <4 x float> %i.bc, %i.bd           ; 3 uses
  %i.bf = extractelement <4 x float> %i.be, i64 0 ; 4 uses
  %i.bg = fmul float %i.bf, %i.ay
  %i.bh = load <2 x float>, ptr %4, align 4, !tbaa !17 ; 3 uses
  %23 = shufflevector <2 x float> %i.aw, <2 x float> %i.bh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %24 = shufflevector <4 x float> %i.ax, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %25 = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %26 = fsub float %i.l, %i.n                     ; 6 uses
  %27 = insertelement <4 x float> poison, float %26, i64 0
  %28 = load <2 x float>, ptr %i.s, align 4, !tbaa !17 ; 4 uses
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %30 = load <2 x float>, ptr %i.t, align 4, !tbaa !17 ; 3 uses
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %32 = load <2 x float>, ptr %i.as, align 4, !tbaa !17 ; 3 uses
  %33 = load float, ptr %i.av, align 4, !tbaa !17 ; 2 uses
  %34 = load <2 x float>, ptr %i.ar, align 4, !tbaa !17 ; 3 uses
  %35 = load float, ptr %i.au, align 4, !tbaa !17 ; 2 uses
  %36 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %23, <4 x float> %36, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %38 = fsub <4 x float> %37, %24                 ; 2 uses
  %39 = extractelement <4 x float> %38, i64 0     ; 5 uses
  %40 = tail call float @llvm.fmuladd.f32(float %i.o, float %39, float %i.bg)
  %foldExtExtBinop = fmul <4 x float> %i.be, %31
  %i.bi = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bj = extractelement <2 x float> %28, i64 0   ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %39, float %i.bi)
  %i.bl = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float %i.ay, i64 1
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bo = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bq = fmul <4 x float> %i.be, %i.bp
  %i.br = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float %i.o, i64 1
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %38, <4 x float> %i.bq)
  %41 = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %26, float %40) ; 8 uses
  %42 = shufflevector <2 x float> %i.az, <2 x float> %32, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %43 = fmul <4 x float> %31, %42
  %44 = shufflevector <2 x float> %i.bh, <2 x float> %34, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %44, <4 x float> %43)
  %i.bw = load <2 x float>, ptr %i.u, align 4, !tbaa !17 ; 4 uses
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = load <3 x float>, ptr %i.aq, align 4, !tbaa !17 ; 3 uses
  %i.bz = shufflevector <3 x float> %i.by, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ca = load float, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float %i.r, i64 1
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ce = shufflevector <4 x float> %27, <4 x float> %i.bz, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.cf = extractelement <2 x float> %i.bw, i64 0
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %26, float %i.bk) ; 8 uses
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.ce, <4 x float> %i.bu) ; 7 uses
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.bz, <4 x float> %i.bv) ; 8 uses
  %i.cj = extractelement <2 x float> %30, i64 1   ; 2 uses
  %i.ck = extractelement <2 x float> %32, i64 0   ; 2 uses
  %i.cl = fmul float %i.cj, %i.ck
  %i.cm = extractelement <2 x float> %28, i64 1   ; 3 uses
  %i.cn = extractelement <2 x float> %34, i64 0   ; 2 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float %i.cl)
  %i.cp = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.ca, float %i.co) ; 6 uses
  %i.cr = fmul float %i.cj, %33
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cm, float %35, float %i.cr)
  %i.ct = extractelement <3 x float> %i.by, i64 2 ; 2 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.ct, float %i.cs) ; 6 uses
  %i.cv = extractelement <4 x float> %i.ch, i64 1 ; 7 uses
  %i.cw = tail call noundef float @llvm.fabs.f32(float %i.cv) ; 6 uses
  %i.cx = extractelement <4 x float> %i.ch, i64 2 ; 7 uses
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cx) ; 6 uses
  %i.cz = extractelement <4 x float> %i.ch, i64 3 ; 7 uses
  %i.da = tail call noundef float @llvm.fabs.f32(float %i.cz) ; 6 uses
  %i.db = extractelement <4 x float> %i.ci, i64 0 ; 7 uses
  %i.dc = tail call noundef float @llvm.fabs.f32(float %i.db) ; 6 uses
  %i.dd = extractelement <4 x float> %i.ci, i64 1 ; 7 uses
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.dd) ; 6 uses
  %i.df = extractelement <4 x float> %i.ci, i64 2 ; 7 uses
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.df) ; 6 uses
  %i.dh = extractelement <4 x float> %i.ci, i64 3 ; 5 uses
  %i.di = tail call noundef float @llvm.fabs.f32(float %i.dh) ; 6 uses
  %i.dj = tail call noundef float @llvm.fabs.f32(float %i.cq) ; 6 uses
  %i.dk = tail call noundef float @llvm.fabs.f32(float %i.cu) ; 6 uses
  %i.dl = tail call noundef float @llvm.fabs.f32(float %41)
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.cw, float %i.ab)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.cy, float %i.dm)
  %i.do = tail call float @llvm.fmuladd.f32(float %i.an, float %i.da, float %i.dn)
  %i.dp = fsub float %i.dl, %i.do                 ; 3 uses
  %i.dq = fcmp ogt float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.cf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dr = fcmp ogt float %i.dp, f0xFF7FFFFF
  br i1 %i.dr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ds = fcmp olt float %41, 0.000000e+00
  %i.dt = zext i1 %i.ds to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0672 = phi float [ %i.dp, %bb.c ], [ f0xFF7FFFFF, %bb.b ] ; 2 uses
  %.0638 = phi i32 [ %i.dt, %bb.c ], [ 0, %bb.b ]
  %.0623 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.0608 = phi ptr [ %1, %bb.c ], [ null, %bb.b ]
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.cg)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.dc, float %i.aa)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.de, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dg, float %i.dw)
  %i.dy = fsub float %i.du, %i.dx                 ; 3 uses
  %i.dz = fcmp ogt float %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.cf, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ea = fcmp ogt float %i.dy, %.0672
  br i1 %i.ea, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eb = fcmp olt float %i.cg, 0.000000e+00
  %i.ec = zext i1 %i.eb to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1673 = phi float [ %i.dy, %bb.f ], [ %.0672, %bb.e ] ; 2 uses
  %.1639 = phi i32 [ %i.ec, %bb.f ], [ %.0638, %bb.e ]
  %.1624 = phi i32 [ 2, %bb.f ], [ %.0623, %bb.e ]
  %.1609 = phi ptr [ %i.s, %bb.f ], [ %.0608, %bb.e ]
  %i.ed = extractelement <4 x float> %i.ch, i64 0 ; 8 uses
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.ed)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.di, float %i.ae)
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.dj, float %i.ef)
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dk, float %i.eg)
  %i.ei = fsub float %i.ee, %i.eh                 ; 3 uses
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.cf, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = fcmp ogt float %i.ei, %.1673
  br i1 %i.ek, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.el = fcmp olt float %i.ed, 0.000000e+00
  %i.em = zext i1 %i.el to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2674 = phi float [ %i.ei, %bb.i ], [ %.1673, %bb.h ] ; 2 uses
  %.2640 = phi i32 [ %i.em, %bb.i ], [ %.1639, %bb.h ]
  %.2625 = phi i32 [ 3, %bb.i ], [ %.1624, %bb.h ]
  %.2610 = phi ptr [ %i.v, %bb.i ], [ %.1609, %bb.h ]
  %i.en = extractelement <2 x float> %i.az, i64 0
  %i.eo = fmul float %i.bf, %i.en
  %i.ep = extractelement <2 x float> %i.bh, i64 0
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %39, float %i.eo)
  %i.er = extractelement <3 x float> %i.by, i64 0
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.er, float %26, float %i.eq) ; 2 uses
  %i.et = tail call noundef float @llvm.fabs.f32(float %i.es)
  %i.eu = fmul float %i.aa, %i.dc
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.cw, float %i.eu)
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.di, float %i.ev)
  %i.ex = fadd float %i.aj, %i.ew
  %i.ey = fsub float %i.et, %i.ex                 ; 3 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.cf, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fa = fcmp ogt float %i.ey, %.2674
  br i1 %i.fa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fb = fcmp olt float %i.es, 0.000000e+00
  %i.fc = zext i1 %i.fb to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3675 = phi float [ %i.ey, %bb.l ], [ %.2674, %bb.k ] ; 2 uses
  %.3641 = phi i32 [ %i.fc, %bb.l ], [ %.2640, %bb.k ]
  %.3626 = phi i32 [ 4, %bb.l ], [ %.2625, %bb.k ]
  %.3 = phi ptr [ %4, %bb.l ], [ %.2610, %bb.k ]
  %i.fd = fmul float %i.bf, %i.ck
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.cn, float %39, float %i.fd)
  %i.ff = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %26, float %i.fe) ; 2 uses
  %i.fg = tail call noundef float @llvm.fabs.f32(float %i.ff)
  %i.fh = fmul float %i.aa, %i.de
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.cy, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.dj, float %i.fi)
  %i.fk = fadd float %i.ai, %i.fj
  %i.fl = fsub float %i.fg, %i.fk                 ; 3 uses
  %i.fm = fcmp ogt float %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.cf, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fn = fcmp ogt float %i.fl, %.3675
  br i1 %i.fn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fo = fcmp olt float %i.ff, 0.000000e+00
  %i.fp = zext i1 %i.fo to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4676 = phi float [ %i.fl, %bb.o ], [ %.3675, %bb.n ] ; 2 uses
  %.4642 = phi i32 [ %i.fp, %bb.o ], [ %.3641, %bb.n ]
  %.4627 = phi i32 [ 5, %bb.o ], [ %.3626, %bb.n ]
  %.4 = phi ptr [ %i.ar, %bb.o ], [ %.3, %bb.n ]
  %i.fq = fmul float %i.bf, %33
  %i.fr = tail call float @llvm.fmuladd.f32(float %35, float %39, float %i.fq)
  %i.fs = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %26, float %i.fr) ; 2 uses
  %i.ft = tail call noundef float @llvm.fabs.f32(float %i.fs)
  %i.fu = fmul float %i.aa, %i.dg
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.da, float %i.fu)
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.dk, float %i.fv)
  %i.fx = fadd float %i.an, %i.fw
  %i.fy = fsub float %i.ft, %i.fx                 ; 3 uses
  %i.fz = fcmp ogt float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.cf, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ga = fcmp ogt float %i.fy, %.4676
  br i1 %i.ga, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = fcmp olt float %i.fs, 0.000000e+00
  %i.gc = zext i1 %i.gb to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5677 = phi float [ %i.fy, %bb.r ], [ %.4676, %bb.q ] ; 4 uses
  %.5643 = phi i32 [ %i.gc, %bb.r ], [ %.4642, %bb.q ] ; 2 uses
  %.5628 = phi i32 [ 6, %bb.r ], [ %.4627, %bb.q ] ; 2 uses
  %.5 = phi ptr [ %i.au, %bb.r ], [ %.4, %bb.q ]  ; 2 uses
  %i.gd = fneg float %i.dh                        ; 2 uses
  %i.ge = fmul float %i.cg, %i.gd
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.db, float %i.ge) ; 2 uses
  %i.gg = tail call noundef float @llvm.fabs.f32(float %i.gf)
  %i.gh = fmul float %i.ae, %i.dc
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.di, float %i.gh)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.da, float %i.gi)
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.an, float %i.cy, float %i.gj)
  %i.gl = fsub float %i.gg, %i.gk                 ; 2 uses
  %i.gm = fcmp ogt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.cf, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float 0.000000e+00) ; 2 uses
  %i.go = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.gn) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.go) ; 2 uses
  %i.gp = fcmp ogt float %i.go, 0.000000e+00
  %i.gq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.5677, i64 0 ; 2 uses
  br i1 %i.gp, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gr = fdiv float %i.gl, %sqrt                 ; 3 uses
  %i.gs = fmul float %i.gr, 1.050000e+00
  %i.gt = fcmp ogt float %i.gs, %.5677
  br i1 %i.gt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gu = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ci, <4 x i32> <i32 poison, i32 4, i32 poison, i32 3>
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gd, i64 2
  %i.gx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.gz = fdiv <4 x float> %i.gw, %i.gy
  %i.ha = fcmp olt float %i.gf, 0.000000e+00
  %i.hb = zext i1 %i.ha to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.6678 = phi float [ %i.gr, %bb.v ], [ %.5677, %bb.u ], [ %.5677, %bb.t ] ; 3 uses
  %.6644 = phi i32 [ %i.hb, %bb.v ], [ %.5643, %bb.u ], [ %.5643, %bb.t ] ; 2 uses
  %.6629 = phi i32 [ 7, %bb.v ], [ %.5628, %bb.u ], [ %.5628, %bb.t ] ; 2 uses
  %.6 = phi ptr [ null, %bb.v ], [ %.5, %bb.u ], [ %.5, %bb.t ] ; 2 uses
  %i.hc = phi <4 x float> [ %i.gz, %bb.v ], [ %i.gq, %bb.u ], [ %i.gq, %bb.t ] ; 2 uses
  %i.hd = fneg float %i.cq                        ; 2 uses
  %i.he = fmul float %i.cg, %i.hd
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.dd, float %i.he) ; 2 uses
  %i.hg = tail call noundef float @llvm.fabs.f32(float %i.hf)
  %i.hh = fmul float %i.ae, %i.de
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.dj, float %i.hh)
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.da, float %i.hi)
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.an, float %i.cw, float %i.hj)
  %i.hl = fsub float %i.hg, %i.hk                 ; 2 uses
  %i.hm = fcmp ogt float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.cf, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float 0.000000e+00) ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.hn) ; 2 uses
  %sqrt901 = tail call float @llvm.sqrt.f32(float %i.ho) ; 2 uses
  %i.hp = fcmp ogt float %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hq = fdiv float %i.hl, %sqrt901              ; 3 uses
  %i.hr = fmul float %i.hq, 1.050000e+00
  %i.hs = fcmp ogt float %i.hr, %.6678
  br i1 %i.hs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ht = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 3
  %i.hu = insertelement <4 x float> %i.ht, float %i.hq, i64 0
  %i.hv = insertelement <4 x float> %i.hu, float %i.hd, i64 2
  %i.hw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt901, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.hy = fdiv <4 x float> %i.hv, %i.hx
  %i.hz = fcmp olt float %i.hf, 0.000000e+00
  %i.ia = zext i1 %i.hz to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.7679 = phi float [ %i.hq, %bb.z ], [ %.6678, %bb.y ], [ %.6678, %bb.x ] ; 3 uses
  %.7645 = phi i32 [ %i.ia, %bb.z ], [ %.6644, %bb.y ], [ %.6644, %bb.x ] ; 2 uses
  %.7630 = phi i32 [ 8, %bb.z ], [ %.6629, %bb.y ], [ %.6629, %bb.x ] ; 2 uses
  %.7 = phi ptr [ null, %bb.z ], [ %.6, %bb.y ], [ %.6, %bb.x ] ; 2 uses
  %i.ib = phi <4 x float> [ %i.hy, %bb.z ], [ %i.hc, %bb.y ], [ %i.hc, %bb.x ] ; 2 uses
  %i.ic = fneg float %i.cu                        ; 2 uses
  %i.id = fmul float %i.cg, %i.ic
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.df, float %i.id) ; 2 uses
  %i.if = tail call noundef float @llvm.fabs.f32(float %i.ie)
  %i.ig = fmul float %i.ae, %i.dg
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.dk, float %i.ig)
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.cy, float %i.ih)
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.cw, float %i.ii)
  %i.ik = fsub float %i.if, %i.ij                 ; 2 uses
  %i.il = fcmp ogt float %i.ik, 0.000000e+00
  br i1 %i.il, label %bb.cf, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.im = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float 0.000000e+00) ; 2 uses
  %i.in = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.im) ; 2 uses
  %sqrt902 = tail call float @llvm.sqrt.f32(float %i.in) ; 2 uses
  %i.io = fcmp ogt float %i.in, 0.000000e+00
  br i1 %i.io, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ip = fdiv float %i.ik, %sqrt902              ; 3 uses
  %i.iq = fmul float %i.ip, 1.050000e+00
  %i.ir = fcmp ogt float %i.iq, %.7679
  br i1 %i.ir, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.is = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ci, <4 x i32> <i32 poison, i32 6, i32 poison, i32 3>
  %i.it = insertelement <4 x float> %i.is, float %i.ip, i64 0
  %i.iu = insertelement <4 x float> %i.it, float %i.ic, i64 2
  %i.iv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt902, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ix = fdiv <4 x float> %i.iu, %i.iw
  %i.iy = fcmp olt float %i.ie, 0.000000e+00
  %i.iz = zext i1 %i.iy to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.8680 = phi float [ %i.ip, %bb.ad ], [ %.7679, %bb.ac ], [ %.7679, %bb.ab ] ; 3 uses
  %.8646 = phi i32 [ %i.iz, %bb.ad ], [ %.7645, %bb.ac ], [ %.7645, %bb.ab ] ; 2 uses
  %.8631 = phi i32 [ 9, %bb.ad ], [ %.7630, %bb.ac ], [ %.7630, %bb.ab ] ; 2 uses
  %.8 = phi ptr [ null, %bb.ad ], [ %.7, %bb.ac ], [ %.7, %bb.ab ] ; 2 uses
  %i.ja = phi <4 x float> [ %i.ix, %bb.ad ], [ %i.ib, %bb.ac ], [ %i.ib, %bb.ab ] ; 2 uses
  %i.jb = fneg float %i.cv                        ; 2 uses
  %i.jc = fmul float %i.ed, %i.jb
  %i.jd = tail call float @llvm.fmuladd.f32(float %41, float %i.dh, float %i.jc) ; 2 uses
  %i.je = tail call noundef float @llvm.fabs.f32(float %i.jd)
  %i.jf = fmul float %i.ae, %i.cw
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.di, float %i.jf)
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.dg, float %i.jg)
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.an, float %i.de, float %i.jh)
  %i.jj = fsub float %i.je, %i.ji                 ; 2 uses
  %i.jk = fcmp ogt float %i.jj, 0.000000e+00
  br i1 %i.jk, label %bb.cf, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.gn) ; 2 uses
  %sqrt903 = tail call float @llvm.sqrt.f32(float %i.jl) ; 2 uses
  %i.jm = fcmp ogt float %i.jl, 0.000000e+00
  br i1 %i.jm, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.jn = fdiv float %i.jj, %sqrt903              ; 3 uses
  %i.jo = fmul float %i.jn, 1.050000e+00
  %i.jp = fcmp ogt float %i.jo, %.8680
  br i1 %i.jp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jq = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 2
  %i.jr = insertelement <4 x float> %i.jq, float %i.jn, i64 0
  %i.js = insertelement <4 x float> %i.jr, float %i.jb, i64 1
  %i.jt = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt903, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.jv = fdiv <4 x float> %i.js, %i.ju
  %i.jw = fcmp olt float %i.jd, 0.000000e+00
  %i.jx = zext i1 %i.jw to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.9681 = phi float [ %i.jn, %bb.ah ], [ %.8680, %bb.ag ], [ %.8680, %bb.af ] ; 3 uses
  %.9647 = phi i32 [ %i.jx, %bb.ah ], [ %.8646, %bb.ag ], [ %.8646, %bb.af ] ; 2 uses
  %.9632 = phi i32 [ 10, %bb.ah ], [ %.8631, %bb.ag ], [ %.8631, %bb.af ] ; 2 uses
  %.9 = phi ptr [ null, %bb.ah ], [ %.8, %bb.ag ], [ %.8, %bb.af ] ; 2 uses
  %i.jy = phi <4 x float> [ %i.jv, %bb.ah ], [ %i.ja, %bb.ag ], [ %i.ja, %bb.af ] ; 2 uses
  %i.jz = fneg float %i.cx                        ; 2 uses
  %i.ka = fmul float %i.ed, %i.jz
  %i.kb = tail call float @llvm.fmuladd.f32(float %41, float %i.cq, float %i.ka) ; 2 uses
  %i.kc = tail call noundef float @llvm.fabs.f32(float %i.kb)
  %i.kd = fmul float %i.ae, %i.cy
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.dj, float %i.kd)
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.dg, float %i.ke)
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dc, float %i.kf)
  %i.kh = fsub float %i.kc, %i.kg                 ; 2 uses
  %i.ki = fcmp ogt float %i.kh, 0.000000e+00
  br i1 %i.ki, label %bb.cf, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.hn) ; 2 uses
  %sqrt904 = tail call float @llvm.sqrt.f32(float %i.kj) ; 2 uses
  %i.kk = fcmp ogt float %i.kj, 0.000000e+00
  br i1 %i.kk, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.kl = fdiv float %i.kh, %sqrt904              ; 3 uses
  %i.km = fmul float %i.kl, 1.050000e+00
  %i.kn = fcmp ogt float %i.km, %.9681
  br i1 %i.kn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ko = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.kl, i64 0
  %i.kp = insertelement <4 x float> %i.ko, float %i.jz, i64 1
  %i.kq = insertelement <4 x float> %i.kp, float %i.cq, i64 3
  %i.kr = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt904, i64 0
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.kt = fdiv <4 x float> %i.kq, %i.ks
  %i.ku = fcmp olt float %i.kb, 0.000000e+00
  %i.kv = zext i1 %i.ku to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.10682 = phi float [ %i.kl, %bb.al ], [ %.9681, %bb.ak ], [ %.9681, %bb.aj ] ; 3 uses
  %.10648 = phi i32 [ %i.kv, %bb.al ], [ %.9647, %bb.ak ], [ %.9647, %bb.aj ] ; 2 uses
  %.10633 = phi i32 [ 11, %bb.al ], [ %.9632, %bb.ak ], [ %.9632, %bb.aj ] ; 2 uses
  %.10 = phi ptr [ null, %bb.al ], [ %.9, %bb.ak ], [ %.9, %bb.aj ] ; 2 uses
  %i.kw = phi <4 x float> [ %i.kt, %bb.al ], [ %i.jy, %bb.ak ], [ %i.jy, %bb.aj ] ; 2 uses
  %i.kx = fneg float %i.cz                        ; 2 uses
  %i.ky = fmul float %i.ed, %i.kx
  %i.kz = tail call float @llvm.fmuladd.f32(float %41, float %i.cu, float %i.ky) ; 2 uses
  %i.la = tail call noundef float @llvm.fabs.f32(float %i.kz)
  %i.lb = fmul float %i.ae, %i.da
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.dk, float %i.lb)
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.de, float %i.lc)
  %i.le = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.dc, float %i.ld)
  %i.lf = fsub float %i.la, %i.le                 ; 2 uses
  %i.lg = fcmp ogt float %i.lf, 0.000000e+00
  br i1 %i.lg, label %bb.cf, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.im) ; 2 uses
  %sqrt905 = tail call float @llvm.sqrt.f32(float %i.lh) ; 2 uses
  %i.li = fcmp ogt float %i.lh, 0.000000e+00
  br i1 %i.li, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.lj = fdiv float %i.lf, %sqrt905              ; 3 uses
  %i.lk = fmul float %i.lj, 1.050000e+00
  %i.ll = fcmp ogt float %i.lk, %.10682
  br i1 %i.ll, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lm = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.lj, i64 0
  %i.ln = insertelement <4 x float> %i.lm, float %i.kx, i64 1
  %i.lo = insertelement <4 x float> %i.ln, float %i.cu, i64 3
  %i.lp = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt905, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.lr = fdiv <4 x float> %i.lo, %i.lq
  %i.ls = fcmp olt float %i.kz, 0.000000e+00
  %i.lt = zext i1 %i.ls to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.11683 = phi float [ %i.lj, %bb.ap ], [ %.10682, %bb.ao ], [ %.10682, %bb.an ] ; 3 uses
  %.11649 = phi i32 [ %i.lt, %bb.ap ], [ %.10648, %bb.ao ], [ %.10648, %bb.an ] ; 2 uses
  %.11634 = phi i32 [ 12, %bb.ap ], [ %.10633, %bb.ao ], [ %.10633, %bb.an ] ; 2 uses
  %.11 = phi ptr [ null, %bb.ap ], [ %.10, %bb.ao ], [ %.10, %bb.an ] ; 2 uses
  %i.lu = phi <4 x float> [ %i.lr, %bb.ap ], [ %i.kw, %bb.ao ], [ %i.kw, %bb.an ] ; 2 uses
  %i.lv = fneg float %i.db                        ; 2 uses
  %i.lw = fmul float %41, %i.lv
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cv, float %i.lw) ; 2 uses
  %i.ly = tail call noundef float @llvm.fabs.f32(float %i.lx)
  %i.lz = fmul float %i.aa, %i.cw
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.dc, float %i.lz)
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.dk, float %i.ma)
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dj, float %i.mb)
  %i.md = fsub float %i.ly, %i.mc                 ; 2 uses
  %i.me = fcmp ogt float %i.md, 0.000000e+00
  br i1 %i.me, label %bb.cf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mf = fmul float %i.cv, %i.cv
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.mf) ; 2 uses
  %i.mh = fadd float %i.mg, 0.000000e+00
  %sqrt906 = tail call float @llvm.sqrt.f32(float %i.mh) ; 2 uses
  %i.mi = fcmp ogt float %i.mg, 0.000000e+00
  br i1 %i.mi, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.mj = fdiv float %i.md, %sqrt906              ; 3 uses
  %i.mk = fmul float %i.mj, 1.050000e+00
  %i.ml = fcmp ogt float %i.mk, %.11683
  br i1 %i.ml, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mm = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.ch, <4 x i32> <i32 poison, i32 1, i32 5, i32 poison>
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 0
  %i.mo = insertelement <4 x float> %i.mn, float %i.lv, i64 3
  %i.mp = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt906, i64 0
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.mr = fdiv <4 x float> %i.mo, %i.mq
  %i.ms = fcmp olt float %i.lx, 0.000000e+00
  %i.mt = zext i1 %i.ms to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.12684 = phi float [ %i.mj, %bb.at ], [ %.11683, %bb.as ], [ %.11683, %bb.ar ] ; 3 uses
  %.12650 = phi i32 [ %i.mt, %bb.at ], [ %.11649, %bb.as ], [ %.11649, %bb.ar ] ; 2 uses
  %.12635 = phi i32 [ 13, %bb.at ], [ %.11634, %bb.as ], [ %.11634, %bb.ar ] ; 2 uses
  %.12 = phi ptr [ null, %bb.at ], [ %.11, %bb.as ], [ %.11, %bb.ar ] ; 2 uses
  %i.mu = phi <4 x float> [ %i.mr, %bb.at ], [ %i.lu, %bb.as ], [ %i.lu, %bb.ar ] ; 2 uses
  %i.mv = fneg float %i.dd                        ; 2 uses
  %i.mw = fmul float %41, %i.mv
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cx, float %i.mw) ; 2 uses
  %i.my = tail call noundef float @llvm.fabs.f32(float %i.mx)
  %i.mz = fmul float %i.aa, %i.cy
  %i.na = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.de, float %i.mz)
  %i.nb = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.dk, float %i.na)
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.an, float %i.di, float %i.nb)
  %i.nd = fsub float %i.my, %i.nc                 ; 2 uses
  %i.ne = fcmp ogt float %i.nd, 0.000000e+00
  br i1 %i.ne, label %bb.cf, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nf = fmul float %i.cx, %i.cx
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.nf) ; 2 uses
  %i.nh = fadd float %i.ng, 0.000000e+00
  %sqrt907 = tail call float @llvm.sqrt.f32(float %i.nh) ; 2 uses
  %i.ni = fcmp ogt float %i.ng, 0.000000e+00
  br i1 %i.ni, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.nj = fdiv float %i.nd, %sqrt907              ; 3 uses
  %i.nk = fmul float %i.nj, 1.050000e+00
  %i.nl = fcmp ogt float %i.nk, %.12684
  br i1 %i.nl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.nm = insertelement <4 x float> %i.ch, float 0.000000e+00, i64 1
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 0
  %i.no = insertelement <4 x float> %i.nn, float %i.mv, i64 3
  %i.np = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt907, i64 0
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.nr = fdiv <4 x float> %i.no, %i.nq
  %i.ns = fcmp olt float %i.mx, 0.000000e+00
  %i.nt = zext i1 %i.ns to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.13685 = phi float [ %i.nj, %bb.ax ], [ %.12684, %bb.aw ], [ %.12684, %bb.av ] ; 2 uses
  %.13651 = phi i32 [ %i.nt, %bb.ax ], [ %.12650, %bb.aw ], [ %.12650, %bb.av ] ; 2 uses
  %.13636 = phi i32 [ 14, %bb.ax ], [ %.12635, %bb.aw ], [ %.12635, %bb.av ] ; 3 uses
  %.13 = phi ptr [ null, %bb.ax ], [ %.12, %bb.aw ], [ %.12, %bb.av ] ; 4 uses
  %i.nu = phi <4 x float> [ %i.nr, %bb.ax ], [ %i.mu, %bb.aw ], [ %i.mu, %bb.av ]
  %i.nv = fneg float %i.df                        ; 2 uses
  %i.nw = fmul float %41, %i.nv
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cz, float %i.nw) ; 2 uses
  %i.ny = tail call noundef float @llvm.fabs.f32(float %i.nx)
  %i.nz = fmul float %i.aa, %i.da
  %i.oa = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.dg, float %i.nz)
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.dj, float %i.oa)
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.di, float %i.ob)
  %i.od = fsub float %i.ny, %i.oc                 ; 2 uses
  %i.oe = fcmp ogt float %i.od, 0.000000e+00
  br i1 %i.oe, label %bb.cf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.of = fmul float %i.cz, %i.cz
  %i.og = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.of) ; 2 uses
  %i.oh = fadd float %i.og, 0.000000e+00
  %sqrt908 = tail call float @llvm.sqrt.f32(float %i.oh) ; 2 uses
  %i.oi = fcmp ogt float %i.og, 0.000000e+00
  br i1 %i.oi, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.oj = fdiv float %i.od, %sqrt908              ; 2 uses
  %i.ok = fmul float %i.oj, 1.050000e+00
  %i.ol = fcmp ogt float %i.ok, %.13685
  br i1 %i.ol, label %.thread864, label %bb.bb

.thread864:                                       ; preds = %bb.ba
  %i.om = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.ch, <4 x i32> <i32 poison, i32 1, i32 7, i32 poison>
  %i.on = insertelement <4 x float> %i.om, float %i.oj, i64 0
  %i.oo = insertelement <4 x float> %i.on, float %i.nv, i64 3
  %i.op = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt908, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.or = fdiv <4 x float> %i.oo, %i.oq
  %i.os = fcmp olt float %i.nx, 0.000000e+00
  %i.ot = zext i1 %i.os to i32
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.not = icmp eq i32 %.13636, 0
  br i1 %.not, label %bb.cf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not714 = icmp eq ptr %.13, null
  br i1 %.not714, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ou = load float, ptr %.13, align 4, !tbaa !17 ; 2 uses
  store float %i.ou, ptr %6, align 4, !tbaa !17
  %i.ov = getelementptr inbounds nuw i8, ptr %.13, i64 16
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !17 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ow, ptr %i.ox, align 4, !tbaa !17
  %i.oy = getelementptr inbounds nuw i8, ptr %.13, i64 32
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !17
  br label %bb.bf

bb.be:                                            ; preds = %.thread864, %bb.bc
  %.14652861876 = phi i32 [ %i.ot, %.thread864 ], [ %.13651, %bb.bc ]
  %.14637862874 = phi i32 [ 15, %.thread864 ], [ %.13636, %bb.bc ]
  %i.pa = phi <4 x float> [ %i.or, %.thread864 ], [ %i.nu, %bb.bc ] ; 4 uses
  %i.pb = extractelement <4 x float> %i.pa, i64 2 ; 3 uses
  %i.pc = fmul float %i.bj, %i.pb
  %i.pd = extractelement <4 x float> %i.pa, i64 3 ; 3 uses
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.o, float %i.pd, float %i.pc)
  %i.pf = extractelement <4 x float> %i.pa, i64 1 ; 3 uses
  %i.pg = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.pf, float %i.pe) ; 2 uses
  store float %i.pg, ptr %6, align 4, !tbaa !17
  %i.ph = load float, ptr %i.p, align 4, !tbaa !17
  %i.pi = load float, ptr %i.t, align 4, !tbaa !17
  %i.pj = fmul float %i.pb, %i.pi
  %i.pk = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.pd, float %i.pj)
  %i.pl = load float, ptr %i.w, align 4, !tbaa !17
  %i.pm = tail call noundef float @llvm.fmuladd.f32(float %i.pl, float %i.pf, float %i.pk) ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.pm, ptr %i.pn, align 4, !tbaa !17
  %i.po = load float, ptr %i.q, align 4, !tbaa !17
  %i.pp = load float, ptr %i.u, align 4, !tbaa !17
  %i.pq = fmul float %i.pb, %i.pp
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.po, float %i.pd, float %i.pq)
  %i.ps = load float, ptr %i.x, align 4, !tbaa !17
  %i.pt = tail call noundef float @llvm.fmuladd.f32(float %i.ps, float %i.pf, float %i.pr)
  %i.pu = extractelement <4 x float> %i.pa, i64 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink = phi float [ %i.pt, %bb.be ], [ %i.oz, %bb.bd ] ; 2 uses
  %i.pv = phi float [ %i.pm, %bb.be ], [ %i.ow, %bb.bd ]
  %i.pw = phi float [ %i.pg, %bb.be ], [ %i.ou, %bb.bd ]
  %.14686860877 = phi float [ %i.pu, %bb.be ], [ %.13685, %bb.bd ] ; 2 uses
  %.14652861875 = phi i32 [ %.14652861876, %bb.be ], [ %.13651, %bb.bd ]
  %.14637862873 = phi i32 [ %.14637862874, %bb.be ], [ %.13636, %bb.bd ] ; 6 uses
  %i.px = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sink, ptr %i.px, align 4, !tbaa !17
  %.not715 = icmp eq i32 %.14652861875, 0
  br i1 %.not715, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.py = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.pz = insertelement <2 x float> %i.py, float %i.pv, i64 1
  %i.qa = fneg <2 x float> %i.pz
  store <2 x float> %i.qa, ptr %6, align 4, !tbaa !17
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qc = fneg float %.sink
  store float %i.qc, ptr %i.qb, align 4, !tbaa !17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.qd = fneg float %.14686860877
  store float %i.qd, ptr %7, align 4, !tbaa !17
  %i.qe = icmp samesign ugt i32 %.14637862873, 6
  br i1 %i.qe, label %.preheader911, label %bb.bi

.preheader911:                                    ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa !17
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.qh = fneg float %i.ab
  %i.qi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 8, !tbaa !17
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.qm = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qn = insertelement <2 x float> %i.qm, float %i.ae, i64 1 ; 2 uses
  %i.qo = fneg <2 x float> %i.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.qp = load <2 x float>, ptr %6, align 4, !tbaa !17 ; 5 uses
  %i.qq = load <2 x float>, ptr %i.p, align 4, !tbaa !17 ; 3 uses
  %i.qr = extractelement <2 x float> %i.qq, i64 0
  %i.qs = load <2 x float>, ptr %1, align 4, !tbaa !17 ; 3 uses
  %i.qt = extractelement <2 x float> %i.qp, i64 0
  %i.qu = extractelement <2 x float> %i.qs, i64 0
  %i.qv = load <2 x float>, ptr %i.q, align 4, !tbaa !17 ; 2 uses
  %i.qw = extractelement <2 x float> %i.qv, i64 0
  %i.qx = load <4 x float>, ptr %13, align 16
  %i.qy = shufflevector <2 x float> %i.qs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qz = insertelement <4 x float> %i.qy, float -0.000000e+00, i64 3
  %i.ra = shufflevector <2 x float> %i.qq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rb = shufflevector <4 x float> %i.qz, <4 x float> %i.ra, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.rc = shufflevector <2 x float> %i.qv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.rd = shufflevector <4 x float> %i.rb, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.re = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.qj, i64 2
  %i.rf = shufflevector <4 x float> %i.qx, <4 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rg = load float, ptr %i.qg, align 4, !tbaa !17 ; 3 uses
  %i.rh = load float, ptr %i.qf, align 4, !tbaa !17 ; 2 uses
  %i.ri = load <2 x float>, ptr %i.qk, align 4, !tbaa !17 ; 2 uses
  %i.rj = fmul float %i.rh, %i.qr
  %i.rk = load <2 x float>, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.rl = tail call float @llvm.fmuladd.f32(float %i.qt, float %i.qu, float %i.rj)
  %i.rm = load <2 x float>, ptr %i.ql, align 4, !tbaa !17 ; 2 uses
  %i.rn = tail call noundef float @llvm.fmuladd.f32(float %i.rg, float %i.qw, float %i.rl)
  %i.ro = fcmp ogt float %i.rn, 0.000000e+00
  %i.rp = select i1 %i.ro, float %i.ab, float %i.qh
  %i.rq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.rp, i64 0
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.rs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rr, <4 x float> %i.rd, <4 x float> %i.rf)
  %i.rt = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rv = fmul <2 x float> %i.ru, %i.ri
  %i.rw = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> %i.rk, <2 x float> %i.rv)
  %i.ry = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rz, <2 x float> %i.rm, <2 x float> %i.rx)
  %i.sb = fcmp ogt <2 x float> %i.sa, zeroinitializer
  %i.sc = select <2 x i1> %i.sb, <2 x float> %i.qn, <2 x float> %i.qo ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa !17
  %i.sd = load float, ptr %4, align 4, !tbaa !17  ; 2 uses
  %i.se = shufflevector <2 x float> %i.qs, <2 x float> %i.qq, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sg = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sh = shufflevector <4 x float> %i.sf, <4 x float> %i.sg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.si = shufflevector <2 x float> %i.sc, <2 x float> %i.qp, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.sj = shufflevector <2 x float> %i.rm, <2 x float> %i.rk, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.sk = shufflevector <2 x float> %i.ri, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sl = shufflevector <4 x float> %i.sj, <4 x float> %i.sk, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.sm = insertelement <4 x float> %i.sl, float %i.sd, i64 3
  %i.sn = load float, ptr %14, align 4, !tbaa !17
  %i.so = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.sq = load float, ptr %i.ao, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.sr = add nsw i32 %.14637862873, -7           ; 2 uses
  %.lhs.trunc = trunc i32 %i.sr to i8
  %i.ss = udiv i8 %.lhs.trunc, 3
  %i.st = zext nneg i8 %i.ss to i64               ; 3 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.st
  %i.sv = load float, ptr %i.su, align 4, !tbaa !17
  store float %i.sv, ptr %15, align 4, !tbaa !17
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.st
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !17
  %i.sz = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.sy, ptr %i.sz, align 4, !tbaa !17
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.st
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !17
  %i.td = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.tc, ptr %i.td, align 4, !tbaa !17
  %.lhs.trunc1029 = trunc i32 %i.sr to i8
  %i.te = urem i8 %.lhs.trunc1029, 3
  %i.tf = zext nneg i8 %i.te to i64               ; 3 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !17 ; 2 uses
  store float %i.th, ptr %16, align 4, !tbaa !17
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tf
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !17 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %i.tk, ptr %i.tl, align 4, !tbaa !17
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tf
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.to = load float, ptr %i.tn, align 4, !tbaa !17 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.to, ptr %i.tp, align 4, !tbaa !17
  %i.tq = load <2 x float>, ptr %i.ap, align 4, !tbaa !17 ; 3 uses
  %i.tr = shufflevector <2 x float> %i.sc, <2 x float> %i.tq, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ts = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sh, <4 x float> %i.tr, <4 x float> %i.rs)
  %i.tt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.si, <4 x float> %i.sm, <4 x float> %i.ts) ; 3 uses
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.tu, ptr %13, align 16, !tbaa !17
  %i.tv = extractelement <4 x float> %i.tt, i64 2
  store float %i.tv, ptr %i.qi, align 8, !tbaa !17
  %i.tw = load <2 x float>, ptr %i.sp, align 4, !tbaa !17 ; 2 uses
  %i.tx = fmul <2 x float> %i.ru, %i.tw
  %i.ty = load <2 x float>, ptr %i.ar, align 4, !tbaa !17 ; 2 uses
  %i.tz = load float, ptr %i.au, align 4, !tbaa !17
  %i.ua = shufflevector <2 x float> %i.qp, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.ub = insertelement <3 x float> %i.ua, float 0.000000e+00, i64 2
  %i.uc = shufflevector <2 x float> %i.ty, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.ud = insertelement <3 x float> %i.uc, float -0.000000e+00, i64 2
  %i.ue = shufflevector <4 x float> %i.tt, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.uf = shufflevector <2 x float> %i.tx, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.ug = shufflevector <3 x float> %i.uf, <3 x float> %i.ue, <3 x i32> <i32 0, i32 1, i32 5>
  %i.uh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ub, <3 x float> %i.ud, <3 x float> %i.ug)
  %i.ui = load <3 x float>, ptr %i.aq, align 4, !tbaa !17 ; 4 uses
  %i.uj = shufflevector <3 x float> %i.ui, <3 x float> poison, <3 x i32> <i32 2, i32 1, i32 0>
  %i.uk = insertelement <3 x float> poison, float %i.rg, i64 0
  %i.ul = shufflevector <3 x float> %i.uk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.um = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ul, <3 x float> %i.uj, <3 x float> %i.uh)
  %i.un = fcmp ogt <3 x float> %i.um, zeroinitializer
  %i.uo = shufflevector <2 x float> %i.ah, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %i.up = insertelement <3 x float> %i.uo, float %i.sq, i64 0 ; 2 uses
  %i.uq = fneg <3 x float> %i.up
  %i.ur = select <3 x i1> %i.un, <3 x float> %i.uq, <3 x float> %i.up ; 6 uses
  %i.us = extractelement <3 x float> %i.ur, i64 2
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.us, float %i.sd, float %i.sn)
  %i.uu = load <2 x float>, ptr %i.so, align 4, !tbaa !17
  %i.uv = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.uw = shufflevector <3 x float> %i.ui, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ux = shufflevector <2 x float> %i.tq, <2 x float> %i.uw, <2 x i32> <i32 0, i32 3>
  %i.uy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> %i.ux, <2 x float> %i.uu)
  %i.uz = extractelement <3 x float> %i.ur, i64 1
  %i.va = extractelement <2 x float> %i.ty, i64 0
  %i.vb = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.va, float %i.ut)
  %i.vc = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vd = shufflevector <2 x float> %i.tq, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ve = shufflevector <3 x float> %i.vd, <3 x float> %i.ui, <2 x i32> <i32 1, i32 4>
  %i.vf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vc, <2 x float> %i.ve, <2 x float> %i.uy)
  %i.vg = extractelement <3 x float> %i.ur, i64 0
  %i.vh = tail call float @llvm.fmuladd.f32(float %i.vg, float %i.tz, float %i.vb) ; 2 uses
  store float %i.vh, ptr %14, align 4, !tbaa !17
  %i.vi = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> zeroinitializer
end_hunk_0
