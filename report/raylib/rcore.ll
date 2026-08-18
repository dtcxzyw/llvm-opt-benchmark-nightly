inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@QuaternionFromMatrix:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load float, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fmul float %i.t, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.10.8.vec.insert = insertelement <2 x float> %i.am, float %i.s, i64 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert30 = insertelement <2 x float> poison, float %i.s, i64 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load float, ptr %i.ap, align 8
  %i.ar = fsub float %i.ao, %i.aq
  %i.as = fmul float %i.t, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load float, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = fmul float %i.t, %i.ax
  %.sroa.0.4.vec.insert36 = insertelement <2 x float> %.sroa.0.0.vec.insert30, float %i.ay, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load float, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load float, ptr %i.bb, align 8
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = fmul float %i.t, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %.sroa.10.8.vec.insert43 = insertelement <2 x float> %i.bf, float %i.as, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load float, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load float, ptr %i.bi, align 8
  %i.bk = fsub float %i.bh, %i.bj
  %i.bl = fmul float %i.t, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load float, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load float, ptr %i.bo, align 4
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = fmul float %i.t, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %.sroa.0.0.vec.insert32 = insertelement <2 x float> %i.bs, float %i.s, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load float, ptr %i.bv, align 8
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.t, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.10.8.vec.insert45 = insertelement <2 x float> %i.bz, float %i.bl, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.10.8.vec.insert47 = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load float, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fsub float %i.cb, %i.cd
  %i.cf = fmul float %i.t, %i.ce
  %.sroa.10.12.vec.insert53 = insertelement <2 x float> %.sroa.10.8.vec.insert47, float %i.cf, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load <4 x float>, ptr %i.cg, align 8
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load float, ptr %i.ck, align 8
  %i.cm = load <2 x float>, ptr %i.cj, align 8
  %i.cn = insertelement <2 x float> %i.ci, float %i.cl, i64 1
  %i.co = fadd <2 x float> %i.cm, %i.cn
  %i.cp = insertelement <2 x float> poison, float %i.t, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cq, %i.co
  br label %bb.f

default.unreachable61:                            ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %i.cr, %bb.e ], [ %.sroa.0.4.vec.insert, %bb.b ], [ %.sroa.0.4.vec.insert36, %bb.c ], [ %.sroa.0.0.vec.insert32, %bb.d ]
  %.sroa.10.0 = phi <2 x float> [ %.sroa.10.12.vec.insert53, %bb.e ], [ %.sroa.10.8.vec.insert, %bb.b ], [ %.sroa.10.8.vec.insert43, %bb.c ], [ %.sroa.10.8.vec.insert45, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.10.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @QuaternionToMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4
  %foldExtExtBinop = fmul <2 x float> %1, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.h = fmul <2 x float> %i.g, %2                ; 3 uses
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %1                ; 3 uses
  %i.k = fadd <2 x float> %i.j, %i.h
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> <float -2.000000e+00, float 2.000000e+00>, <2 x float> <float 1.000000e+00, float -0.000000e+00>)
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.m, ptr %i.d, align 4
  %i.n = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fmul <2 x float> %i.n, %i.o              ; 4 uses
  %i.q = fmul <2 x float> %1, %i.g                ; 4 uses
  %i.r = fsub <2 x float> %i.q, %i.p
  %i.s = fadd <2 x float> %i.q, %i.p
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.u = fmul <2 x float> %i.t, splat (float 2.000000e+00)
  store <2 x float> %i.u, ptr %i.e, align 4
  %foldExtExtBinop47 = fadd <2 x float> %i.q, %i.p
  %foldExtExtBinop49 = fsub <2 x float> %i.j, %i.h
  %i.v = shufflevector <2 x float> %foldExtExtBinop49, <2 x float> %foldExtExtBinop47, <2 x i32> <i32 1, i32 2>
  %i.w = fmul <2 x float> %i.v, splat (float 2.000000e+00)
  store <2 x float> %i.w, ptr %i.f, align 4
  %foldExtExtBinop51 = fsub <2 x float> %i.q, %i.p
  %i.x = extractelement <2 x float> %foldExtExtBinop51, i64 1
  %i.y = fmul float %i.x, 2.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.y, ptr %i.z, align 4
  %i.aa = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = shufflevector <2 x float> %i.h, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.ac = fadd <2 x float> %i.aa, %i.ab
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  store float %i.ae, ptr %0, align 4
  %i.af = extractelement <2 x float> %i.ad, i64 1
  store float %i.af, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, <2 x float> } @QuaternionFromAxisAngle(<2 x float> %0, float %1, float noundef %2) local_unnamed_addr #14 {
