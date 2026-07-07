inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.hb = insertelement <4 x float> %i.ev, float %i.ba, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hc, <4 x float> %i.gz)
  %i.he = fmul <4 x float> %i.ed, %i.hd
  %i.hf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.a, i64 1
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hi = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hi, <4 x float> %i.he)
  %i.hk = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.hk, <4 x float> %i.hj)
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(140) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 1040
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.k = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.o, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.n = phi ptr [ %i.c, %.lr.ph ], [ %i.v, %bb.e ] ; 3 uses
  %i.o = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.not48 = icmp eq i64 %indvars.iv, %i.k
  br i1 %.not48, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.j, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre117 = load ptr, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.v = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %.pre117, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 1040
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !62

bb.f:                                             ; preds = %._crit_edge
  %i.ad = zext i32 %i.m to i64                    ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 5 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 1040
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.aq = zext i32 %1 to i64
  br label %bb.g

._crit_edge111.loopexit:                          ; preds = %bb.n
  %.pre120 = load i32, ptr %i.l, align 8
  %.pre121 = load ptr, ptr %i.ag, align 8
  %.pre122 = zext i32 %.pre120 to i64
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre122, %._crit_edge111.loopexit ], [ %i.ad, %bb.f ]
  %i.ar = phi ptr [ %.pre121, %._crit_edge111.loopexit ], [ %i.af, %bb.f ]
  %i.as = sub nsw i64 0, %.pre-phi
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  store ptr %i.at, ptr %i.ag, align 8
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph110, %bb.n
  %i.au = phi ptr [ %i.ai, %.lr.ph110 ], [ %i.dv, %bb.n ] ; 3 uses
  %i.av = phi ptr [ %i.ah, %.lr.ph110 ], [ %i.dw, %bb.n ] ; 2 uses
  %indvars.iv114 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next115, %bb.n ] ; 5 uses
  %.not47 = icmp eq i64 %indvars.iv114, %i.aq
  br i1 %.not47, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [1040 x i8], ptr %i.au, i64 %indvars.iv114
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1028
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, %1
  br i1 %i.az, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27 ; 19 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ba)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.ag, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %3, align 8
  %i.be = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %indvars.iv114 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 1023) ; 4 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = zext nneg i32 %spec.select.i to i64     ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.bg, i64 %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bh
  store i8 0, ptr %i.bi, align 1
  store i32 %spec.select.i, ptr %i.ba, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr nonnull align 4 %i.ap, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 1096
  store ptr %2, ptr %i.bl, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNK8aiStringneERKS_.exit.thread, %bb.j
  %.0 = phi ptr [ %4, %bb.j ], [ %i.bq, %_ZNK8aiStringneERKS_.exit.thread ] ; 2 uses
  %i.bm = load ptr, ptr %.0, align 8              ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, %spec.select.i
  br i1 %i.bo, label %_ZNK8aiStringneERKS_.exit, label %_ZNK8aiStringneERKS_.exit.thread

_ZNK8aiStringneERKS_.exit:                        ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.bp, ptr nonnull %i.bj, i64 %i.bh)
  %.not104 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not104, label %bb.m, label %_ZNK8aiStringneERKS_.exit.thread

_ZNK8aiStringneERKS_.exit.thread:                 ; preds = %bb.k, %_ZNK8aiStringneERKS_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.k, !llvm.loop !63

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 1144) #24
  resume { ptr, i32 } %i.br

