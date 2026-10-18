Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/math_functions?download=true
inline.NumInlined: 89
inline.NumDeleted: 16
begin_hunk_0_@b3ClosestPointOnTriangle:bb.a
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop356 = fsub <2 x float> %6, %2   ; 2 uses
  %foldExtExtBinop358 = fsub <2 x float> %6, %2
  %i.w = extractelement <2 x float> %foldExtExtBinop358, i64 1 ; 2 uses
  %i.x = fsub float %7, %3                        ; 2 uses
  %foldExtExtBinop360 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop356
  %i.y = extractelement <2 x float> %foldExtExtBinop360, i64 0
  %i.z = fmul float %i.j, %i.w
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %i.b, %i.x
  %i.ac = fadd float %i.ab, %i.aa                 ; 8 uses
  %foldExtExtBinop362 = fmul <2 x float> %foldExtExtBinop346, %foldExtExtBinop356
  %i.ad = extractelement <2 x float> %foldExtExtBinop362, i64 0
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
  %foldExtExtBinop364 = fsub <2 x float> %6, %4   ; 2 uses
  %foldExtExtBinop366 = fsub <2 x float> %6, %4
  %i.az = extractelement <2 x float> %foldExtExtBinop366, i64 1 ; 2 uses
  %i.ba = fsub float %7, %5                       ; 2 uses
  %foldExtExtBinop368 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop364
  %i.bb = extractelement <2 x float> %foldExtExtBinop368, i64 0
  %i.bc = fmul float %i.j, %i.az
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = fmul float %i.b, %i.ba
  %i.bf = fadd float %i.be, %i.bd                 ; 5 uses
  %foldExtExtBinop370 = fmul <2 x float> %foldExtExtBinop346, %foldExtExtBinop364
  %i.bg = extractelement <2 x float> %foldExtExtBinop370, i64 0
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
  %i.bw = shufflevector <2 x float> %foldExtExtBinop346, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
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
  %foldExtExtBinop372 = fmul <2 x float> %foldExtExtBinop346, %i.db
  %i.di = insertelement <2 x float> %i.de, float %i.dd, i64 0
  %i.dj = fadd <2 x float> %0, %i.di
  %i.dk = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = shufflevector <2 x float> %foldExtExtBinop372, <2 x float> %i.dk, <2 x i32> <i32 0, i32 3>
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
define hidden void @b3SphereInertia(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 !func_sanitize !41 {
bb.a:
  %.scalar = fmul float %1, 4.000000e-01
  %.scalar6 = fmul float %.scalar, %2
  %i.a = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.scalar6, i64 0
  %i.b = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %2, i64 0
  %i.c = fmul <4 x float> %i.b, %i.a              ; 3 uses
  store <4 x float> %i.c, ptr %0, align 4, !tbaa !16, !alias.scope !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = extractelement <4 x float> %i.c, i64 0
  %i.f = shufflevector <4 x float> %i.c, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !16, !alias.scope !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.e, ptr %i.g, align 4, !tbaa !21, !alias.scope !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @b3CylinderInertia(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #11 !func_sanitize !45 {
bb.a:
  %i.a = fmul float %2, 3.000000e+00
  %i.b = fmul float %2, %i.a
  %i.c = fmul float %3, %3
  %i.d = fadd float %i.b, %i.c
  %i.e = fmul float %1, %i.d
  %i.f = fdiv float %i.e, 1.200000e+01            ; 2 uses
  %i.g = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.f, i64 0
  store <4 x float> %i.g, ptr %0, align 4, !tbaa !16, !alias.scope !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.scalar = fmul float %1, 5.000000e-01
  %.scalar11 = fmul float %.scalar, %2
  %i.i = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.scalar11, i64 0
  %i.j = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %2, i64 0
  %i.k = fmul <4 x float> %i.j, %i.i
  store <4 x float> %i.k, ptr %i.h, align 4, !tbaa !16, !alias.scope !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.f, ptr %i.l, align 4, !tbaa !21, !alias.scope !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @b3BoxInertia(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 36)) %0, float noundef %1, <2 x float> %2, float %3, <2 x float> %4, float %5) local_unnamed_addr #10 !func_sanitize !49 {
bb.a:
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = fsub float %5, %3                          ; 2 uses
  %i.a = fsub <2 x float> %4, %2                  ; 2 uses
  %i.b = fmul <2 x float> %i.a, %i.a              ; 3 uses
  %i.c = fmul float %7, %7                        ; 2 uses
  %8 = extractelement <2 x float> %i.b, i64 0
  %9 = fadd float %8, %i.c
  %i.d = fmul float %1, %9
  %i.e = fdiv float %i.d, 1.200000e+01
  %10 = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.f = insertelement <2 x float> %10, float %i.c, i64 1
  %11 = fadd <2 x float> %i.b, %i.f
  %12 = insertelement <2 x float> poison, float %1, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %13, %11
  %i.h = fdiv <2 x float> %i.g, splat (float 1.200000e+01) ; 2 uses
  %14 = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %14, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  store <4 x float> %15, ptr %0, align 4, !tbaa !16, !alias.scope !50
  %i.i = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.e, i64 0
  store <4 x float> %i.i, ptr %6, align 4, !tbaa !16, !alias.scope !50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = extractelement <2 x float> %i.h, i64 0
  store float %i.k, ptr %i.j, align 4, !tbaa !21, !alias.scope !50
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3Steiner(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(address_is_null) %0, float noundef %1, <2 x float> %2, float %3) local_unnamed_addr #7 !func_sanitize !51 {
bb.a:
  %.not = icmp eq ptr %0, null, !nosanitize !14
  br i1 %.not, label %bb.b, label %bb.c, !prof !52, !nosanitize !14

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 0) #14, !nosanitize !14
  unreachable, !nosanitize !14