bb.a:
  %.sroa.027.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.027.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %i.a = fmul float %.sroa.027.4.vec.extract, %.sroa.027.4.vec.extract
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.027.0.vec.extract, float %.sroa.027.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b) ; 2 uses
  %i.d = fcmp une float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.e = fmul float %2, 5.000000e-01              ; 2 uses
  %i.f = tail call float @sinf(float noundef %i.e) #56
  %i.g = fdiv float 1.000000e+00, %sqrt           ; 3 uses
  %i.h = tail call float @cosf(float noundef %i.e) #56 ; 3 uses
  %i.i = fmul float %1, %i.g
  %i.j = fmul float %.sroa.027.4.vec.extract, %i.g
  %i.k = fmul float %.sroa.027.0.vec.extract, %i.g
  %i.l = insertelement <4 x float> poison, float %i.k, i64 0
  %i.m = insertelement <4 x float> %i.l, float %i.j, i64 1
  %i.n = insertelement <4 x float> %i.m, float %i.i, i64 2
  %i.o = insertelement <4 x float> %i.n, float %i.h, i64 3
  %i.p = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.f, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.r = fmul <4 x float> %i.o, %i.q              ; 5 uses
  %foldExtExtBinop = fmul <4 x float> %i.r, %i.r
  %i.s = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.t = extractelement <4 x float> %i.r, i64 0   ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s)
  %i.v = extractelement <4 x float> %i.r, i64 2   ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.u)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.w) ; 2 uses
  %sqrt62 = tail call float @llvm.sqrt.f32(float %i.x)
  %i.y = fcmp oeq float %i.x, 0.000000e+00
  %i.z = fdiv float 1.000000e+00, %sqrt62
  %i.aa = select i1 %i.y, float 1.000000e+00, float %i.z
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = fmul <4 x float> %i.r, %i.ac            ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.045.0 = phi <2 x float> [ %i.ae, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.8.0 = phi <2 x float> [ %i.af, %bb.b ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.045.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.8.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @QuaternionToAxisAngle(<2 x float> %0, <2 x float> %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #19 {
bb.a:
  %.sroa.11.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.a = tail call float @llvm.fabs.f32(float %.sroa.11.12.vec.extract)
  %i.b = fcmp ogt float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.013.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract, float %.sroa.013.0.vec.extract, float %i.c)
  %.sroa.11.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract, float %.sroa.11.8.vec.extract, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract, float %.sroa.11.12.vec.extract, float %i.e) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.f)
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  %i.h = fdiv float 1.000000e+00, %sqrt
  %i.i = select i1 %i.g, float 1.000000e+00, float %i.h
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fmul <2 x float> %0, %i.k
  %4 = fmul <2 x float> %1, %i.k                  ; 2 uses
  %5 = extractelement <2 x float> %4, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.11.12.vec.extract43.pre-phi = phi float [ %5, %bb.b ], [ %.sroa.11.12.vec.extract, %bb.a ] ; 3 uses
  %.sroa.013.0 = phi <2 x float> [ %i.l, %bb.b ], [ %0, %bb.a ]
  %.sroa.11.0 = phi <2 x float> [ %4, %bb.b ], [ %1, %bb.a ]
  %i.m = tail call float @acosf(float noundef %.sroa.11.12.vec.extract43.pre-phi) #56
  %i.n = fneg float %.sroa.11.12.vec.extract43.pre-phi
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %.sroa.11.12.vec.extract43.pre-phi, float 1.000000e+00)
  %i.p = tail call float @sqrtf(float noundef %i.o) #56 ; 3 uses
  %i.q = fcmp ogt float %i.p, f0x358637BD         ; 2 uses
  %.sroa.11.8.vec.extract34 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.r = fdiv float %.sroa.11.8.vec.extract34, %i.p
  %.sroa.7.0 = select i1 %i.q, float %i.r, float 0.000000e+00
  %i.s = fmul float %i.m, 2.000000e+00
  %i.t = insertelement <2 x float> poison, float %i.p, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fdiv <2 x float> %.sroa.013.0, %i.u
  %i.w = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %i.x = shufflevector <2 x i1> %i.w, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x float> %i.v, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  store <2 x float> %i.y, ptr %2, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.s, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, <2 x float> } @QuaternionFromEuler(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #23 {
bb.a:
  %i.a = fmul float %0, 5.000000e-01              ; 2 uses
  %i.b = tail call float @cosf(float noundef %i.a) #56
  %i.c = tail call float @sinf(float noundef %i.a) #56
  %i.d = fmul float %1, 5.000000e-01              ; 2 uses
  %i.e = tail call float @cosf(float noundef %i.d) #56
  %i.f = tail call float @sinf(float noundef %i.d) #56
  %i.g = fmul float %2, 5.000000e-01              ; 2 uses
  %i.h = tail call float @cosf(float noundef %i.g) #56 ; 2 uses
  %i.i = tail call float @sinf(float noundef %i.g) #56 ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = insertelement <2 x float> %i.j, float %i.h, i64 1
  %i.l = fneg <2 x float> %i.k
  %i.m = insertelement <4 x float> poison, float %i.c, i64 0
  %i.n = insertelement <4 x float> %i.m, float %i.b, i64 1 ; 2 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.p = insertelement <4 x float> poison, float %i.e, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.f, i64 1 ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.s = fmul <4 x float> %i.o, %i.r
  %i.t = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.u = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.v = fmul <4 x float> %i.t, %i.u
  %i.w = insertelement <4 x float> poison, float %i.i, i64 0 ; 2 uses
  %i.x = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.z = fmul <4 x float> %i.v, %i.y
  %i.aa = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x float> %i.aa, float %i.h, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.ac, <4 x float> %i.z) ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ae, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.af, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @QuaternionToEuler(<2 x float> %0, <2 x float> %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.13.12.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.09.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.13.8.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fneg float %.sroa.09.0.vec.extract
  %i.b = fmul float %.sroa.13.8.vec.extract, %i.a
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.13.12.vec.extract, float %.sroa.09.4.vec.extract, float %i.b)
  %i.d = fmul float %i.c, 2.000000e+00            ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %i.f = select i1 %i.e, float 1.000000e+00, float %i.d ; 2 uses
  %i.g = fcmp olt float %i.f, -1.000000e+00
  %i.h = select i1 %i.g, float -1.000000e+00, float %i.f
  %i.i = shufflevector <2 x float> %0, <2 x float> %1, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.j = fmul <2 x float> %0, %i.i
  %i.k = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = shufflevector <2 x float> %1, <2 x float> %0, <2 x i32> <i32 0, i32 2>
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.l, <2 x float> %i.j)
  %i.n = fmul <2 x float> %i.m, splat (float 2.000000e+00) ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 1
  %i.p = fmul <2 x float> %i.i, %i.i
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> %0, <2 x float> %i.p)
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @atan2f(float noundef %i.o, float noundef %i.s) #56
  %.sroa.042.0.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %i.u = tail call float @asinf(float noundef %i.h) #56
  %.sroa.042.4.vec.insert = insertelement <2 x float> %.sroa.042.0.vec.insert, float %i.u, i64 1
  %i.v = extractelement <2 x float> %i.n, i64 0
  %i.w = extractelement <2 x float> %i.r, i64 1
  %i.x = tail call float @atan2f(float noundef %i.v, float noundef %i.w) #56
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.042.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.x, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @QuaternionTransform(<2 x float> %0, <2 x float> %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %i.a = load <16 x float>, ptr %2, align 8       ; 4 uses
  %i.b = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.c = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.d = fmul <4 x float> %i.b, %i.c
  %i.e = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.f = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> zeroinitializer
  %i.g = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.f, <4 x float> %i.d)
  %i.h = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %i.i, <4 x float> %i.g)
  %i.k = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.l = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.l, <4 x float> %i.j) ; 2 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.o = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.n, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.o, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @QuaternionEquals(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.025.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = tail call float @llvm.fabs.f32(float %i.a)
  %i.c = tail call nsz float @llvm.fabs.f32(float %.sroa.025.0.vec.extract)
  %i.d = tail call nsz float @llvm.fabs.f32(float %.sroa.0.0.vec.extract)
  %i.e = tail call nsz float @llvm.maxnum.f32(float %i.c, float %i.d)
  %i.f = tail call nsz float @llvm.maxnum.f32(float %i.e, float 1.000000e+00)
  %i.g = fmul nnan float %i.f, f0x358637BD        ; 2 uses
  %i.h = fcmp ugt float %i.b, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.025.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.i = fsub float %.sroa.025.4.vec.extract, %.sroa.0.4.vec.extract
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = tail call nsz float @llvm.fabs.f32(float %.sroa.025.4.vec.extract)
  %i.l = tail call nsz float @llvm.fabs.f32(float %.sroa.0.4.vec.extract)
  %i.m = tail call nsz float @llvm.maxnum.f32(float %i.k, float %i.l)
  %i.n = tail call nsz float @llvm.maxnum.f32(float %i.m, float 1.000000e+00)
  %i.o = fmul nnan float %i.n, f0x358637BD
  %i.p = fcmp ugt float %i.j, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.938.8.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.9.8.vec.extract = extractelement <2 x float> %3, i64 0
  %foldExtExtBinop52 = fsub <2 x float> %1, %3
  %i.q = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = tail call nsz float @llvm.fabs.f32(float %.sroa.938.8.vec.extract)
  %i.t = tail call nsz float @llvm.fabs.f32(float %.sroa.9.8.vec.extract)
  %i.u = tail call nsz float @llvm.maxnum.f32(float %i.s, float %i.t)
  %i.v = tail call nsz float @llvm.maxnum.f32(float %i.u, float 1.000000e+00)
  %i.w = fmul nnan float %i.v, f0x358637BD
  %i.x = fcmp ugt float %i.r, %i.w
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.938.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.9.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.y = fsub float %.sroa.938.12.vec.extract, %.sroa.9.12.vec.extract
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = tail call nsz float @llvm.fabs.f32(float %.sroa.938.12.vec.extract)
  %i.ab = tail call nsz float @llvm.fabs.f32(float %.sroa.9.12.vec.extract)
  %i.ac = tail call nsz float @llvm.maxnum.f32(float %i.aa, float %i.ab)
  %i.ad = tail call nsz float @llvm.maxnum.f32(float %i.ac, float 1.000000e+00)
  %i.ae = fmul nnan float %i.ad, f0x358637BD
  %i.af = fcmp ugt float %i.z, %i.ae
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %foldExtExtBinop54 = fadd <2 x float> %0, %2
  %i.ag = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ai = fcmp ugt float %i.ah, %i.g
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.025.4.vec.extract35 = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract10 = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.aj = fadd float %.sroa.025.4.vec.extract35, %.sroa.0.4.vec.extract10
  %i.ak = tail call float @llvm.fabs.f32(float %i.aj)
  %i.al = tail call nsz float @llvm.fabs.f32(float %.sroa.025.4.vec.extract35)
  %i.am = tail call nsz float @llvm.fabs.f32(float %.sroa.0.4.vec.extract10)
  %i.an = tail call nsz float @llvm.maxnum.f32(float %i.al, float %i.am)
  %i.ao = tail call nsz float @llvm.maxnum.f32(float %i.an, float 1.000000e+00)
  %i.ap = fmul nnan float %i.ao, f0x358637BD
  %i.aq = fcmp ugt float %i.ak, %i.ap
end_hunk_0
begin_hunk_1_@CameraMoveRight:bb.a
  %i.be = fmul <2 x float> %i.bd, %.sroa.036.1    ; 2 uses
  %i.bf = fadd <2 x float> %.sroa.09.0.copyload.i.i, %i.be
  %i.bg = fadd float %.sroa.210.0.copyload.i.i, %i.bb
  store <2 x float> %i.bf, ptr %0, align 4
  store float %i.bg, ptr %.sroa.210.0..sroa_idx.i.i, align 4
  %i.bh = fadd <2 x float> %.sroa.011.0.copyload.i.i, %i.be
  %i.bi = fadd float %.sroa.212.0.copyload.i.i, %i.bb
  store <2 x float> %i.bh, ptr %i.a, align 4
  store float %i.bi, ptr %.sroa.212.0..sroa_idx.i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CameraMoveToTarget(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #27 {
GetCameraForward.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.022.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4 ; 2 uses
  %i.b = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.022.0.copyload ; 5 uses
  %i.c = fsub float %.sroa.221.0.copyload, %.sroa.223.0.copyload ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.g) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00        ; 2 uses
  %i.i = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
  %i.m = fmul float %i.c, %i.i
  %.sroa.013.0.i.i = select i1 %i.h, <2 x float> %i.l, <2 x float> %i.b
  %.sroa.617.0.i.i = select i1 %i.h, float %i.m, float %i.c
  %i.n = fadd float %1, %sqrt.i                   ; 2 uses
  %i.o = fcmp ugt float %i.n, 0.000000e+00
  %.neg = fneg float %i.n
  %i.p = select i1 %i.o, float %.neg, float -1.000000e-03 ; 2 uses
  %i.q = fmul float %i.p, %.sroa.617.0.i.i
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %.sroa.013.0.i.i
  %i.u = fadd <2 x float> %.sroa.020.0.copyload, %i.t
  %i.v = fadd float %.sroa.221.0.copyload, %i.q
  store <2 x float> %i.u, ptr %0, align 4
  store float %i.v, ptr %.sroa.223.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraYaw(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.03.0.copyload.i
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.b)
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.c) ; 3 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  %i.f = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.g = insertelement <2 x float> %i.f, float %.sroa.24.0.copyload.i, i64 1 ; 2 uses
  br i1 %i.e, label %bb.b, label %GetCameraUp.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.h = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.g, %i.j              ; 4 uses
  %i.l = fmul float %.sroa.07.0.vec.extract.i.i, %i.h ; 3 uses
  %foldExtExtBinop75 = fmul <2 x float> %i.k, %i.k
  %.pre69 = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %.pre70 = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %.pre69)
  %i.m = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %.pre72 = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %.pre70)
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.pre-phi73 = phi float [ %i.d, %bb.a ], [ %.pre72, %bb.b ] ; 2 uses
  %.sroa.044.0.vec.extract.i.pre-phi = phi float [ %.sroa.07.0.vec.extract.i.i, %bb.a ], [ %i.l, %bb.b ]
  %i.n = phi <2 x float> [ %i.g, %bb.a ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.032.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 2 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.233.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 4 ; 2 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %sqrt.i = tail call float @llvm.sqrt.f32(float %.pre-phi73)
  %i.p = fcmp oeq float %.pre-phi73, 0.000000e+00
  %i.q = fdiv float 1.000000e+00, %sqrt.i
  %i.r = select i1 %i.p, float 1.000000e+00, float %i.q ; 2 uses
  %i.s = fmul float %1, 5.000000e-01              ; 2 uses
  %i.t = tail call float @sinf(float noundef %i.s) #56 ; 2 uses
  %i.u = tail call float @cosf(float noundef %i.s) #56
  %i.v = fmul float %i.u, 2.000000e+00            ; 2 uses
  %i.w = fsub <2 x float> %.sroa.032.0.copyload, %.sroa.030.0.copyload ; 4 uses
  %i.x = fsub float %.sroa.233.0.copyload, %.sroa.231.0.copyload ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.r, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.n, %i.z
  %i.ab = fmul float %.sroa.044.0.vec.extract.i.pre-phi, %i.r
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.aa           ; 3 uses
  %i.af = fmul float %i.t, %i.ab                  ; 4 uses
  %i.ag = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ah = fneg float %i.ag
  %i.ai = extractelement <2 x float> %i.w, i64 0
  %i.aj = fneg float %i.ai
  %i.ak = fneg float %i.x
  %i.al = extractelement <2 x float> %i.ae, i64 1 ; 3 uses
  %i.am = fmul float %i.al, %i.ah
  %i.an = extractelement <2 x float> %i.ae, i64 0 ; 3 uses
  %i.ao = fmul float %i.an, %i.aj
  %i.ap = fmul float %i.af, %i.ak
  %i.aq = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x float> %i.aq, float %i.x, i64 0
  %i.as = insertelement <2 x float> poison, float %i.am, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ap, i64 1
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ar, <2 x float> %i.at) ; 3 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ag, float %i.ao) ; 3 uses
  %i.aw = fneg float %i.av
  %i.ax = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ay = fneg float %i.ax
  %i.az = fmul float %i.af, %i.aw
  %i.ba = fmul float %i.al, %i.ay
  %i.bb = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bb, float %i.az)
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.an, float %i.av, float %i.ba)
  %i.be = fneg float %i.bb
  %i.bf = fmul float %i.an, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ax, float %i.bf)
  %i.bh = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bi, %i.au
  %i.bk = fmul float %i.v, %i.av
  %i.bl = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bc, i64 1
  %i.bn = fmul <2 x float> %i.bm, splat (float 2.000000e+00)
  %i.bo = fmul float %i.bg, 2.000000e+00
  %i.bp = fadd <2 x float> %i.w, %i.bj
  %i.bq = fadd float %i.x, %i.bk
  %i.br = fadd <2 x float> %i.bp, %i.bn           ; 2 uses
  %i.bs = fadd float %i.bq, %i.bo                 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GetCameraUp.exit
  %.sroa.213.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4
  %i.bt = fsub <2 x float> %.sroa.032.0.copyload, %i.br
  %i.bu = fsub float %.sroa.213.0.copyload, %i.bs
  store <2 x float> %i.bt, ptr %0, align 4
  store float %i.bu, ptr %.sroa.231.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %GetCameraUp.exit
  %.sroa.24.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %i.bv = fadd <2 x float> %.sroa.030.0.copyload, %i.br
  %i.bw = fadd float %i.bs, %.sroa.24.0.copyload
  store <2 x float> %i.bv, ptr %i.o, align 4
  store float %i.bw, ptr %.sroa.233.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraPitch(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 7 uses
  %.sroa.07.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1 ; 7 uses
  %i.b = fmul float %.sroa.07.4.vec.extract.i.i, %.sroa.07.4.vec.extract.i.i
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.b) ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.c) ; 2 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %GetCameraUp.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.f = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %.sroa.03.0.copyload.i, %i.h
  %i.j = fmul float %.sroa.24.0.copyload.i, %i.f
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.013.0.i.i = phi <2 x float> [ %i.i, %bb.b ], [ %.sroa.03.0.copyload.i, %bb.a ] ; 5 uses
  %.sroa.617.0.i.i = phi float [ %i.j, %bb.b ], [ %.sroa.24.0.copyload.i, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 3 uses
  %.sroa.271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %.sroa.271.0.copyload = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %.sroa.068.0.copyload = load <2 x float>, ptr %0, align 4 ; 3 uses
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.269.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.070.0.copyload, i64 0
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.068.0.copyload, i64 0
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.070.0.copyload, i64 1
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.068.0.copyload, i64 1
  %i.l = fsub <2 x float> %.sroa.070.0.copyload, %.sroa.068.0.copyload ; 8 uses
  %i.m = extractelement <2 x float> %i.l, i64 1   ; 8 uses
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 8 uses
  %i.o = fsub float %.sroa.271.0.copyload, %.sroa.269.0.copyload ; 8 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GetCameraUp.exit
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 1 ; 2 uses
  %i.p = fneg float %i.m
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 0 ; 2 uses
  %i.q = fneg float %i.o
  %i.r = fneg float %i.n
  %5 = fmul float %.sroa.020.4.vec.extract.i, %i.m
  %6 = tail call float @llvm.fmuladd.f32(float %.sroa.020.0.vec.extract.i, float %i.n, float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i, float %i.o, float %6)
  %8 = fneg float %.sroa.020.0.vec.extract.i      ; 2 uses
  %i.s = fneg float %.sroa.020.4.vec.extract.i    ; 2 uses
  %i.t = fneg float %.sroa.617.0.i.i              ; 2 uses
  %i.u = insertelement <2 x float> poison, float %.sroa.617.0.i.i, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = insertelement <2 x float> %i.l, float %i.p, i64 0
  %i.x = fmul <2 x float> %i.v, %i.w
  %i.y = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %i.s, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.x) ; 2 uses
  %i.ad = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> %i.ab, float %i.q, i64 0
  %i.af = fmul <2 x float> %i.ad, %i.ae
  %i.ag = insertelement <2 x float> %i.v, float %i.t, i64 1
  %i.ah = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ah, <2 x float> %i.af) ; 2 uses
  %i.aj = insertelement <2 x float> %i.ah, float %i.r, i64 0
  %i.ak = fmul <2 x float> %i.y, %i.aj
  %9 = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %10 = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x float> %10, float %8, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %11, <2 x float> %i.ak) ; 2 uses
  %i.am = fmul <2 x float> %i.ai, %i.ai
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.am)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.an)
  %i.ap = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ao) ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %12 = tail call float @atan2f(float noundef %i.aq, float noundef %7) #56
  %13 = fadd float %12, -1.000000e-03             ; 2 uses
  %14 = fcmp ogt float %1, %13
  %.0 = select i1 %14, float %13, float %1        ; 2 uses
  %15 = fmul float %i.m, %i.s
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %i.n, float %15)
  %17 = tail call float @llvm.fmuladd.f32(float %i.t, float %i.o, float %16)
  %i.ar = extractelement <2 x float> %i.ap, i64 1
  %i.as = tail call float @atan2f(float noundef %i.ar, float noundef %17) #56
  %i.at = fsub float 1.000000e-03, %i.as          ; 2 uses
  %i.au = fcmp olt float %.0, %i.at
  %.1 = select i1 %i.au, float %i.at, float %.0
  %.sroa.212.0.copyload.i.i.pre = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %.sroa.210.0.copyload.i.i.pre = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %.pre = fsub float %.sroa.212.0.copyload.i.i.pre, %.sroa.210.0.copyload.i.i.pre
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %GetCameraUp.exit
  %.pre-phi = phi float [ %.pre, %bb.c ], [ %i.o, %GetCameraUp.exit ] ; 4 uses
  %.2 = phi float [ %.1, %bb.c ], [ %1, %GetCameraUp.exit ]
  %i.av = fmul float %i.m, %i.m
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.av)
  %i.ax = tail call float @llvm.fmuladd.f32(float %.pre-phi, float %.pre-phi, float %i.aw) ; 2 uses
  %i.ay = fcmp une float %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.e, label %GetCameraForward.exit.i

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.az = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %.sroa.013.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.az, i64 0
  %18 = shufflevector <2 x float> %.sroa.013.0.vec.insert.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %i.l, %18
  %i.ba = fmul float %.pre-phi, %i.az
  br label %GetCameraForward.exit.i

