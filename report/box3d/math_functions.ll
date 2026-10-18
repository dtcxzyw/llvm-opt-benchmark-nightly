Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/math_functions?download=true
inline.NumInlined: 89
inline.NumDeleted: 16
begin_hunk_0_@b3ClosestPointOnTriangle:bb.a
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop352 = fsub <2 x float> %6, %2   ; 2 uses
  %foldExtExtBinop354 = fsub <2 x float> %6, %2
  %i.w = extractelement <2 x float> %foldExtExtBinop354, i64 1 ; 2 uses
  %i.x = fsub float %7, %3                        ; 2 uses
  %foldExtExtBinop356 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop352
  %i.y = extractelement <2 x float> %foldExtExtBinop356, i64 0
  %i.z = fmul float %i.j, %i.w
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %i.b, %i.x
  %i.ac = fadd float %i.ab, %i.aa                 ; 8 uses
  %foldExtExtBinop358 = fmul <2 x float> %foldExtExtBinop342, %foldExtExtBinop352
  %i.ad = extractelement <2 x float> %foldExtExtBinop358, i64 0
  %i.ae = fmul float %i.p, %i.w
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.f, %i.x
  %i.ah = fadd float %i.ag, %i.af                 ; 5 uses
  %i.ai = fcmp ule float %i.ac, 0.000000e+00
  %i.aj = fcmp ugt float %i.ah, %i.ac
  %or.cond236 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond236, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ak = fmul float %i.n, %i.ah
  %i.al = fmul float %i.ac, %i.t
  %i.am = fsub float %i.ak, %i.al                 ; 3 uses
  %i.an = fcmp ole float %i.am, 0.000000e+00
  %i.ao = fcmp oge float %i.n, 0.000000e+00
  %or.cond3 = and i1 %i.ao, %i.an
  %i.ap = fcmp ole float %i.ac, 0.000000e+00
  %or.cond5 = and i1 %i.ap, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = fsub float %i.n, %i.ac
  %i.ar = fdiv float %i.n, %i.aq                  ; 2 uses
  %i.as = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.e, <2 x i32> <i32 0, i32 3>
  %i.at = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.as, %i.au
  %i.aw = fadd <2 x float> %0, %i.av
  %i.ax = fmul float %i.b, %i.ar
  %i.ay = fadd float %1, %i.ax
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %foldExtExtBinop360 = fsub <2 x float> %6, %4   ; 2 uses
  %foldExtExtBinop362 = fsub <2 x float> %6, %4
  %i.az = extractelement <2 x float> %foldExtExtBinop362, i64 1 ; 2 uses
  %i.ba = fsub float %7, %5                       ; 2 uses
  %foldExtExtBinop364 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop360
  %i.bb = extractelement <2 x float> %foldExtExtBinop364, i64 0
  %i.bc = fmul float %i.j, %i.az
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = fmul float %i.b, %i.ba
  %i.bf = fadd float %i.be, %i.bd                 ; 5 uses
  %foldExtExtBinop366 = fmul <2 x float> %foldExtExtBinop342, %foldExtExtBinop360
  %i.bg = extractelement <2 x float> %foldExtExtBinop366, i64 0
  %i.bh = fmul float %i.p, %i.az
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = fmul float %i.f, %i.ba
  %i.bk = fadd float %i.bj, %i.bi                 ; 8 uses
  %i.bl = fcmp ult float %i.bk, 0.000000e+00
  %i.bm = fcmp ugt float %i.bf, %i.bk
  %or.cond237 = or i1 %i.bl, %i.bm
  br i1 %or.cond237, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bn = fmul float %i.bf, %i.t
  %i.bo = fmul float %i.n, %i.bk
  %i.bp = fsub float %i.bn, %i.bo                 ; 3 uses
  %i.bq = fcmp ole float %i.bp, 0.000000e+00
  %i.br = fcmp oge float %i.t, 0.000000e+00
  %or.cond7 = select i1 %i.bq, i1 %i.br, i1 false
  %i.bs = fcmp ole float %i.bk, 0.000000e+00
  %or.cond9 = and i1 %i.bs, %or.cond7
  br i1 %or.cond9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bt = fsub float %i.t, %i.bk
  %i.bu = fdiv float %i.t, %i.bt                  ; 2 uses
  %i.bv = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <2 x float> %foldExtExtBinop342, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = fadd <2 x float> %0, %i.bz
  %i.cb = fmul float %i.f, %i.bu
  %i.cc = fadd float %1, %i.cb
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.cd = fmul float %i.ac, %i.bk
  %i.ce = fmul float %i.bf, %i.ah
  %i.cf = fsub float %i.cd, %i.ce                 ; 2 uses
  %i.cg = fcmp ugt float %i.cf, 0.000000e+00
  %i.ch = fcmp ult float %i.ah, %i.ac
  %or.cond238 = select i1 %i.cg, i1 true, i1 %i.ch
  %i.ci = fcmp ult float %i.bf, %i.bk
  %or.cond239 = or i1 %i.ci, %or.cond238
  br i1 %or.cond239, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = fsub <2 x float> %4, %2
  %i.ck = fsub float %5, %3
  %i.cl = fsub float %i.ah, %i.ac                 ; 2 uses
  %i.cm = fsub float %i.bf, %i.bk
  %i.cn = fadd float %i.cl, %i.cm
  %i.co = fdiv float %i.cl, %i.cn                 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cj, %i.cq
  %i.cs = fadd <2 x float> %2, %i.cr
  %i.ct = fmul float %i.ck, %i.co
  %i.cu = fadd float %3, %i.ct
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cv = fadd float %i.cf, %i.bp
  %i.cw = fadd float %i.am, %i.cv
  %i.cx = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.bp, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x float> %i.cy, %i.da           ; 4 uses
  %i.dc = extractelement <2 x float> %i.db, i64 1 ; 2 uses
  %i.dd = fmul float %i.a, %i.dc
  %i.de = fmul <2 x float> %i.e, %i.db            ; 2 uses
  %i.df = fmul float %i.b, %i.dc
  %i.dg = fadd float %1, %i.df
  %i.dh = extractelement <2 x float> %i.db, i64 0
  %foldExtExtBinop368 = fmul <2 x float> %foldExtExtBinop342, %i.db
  %i.di = insertelement <2 x float> %i.de, float %i.dd, i64 0
  %i.dj = fadd <2 x float> %0, %i.di
  %i.dk = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = shufflevector <2 x float> %foldExtExtBinop368, <2 x float> %i.dk, <2 x i32> <i32 0, i32 3>
  %i.dm = fadd <2 x float> %i.dl, %i.dj
  %i.dn = fmul float %i.f, %i.dh
  %i.do = fadd float %i.dn, %i.dg
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.b, %bb.e, %bb.d, %bb.a
  %.sroa.0224.5 = phi <2 x float> [ %0, %bb.a ], [ %2, %bb.b ], [ %i.aw, %bb.d ], [ %4, %bb.e ], [ %i.ca, %bb.g ], [ %i.cs, %bb.i ], [ %i.dm, %bb.j ]
  %.sroa.8225.5 = phi float [ %1, %bb.a ], [ %3, %bb.b ], [ %i.ay, %bb.d ], [ %5, %bb.e ], [ %i.cc, %bb.g ], [ %i.cu, %bb.i ], [ %i.do, %bb.j ]
  %.sroa.16.5 = phi i64 [ 25769803776, %bb.a ], [ 30064771072, %bb.b ], [ 12884901888, %bb.d ], [ 34359738368, %bb.e ], [ 21474836480, %bb.g ], [ 17179869184, %bb.i ], [ 4294967296, %bb.j ]
  %.fca.0.insert = insertvalue { <2 x float>, i64 } poison, <2 x float> %.sroa.0224.5, 0
  %i.dp = bitcast float %.sroa.8225.5 to i32
  %.sroa.8225.8.insert.ext = zext i32 %i.dp to i64
  %.sroa.8225.8.insert.insert = or disjoint i64 %.sroa.16.5, %.sroa.8225.8.insert.ext
  %.fca.1.insert = insertvalue { <2 x float>, i64 } %.fca.0.insert, i64 %.sroa.8225.8.insert.insert, 1
  ret { <2 x float>, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @b3SphereInertia(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 {
bb.a:
  %.scalar = fmul float %1, 4.000000e-01
  %.scalar6 = fmul float %.scalar, %2
  %i.a = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.scalar6, i64 0
  %i.b = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %2, i64 0
  %i.c = fmul <4 x float> %i.b, %i.a              ; 3 uses
  store <4 x float> %i.c, ptr %0, align 4, !tbaa !10, !alias.scope !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = extractelement <4 x float> %i.c, i64 0
  %i.f = shufflevector <4 x float> %i.c, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !10, !alias.scope !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.e, ptr %i.g, align 4, !tbaa !14, !alias.scope !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @b3CylinderInertia(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = fmul float %2, 3.000000e+00
  %i.b = fmul float %2, %i.a
  %i.c = fmul float %3, %3
  %i.d = fadd float %i.b, %i.c
  %i.e = fmul float %1, %i.d
  %i.f = fdiv float %i.e, 1.200000e+01            ; 2 uses
  %i.g = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.f, i64 0
  store <4 x float> %i.g, ptr %0, align 4, !tbaa !10, !alias.scope !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.scalar = fmul float %1, 5.000000e-01
  %.scalar11 = fmul float %.scalar, %2
  %i.i = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.scalar11, i64 0
  %i.j = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %2, i64 0
  %i.k = fmul <4 x float> %i.j, %i.i
  store <4 x float> %i.k, ptr %i.h, align 4, !tbaa !10, !alias.scope !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.f, ptr %i.l, align 4, !tbaa !14, !alias.scope !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @b3BoxInertia(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, <2 x float> %2, float %3, <2 x float> %4, float %5) local_unnamed_addr #10 {
bb.a:
  %6 = fsub float %5, %3                          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %foldExtExtBinop = fsub <2 x float> %4, %2      ; 2 uses
  %foldExtExtBinop35 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop ; 2 uses
  %7 = fmul float %6, %6
  %i.b = insertelement <2 x float> poison, float %7, i64 0
  %8 = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop37 = fadd <2 x float> %foldExtExtBinop35, %8 ; 2 uses
  %i.c = extractelement <2 x float> %foldExtExtBinop37, i64 1
  %i.d = fmul float %1, %i.c
  %i.e = fdiv float %i.d, 1.200000e+01
  %9 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %foldExtExtBinop35)
  %i.f = insertelement <2 x float> poison, float %1, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x float> %foldExtExtBinop37, float %9, i64 1
  %i.h = fmul <2 x float> %i.g, %10
  %i.i = fdiv <2 x float> %i.h, splat (float 1.200000e+01) ; 2 uses
  %i.j = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.e, i64 0
  store <4 x float> %i.j, ptr %0, align 4, !tbaa !10, !alias.scope !30
  %i.k = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.l = shufflevector <4 x float> %i.k, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.l, ptr %i.a, align 4, !tbaa !10, !alias.scope !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = extractelement <2 x float> %i.i, i64 1
  store float %i.n, ptr %i.m, align 4, !tbaa !14, !alias.scope !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b3Steiner(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, <2 x float> %2, float %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.015.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 4 uses
  %i.a = fmul float %.sroa.015.4.vec.extract, %.sroa.015.4.vec.extract ; 2 uses
  %i.b = fmul float %3, %3                        ; 2 uses
  %i.c = fadd float %i.a, %i.b
  %i.d = fmul float %1, %i.c
  %.sroa.015.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.f = fadd float %i.e, %i.b
  %i.g = fmul float %1, %i.f
  %i.h = fadd float %i.e, %i.a
  %i.i = fmul float %1, %i.h
  %i.j = fneg float %1                            ; 2 uses
  %i.k = fmul float %.sroa.015.0.vec.extract, %i.j ; 2 uses
  %i.l = fmul float %.sroa.015.4.vec.extract, %i.k ; 2 uses
  %i.m = fmul float %3, %i.k                      ; 2 uses
  %i.n = fmul float %.sroa.015.4.vec.extract, %i.j
  %i.o = fmul float %3, %i.n                      ; 2 uses
  store float %i.d, ptr %0, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.l, ptr %i.p, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.m, ptr %i.q, align 4, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.l, ptr %i.r, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.g, ptr %i.s, align 4, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.o, ptr %i.t, align 4, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.m, ptr %i.u, align 4, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.o, ptr %i.v, align 4, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.i, ptr %i.w, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3IsValidRay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %.sroa.01.0.copyload = load <2 x float>, ptr %0, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.fr.i = freeze float %.sroa.22.0.copyload      ; 2 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %i.a = fcmp uno float %.sroa.01.0.vec.extract.i, 0.000000e+00
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1
  %or.cond.i = fcmp uno float %.sroa.01.4.vec.extract.i, %.fr.i
  %or.cond18 = select i1 %i.a, i1 true, i1 %or.cond.i
  br i1 %or.cond18, label %b3IsValidVec3.exit.thread, label %b3IsValidVec3.exit

b3IsValidVec3.exit:                               ; preds = %bb.a
  %i.b = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.01.0.copyload)
  %i.c = fcmp oeq <2 x float> %i.b, splat (float +inf)
  %i.d = bitcast <2 x i1> %i.c to i2
  %i.e = icmp eq i2 %i.d, 0
  %i.f = tail call float @llvm.fabs.f32(float %.fr.i) #12
  %i.g = fcmp une float %i.f, +inf
  %or.cond10.not.i = and i1 %i.e, %i.g
  br i1 %or.cond10.not.i, label %bb.b, label %b3IsValidVec3.exit.thread

bb.b:                                             ; preds = %b3IsValidVec3.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.h, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.fr.i7 = freeze float %.sroa.2.0.copyload      ; 2 uses
  %.sroa.01.0.vec.extract.i8 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.i = fcmp uno float %.sroa.01.0.vec.extract.i8, 0.000000e+00
  %.sroa.01.4.vec.extract.i9 = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %or.cond.i10 = fcmp uno float %.sroa.01.4.vec.extract.i9, %.fr.i7
  %or.cond19 = select i1 %i.i, i1 true, i1 %or.cond.i10
  br i1 %or.cond19, label %b3IsValidVec3.exit.thread, label %b3IsValidVec3.exit14

b3IsValidVec3.exit14:                             ; preds = %bb.b
  %i.j = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.0.0.copyload)
  %i.k = fcmp oeq <2 x float> %i.j, splat (float +inf)
  %i.l = bitcast <2 x i1> %i.k to i2
  %i.m = icmp eq i2 %i.l, 0
  %i.n = tail call float @llvm.fabs.f32(float %.fr.i7) #12
  %i.o = fcmp une float %i.n, +inf
  %or.cond10.not.i12 = and i1 %i.m, %i.o
  br i1 %or.cond10.not.i12, label %bb.c, label %b3IsValidVec3.exit.thread

bb.c:                                             ; preds = %b3IsValidVec3.exit14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !42 ; 2 uses
  %or.cond = tail call i1 @llvm.is.fpclass.f32(float %i.q, /* (nan inf nsub nnorm) */ i32 543)
  br i1 %or.cond, label %b3IsValidVec3.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call float @b3GetLengthUnitsPerMeter() #13
  %i.s = fmul float %i.r, 1.000000e+05
  %i.t = fcmp olt float %i.q, %i.s
  br label %b3IsValidVec3.exit.thread

b3IsValidVec3.exit.thread:                        ; preds = %bb.b, %bb.a, %bb.d, %bb.c, %b3IsValidVec3.exit14, %b3IsValidVec3.exit
  %i.u = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %b3IsValidVec3.exit14 ], [ false, %b3IsValidVec3.exit ], [ %i.t, %bb.d ], [ false, %bb.b ]
  ret i1 %i.u
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @remainderf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!10 = !{!8, !8, i64 0}
!11 = !{!"b3SegmentDistanceResult", !9, i64 0, !8, i64 12, !9, i64 16, !8, i64 28}
!12 = !{!11, !8, i64 12}
!13 = !{!11, !8, i64 28}
!14 = !{!9, !8, i64 8}
!15 = !{!"b3AABB", !9, i64 0, !9, i64 12}
!16 = !{!15, !8, i64 0}
!17 = !{!15, !8, i64 4}
!18 = !{!15, !8, i64 8}
!19 = !{!15, !8, i64 12}
!20 = !{!15, !8, i64 16}
!21 = !{!15, !8, i64 20}
!22 = distinct !{!22, i1 true, !"b3MakeDiagonalMatrix"}
!23 = distinct !{!23, !22, !"b3MakeDiagonalMatrix: argument 0"}
!24 = !{!23}
!25 = distinct !{!25, i1 true, !"b3MakeDiagonalMatrix"}
!26 = distinct !{!26, !25, !"b3MakeDiagonalMatrix: argument 0"}
!27 = !{!26}
!28 = distinct !{!28, i1 true, !"b3MakeDiagonalMatrix"}
!29 = distinct !{!29, !28, !"b3MakeDiagonalMatrix: argument 0"}
!30 = !{!29}
!31 = !{!"b3Matrix3", !9, i64 0, !9, i64 12, !9, i64 24}
!32 = !{!31, !8, i64 0}
!33 = !{!31, !8, i64 12}
!34 = !{!31, !8, i64 24}
!35 = !{!31, !8, i64 4}
!36 = !{!31, !8, i64 16}
!37 = !{!31, !8, i64 28}
!38 = !{!31, !8, i64 8}
!39 = !{!31, !8, i64 20}
!40 = !{!31, !8, i64 32}
!41 = !{!"b3RayCastInput", !9, i64 0, !9, i64 12, !8, i64 24}
!42 = !{!41, !8, i64 24}
end_hunk_0