bb.c:                                             ; preds = %bb.a
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 4 uses
  %i.a = fneg float %1                            ; 2 uses
  %i.b = fmul float %.sroa.0.4.vec.extract, %i.a
  %i.c = fmul float %3, %i.b                      ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.d = fmul float %.sroa.0.0.vec.extract, %i.a  ; 2 uses
  %i.e = fmul float %3, %i.d                      ; 2 uses
  %i.f = fmul float %.sroa.0.4.vec.extract, %i.d  ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.h = fmul float %3, %3                        ; 2 uses
  %i.i = fadd float %i.g, %i.h
  %i.j = fmul float %1, %i.i
  %i.k = fmul float %.sroa.0.4.vec.extract, %.sroa.0.4.vec.extract ; 2 uses
  %i.l = fadd float %i.k, %i.h
  %i.m = fmul float %1, %i.l
  store float %i.m, ptr %0, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.f, ptr %i.n, align 4, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.e, ptr %i.o, align 4, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.f, ptr %i.p, align 4, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.j, ptr %i.q, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.c, ptr %i.r, align 4, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.e, ptr %i.s, align 4, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.c, ptr %i.t, align 4, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = fadd float %i.g, %i.k
  %i.w = fmul float %1, %i.v
  store float %i.w, ptr %i.u, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3IsValidRay(ptr noundef %0) local_unnamed_addr #7 !func_sanitize !63 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !14
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !14  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !14
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !14
  %i.e = and i1 %i.a, %i.d, !nosanitize !14
  br i1 %i.e, label %bb.c, label %bb.b, !prof !15, !nosanitize !14

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @5, i64 %i.b) #14, !nosanitize !14
  unreachable, !nosanitize !14

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load <2 x float>, ptr %0, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.fr.i = freeze float %.sroa.22.0.copyload      ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %i.f = fcmp uno float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1
  %or.cond.i = fcmp uno float %.sroa.0.4.vec.extract.i, %.fr.i
  %or.cond19 = select i1 %i.f, i1 true, i1 %or.cond.i
  br i1 %or.cond19, label %b3IsValidVec3.exit.thread, label %b3IsValidVec3.exit

b3IsValidVec3.exit:                               ; preds = %bb.c
  %i.g = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.01.0.copyload)
  %i.h = fcmp oeq <2 x float> %i.g, splat (float +inf)
  %i.i = bitcast <2 x i1> %i.h to i2
  %i.j = icmp eq i2 %i.i, 0
  %i.k = tail call float @llvm.fabs.f32(float %.fr.i) #12
  %i.l = fcmp une float %i.k, +inf
  %or.cond4.not.i = and i1 %i.j, %i.l
  br i1 %or.cond4.not.i, label %bb.d, label %b3IsValidVec3.exit.thread