GetCameraForward.exit.i:                          ; preds = %bb.e, %bb.d
  %.sroa.013.0.i.i.i = phi <2 x float> [ %19, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.617.0.i.i.i = phi float [ %i.ba, %bb.e ], [ %.pre-phi, %bb.d ] ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.24.0.copyload.i.i, float %i.c) ; 2 uses
  %i.bc = fcmp une float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.f, label %GetCameraUp.exit.i

bb.f:                                             ; preds = %GetCameraForward.exit.i
  %sqrt.i.i31.i = tail call float @llvm.sqrt.f32(float %i.bb)
  %i.bd = fdiv float 1.000000e+00, %sqrt.i.i31.i  ; 3 uses
  %i.be = fmul float %.sroa.07.0.vec.extract.i.i, %i.bd
  %i.bf = fmul float %.sroa.07.4.vec.extract.i.i, %i.bd
  %i.bg = fmul float %.sroa.24.0.copyload.i.i, %i.bd
  br label %GetCameraUp.exit.i

GetCameraUp.exit.i:                               ; preds = %bb.f, %GetCameraForward.exit.i
  %.sroa.03.0.vec.extract.i.pre-phi.i = phi float [ %.sroa.07.0.vec.extract.i.i, %GetCameraForward.exit.i ], [ %i.be, %bb.f ] ; 2 uses
  %.sroa.03.4.vec.extract.i.pre-phi.i = phi float [ %.sroa.07.4.vec.extract.i.i, %GetCameraForward.exit.i ], [ %i.bf, %bb.f ] ; 2 uses
  %.sroa.617.0.i.i30.i = phi float [ %.sroa.24.0.copyload.i.i, %GetCameraForward.exit.i ], [ %i.bg, %bb.f ] ; 2 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i, i64 1 ; 2 uses
  %i.bh = fneg float %.sroa.03.4.vec.extract.i.pre-phi.i
  %i.bi = fmul float %.sroa.617.0.i.i.i, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i, float %.sroa.617.0.i.i30.i, float %i.bi) ; 4 uses
  %.sroa.018.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bj, i64 0
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i, i64 0 ; 2 uses
  %i.bk = fneg float %.sroa.617.0.i.i30.i
  %i.bl = fmul float %.sroa.011.0.vec.extract.i.i, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i.i, float %.sroa.03.0.vec.extract.i.pre-phi.i, float %i.bl) ; 4 uses
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i, float %i.bm, i64 1
  %i.bn = fneg float %.sroa.03.0.vec.extract.i.pre-phi.i
  %i.bo = fmul float %.sroa.011.4.vec.extract.i.i, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %.sroa.03.4.vec.extract.i.pre-phi.i, float %i.bo) ; 4 uses
  %i.bq = fmul float %i.bm, %i.bm
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bq)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.br) ; 2 uses
  %i.bt = fcmp une float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.g, label %GetCameraRight.exit

