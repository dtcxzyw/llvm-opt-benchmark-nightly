Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CreateRock:bb.a
  %i.bx = fmul float %i.c, %i.bq
  %i.by = fsub float %i.bw, %i.bx                 ; 3 uses
  %i.bz = fmul float %i.c, %i.bn
  %i.ca = fmul float %.sroa.012.0.vec.extract, %i.bq
  %i.cb = fadd float %i.bz, %i.ca                 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cd = fmul <4 x float> %i.ar, <float f0x3F5DB3D7, float f0x3F5DB3D7, float -5.000000e-01, float f0x3F36D210> ; 3 uses
  %i.ce = shufflevector <4 x float> <float f0x3F333333, float poison, float poison, float 5.000000e-01>, <4 x float> %i.cd, <4 x i32> <i32 0, i32 4, i32 4, i32 3>
  %i.cf = fmul <4 x float> %i.ac, %i.ce
  store <4 x float> %i.cf, ptr %i.k, align 4, !tbaa !23
  %i.cg = insertelement <4 x float> %i.at, float %i.by, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %i.cb, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.cj = fmul float %.sroa.012.0.vec.extract, %i.by
  %i.ck = fmul float %i.c, %i.cb
  %i.cl = fsub float %i.cj, %i.ck                 ; 2 uses
  %i.cm = fmul float %i.c, %i.by
  %i.cn = fmul float %.sroa.012.0.vec.extract, %i.cb
  %i.co = fadd float %i.cm, %i.cn                 ; 2 uses
  %i.cp = insertelement <4 x float> %i.ch, float %i.cl, i64 3
  %i.cq = fmul <4 x float> %i.cp, %i.cd
  store <4 x float> %i.cq, ptr %i.cc, align 4, !tbaa !23
  %i.cr = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.a, %i.cs            ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.b, %i.cv            ; 2 uses
  %i.cx = fsub <2 x float> %i.ct, %i.cw
  %i.cy = fadd <2 x float> %i.ct, %i.cw
  %i.cz = insertelement <4 x float> %i.g, float %i.co, i64 0
  %i.da = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dc = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float f0xBF333334, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 poison, i32 poison>
  %i.dd = insertelement <4 x float> poison, float %i.d, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.df = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = fmul <4 x float> %i.db, %i.df
  store <4 x float> %i.dg, ptr %i.ci, align 4, !tbaa !23
  %i.dh = fmul float %0, f0xBF666666
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.dh, ptr %i.di, align 4, !tbaa !88
  %i.dj = call ptr @b3CreateHull(ptr noundef nonnull %1, i32 noundef 10, i32 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret ptr %i.dj
}