bb.d:                                             ; preds = %b3IsValidVec3.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.m, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.fr.i8 = freeze float %.sroa.2.0.copyload      ; 2 uses
  %.sroa.0.0.vec.extract.i9 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.n = fcmp uno float %.sroa.0.0.vec.extract.i9, 0.000000e+00
  %.sroa.0.4.vec.extract.i10 = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %or.cond.i11 = fcmp uno float %.sroa.0.4.vec.extract.i10, %.fr.i8
  %or.cond20 = select i1 %i.n, i1 true, i1 %or.cond.i11
  br i1 %or.cond20, label %b3IsValidVec3.exit.thread, label %b3IsValidVec3.exit15

b3IsValidVec3.exit15:                             ; preds = %bb.d
  %i.o = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.0.0.copyload)
  %i.p = fcmp oeq <2 x float> %i.o, splat (float +inf)
  %i.q = bitcast <2 x i1> %i.p to i2
  %i.r = icmp eq i2 %i.q, 0
  %i.s = tail call float @llvm.fabs.f32(float %.fr.i8) #12
  %i.t = fcmp une float %i.s, +inf
  %or.cond4.not.i13 = and i1 %i.r, %i.t
  br i1 %or.cond4.not.i13, label %bb.e, label %b3IsValidVec3.exit.thread

bb.e:                                             ; preds = %b3IsValidVec3.exit15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !65 ; 2 uses
  %or.cond = tail call i1 @llvm.is.fpclass.f32(float %i.v, /* (nan inf nsub nnorm) */ i32 543)
  br i1 %or.cond, label %b3IsValidVec3.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call float @b3GetLengthUnitsPerMeter() #13
  %i.x = fmul float %i.w, 1.000000e+05
  %i.y = fcmp olt float %i.v, %i.x
  br label %b3IsValidVec3.exit.thread

b3IsValidVec3.exit.thread:                        ; preds = %bb.d, %bb.c, %b3IsValidVec3.exit, %b3IsValidVec3.exit15, %bb.e, %bb.f
  %i.z = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %b3IsValidVec3.exit15 ], [ false, %b3IsValidVec3.exit ], [ %i.y, %bb.f ], [ false, %bb.d ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @remainderf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i32 -1056584962, i32 -533798021}
!10 = !{i32 -1056584962, i32 2033455275}
!11 = !{i32 -1056584962, i32 -2086743244}
!12 = !{!"float", !5, i64 0}
!13 = !{!"b3Vec3", !12, i64 0, !12, i64 4, !12, i64 8}
!14 = !{}
!15 = !{!"branch_weights", i32 1048575, i32 1}
!16 = !{!12, !12, i64 0}
!17 = !{i32 -1056584962, i32 1164826090}
!18 = !{!"b3SegmentDistanceResult", !13, i64 0, !12, i64 12, !13, i64 16, !12, i64 28}
!19 = !{!18, !12, i64 12}
!20 = !{!18, !12, i64 28}
!21 = !{!13, !12, i64 8}
!22 = !{i32 -1056584962, i32 -855361768}
!23 = !{i32 -1056584962, i32 962181477}
!24 = !{i32 -1056584962, i32 1813460010}
!25 = !{!"b3AABB", !13, i64 0, !13, i64 12}
!26 = !{!25, !12, i64 0}
!27 = !{!25, !12, i64 4}
!28 = !{!25, !12, i64 8}
!29 = !{!25, !12, i64 12}
!30 = !{!25, !12, i64 16}
!31 = !{!25, !12, i64 20}
!32 = !{i32 -1056584962, i32 95863685}
!33 = !{i32 -1056584962, i32 664490961}
!34 = !{i32 -1056584962, i32 1535620224}
!35 = !{i32 -1056584962, i32 1834808840}
!36 = !{i32 -1056584962, i32 92158825}
!37 = !{i32 -1056584962, i32 1328558045}
!38 = !{i32 -1056584962, i32 -467795787}
end_hunk_0