bb.g:                                             ; preds = %GetCameraUp.exit.i
  %sqrt.i.i114 = tail call float @llvm.sqrt.f32(float %i.bs)
  %i.bu = fdiv float 1.000000e+00, %sqrt.i.i114   ; 3 uses
  %i.bv = fmul float %i.bj, %i.bu
  %.sroa.013.0.vec.insert.i.i115 = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bw = fmul float %i.bm, %i.bu
  %.sroa.013.4.vec.insert.i.i116 = insertelement <2 x float> %.sroa.013.0.vec.insert.i.i115, float %i.bw, i64 1
  %i.bx = fmul float %i.bp, %i.bu
  br label %GetCameraRight.exit

GetCameraRight.exit:                              ; preds = %GetCameraUp.exit.i, %bb.g
  %.sroa.013.0.i.i112 = phi <2 x float> [ %.sroa.013.4.vec.insert.i.i116, %bb.g ], [ %.sroa.018.4.vec.insert.i.i, %GetCameraUp.exit.i ] ; 2 uses
  %.sroa.617.0.i.i113 = phi float [ %i.bx, %bb.g ], [ %i.bp, %GetCameraUp.exit.i ] ; 3 uses
  %.sroa.044.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i112, i64 0 ; 3 uses
  %.sroa.044.4.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i112, i64 1 ; 3 uses
  %i.by = fmul float %.sroa.044.4.vec.extract.i, %.sroa.044.4.vec.extract.i
  %i.bz = tail call float @llvm.fmuladd.f32(float %.sroa.044.0.vec.extract.i, float %.sroa.044.0.vec.extract.i, float %i.by)
  %i.ca = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i113, float %.sroa.617.0.i.i113, float %i.bz) ; 2 uses
  %sqrt.i117 = tail call float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  %i.cc = fdiv float 1.000000e+00, %sqrt.i117
  %i.cd = select i1 %i.cb, float 1.000000e+00, float %i.cc ; 3 uses
  %i.ce = fmul float %.sroa.044.0.vec.extract.i, %i.cd ; 2 uses
  %i.cf = fmul float %.sroa.044.4.vec.extract.i, %i.cd ; 2 uses
  %i.cg = fmul float %.sroa.617.0.i.i113, %i.cd   ; 2 uses
  %i.ch = fmul float %.2, 5.000000e-01            ; 4 uses
  %i.ci = tail call float @sinf(float noundef %i.ch) #56 ; 3 uses
  %i.cj = fmul float %i.ci, %i.ce                 ; 4 uses
  %i.ck = fmul float %i.ci, %i.cf                 ; 4 uses
  %i.cl = fmul float %i.ci, %i.cg                 ; 4 uses
  %i.cm = tail call float @cosf(float noundef %i.ch) #56
  %i.cn = fneg float %i.m
  %i.co = fmul float %i.cl, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.o, float %i.co) ; 3 uses
  %i.cq = fneg float %i.o
  %i.cr = fmul float %i.cj, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.n, float %i.cr) ; 3 uses
  %i.ct = fneg float %i.n
  %i.cu = fmul float %i.ck, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.m, float %i.cu) ; 3 uses
  %i.cw = fneg float %i.cs
  %i.cx = fmul float %i.cl, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cv, float %i.cx)
  %i.cz = fneg float %i.cv
  %i.da = fmul float %i.cj, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cp, float %i.da)
  %i.dc = fneg float %i.cp
  %i.dd = fmul float %i.ck, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cs, float %i.dd)
  %i.df = fmul float %i.cm, 2.000000e+00          ; 3 uses
  %i.dg = fmul float %i.df, %i.cp
  %i.dh = fmul float %i.df, %i.cs
  %i.di = fmul float %i.df, %i.cv
  %i.dj = fmul float %i.cy, 2.000000e+00
  %i.dk = fmul float %i.db, 2.000000e+00
  %i.dl = fmul float %i.de, 2.000000e+00
  %i.dm = fadd float %i.n, %i.dg
  %i.dn = fadd float %i.m, %i.dh
  %i.do = fadd float %i.o, %i.di
  %i.dp = fadd float %i.dm, %i.dj                 ; 2 uses
  %i.dq = fadd float %i.dn, %i.dk                 ; 2 uses
  %i.dr = fadd float %i.do, %i.dl                 ; 2 uses
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GetCameraRight.exit
  %.sroa.223.0.copyload = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %i.ds = fsub float %.sroa.06.0.vec.extract.i, %i.dp
  %.sroa.08.0.vec.insert.i122 = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dt = fsub float %.sroa.06.4.vec.extract.i, %i.dq
  %.sroa.08.4.vec.insert.i125 = insertelement <2 x float> %.sroa.08.0.vec.insert.i122, float %i.dt, i64 1
  %i.du = fsub float %.sroa.223.0.copyload, %i.dr
  store <2 x float> %.sroa.08.4.vec.insert.i125, ptr %0, align 4
  store float %i.du, ptr %.sroa.269.0..sroa_idx, align 4
  br label %bb.j