declare <2 x float> @b3ComputeCosSin(float noundef) local_unnamed_addr #4

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.b3Matrix3, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sext i32 %i.b to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %.0.i = select i1 %i.c, ptr null, ptr %i.g      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !71
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, %i.d
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = sext i32 %i.n to i64
  %i.q = add nsw i64 %i.p, %i.d
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %.0.i302 = select i1 %i.o, ptr null, ptr %i.r   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22   ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = sext i32 %i.t to i64
  %i.w = add nsw i64 %i.v, %i.d
  %i.x = inttoptr i64 %i.w to ptr
  %.0.i303 = select i1 %i.u, ptr null, ptr %i.x
  %.sroa.0243.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !23 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !23 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.ab = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = insertelement <4 x float> %i.ab, float -0.000000e+00, i64 3
  %i.ad = insertelement <4 x float> %i.ac, float %.sroa.7.0.copyload, i64 2
  %i.ae = fadd <4 x float> %i.ad, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  br label %._crit_edge476

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.af = insertelement <2 x float> %.sroa.0243.0.copyload, float %.sroa.7.0.copyload, i64 0 ; 3 uses
  %i.ag = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.ah = fmul <2 x float> %i.eq, splat (float f0xBC088889)
  %i.ai = fmul float %i.es, f0xBC088889
  %i.aj = extractelement <4 x float> %i.ef, i64 3 ; 2 uses
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00      ; 2 uses
  %i.al = fdiv float 2.500000e-01, %i.aj          ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.dx, %i.an
  %i.ap = extractelement <2 x float> %i.dz, i64 0
  %i.aq = fmul float %i.ap, %i.al
  %.sroa.6.0 = select i1 %i.ak, float %i.aq, float 0.000000e+00 ; 2 uses
  %.sroa.026.0 = select i1 %i.ak, <2 x float> %i.ao, <2 x float> zeroinitializer ; 2 uses
  %i.ar = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = insertelement <4 x float> %i.ar, float %.sroa.7.0.copyload, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ai, i64 3
  %i.au = shufflevector <2 x float> %.sroa.026.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float -0.000000e+00, i64 3
  %i.aw = insertelement <4 x float> %i.av, float %.sroa.6.0, i64 2
  %i.ax = fadd <4 x float> %i.at, %i.aw           ; 3 uses
  %wide.trip.count491 = zext nneg i32 %i.z to i64
  %i.ay = extractelement <4 x float> %i.ax, i64 0
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = extractelement <2 x float> %i.dz, i64 1
  br label %.lr.ph475

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.sroa.0247.0459 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.dx, %bb.d ]
  %.0294453 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.es, %bb.d ]
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ef, %bb.d ]
  %i.bc = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.eq, %bb.d ]
  %i.bd = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.dz, %bb.d ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !84  ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0.i302, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !80
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !82
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %i.bo ; 2 uses
  %.sroa.0188.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 2 uses
  %.sroa.2189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2189.0.copyload = load float, ptr %.sroa.2189.0..sroa_idx, align 4
  %foldExtExtBinop = fsub <2 x float> %.sroa.0188.0.copyload, %.sroa.0243.0.copyload ; 6 uses
  %i.bq = insertelement <2 x float> %.sroa.0188.0.copyload, float %.sroa.2189.0.copyload, i64 0
  %i.br = fsub <2 x float> %i.bq, %i.af           ; 10 uses
  %foldExtExtBinop558 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bs = fmul <2 x float> %i.br, %i.br
  %i.bt = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bt, %i.br
  %shift = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop560 = fmul <2 x float> %shift, %i.br
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.in = phi i8 [ %i.bl, %bb.b ], [ %i.et, %bb.c ]
  %i.bx = phi i64 [ %i.bj, %bb.b ], [ %.pn, %bb.c ]
  %.1295 = phi float [ %.0294453, %bb.b ], [ %i.es, %bb.c ]
  %.sroa.0247.1 = phi <2 x float> [ %.sroa.0247.0459, %bb.b ], [ %i.dx, %bb.c ]
  %i.by = phi <4 x float> [ %i.bb, %bb.b ], [ %i.ef, %bb.c ]
  %i.bz = phi <2 x float> [ %i.bc, %bb.b ], [ %i.eq, %bb.c ]
  %i.ca = phi <2 x float> [ %i.bd, %bb.b ], [ %i.dz, %bb.c ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bx
  %.pn = zext i8 %.pn.in to i64                   ; 2 uses
  %.0298 = getelementptr inbounds nuw [4 x i8], ptr %.0.i302, i64 %.pn ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !82
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %i.ce ; 2 uses
  %.sroa.0160.0.copyload = load <2 x float>, ptr %i.cf, align 4 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.2161.0.copyload = load float, ptr %.sroa.2161.0..sroa_idx, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.0298, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !82
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %i.ci ; 2 uses
  %.sroa.0133.0.copyload = load <2 x float>, ptr %i.cj, align 4 ; 2 uses
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2134.0.copyload = load float, ptr %.sroa.2134.0..sroa_idx, align 4
  %i.ck = insertelement <2 x float> %.sroa.0160.0.copyload, float %.sroa.2161.0.copyload, i64 0
  %i.cl = fsub <2 x float> %i.ck, %i.af           ; 11 uses
  %i.cm = insertelement <2 x float> %.sroa.0133.0.copyload, float %.sroa.2134.0.copyload, i64 0
  %i.cn = fsub <2 x float> %i.cm, %i.af           ; 11 uses
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fmul <2 x float> %i.co, %i.cn           ; 2 uses
  %shift562 = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop563 = fsub <2 x float> %i.cp, %shift562
  %foldExtExtBinop565 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop563
  %i.cq = fadd <2 x float> %i.cl, %i.cn
  %i.cr = fadd <2 x float> %i.br, %i.cq           ; 7 uses
  %i.cs = fmul <2 x float> %i.cl, %i.cl
  %i.ct = fadd <2 x float> %i.bs, %i.cs
  %i.cu = fmul <2 x float> %i.cn, %i.cn
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = fmul <2 x float> %i.cr, %i.cr
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = shufflevector <2 x float> %.sroa.0160.0.copyload, <2 x float> %.sroa.0133.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cz = fsub <2 x float> %i.cy, %i.ag           ; 10 uses
  %shift567 = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop568 = fadd <2 x float> %i.cz, %shift567
  %foldExtExtBinop570 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop568 ; 4 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz           ; 2 uses
  %foldExtExtBinop572 = fadd <2 x float> %foldExtExtBinop558, %i.da
  %shift574 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop575 = fadd <2 x float> %foldExtExtBinop572, %shift574
  %foldExtExtBinop577 = fmul <2 x float> %foldExtExtBinop570, %foldExtExtBinop570
  %foldExtExtBinop579 = fadd <2 x float> %foldExtExtBinop575, %foldExtExtBinop577
  %i.db = fsub <2 x float> %i.cl, %i.br           ; 2 uses
  %i.dc = fsub <2 x float> %i.cn, %i.br           ; 2 uses
  %i.dd = shufflevector <2 x float> %i.cz, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.de = fsub <2 x float> %i.dd, %i.bw           ; 2 uses
  %i.df = shufflevector <2 x float> %i.cz, <2 x float> %i.cn, <2 x i32> <i32 1, i32 2>
  %i.dg = fsub <2 x float> %i.df, %i.bw           ; 2 uses
  %i.dh = fmul <2 x float> %i.db, %i.dg
  %i.di = fmul <2 x float> %i.de, %i.dc
  %i.dj = fsub <2 x float> %i.dh, %i.di           ; 2 uses
  %shift581 = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop582 = fmul <2 x float> %i.de, %shift581
  %shift584 = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop585 = fmul <2 x float> %shift584, %i.dg
  %foldExtExtBinop587 = fsub <2 x float> %foldExtExtBinop582, %foldExtExtBinop585 ; 2 uses
  %i.dk = fmul <2 x float> %i.dj, %i.dj           ; 2 uses
  %shift589 = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop590 = fadd <2 x float> %shift589, %i.dk
  %foldExtExtBinop592 = fmul <2 x float> %foldExtExtBinop587, %foldExtExtBinop587
  %foldExtExtBinop594 = fadd <2 x float> %foldExtExtBinop592, %foldExtExtBinop590
  %i.dl = extractelement <2 x float> %foldExtExtBinop594, i64 0
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.dl)
  %i.dm = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x float> %i.cz, %i.dm
  %i.do = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 3, i32 0>
  %i.dp = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = fmul <2 x float> %i.do, %i.dp
  %i.dr = fsub <2 x float> %i.dn, %i.dq
  %i.ds = fmul <2 x float> %i.br, %i.dr           ; 2 uses
  %shift596 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop597 = fadd <2 x float> %foldExtExtBinop565, %shift596
  %foldExtExtBinop599 = fadd <2 x float> %i.ds, %foldExtExtBinop597 ; 5 uses
  %i.dt = shufflevector <2 x float> %foldExtExtBinop599, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop601 = fmul <2 x float> %i.cr, %foldExtExtBinop599
  %i.du = shufflevector <2 x float> %foldExtExtBinop570, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.dv = shufflevector <2 x float> %foldExtExtBinop599, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dw = fmul <2 x float> %i.du, %i.dv
  %i.dx = fadd <2 x float> %.sroa.0247.1, %i.dw   ; 3 uses
  %i.dy = insertelement <2 x float> %foldExtExtBinop601, float %sqrt.i, i64 1
  %i.dz = fadd <2 x float> %i.ca, %i.dy           ; 4 uses
  %foldExtExtBinop603 = fmul <2 x float> %foldExtExtBinop579, %foldExtExtBinop599
  %i.ea = fmul <2 x float> %i.cx, %i.dv
  %i.eb = shufflevector <2 x float> %foldExtExtBinop603, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> %i.dt, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ed = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ef = fadd <4 x float> %i.by, %i.ee           ; 4 uses
  %i.eg = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.eg, %i.cl
  %i.ei = fadd <2 x float> %i.bu, %i.eh
  %i.ej = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = fmul <2 x float> %i.ej, %i.cn
  %i.el = fadd <2 x float> %i.ei, %i.ek
  %i.em = shufflevector <2 x float> %foldExtExtBinop570, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.em, %i.cr
  %i.eo = fadd <2 x float> %i.el, %i.en
  %i.ep = fmul <2 x float> %i.eo, %i.dv
  %i.eq = fadd <2 x float> %i.bz, %i.ep           ; 3 uses
  %shift605 = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop606 = fmul <2 x float> %shift605, %i.cl
  %foldExtExtBinop608 = fadd <2 x float> %foldExtExtBinop560, %foldExtExtBinop606
  %shift610 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop611 = fmul <2 x float> %shift610, %i.cn
  %foldExtExtBinop613 = fadd <2 x float> %foldExtExtBinop608, %foldExtExtBinop611
  %shift615 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop616 = fmul <2 x float> %shift615, %i.cr
  %foldExtExtBinop618 = fadd <2 x float> %foldExtExtBinop613, %foldExtExtBinop616
  %foldExtExtBinop620 = fmul <2 x float> %foldExtExtBinop618, %foldExtExtBinop599
  %i.er = extractelement <2 x float> %foldExtExtBinop620, i64 0
  %i.es = fadd float %.1295, %i.er                ; 3 uses
  %i.et = load i8, ptr %.0298, align 1, !tbaa !80 ; 2 uses
  %.not = icmp eq i8 %i.bf, %i.et
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !226

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !227