bb.m:                                             ; preds = %_ZNK8aiStringneERKS_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 1032
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 1028 ; 2 uses
  store float 1.000000e+00, ptr %i.bv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1052 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1068 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1072 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1088 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.bw = load float, ptr %i.bu, align 4          ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1040 ; 2 uses
  store float %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bz = load float, ptr %i.by, align 4          ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 1056 ; 2 uses
  store float %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cc = load float, ptr %i.cb, align 4          ; 3 uses
  store float %i.cc, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 1048
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load float, ptr %i.cf, align 4, !noalias !64 ; 4 uses
  %i.cj = fneg float %i.ci                        ; 3 uses
  %.sroa.1270.0..sroa_idx71.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 1036
  %.sroa.2082.0..sroa_idx83.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 1044
  %.sroa.2285.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %i.ck = fadd float %i.bw, 0.000000e+00
  %i.cl = fadd float %i.bz, 0.000000e+00
  %i.cm = load <2 x float>, ptr %i.cg, align 4, !noalias !64 ; 5 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %6 = load <2 x float>, ptr %i.ch, align 4, !noalias !64 ; 8 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.co = extractelement <2 x float> %6, i64 1    ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.cj, i64 0
  %9 = insertelement <2 x float> %8, float %i.ci, i64 1
  %10 = fmul <2 x float> %i.cn, %9
  %11 = shufflevector <2 x float> %6, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %11, <2 x float> %10)
  %13 = fmul <2 x float> %12, splat (float 2.000000e+00) ; 5 uses
  %14 = extractelement <2 x float> %6, i64 0      ; 2 uses
  %15 = fmul float %14, %i.cj
  %16 = insertelement <2 x float> %11, float -2.000000e+00, i64 0
  %17 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %15, i64 1
  %18 = fmul float %14, %i.ci
  %19 = shufflevector <2 x float> %i.cm, <2 x float> %6, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %20 = insertelement <4 x float> %19, float %i.ci, i64 0
  %21 = insertelement <4 x float> %20, float %i.cj, i64 1
  %22 = fmul <4 x float> %19, %21                 ; 2 uses
  %23 = extractelement <4 x float> %22, i64 2
  %24 = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %24, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %26 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> zeroinitializer
  %27 = shufflevector <2 x float> %6, <2 x float> %i.cm, <4 x i32> <i32 1, i32 3, i32 0, i32 0>
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %27, <4 x float> %22) ; 3 uses
  %29 = extractelement <4 x float> %28, i64 0
  %i.cp = fmul float %29, 2.000000e+00            ; 2 uses
  %30 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %31 = shufflevector <2 x float> %30, <2 x float> %6, <2 x i32> <i32 0, i32 3>
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %16, <2 x float> %17) ; 2 uses
  %i.cq = fmul <2 x float> %32, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.cr = extractelement <4 x float> %28, i64 1
  %33 = fmul float %i.cr, 2.000000e+00            ; 3 uses
  %34 = shufflevector <2 x float> %7, <2 x float> %30, <2 x i32> <i32 0, i32 3>
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> <float poison, float -2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ct = insertelement <2 x float> <float poison, float 1.000000e+00>, float %18, i64 0
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.cs, <2 x float> %i.ct) ; 3 uses
  %i.cv = fmul <2 x float> %i.cu, <float 2.000000e+00, float 1.000000e+00> ; 3 uses
  %i.cw = fmul float %i.cp, 0.000000e+00          ; 2 uses
  %35 = fmul <2 x float> %i.cq, zeroinitializer   ; 3 uses
  %36 = extractelement <2 x float> %13, i64 1
  %foldExtExtBinop = fadd <2 x float> %13, %35
  %37 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %38 = extractelement <2 x float> %i.cu, i64 1   ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %37)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bw, float 0.000000e+00, float %i.cx)
  %39 = extractelement <2 x float> %i.cq, i64 1
  %i.cz = tail call float @llvm.fmuladd.f32(float %36, float 0.000000e+00, float %39)
  %i.da = tail call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %i.cz)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bz, float 0.000000e+00, float %i.da)
  %i.dc = tail call float @llvm.fmuladd.f32(float %25, float 0.000000e+00, float %i.cw) ; 2 uses
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> zeroinitializer, <2 x float> %35) ; 3 uses
  %foldExtExtBinop128 = fadd <2 x float> %i.cu, %40
  %41 = insertelement <2 x float> poison, float %i.cc, i64 0 ; 2 uses
  %42 = insertelement <2 x float> %41, float %33, i64 1
  %43 = shufflevector <2 x float> %foldExtExtBinop128, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %44 = insertelement <2 x float> %43, float %i.dc, i64 1
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> zeroinitializer, <2 x float> %44) ; 2 uses
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> zeroinitializer, <2 x float> %40)
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.de = insertelement <4 x float> %46, float %i.cc, i64 0
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dh = fadd <4 x float> %i.dg, zeroinitializer
  %foldExtExtBinop130 = fadd <2 x float> %35, %13
  %47 = fadd float %25, %i.cw
  %48 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %49 = insertelement <2 x float> %48, float %33, i64 0 ; 2 uses
  %50 = insertelement <2 x float> poison, float %47, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> %foldExtExtBinop130, <2 x i32> <i32 0, i32 2>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> zeroinitializer, <2 x float> %51)
  %i.dj = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> zeroinitializer, <2 x float> %i.di)
  store <2 x float> %i.dl, ptr %i.bv, align 4
  store float %i.cy, ptr %.sroa.1270.0..sroa_idx71.a, align 4
  store float %i.ck, ptr %i.bx, align 8
  %52 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %53 = insertelement <2 x float> %52, float %25, i64 0
  %54 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %55 = insertelement <2 x float> %54, float %i.cp, i64 0
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> zeroinitializer, <2 x float> %55)
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> zeroinitializer, <2 x float> %i.dm)
  %i.do = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> zeroinitializer, <2 x float> %i.dn)
  store <2 x float> %i.dq, ptr %.sroa.2082.0..sroa_idx83.a, align 4
  store float %i.db, ptr %.sroa.6.0..sroa_idx.i, align 4
  store float %i.cl, ptr %i.ca, align 8
  %i.dr = fadd <2 x float> %i.cv, %40
  %56 = fadd float %33, %i.dc
  %57 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x float> poison, float %56, i64 0
  %58 = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %57, <2 x float> zeroinitializer, <2 x float> %58)
  store <2 x float> %i.dt, ptr %.sroa.2285.0..sroa_idx86, align 4
  %59 = extractelement <2 x float> %45, i64 0
  store float %59, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %i.dh, ptr %.sroa.8.0..sroa_idx.i, align 8
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.du = trunc nuw nsw i64 %indvars.iv114 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.du, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4)
  %.pre118 = load ptr, ptr %i.a, align 8
  %.pre119 = load ptr, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.m
  %i.dv = phi ptr [ %i.au, %bb.g ], [ %i.au, %bb.h ], [ %.pre119, %bb.m ] ; 2 uses
  %i.dw = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre118, %bb.m ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 1040
  %sext124 = shl i64 %i.ea, 32
  %i.eb = ashr exact i64 %sext124, 32
  %i.ec = icmp slt i64 %indvars.iv.next115, %i.eb
  br i1 %i.ec, label %bb.g, label %._crit_edge111.loopexit, !llvm.loop !67

bb.o:                                             ; preds = %._crit_edge111, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA32_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %1) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #23
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

declare void @_ZN6Assimp3MD59MD5ParserC1EPcj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6Assimp3MD513MD5MeshParserC1ERSt6vectorINS0_7SectionESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3MD513MD5MeshParserD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