bb.i:                                             ; preds = %GetCameraRight.exit
  %.sroa.213.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %i.dv = fadd float %.sroa.03.0.vec.extract.i, %i.dp
  %.sroa.08.0.vec.insert.i130 = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dw = fadd float %.sroa.03.4.vec.extract.i, %i.dq
  %.sroa.08.4.vec.insert.i133 = insertelement <2 x float> %.sroa.08.0.vec.insert.i130, float %i.dw, i64 1
  %i.dx = fadd float %i.dr, %.sroa.213.0.copyload
  store <2 x float> %.sroa.08.4.vec.insert.i133, ptr %i.k, align 4
  store float %i.dx, ptr %.sroa.271.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 3 uses
  %i.dy = tail call float @sinf(float noundef %i.ch) #56 ; 3 uses
  %i.dz = fmul float %i.ce, %i.dy                 ; 4 uses
  %i.ea = fmul float %i.cf, %i.dy                 ; 4 uses
  %i.eb = fmul float %i.cg, %i.dy                 ; 4 uses
  %i.ec = tail call float @cosf(float noundef %i.ch) #56
  %i.ed = fneg float %.sroa.07.4.vec.extract.i.i
  %i.ee = fmul float %i.eb, %i.ed
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ea, float %.sroa.24.0.copyload, float %i.ee) ; 3 uses
  %i.eg = fneg float %.sroa.24.0.copyload
  %i.eh = fmul float %i.dz, %i.eg
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eb, float %.sroa.07.0.vec.extract.i.i, float %i.eh) ; 3 uses
  %i.ej = fneg float %.sroa.07.0.vec.extract.i.i
  %i.ek = fmul float %i.ea, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.dz, float %.sroa.07.4.vec.extract.i.i, float %i.ek) ; 3 uses
  %i.em = fneg float %i.ei
  %i.en = fmul float %i.eb, %i.em
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.el, float %i.en)
  %i.ep = fneg float %i.el
  %i.eq = fmul float %i.dz, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.ef, float %i.eq)
  %i.es = fneg float %i.ef
  %i.et = fmul float %i.ea, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.ei, float %i.et)
  %i.ev = fmul float %i.ec, 2.000000e+00          ; 3 uses
  %i.ew = fmul float %i.ev, %i.ef
  %i.ex = fmul float %i.ev, %i.ei
  %i.ey = fmul float %i.ev, %i.el
  %i.ez = fmul float %i.eo, 2.000000e+00
  %i.fa = fmul float %i.er, 2.000000e+00
  %i.fb = fmul float %i.eu, 2.000000e+00
  %i.fc = fadd float %.sroa.07.0.vec.extract.i.i, %i.ew
  %i.fd = fadd float %.sroa.07.4.vec.extract.i.i, %i.ex
  %i.fe = fadd float %.sroa.24.0.copyload, %i.ey
  %i.ff = fadd float %i.fc, %i.ez
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = fadd float %i.fd, %i.fa
  %.sroa.071.4.vec.insert82.i141 = insertelement <2 x float> %i.fg, float %i.fh, i64 1
  %i.fi = fadd float %i.fe, %i.fb
  store <2 x float> %.sroa.071.4.vec.insert82.i141, ptr %i.a, align 4
  store float %i.fi, ptr %.sroa.24.0..sroa_idx.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraRoll(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.011.0.copyload.i = load <2 x float>, ptr %i.a, align 4
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.212.0.copyload.i = load float, ptr %.sroa.212.0..sroa_idx.i, align 4
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %0, align 4
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4
  %i.b = fsub <2 x float> %.sroa.011.0.copyload.i, %.sroa.09.0.copyload.i ; 5 uses
  %i.c = fsub float %.sroa.212.0.copyload.i, %.sroa.210.0.copyload.i ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %GetCameraForward.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.g)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