._crit_edge476:                                   ; preds = %.lr.ph475, %.thread
  %.sroa.026.0536 = phi <2 x float> [ zeroinitializer, %.thread ], [ %.sroa.026.0, %.lr.ph475 ]
  %.sroa.6.0535 = phi float [ 0.000000e+00, %.thread ], [ %.sroa.6.0, %.lr.ph475 ]
  %.0279.lcssa512527 = phi float [ 0.000000e+00, %.thread ], [ %i.ba, %.lr.ph475 ] ; 2 uses
  %.0283.lcssa = phi float [ f0x7F7FFFFF, %.thread ], [ %i.gs, %.lr.ph475 ] ; 2 uses
  %i.eu = phi <4 x float> [ zeroinitializer, %.thread ], [ %i.ef, %.lr.ph475 ] ; 5 uses
  %i.ev = phi <4 x float> [ %i.ae, %.thread ], [ %i.ax, %.lr.ph475 ] ; 4 uses
  %i.ew = phi <2 x float> [ splat (float -0.000000e+00), %.thread ], [ %i.ah, %.lr.ph475 ] ; 3 uses
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %shift622 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop623 = fadd <4 x float> %i.eu, %shift622
  %i.ey = extractelement <4 x float> %foldExtExtBinop623, i64 0
  %i.ez = shufflevector <4 x float> %i.eu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fa = shufflevector <4 x float> %i.eu, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fb = fadd <2 x float> %i.ez, %i.fa
  %i.fc = extractelement <4 x float> %i.eu, i64 3 ; 2 uses
  %i.fd = fdiv float %i.fc, 6.000000e+00          ; 3 uses
  %i.fe = fmul float %i.ey, f0x3C088889
  %i.ff = fmul <2 x float> %i.fb, splat (float f0x3C088889) ; 2 uses
  call void @b3Steiner(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %1, float noundef %i.fd, <2 x float> %.sroa.026.0536, float %.sroa.6.0535) #24
  %.sroa.0435.0.copyload = load float, ptr %1, align 8
  %.sroa.4436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.6438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.10442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.ex, ptr %i.fg, align 4, !tbaa !23
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fh = load <4 x float>, ptr %.sroa.4436.0..sroa_idx, align 4
  %i.fi = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float %i.fe, i64 1
  %i.fk = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fm = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.0435.0.copyload, i64 1
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fo = fsub <4 x float> %i.fl, %i.fn
  store <4 x float> %i.fo, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !23
  %.sroa.10395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fp = load <4 x float>, ptr %.sroa.6438.0..sroa_idx, align 4
  %i.fq = shufflevector <2 x float> %i.ew, <2 x float> %i.ff, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.fs = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <4 x float> %i.fr, <4 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fu = fsub <4 x float> %i.ft, %i.fp
  store <4 x float> %i.fu, ptr %.sroa.10395.0..sroa_idx, align 4, !tbaa !23
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fv = load <2 x float>, ptr %.sroa.10442.0..sroa_idx, align 4
  %i.fw = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fy = fsub <2 x float> %i.fx, %i.fv
  store <2 x float> %i.fy, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !23
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.fd, ptr %i.fz, align 4, !tbaa !89
  %i.ga = fmul float %.0279.lcssa512527, 5.000000e-01
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ga, ptr %i.gb, align 8, !tbaa !229
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.0283.lcssa, ptr %i.gc, align 8, !tbaa !90
  %i.gd = fcmp ugt float %i.fd, 0.000000e+00
  %i.ge = fcmp ugt float %i.fc, 0.000000e+00
  %or.cond = and i1 %i.ge, %i.gd
  %i.gf = fcmp ugt float %.0279.lcssa512527, 0.000000e+00
  %or.cond300 = select i1 %or.cond, i1 %i.gf, i1 false
  %i.gg = fcmp ugt float %.0283.lcssa, 0.000000e+00
  %.0 = select i1 %or.cond300, i1 %i.gg, i1 false
  ret i1 %.0