end_hunk_1
begin_hunk_2_@EndShaderMode:bb.a

rlSetShader.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginBlendMode(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rlSetBlendMode(i32 noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndBlendMode() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2660), align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %rlSetBlendMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.b)
  %i.c = load ptr, ptr @glad_glBlendFunc, align 8
  tail call void %i.c(i32 noundef 770, i32 noundef 771) #56, !inline_history !263
  %i.d = load ptr, ptr @glad_glBlendEquation, align 8
  tail call void %i.d(i32 noundef 32774) #56, !inline_history !263
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2660), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2700), align 4
  br label %rlSetBlendMode.exit

rlSetBlendMode.exit:                              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginScissorMode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.Vector2, align 8            ; 6 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr @glad_glEnable, align 8
  tail call void %i.b(i32 noundef 3089) #56, !inline_history !264
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 16), align 8, !range !170, !noundef !171
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.f = and i32 %i.e, 8192
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 4575657222473777152, ptr %4, align 8
  %i.g = and i32 %i.e, 8194
  %or.cond.i = icmp eq i32 %i.g, 8192
  br i1 %or.cond.i, label %bb.d, label %GetWindowScaleDPI.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @platform.0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.h, ptr noundef nonnull %4, ptr noundef nonnull %i.i) #56
  %.pre.i = load <2 x float>, ptr %4, align 8
  br label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.c, %bb.d
  %i.j = phi <2 x float> [ %.pre.i, %bb.d ], [ splat (float 1.000000e+00), %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.k = sitofp i32 %0 to float
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.j, i64 0 ; 2 uses
  %i.l = fmul float %.sroa.0.0.vec.extract, %i.k
  %i.m = fptosi float %i.l to i32
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.o = uitofp i32 %i.n to float
  %i.p = add nsw i32 %3, %1
  %i.q = sitofp i32 %i.p to float
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.j, i64 1 ; 2 uses
  %i.r = fneg float %i.q
  %i.s = call float @llvm.fmuladd.f32(float %i.r, float %.sroa.0.4.vec.extract, float %i.o)
  %i.t = fptosi float %i.s to i32
  %i.u = sitofp i32 %2 to float
  %i.v = fmul float %.sroa.0.0.vec.extract, %i.u
  %i.w = fptosi float %i.v to i32
  %i.x = sitofp i32 %3 to float
  %i.y = fmul float %.sroa.0.4.vec.extract, %i.x
  %i.z = fptosi float %i.y to i32
  %i.aa = load ptr, ptr @glad_glScissor, align 8
  call void %i.aa(i32 noundef %i.m, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.z) #56, !inline_history !265
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.ac = add i32 %3, %1
  %i.ad = sub i32 %i.ab, %i.ac
  %i.ae = load ptr, ptr @glad_glScissor, align 8
  tail call void %i.ae(i32 noundef %0, i32 noundef %i.ad, i32 noundef %2, i32 noundef %3) #56, !inline_history !265
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %GetWindowScaleDPI.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndScissorMode() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr @glad_glDisable, align 8
  tail call void %i.b(i32 noundef 3089) #56, !inline_history !266
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BeginVrStereoMode(ptr nofree noundef readonly byval(%struct.VrStereoConfig) align 8 captures(none) %0) local_unnamed_addr #3 {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2400), align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2404), ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2468), ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2532), ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2596), ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @EndVrStereoMode() local_unnamed_addr #2 {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2400), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @LoadVrStereoConfig(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VrStereoConfig) align 4 captures(none) initializes((0, 304)) %0, ptr nofree noundef readonly byval(%struct.VrDeviceInfo) align 8 captures(none) %1) local_unnamed_addr #43 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 8
  %i.b = sitofp <2 x i32> %i.a to <2 x float>     ; 2 uses
  %i.c = extractelement <2 x float> %i.b, i64 0
  %i.d = fmul nnan float %i.c, 5.000000e-01
  %i.e = extractelement <2 x float> %i.b, i64 1
  %i.f = fdiv float %i.d, %i.e                    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 8            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  store float 4.000000e+00, ptr %i.r, align 4
  %i.s = fdiv float 2.000000e+00, %i.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 300
  store float %i.s, ptr %i.t, align 4
  %i.u = fmul float %i.j, -5.000000e-01
  %i.v = tail call float @llvm.fmuladd.f32(float %i.h, float 2.500000e-01, float %i.u)
  %i.w = fdiv float %i.v, %i.h                    ; 4 uses
  %i.x = fadd float %i.w, 2.500000e-01
  store float %i.x, ptr %i.k, align 4
  %.scalar = fsub float 7.500000e-01, %i.w
  %i.y = insertelement <4 x float> <float 5.000000e-01, float poison, float 5.000000e-01, float 2.500000e-01>, float %.scalar, i64 1
  store <4 x float> %i.y, ptr %i.l, align 4
  %i.z = tail call float @llvm.fmuladd.f32(float %i.w, float -4.000000e+00, float -1.000000e+00) ; 2 uses
  %i.aa = fmul float %i.z, %i.z                   ; 6 uses
  %i.ab = load float, ptr %i.q, align 8
  %i.ac = load float, ptr %i.p, align 4
  %i.ad = load float, ptr %i.o, align 8
  %i.ae = load float, ptr %i.n, align 4
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aa, float %i.ae)
  %i.ag = fmul float %i.aa, %i.ac
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.aa, float %i.af)
  %i.ai = fmul float %i.aa, %i.ab
  %i.aj = fmul float %i.aa, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load float, ptr %i.al, align 4
  %i.an = fmul float %i.am, 5.000000e-01
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load float, ptr %i.ao, align 8
  %i.aq = fpext float %i.f to double
  %.scalar188 = fmul float %i.w, 4.000000e+00     ; 3 uses
  %i.ar = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar188, i64 0 ; 2 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aa, float %i.ah) ; 3 uses
  %i.au = fdiv float 2.500000e-01, %i.at
  %i.av = insertelement <4 x float> <float 5.000000e-01, float 7.500000e-01, float 5.000000e-01, float poison>, float %i.au, i64 3
  store <4 x float> %i.av, ptr %i.m, align 4
  %i.aw = fmul float %i.at, %i.an
  %i.ax = tail call float @atan2f(float noundef %i.aw, float noundef %i.ap) #56
  %i.ay = fmul float %i.ax, 2.000000e+00
  %i.az = fpext float %i.ay to double
  %i.ba = load double, ptr @rlCullDistanceNear, align 8 ; 3 uses
  %i.bb = fmul double %i.az, 5.000000e-01
  %i.bc = tail call double @tan(double noundef %i.bb) #56, !noalias !267
  %i.bd = fmul double %i.ba, %i.bc                ; 4 uses
  %2 = fadd double %i.bd, %i.bd
  %i.be = fptrunc double %2 to float              ; 2 uses
  %3 = fptrunc double %i.ba to float              ; 3 uses
  %i.bf = insertelement <2 x float> poison, float %i.f, i64 0
  %4 = insertelement <2 x float> %i.bf, float %3, i64 1
  %5 = fmul <2 x float> %4, <float 5.000000e-01, float 2.000000e+00> ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bg = insertelement <2 x float> %6, float %i.be, i64 1
  %i.bh = fdiv <2 x float> %5, %i.bg              ; 3 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  store float %i.bi, ptr %i.ak, align 4
  %i.bj = load double, ptr @rlCullDistanceFar, align 8 ; 2 uses
  %7 = fmul double %i.bd, %i.aq                   ; 3 uses
  %i.bk = fsub double %i.bj, %i.ba
  %8 = fadd double %7, %7
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %10 = insertelement <2 x double> %9, double %i.bk, i64 1
  %11 = fptrunc <2 x double> %10 to <2 x float>   ; 2 uses
  %i.bl = fptrunc double %i.bj to float           ; 2 uses
  %i.bm = fadd float %3, %i.bl
  %i.bn = fneg float %i.bm
  %i.bo = fmul float %3, %i.bl
  %12 = insertelement <2 x double> poison, double %7, i64 0
  %13 = insertelement <2 x double> %12, double %i.bd, i64 1
  %i.bp = fptrunc <2 x double> %13 to <2 x float> ; 2 uses
  %i.bq = fsub <2 x float> %i.bp, %i.bp
  %14 = insertelement <2 x float> %11, float %i.be, i64 1
  %i.br = fdiv <2 x float> %i.bq, %14             ; 3 uses
  %i.bs = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.bs, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float %i.bn, i64 2
  %15 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %16 = shufflevector <4 x float> %15, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 2>
  %i.bv = insertelement <2 x float> %i.bh, float %i.bo, i64 0
  %i.bw = fmul <2 x float> %i.bv, <float -2.000000e+00, float 0.000000e+00>
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.by = shufflevector <4 x float> %i.bu, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bz = fdiv <4 x float> %i.by, %16             ; 4 uses
  %i.ca = extractelement <2 x float> %i.br, i64 1
  %i.cb = fmul float %i.ca, 0.000000e+00          ; 2 uses
  %i.cc = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  %i.cd = fadd float %i.cc, %i.cb
  %i.ce = extractelement <4 x float> %i.bz, i64 2 ; 2 uses
  %i.cf = extractelement <2 x float> %i.br, i64 1
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.cf)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.cb) ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.ch)
  %i.cj = fadd float %i.ci, -1.000000e+00         ; 2 uses
  %i.ck = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ck, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.cm = insertelement <4 x float> %i.cl, float %i.cg, i64 2
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> zeroinitializer, <4 x float> %i.cm) ; 4 uses
  %i.co = fadd <4 x float> %i.cn, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 7 uses
  store <4 x float> %i.co, ptr %.sroa.791.0..sroa_idx, align 4
  %.sroa.1195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = extractelement <4 x float> %i.co, i64 0 ; 2 uses
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.bz, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> %i.bx, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.cs = insertelement <4 x float> <float -0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.ch, i64 2
  %i.ct = fadd <4 x float> %i.cr, %i.cs           ; 5 uses
  store <4 x float> %i.ct, ptr %.sroa.1195.0..sroa_idx, align 4
  %.sroa.1599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.cp, ptr %.sroa.1599.0..sroa_idx, align 4
  %.sroa.16100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.17101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.cj, ptr %.sroa.17101.0..sroa_idx, align 4
  %.sroa.18102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cu = extractelement <4 x float> %i.co, i64 3
  store float %i.cu, ptr %.sroa.18102.0..sroa_idx, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = fneg float %.scalar188
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.cd) ; 2 uses
  %i.cy = fsub float %i.cx, %.scalar188
  %i.cz = extractelement <4 x float> %i.ct, i64 1 ; 2 uses
  %i.da = shufflevector <4 x float> %i.bz, <4 x float> %i.cn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 7>
  %i.db = fadd <4 x float> %i.da, <float 0.000000e+00, float undef, float undef, float -0.000000e+00> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.ct, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dd = insertelement <4 x float> %i.dc, float %i.cy, i64 2
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> zeroinitializer, <4 x float> %i.de)
  store <4 x float> %i.df, ptr %0, align 4
  store float %i.cz, ptr %.sroa.16100.0..sroa_idx, align 4
  %i.dg = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.cx, i64 1
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.dj = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.ct, <4 x float> %i.dj, <4 x i32> <i32 poison, i32 1, i32 4, i32 poison>
  %i.dl = shufflevector <4 x float> %i.db, <4 x float> %i.dk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.dl)
  store <4 x float> %i.dm, ptr %i.cv, align 4
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dn = shufflevector <4 x float> %i.co, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x float> %i.dn, ptr %.sroa.759.0..sroa_idx, align 4
  %.sroa.1163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = shufflevector <4 x float> %i.co, <4 x float> %i.ct, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.do, ptr %.sroa.1163.0..sroa_idx, align 4
  %.sroa.1567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.cp, ptr %.sroa.1567.0..sroa_idx, align 4
  %.sroa.1668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float %i.cz, ptr %.sroa.1668.0..sroa_idx, align 4
  %.sroa.1769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.cj, ptr %.sroa.1769.0..sroa_idx, align 4
  %.sroa.1870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load float, ptr %i.dp, align 8
  %i.dr = shufflevector <4 x float> %i.co, <4 x float> <float poison, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  store <4 x float> %i.dr, ptr %.sroa.1870.0..sroa_idx, align 4
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ds = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %i.dq, i64 0 ; 2 uses
  %i.dt = fmul <4 x float> %i.ds, <float 5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  store <4 x float> %i.dt, ptr %.sroa.628.0..sroa_idx, align 4
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store <4 x float> <float 7.500000e-02, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.1032.0..sroa_idx, align 4
  %.sroa.1436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store <4 x float> <float 4.500000e-02, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.1436.0..sroa_idx, align 4
  %.sroa.1840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.1840.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.du = fmul <4 x float> %i.ds, <float -5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  store <4 x float> %i.du, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <4 x float> <float 7.500000e-02, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store <4 x float> <float 4.500000e-02, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 252
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadVrStereoConfig(ptr nofree noundef readnone byval(%struct.VrStereoConfig) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.176)
  ret void
}

; Function Attrs: nounwind uwtable
define { i32, ptr } @LoadShader(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @LoadFileText(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 3 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @LoadFileText(ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.b, %bb.d ], [ null, %bb.c ]  ; 3 uses
  %i.c = icmp eq ptr %.014, null
  %i.d = icmp eq ptr %.0, null
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.177)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = tail call { i32, ptr } @LoadShaderFromMemory(ptr noundef %.014, ptr noundef %.0)
  tail call void @free(ptr noundef %.014) #56
  tail call void @free(ptr noundef %.0) #56
  ret { i32, ptr } %i.e
}

; Function Attrs: nounwind uwtable
define ptr @LoadFileText(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @loadFileText, align 8     ; 2 uses
  %.not33 = icmp eq ptr %i.a, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr %i.a(ptr noundef nonnull %0) #56
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.227) ; 6 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.e = tail call i64 @ftell(ptr noundef nonnull %i.c) ; 3 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 0) ; 0 uses
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = add i64 %i.e, 1
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #60 ; 4 uses
  %.not36 = icmp eq ptr %i.j, null
  br i1 %.not36, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %i.e, 4294967295
  %i.l = tail call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %i.c) ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp ult i32 %i.m, %i.f
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %i.l, 1
  %i.p = and i64 %i.o, 4294967295
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.p) #61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.025 = phi ptr [ %i.q, %bb.h ], [ %i.j, %bb.g ] ; 2 uses
  %i.r = and i64 %i.l, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %.025, i64 %i.r
  store i8 0, ptr %i.s, align 1
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.228, ptr noundef nonnull %0)
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.205, ptr noundef nonnull %0)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.229, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
end_hunk_2