.lr.ph475:                                        ; preds = %._crit_edge, %.lr.ph475
  %indvars.iv488 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next489, %.lr.ph475 ] ; 2 uses
  %.0283472 = phi float [ f0x7F7FFFFF, %._crit_edge ], [ %i.gs, %.lr.ph475 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.0.i303, i64 %indvars.iv488 ; 2 uses
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.gh, align 4, !tbaa !23 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23 ; 2 uses
  %.sroa.04.0.vec.extract.i.i380 = extractelement <2 x float> %.sroa.06.0.copyload, i64 0
  %i.gi = fmul float %i.ay, %.sroa.04.0.vec.extract.i.i380
  %i.gj = shufflevector <2 x float> %.sroa.06.0.copyload, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.gk = fmul <2 x float> %i.az, %i.gj           ; 2 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0
  %i.gm = fadd float %i.gi, %i.gl
  %i.gn = extractelement <2 x float> %i.gk, i64 1
  %i.go = fadd float %i.gn, %i.gm
  %.sroa.28.12.vec.extract.i = extractelement <2 x float> %.sroa.4.0.copyload, i64 1
  %i.gp = fsub float %i.go, %.sroa.28.12.vec.extract.i
  %i.gq = fneg float %i.gp                        ; 2 uses
  %i.gr = fcmp olt float %.0283472, %i.gq
  %i.gs = select i1 %i.gr, float %.0283472, float %i.gq ; 2 uses
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %._crit_edge476, label %.lr.ph475, !llvm.loop !228
}

; Function Attrs: nounwind uwtable
define void @b3DestroyHull(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74
  %i.c = sext i32 %i.b to i64
  tail call void @b3Free(ptr noundef %0, i64 noundef %i.c) #24
  ret void
}

declare i64 @b3Hash64NonZero(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @b3CloneHull(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
end_hunk_0
begin_hunk_1_@b3CollideMoverAndHull:bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, <2 x float> } @b3ComputeHullExtent(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3ShapeExtent, align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sext i32 %i.b to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %.0.i = select i1 %i.c, ptr null, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load float, ptr %i.h, align 8, !tbaa !90
  store float %i.i, ptr %3, align 8, !tbaa !307
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.12..sroa_idx, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %.12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.z, ptr %.12..12..12..12..sroa_idx, align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.08.4.vec.insert.i4651.lcssa = phi <2 x float> [ %i.x, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x float> %.sroa.08.4.vec.insert.i4651.lcssa, ptr %.4..sroa_idx, align 4
  %.0..0..0..0..fca.0.load = load <2 x float>, ptr %3, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.0..0..0..0..fca.0.load, 0
  %.8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.8..8..8..8..fca.1.load = load <2 x float>, ptr %.8..8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.8..8..8..8..fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = phi float [ 0.000000e+00, %.lr.ph ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.08.4.vec.insert.i465152 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.x, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %indvars.iv ; 2 uses
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.n, align 4, !tbaa !23
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.425.0.copyload = load float, ptr %.sroa.425.0..sroa_idx, align 4, !tbaa !23
  %i.o = fsub float %.sroa.425.0.copyload, %2     ; 3 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %i.q = fneg float %i.o
  %i.r = select i1 %i.p, float %i.q, float %i.o   ; 2 uses
  %i.s = fsub <2 x float> %.sroa.024.0.copyload, %1 ; 3 uses
  %i.t = fcmp olt <2 x float> %i.s, zeroinitializer
  %i.u = fneg <2 x float> %i.s
  %i.v = select <2 x i1> %i.t, <2 x float> %i.u, <2 x float> %i.s ; 2 uses
  %i.w = fcmp ogt <2 x float> %.sroa.08.4.vec.insert.i465152, %i.v
  %i.x = select <2 x i1> %i.w, <2 x float> %.sroa.08.4.vec.insert.i465152, <2 x float> %i.v ; 2 uses
  %i.y = fcmp ogt float %i.m, %i.r
  %i.z = select i1 %i.y, float %i.m, float %i.r   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !305
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden float @b3ComputeHullProjectedArea(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.f = sext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, %i.e
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = sext i32 %i.j to i64
  %i.m = add nsw i64 %i.l, %i.e
  %i.n = inttoptr i64 %i.m to ptr
  %.0.i73 = select i1 %i.k, ptr null, ptr %i.n    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = sext i32 %i.p to i64
  %i.s = add nsw i64 %i.r, %i.e
  %i.t = inttoptr i64 %i.s to ptr
  %.0.i74 = select i1 %i.q, ptr null, ptr %i.t    ; 3 uses
  %i.u = icmp sgt i32 %i.b, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.w = fmul float %i.bn, 5.000000e-01
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.088 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bn, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !84    ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.0.i73, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !82
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %.0.i74, i64 %i.ad ; 2 uses
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.ae, align 4, !tbaa !23 ; 2 uses
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.540.0.copyload = load float, ptr %.sroa.540.0..sroa_idx, align 4, !tbaa !23
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !80
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i73, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !82
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.0.i74, i64 %i.ak ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.al, align 4, !tbaa !23
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.535.0.copyload = load float, ptr %.sroa.535.0..sroa_idx, align 4, !tbaa !23
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !80
  %i.an = insertelement <2 x float> poison, float %.sroa.540.0.copyload, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.034.0 = phi <2 x float> [ %.sroa.034.0.copyload, %bb.b ], [ %.sroa.030.0.copyload, %bb.c ] ; 2 uses
  %.sroa.535.0 = phi float [ %.sroa.535.0.copyload, %bb.b ], [ %.sroa.5.0.copyload, %bb.c ]
  %.072.in = phi i8 [ %i.am, %bb.b ], [ %i.bo, %bb.c ]
  %.1 = phi float [ %.088, %bb.b ], [ %i.bn, %bb.c ]
  %i.ap = zext i8 %.072.in to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i73, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !82
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %.0.i74, i64 %i.at ; 2 uses
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.au, align 4, !tbaa !23 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !23 ; 2 uses
  %i.av = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> %.sroa.034.0, <2 x i32> <i32 0, i32 3>
  %i.aw = fsub <2 x float> %i.av, %.sroa.038.0.copyload ; 3 uses
  %i.ax = shufflevector <2 x float> %.sroa.034.0, <2 x float> %.sroa.030.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ay = fsub <2 x float> %i.ax, %.sroa.038.0.copyload ; 3 uses
  %i.az = insertelement <2 x float> poison, float %.sroa.535.0, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %.sroa.5.0.copyload, i64 1
  %i.bb = fsub <2 x float> %i.ba, %i.ao           ; 2 uses
  %i.bc = fmul <2 x float> %i.bb, %i.aw
  %i.bd = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.be = fmul <2 x float> %i.ay, %i.bd
  %i.bf = fsub <2 x float> %i.bc, %i.be
  %shift = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ay, %shift
  %shift91 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop92 = fmul <2 x float> %shift91, %i.aw
  %foldExtExtBinop94 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop92
  %i.bg = extractelement <2 x float> %foldExtExtBinop94, i64 0
  %i.bh = fmul <2 x float> %i.v, %i.bf            ; 2 uses
  %shift96 = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop97 = fadd <2 x float> %shift96, %i.bh
  %i.bi = extractelement <2 x float> %foldExtExtBinop97, i64 0
  %i.bj = fmul float %2, %i.bg
  %i.bk = fadd float %i.bj, %i.bi                 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 0.000000e+00
  %i.bm = select i1 %i.bl, float %i.bk, float 0.000000e+00
  %i.bn = fadd float %.1, %i.bm                   ; 3 uses
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !80  ; 2 uses
  %.not = icmp eq i8 %i.bo, %i.y
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !308

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !309
}

; Function Attrs: nounwind uwtable
define void @b3MakeTransformedBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.b3Matrix3, align 8          ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) @__const.b3MakeTransformedBoxHull.boxHull, i64 640, i1 false)
  %i.a = tail call float @b3GetLengthUnitsPerMeter() #24
  %6 = fmul float %i.a, 5.000000e-03
  %i.b = fmul float %6, 2.000000e-01              ; 3 uses
  %7 = fcmp ogt float %i.b, %3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0652.sroa.0.0.copyload = load <2 x float>, ptr %4, align 8 ; 13 uses
  %.sroa.0652.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0652.sroa.4.0.copyload = load float, ptr %.sroa.0652.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.4653.0.copyload = load <2 x float>, ptr %.sroa.4653.0..sroa_idx, align 4 ; 23 uses
  %.sroa.5656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.5656.0.copyload = load <2 x float>, ptr %.sroa.5656.0..sroa_idx, align 4 ; 17 uses
  %i.d = shufflevector <2 x float> %.sroa.5656.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.5656.0.copyload, i64 0 ; 14 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.4653.0.copyload, i64 0 ; 15 uses
  %.sroa.03.0.vec.extract.i311 = extractelement <2 x float> %.sroa.0652.sroa.0.0.copyload, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract.i313 = extractelement <2 x float> %.sroa.0652.sroa.0.0.copyload, i64 1 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.5656.0.copyload, %.sroa.5656.0.copyload
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.g = insertelement <2 x float> poison, float %1, i64 0
  %i.h = insertelement <2 x float> %i.g, float %2, i64 1 ; 2 uses
  %i.i = fcmp ogt <2 x float> %i.f, %i.h
  %i.j = select <2 x i1> %i.i, <2 x float> %i.f, <2 x float> %i.h ; 21 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 8 uses
  %i.l = fneg float %i.k                          ; 2 uses
  %i.m = fsub <2 x float> %i.j, %i.j
  %i.n = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.o = fmul <2 x float> %i.m, splat (float 5.000000e-01) ; 4 uses
  %foldExtExtBinop732.a = fmul <2 x float> %.sroa.5656.0.copyload, %i.o
  %i.p = shufflevector <2 x float> %.sroa.4653.0.copyload, <2 x float> %.sroa.5656.0.copyload, <2 x i32> <i32 1, i32 2> ; 7 uses
  %i.q = fmul <2 x float> %i.p, %i.o
  %i.r = shufflevector <2 x float> %.sroa.5656.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.s = shufflevector <2 x float> %.sroa.5656.0.copyload, <2 x float> %.sroa.4653.0.copyload, <2 x i32> <i32 0, i32 2> ; 5 uses
  %i.t = fmul <2 x float> %.sroa.4653.0.copyload, %.sroa.4653.0.copyload ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fadd <2 x float> %i.u, %i.v
  %i.x = fmul <2 x float> %i.w, splat (float 2.000000e+00)
  %i.y = fsub <2 x float> splat (float 1.000000e+00), %i.x ; 10 uses
  %i.z = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.aa = fmul float %i.z, 2.000000e+00
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 8 uses
  %i.ac = fcmp olt <2 x float> %i.y, zeroinitializer
  %i.ad = fneg <2 x float> %i.y
  %i.ae = select <2 x i1> %i.ac, <2 x float> %i.ad, <2 x float> %i.y
  %i.af = fcmp olt float %i.ab, 0.000000e+00
  %i.ag = fneg float %i.ab
  %i.ah = select i1 %i.af, float %i.ag, float %i.ab
  %i.ai = fadd <2 x float> %i.j, %i.j
  %i.aj = fmul <2 x float> %i.ai, splat (float 5.000000e-01) ; 4 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = fmul <2 x float> %i.aj, %i.ae
  %i.am = extractelement <2 x float> %i.aj, i64 0
  %i.an = extractelement <2 x float> %i.aj, i64 1
  %.sroa.4649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.6651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.8725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.9726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.11728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop734 = fmul <2 x float> %.sroa.4653.0.copyload, %.sroa.5656.0.copyload
  %i.av = extractelement <2 x float> %foldExtExtBinop734, i64 0 ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.4.0..sroa_idx645 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.az = fneg float %.sroa.3.8.vec.extract.i
  %i.ba = fmul float %.sroa.011.0.vec.extract.i.i, -0.000000e+00 ; 3 uses
  %i.bb = fsub float %i.az, %i.ba
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.4653.0.copyload, i64 1 ; 16 uses
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.5656.0.copyload, i64 1 ; 10 uses
  %8 = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.011.4.vec.extract.i.i ; 2 uses
  %9 = fmul float %.sroa.3.8.vec.extract.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.bd = select i1 %7, float %i.b, float %3      ; 14 uses
  %i.be = fneg float %i.bd                        ; 4 uses
  %i.bf = insertelement <2 x float> %i.n, float %i.bd, i64 0 ; 2 uses
  %i.bg = fsub <2 x float> %i.bf, %i.bf
  %i.bh = fmul <2 x float> %i.bg, splat (float 5.000000e-01) ; 4 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %foldExtExtBinop736 = fmul <2 x float> %.sroa.4653.0.copyload, %i.bh
  %foldExtExtBinop738 = fsub <2 x float> %foldExtExtBinop732.a, %foldExtExtBinop736
  %i.bj = shufflevector <2 x float> %i.o, <2 x float> %i.bh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bk = fmul <2 x float> %.sroa.4653.0.copyload, %i.bj
  %i.bl = fsub <2 x float> %i.bk, %i.q            ; 2 uses
  %i.bm = fmul <2 x float> %i.r, %i.bh
  %i.bn = fmul <2 x float> %i.r, %i.bj
  %i.bo = fadd <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bq = shufflevector <2 x float> %foldExtExtBinop738, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = fadd <2 x float> %i.bn, %i.bq           ; 2 uses
  %i.bs = fmul <2 x float> %i.p, %i.bo
  %i.bt = fmul <2 x float> %i.s, %i.br
  %i.bu = fsub <2 x float> %i.bs, %i.bt
  %foldExtExtBinop740 = fmul <2 x float> %.sroa.4653.0.copyload, %i.br
  %foldExtExtBinop742 = fmul <2 x float> %.sroa.4653.0.copyload, %i.bo
  %shift = shufflevector <2 x float> %foldExtExtBinop742, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop744 = fsub <2 x float> %foldExtExtBinop740, %shift
  %i.bv = extractelement <2 x float> %foldExtExtBinop744, i64 0
  %i.bw = fmul <2 x float> %i.bu, splat (float 2.000000e+00)
  %i.bx = fadd <2 x float> %i.o, %i.bw
  %i.by = fmul float %i.bv, 2.000000e+00
  %i.bz = fadd float %i.bi, %i.by
  %i.ca = fadd <2 x float> %.sroa.0652.sroa.0.0.copyload, %i.bx ; 2 uses
  %i.cb = fadd float %.sroa.0652.sroa.4.0.copyload, %i.bz ; 2 uses
  %i.cc = fadd float %8, %9
  %i.cd = fsub float %8, %9
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.cc, i64 1
  %i.cg = fmul <2 x float> %i.cf, splat (float 2.000000e+00) ; 10 uses
  %i.ch = fcmp olt <2 x float> %i.cg, zeroinitializer
  %i.ci = fneg <2 x float> %i.cg
  %i.cj = select <2 x i1> %i.ch, <2 x float> %i.ci, <2 x float> %i.cg
  %i.ck = fmul float %i.bd, 2.000000e+00
  %i.cl = fmul float %i.ck, 5.000000e-01          ; 2 uses
  %i.cm = fmul <2 x float> %i.ak, %i.cj
  %i.cn = fadd <2 x float> %i.cm, %i.al
  %i.co = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul float %i.cl, %i.ah
  %i.cr = fmul float %i.k, %i.bd
  %i.cs = fcmp olt float %i.k, %i.bd
  %i.ct = select i1 %i.cs, float %i.k, float %i.bd ; 2 uses
  %i.cu = extractelement <2 x float> %i.cg, i64 0
  %i.cv = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.cy = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.3.8.vec.extract.i ; 2 uses
  %i.cz = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.da = fsub float %i.av, %i.cz
  %i.db = fmul float %i.da, 2.000000e+00          ; 7 uses
  %i.dc = fadd float %i.cy, %i.cx
  %i.dd = fmul float %i.dc, 2.000000e+00          ; 7 uses
  %i.de = fadd float %i.av, %i.cz
  %i.df = fsub float %i.cy, %i.cx
  %i.dg = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.df, i64 1
  %i.di = fmul <2 x float> %i.dh, splat (float 2.000000e+00) ; 9 uses
  %i.dj = fcmp olt float %i.db, 0.000000e+00
  %i.dk = fneg float %i.db
  %i.dl = select i1 %i.dj, float %i.dk, float %i.db
  %i.dm = fcmp olt float %i.dd, 0.000000e+00
  %i.dn = fneg float %i.dd
  %i.do = select i1 %i.dm, float %i.dn, float %i.dd
  %i.dp = fcmp olt <2 x float> %i.di, zeroinitializer
  %i.dq = fneg <2 x float> %i.di
  %i.dr = select <2 x i1> %i.dp, <2 x float> %i.dq, <2 x float> %i.di
  %i.ds = fmul <2 x float> %i.cp, %i.dr
  %i.dt = fadd <2 x float> %i.ds, %i.cn           ; 2 uses
  %i.du = fmul float %i.am, %i.dl
  %i.dv = fmul float %i.an, %i.do
  %i.dw = fadd float %i.du, %i.dv
  %i.dx = fadd float %i.cq, %i.dw                 ; 2 uses
  %i.dy = fsub <2 x float> %i.ca, %i.dt
  %i.dz = fsub float %i.cb, %i.dx
  %i.ea = fadd <2 x float> %i.ca, %i.dt
  %i.eb = fadd float %i.dx, %i.cb
  store <2 x float> %i.dy, ptr %i.c, align 8, !tbaa !23
  store float %i.dz, ptr %.sroa.4649.0..sroa_idx, align 8, !tbaa !23
  store <2 x float> %i.ea, ptr %.sroa.5650.0..sroa_idx, align 4, !tbaa !23
  store float %i.eb, ptr %.sroa.6651.0..sroa_idx, align 4, !tbaa !23
  %i.ec = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.ed = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.ee = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ef = insertelement <2 x float> poison, float %i.db, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <2 x float> %i.cg, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.el = fmul <2 x float> %i.p, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.en = fmul <2 x float> %i.r, <float 0.000000e+00, float 1.000000e+00> ; 4 uses
  %i.eo = fmul <2 x float> %.sroa.4653.0.copyload, zeroinitializer ; 6 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %foldExtExtBinop746 = fsub <2 x float> %.sroa.5656.0.copyload, %i.eo
  %i.eq = fsub <2 x float> %i.eo, %i.el
  %i.er = extractelement <2 x float> %i.en, i64 0 ; 6 uses
  %foldExtExtBinop748 = fadd <2 x float> %i.en, %foldExtExtBinop746 ; 2 uses
  %i.es = fadd <2 x float> %i.en, %i.eq           ; 3 uses
  %i.et = fmul <2 x float> %i.p, %i.es
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ev = shufflevector <2 x float> %foldExtExtBinop748, <2 x float> %i.eu, <2 x i32> <i32 0, i32 3>
  %i.ew = fmul <2 x float> %i.s, %i.ev
  %i.ex = fsub <2 x float> %i.et, %i.ew
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ez = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fa = fmul <4 x float> %i.ez, <float -0.000000e+00, float -0.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.fb = fadd <4 x float> %i.fa, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.fc = shufflevector <2 x float> %i.j, <2 x float> %.sroa.0652.sroa.0.0.copyload, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.fd = insertelement <4 x float> %i.fc, float %i.bd, i64 1
  %i.fe = fmul <4 x float> %i.fd, %i.fb           ; 5 uses
  %i.ff = extractelement <4 x float> %i.fe, i64 0
  %i.fg = extractelement <4 x float> %i.fe, i64 1 ; 2 uses
  %i.fh = fmul float %.sroa.011.4.vec.extract.i.i, -0.000000e+00 ; 2 uses
  %i.fi = extractelement <2 x float> %i.el, i64 1 ; 5 uses
  %i.fj = fadd float %i.fh, %i.fi
  %i.fk = fsub float %.sroa.011.4.vec.extract.i.i, %i.ep
  %i.fl = fsub float %i.fj, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.fm = fsub float %i.bb, %i.er                 ; 2 uses
  %i.fn = fmul float %.sroa.3.12.vec.extract.i, -0.000000e+00 ; 2 uses
  %i.fo = fadd float %i.fn, %i.fk                 ; 2 uses
  %i.fp = fmul float %.sroa.011.4.vec.extract.i.i, %i.fo
  %i.fq = fmul float %.sroa.3.8.vec.extract.i, %i.fm
  %i.fr = fsub float %i.fp, %i.fq
  %i.fs = fmul float %.sroa.3.8.vec.extract.i, %i.fl
  %i.ft = fmul float %.sroa.011.0.vec.extract.i.i, %i.fo
  %i.fu = fsub float %i.fs, %i.ft
  %i.fv = fmul float %.sroa.011.0.vec.extract.i.i, %i.fm
  %i.fw = fmul float %.sroa.011.4.vec.extract.i.i, %i.fl
  %i.fx = fsub float %i.fv, %i.fw
  %i.fy = fmul float %i.fr, 2.000000e+00
  %i.fz = fadd float %i.fy, -1.000000e+00         ; 2 uses
  %.sroa.010.0.vec.insert.i60.i.i = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.ga = fmul float %i.fu, 2.000000e+00          ; 2 uses
  %.sroa.010.4.vec.insert.i63.i.i = insertelement <2 x float> %.sroa.010.0.vec.insert.i60.i.i, float %i.ga, i64 1
  %i.gb = fmul float %i.fx, 2.000000e+00          ; 2 uses
  %.sroa.211.8.vec.insert.i371 = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gc = fmul float %.sroa.03.0.vec.extract.i311, %i.fz
  %i.gd = fmul float %.sroa.03.4.vec.extract.i313, %i.ga
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = fmul float %.sroa.0652.sroa.4.0.copyload, %i.gb
  %i.gg = fadd float %i.gf, %i.ge
  %foldExtExtBinop750 = fmul <2 x float> %.sroa.4653.0.copyload, %foldExtExtBinop748
  %foldExtExtBinop752 = fmul <2 x float> %.sroa.4653.0.copyload, %i.es
  %shift754 = shufflevector <2 x float> %foldExtExtBinop752, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop755 = fsub <2 x float> %foldExtExtBinop750, %shift754
  %i.gh = extractelement <2 x float> %foldExtExtBinop755, i64 0
  %i.gi = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gj = fmul float %i.gh, 2.000000e+00
  %i.gk = fadd float %i.gj, 0.000000e+00          ; 2 uses
  %.sroa.211.8.vec.insert.i391 = insertelement <2 x float> poison, float %i.gk, i64 0
  %shift757 = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop758 = fadd <4 x float> %i.fe, %shift757
  %i.gl = extractelement <4 x float> %foldExtExtBinop758, i64 2
  %i.gm = fmul float %.sroa.0652.sroa.4.0.copyload, %i.gk
  %i.gn = fadd float %i.gm, %i.gl
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.gp = fadd float %i.fh, %.sroa.3.8.vec.extract.i
  %i.gq = fmul float %.sroa.3.8.vec.extract.i, -0.000000e+00
  %i.gr = fsub float %i.gq, %i.ba
  %i.gs = extractelement <2 x float> %i.eo, i64 1 ; 3 uses
  %i.gt = fsub float %i.gs, %.sroa.011.0.vec.extract.i.i
  %i.gu = fsub float %i.gp, %i.er                 ; 2 uses
  %i.gv = fsub float %i.gr, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.gw = fadd float %i.fn, %i.gt                 ; 2 uses
  %i.gx = fmul float %.sroa.011.4.vec.extract.i.i, %i.gw
  %i.gy = fmul float %.sroa.3.8.vec.extract.i, %i.gv
  %i.gz = fsub float %i.gx, %i.gy
  %i.ha = fmul float %.sroa.3.8.vec.extract.i, %i.gu
  %i.hb = fmul float %.sroa.011.0.vec.extract.i.i, %i.gw
  %i.hc = fsub float %i.ha, %i.hb
  %i.hd = fmul float %.sroa.011.0.vec.extract.i.i, %i.gv
  %i.he = fmul float %.sroa.011.4.vec.extract.i.i, %i.gu
  %i.hf = fsub float %i.hd, %i.he
  %i.hg = fmul float %i.gz, 2.000000e+00          ; 2 uses
  %.sroa.010.0.vec.insert.i60.i.i416 = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hh = fmul float %i.hc, 2.000000e+00
  %i.hi = fadd float %i.hh, -1.000000e+00         ; 2 uses
  %.sroa.010.4.vec.insert.i63.i.i417 = insertelement <2 x float> %.sroa.010.0.vec.insert.i60.i.i416, float %i.hi, i64 1
  %i.hj = fmul float %i.hf, 2.000000e+00          ; 2 uses
  %.sroa.211.8.vec.insert.i418 = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hk = fmul float %.sroa.03.0.vec.extract.i311, %i.hg
  %i.hl = fmul float %.sroa.03.4.vec.extract.i313, %i.hi
  %i.hm = fadd float %i.hk, %i.hl
  %i.hn = fmul float %.sroa.0652.sroa.4.0.copyload, %i.hj
  %i.ho = fadd float %i.hn, %i.hm
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.hq = extractelement <2 x float> %i.j, i64 0  ; 7 uses
  %i.hr = fneg float %i.hq                        ; 2 uses
  %.sroa.04.0.vec.insert.i = insertelement <2 x float> poison, float %i.hr, i64 0 ; 2 uses
  %.sroa.04.4.vec.insert.i = insertelement <2 x float> %.sroa.04.0.vec.insert.i, float %i.l, i64 1
  %i.hs = fmul float %i.hq, %i.k
  %i.ht = fmul float %i.hq, 8.000000e+00
  %i.hu = fmul float %i.k, %i.ht
  %i.hv = fmul float %i.hq, %i.bd
  %i.hw = fadd float %i.hs, %i.hv
  %i.hx = fadd float %i.cr, %i.hw
  %i.hy = fmul float %i.hx, 8.000000e+00
  store float %i.hy, ptr %i.ao, align 8, !tbaa !311
  %i.hz = fmul float %i.bd, %i.hu                 ; 2 uses
  store float %i.hz, ptr %i.ap, align 4, !tbaa !312
  %i.ia = fcmp olt float %i.hq, %i.ct
  %i.ib = select i1 %i.ia, float %i.hq, float %i.ct
  store float %i.ib, ptr %i.aq, align 8, !tbaa !313
  call void @b3BoxInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %5, float noundef %i.hz, <2 x float> %.sroa.04.4.vec.insert.i, float %i.be, <2 x float> %i.j, float %i.bd) #24
  %.sroa.5722.0.copyload = load float, ptr %.sroa.5722.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8725.0.copyload = load float, ptr %.sroa.8725.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11728.0.copyload = load float, ptr %.sroa.11728.0..sroa_idx, align 8 ; 3 uses
  %i.ic = fmul float %i.ec, %.sroa.11728.0.copyload
  %i.id = fmul float %i.ed, %.sroa.11728.0.copyload
  %i.ie = fmul float %i.db, %.sroa.5722.0.copyload
  %i.if = fmul float %i.dd, %.sroa.8725.0.copyload
  %i.ig = fadd float %i.ie, %i.if
  %i.ih = fmul float %i.ab, %.sroa.11728.0.copyload
  %i.ii = fadd float %i.ig, %i.ih                 ; 3 uses
  %i.ij = load <2 x float>, ptr %5, align 8       ; 3 uses
  %i.ik = load <2 x float>, ptr %.sroa.6723.0..sroa_idx, align 4 ; 3 uses
  %i.il = load <2 x float>, ptr %.sroa.9726.0..sroa_idx, align 8 ; 3 uses
  %i.im = fmul <2 x float> %i.cv, %i.ij
  %i.in = fmul <2 x float> %i.at, %i.ik
  %i.io = fadd <2 x float> %i.im, %i.in
  %i.ip = fmul <2 x float> %i.ee, %i.il
end_hunk_1
