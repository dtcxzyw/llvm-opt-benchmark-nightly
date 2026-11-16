Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_refit?download=true
inline.NumInlined: 357
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEED2Ev:bb.a
  %.not.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6embree7BuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !0
  br label %_ZNSt10unique_ptrIN6embree7BuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6embree7BuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22, !inline_history !215
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEED2Ev.exit, label %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !214
  br label %_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEED2Ev.exit

_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 16             ; 2 uses
  %.not = icmp eq i32 %i.f, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @_ZN6embree4sse212BVHNRefitterILi4EE5refitEv(ptr noundef nonnull align 8 dereferenceable(2072) %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5clearEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = add nsw i64 %i.b, -8                     ; 2 uses
  %i.d = icmp eq i64 %i.a, 8
  br i1 %i.d, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  store <4 x float> splat (float +inf), ptr %0, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not605 = icmp eq i64 %i.c, 0
  br i1 %.not605, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !noalias !223 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEm.exit
  %.0603 = phi i64 [ 0, %.lr.ph ], [ %i.ox, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %i.o = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.ov, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %i.p = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.ow, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  br i1 %.not.i, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.d
  %i.q = load ptr, ptr %i.k, align 8, !noalias !223
  %i.r = load i32, ptr %i.q, align 4, !noalias !223
  %.not = icmp eq i32 %i.r, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray6boundsEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit.thread:   ; preds = %bb.d, %_ZNK6embree13InstanceArray5validEm.exit
  %i.s = load i32, ptr %i.l, align 4, !noalias !223
  %i.t = and i32 %i.s, 65280
  %i.u = icmp eq i32 %i.t, 256
  %i.v = load ptr, ptr %i.m, align 8, !noalias !223 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !noalias !223 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.j, !prof !7

bb.e:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.x, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.f
    i32 45057, label %bb.g
    i32 37428, label %bb.h
    i32 37172, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.v, align 8, !noalias !224 ; 4 uses
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !223
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load <4 x float>, ptr %i.aa, align 16, !noalias !223
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load <4 x float>, ptr %i.ac, align 16, !noalias !223
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.af = load <4 x float>, ptr %i.ae, align 16, !noalias !223
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.v, align 8, !noalias !223 ; 12 uses
  %i.ah = load float, ptr %i.ag, align 16, !noalias !223
  %.sroa.0155.0.vec.insert = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !noalias !223
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load float, ptr %i.ak, align 8, !noalias !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.an = load float, ptr %i.am, align 4, !noalias !223
  %i.ao = insertelement <4 x float> poison, float %i.an, i64 0
  %.sroa.11158.16.vec.insert = insertelement <4 x float> %i.ao, float %i.aj, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load <2 x float>, ptr %i.ap, align 16, !noalias !223
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20161.36.vec.insert = insertelement <4 x float> %i.ar, float %i.al, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.at = load <2 x float>, ptr %i.as, align 4, !noalias !223
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0155.8.vec.insert700 = shufflevector <4 x float> %.sroa.0155.0.vec.insert, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.aw = load float, ptr %i.av, align 4, !noalias !223
  %.sroa.11158.24.vec.insert = insertelement <4 x float> %.sroa.11158.16.vec.insert, float %i.aw, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.bc = load float, ptr %i.bb, align 16, !noalias !223 ; 3 uses
  %i.bd = load float, ptr %i.ay, align 4, !noalias !223 ; 2 uses
  %i.be = load <4 x float>, ptr %i.ax, align 8, !noalias !223
  %i.bf = load float, ptr %i.az, align 8, !noalias !223 ; 3 uses
  %i.bg = load float, ptr %i.ba, align 4, !noalias !223 ; 3 uses
  %i.bh = fmul float %i.bf, %i.bf
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bj) ; 2 uses
  %i.bl = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bm = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bl) ; 3 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 0 ; 2 uses
  %i.bo = fmul float %i.bn, 1.500000e+00
  %i.bp = fmul float %i.bk, 5.000000e-01
  %i.bq = fmul float %i.bn, %i.bp
  %foldExtExtBinop = fmul <4 x float> %i.bm, %i.bm
  %i.br = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = fsub float %i.bo, %i.bs                 ; 4 uses
  %i.bu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bt, i64 3
  %i.bv = fmul <4 x float> %i.be, %i.bu
  %i.bw = fmul float %i.bf, %i.bt
  %i.bx = fmul float %i.bg, %i.bt
  %i.by = fmul float %i.bc, %i.bt
  %.sroa.0155.12.vec.insert = insertelement <4 x float> %.sroa.0155.8.vec.insert700, float %i.bw, i64 3
  %.sroa.11158.28.vec.insert = insertelement <4 x float> %.sroa.11158.24.vec.insert, float %i.bx, i64 3
  %.sroa.20161.44.vec.insert = insertelement <4 x float> %.sroa.20161.36.vec.insert, float %i.by, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.h:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr %i.v, align 8, !noalias !224 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !noalias !223
  %i.cc = load float, ptr %i.bz, align 4, !noalias !223
  %i.cd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !noalias !223
  %i.cj = load float, ptr %i.cg, align 4, !noalias !223
  %i.ck = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cp = load <2 x float>, ptr %i.co, align 4, !noalias !223
  %i.cq = load float, ptr %i.cn, align 4, !noalias !223
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cq, i64 0
  %i.cs = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cw = load <2 x float>, ptr %i.cv, align 4, !noalias !223
  %i.cx = load float, ptr %i.cu, align 4, !noalias !223
  %i.cy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.i:                                             ; preds = %bb.e
  %i.db = load ptr, ptr %i.v, align 8, !noalias !224 ; 12 uses
  %i.dc = load float, ptr %i.db, align 4, !noalias !224
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.de = load float, ptr %i.dd, align 4, !noalias !224
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load float, ptr %i.df, align 4, !noalias !224
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.di = load float, ptr %i.dh, align 4, !noalias !224
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dk = load float, ptr %i.dj, align 4, !noalias !224
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.dm = load float, ptr %i.dl, align 4, !noalias !224
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.do = load float, ptr %i.dn, align 4, !noalias !224
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dq = load float, ptr %i.dp, align 4, !noalias !224
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ds = load float, ptr %i.dr, align 4, !noalias !224
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 36
  %i.du = load float, ptr %i.dt, align 4, !noalias !224
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dw = load float, ptr %i.dv, align 4, !noalias !224
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.dy = load float, ptr %i.dx, align 4, !noalias !224
  %i.dz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dc, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.dk, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.ds, i64 2
  %i.ec = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %i.dm, i64 1
  %i.ee = insertelement <4 x float> %i.ed, float %i.du, i64 2
  %i.ef = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dg, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.do, i64 1
  %i.eh = insertelement <4 x float> %i.eg, float %i.dw, i64 2
  %i.ei = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.di, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.dq, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.dy, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

_ZNK6embree13InstanceArray3l2wEmm.exit:           ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.29164.0 = phi <4 x float> [ %i.af, %bb.f ], [ %i.bv, %bb.g ], [ %i.da, %bb.h ], [ %i.ek, %bb.i ], [ undef, %bb.e ] ; 5 uses
  %.sroa.20161.0 = phi <4 x float> [ %i.ad, %bb.f ], [ %.sroa.20161.44.vec.insert, %bb.g ], [ %i.ct, %bb.h ], [ %i.eh, %bb.i ], [ undef, %bb.e ] ; 5 uses
  %.sroa.11158.0 = phi <4 x float> [ %i.ab, %bb.f ], [ %.sroa.11158.28.vec.insert, %bb.g ], [ %i.cm, %bb.h ], [ %i.ee, %bb.i ], [ undef, %bb.e ] ; 6 uses
  %.sroa.0155.0 = phi <4 x float> [ %i.z, %bb.f ], [ %.sroa.0155.12.vec.insert, %bb.g ], [ %i.cf, %bb.h ], [ %i.eb, %bb.i ], [ undef, %bb.e ] ; 5 uses
  %.sroa.29164.60.vec.extract = extractelement <4 x float> %.sroa.29164.0, i64 3 ; 7 uses
  %.sroa.0155.12.vec.extract = extractelement <4 x float> %.sroa.0155.0, i64 3 ; 7 uses
  %.sroa.11158.28.vec.extract = extractelement <4 x float> %.sroa.11158.0, i64 3 ; 7 uses
  %.sroa.20161.44.vec.extract = extractelement <4 x float> %.sroa.20161.0, i64 3 ; 6 uses
  %.sroa.17273.52.vec.insert = shufflevector <4 x float> %.sroa.0155.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17273.56.vec.insert = shufflevector <4 x float> %.sroa.17273.52.vec.insert, <4 x float> %.sroa.11158.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.el = fmul float %.sroa.0155.12.vec.extract, %.sroa.0155.12.vec.extract
  %i.em = tail call float @llvm.fmuladd.f32(float %.sroa.29164.60.vec.extract, float %.sroa.29164.60.vec.extract, float %i.el)
  %i.en = fneg float %.sroa.11158.28.vec.extract  ; 3 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %.sroa.11158.28.vec.extract, float %i.em)
  %i.ep = fneg float %.sroa.20161.44.vec.extract  ; 3 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %.sroa.20161.44.vec.extract, float %i.eo)
  %i.er = fmul float %.sroa.29164.60.vec.extract, %.sroa.20161.44.vec.extract
  %i.es = tail call float @llvm.fmuladd.f32(float %.sroa.0155.12.vec.extract, float %.sroa.11158.28.vec.extract, float %i.er)
  %i.et = fmul float %i.es, 2.000000e+00
  %i.eu = fmul float %.sroa.29164.60.vec.extract, %i.en
  %i.ev = tail call float @llvm.fmuladd.f32(float %.sroa.0155.12.vec.extract, float %.sroa.20161.44.vec.extract, float %i.eu)
  %i.ew = fmul float %i.ev, 2.000000e+00
  %i.ex = fmul float %.sroa.29164.60.vec.extract, %i.ep
  %i.ey = tail call float @llvm.fmuladd.f32(float %.sroa.0155.12.vec.extract, float %.sroa.11158.28.vec.extract, float %i.ex)
  %i.ez = fmul float %i.ey, 2.000000e+00
  %i.fa = fneg float %.sroa.0155.12.vec.extract   ; 2 uses
  %i.fb = fmul float %.sroa.0155.12.vec.extract, %i.fa
  %i.fc = tail call float @llvm.fmuladd.f32(float %.sroa.29164.60.vec.extract, float %.sroa.29164.60.vec.extract, float %i.fb) ; 2 uses
  %i.fd = tail call float @llvm.fmuladd.f32(float %.sroa.11158.28.vec.extract, float %.sroa.11158.28.vec.extract, float %i.fc)
  %i.fe = shufflevector <4 x float> %.sroa.29164.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.ff = shufflevector <4 x float> %.sroa.0155.0, <4 x float> %.sroa.11158.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float %i.fd, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.fa, i64 3
  %i.fi = fmul <4 x float> %i.fe, %i.fh
  %i.fj = shufflevector <4 x float> %.sroa.11158.0, <4 x float> %.sroa.0155.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.fk = insertelement <4 x float> %i.fj, float %i.ep, i64 0
  %i.fl = shufflevector <4 x float> %.sroa.20161.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fl, <4 x float> %i.fi) ; 3 uses
  %i.fn = extractelement <4 x float> %i.fm, i64 1
  %i.fo = fmul float %i.fn, 2.000000e+00
  %i.fp = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fq = fmul <2 x float> %i.fp, splat (float 2.000000e+00) ; 2 uses
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.en, float %.sroa.11158.28.vec.extract, float %i.fc)
  %i.fs = tail call float @llvm.fmuladd.f32(float %.sroa.20161.44.vec.extract, float %.sroa.20161.44.vec.extract, float %i.fr)
  %i.ft = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = insertelement <4 x float> poison, float %i.et, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fmul <4 x float> %i.fy, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ga = fmul <4 x float> %i.fw, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gb = fadd <4 x float> %i.ga, %i.fz
  %i.gc = fmul <4 x float> %i.fu, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gd = fadd <4 x float> %i.gb, %i.gc           ; 4 uses
  %i.ge = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gh = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = fmul <4 x float> %i.gi, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.gk = fmul <4 x float> %i.gg, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gl = fadd <4 x float> %i.gj, %i.gk
  %i.gm = fmul <4 x float> %i.gf, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gn = fadd <4 x float> %i.gm, %i.gl           ; 4 uses
  %i.go = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gp = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gq = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = fmul <4 x float> %i.gr, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.gt = fmul <4 x float> %i.gp, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  %i.gv = fmul <4 x float> %i.go, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gw = fadd <4 x float> %i.gv, %i.gu           ; 3 uses
  %i.gx = fadd <4 x float> %.sroa.17273.56.vec.insert, zeroinitializer
  %i.gy = shufflevector <4 x float> %.sroa.0155.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fmul <4 x float> %i.gw, zeroinitializer ; 2 uses
  %i.ha = fmul <4 x float> %i.gn, zeroinitializer
  %i.hb = fadd <4 x float> %i.ha, %i.gz
  %i.hc = fmul <4 x float> %i.gy, %i.gd
  %i.hd = fadd <4 x float> %i.hc, %i.hb           ; 2 uses
  %i.he = shufflevector <4 x float> %.sroa.11158.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hf = shufflevector <4 x float> %.sroa.11158.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hg = fmul <4 x float> %i.hf, %i.gn
  %i.hh = fadd <4 x float> %i.hg, %i.gz
  %i.hi = fmul <4 x float> %i.he, %i.gd
  %i.hj = fadd <4 x float> %i.hi, %i.hh           ; 2 uses
  %i.hk = shufflevector <4 x float> %.sroa.20161.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = shufflevector <4 x float> %.sroa.20161.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hm = shufflevector <4 x float> %.sroa.20161.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hn = fmul <4 x float> %i.hm, %i.gw
  %i.ho = fmul <4 x float> %i.hl, %i.gn
  %i.hp = fadd <4 x float> %i.ho, %i.hn
  %i.hq = fmul <4 x float> %i.hk, %i.gd
  %i.hr = fadd <4 x float> %i.hq, %i.hp           ; 2 uses
  %i.hs = shufflevector <4 x float> %.sroa.29164.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = shufflevector <4 x float> %.sroa.29164.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hu = shufflevector <4 x float> %.sroa.29164.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hv = fmul <4 x float> %i.hu, %i.gw
  %i.hw = fmul <4 x float> %i.ht, %i.gn
  %i.hx = fadd <4 x float> %i.hw, %i.hv
  %i.hy = fmul <4 x float> %i.hs, %i.gd
  %i.hz = fadd <4 x float> %i.hy, %i.hx
  %i.ia = fadd <4 x float> %i.gx, %i.hz           ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

bb.j:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.x, label %_ZNK6embree13InstanceArray3l2wEmm.exit6 [
    i32 37444, label %bb.k
    i32 45057, label %bb.l
    i32 37428, label %bb.m
    i32 37172, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ib = load ptr, ptr %i.v, align 8, !noalias !225 ; 4 uses
  %i.ic = load <4 x float>, ptr %i.ib, align 16, !noalias !223
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ie = load <4 x float>, ptr %i.id, align 16, !noalias !223
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.ig = load <4 x float>, ptr %i.if, align 16, !noalias !223
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  %i.ii = load <4 x float>, ptr %i.ih, align 16, !noalias !223
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.l:                                             ; preds = %bb.j
  %i.ij = load ptr, ptr %i.v, align 8, !noalias !223 ; 12 uses
  %i.ik = load float, ptr %i.ij, align 16, !noalias !223
  %.sroa.083.0.vec.insert = insertelement <4 x float> poison, float %i.ik, i64 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.im = load float, ptr %i.il, align 4, !noalias !223
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.io = load float, ptr %i.in, align 8, !noalias !223
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.iq = load float, ptr %i.ip, align 4, !noalias !223
  %i.ir = insertelement <4 x float> poison, float %i.iq, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.ir, float %i.im, i64 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.it = load <2 x float>, ptr %i.is, align 16, !noalias !223
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.iu, float %i.io, i64 2
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 52
  %i.iw = load <2 x float>, ptr %i.iv, align 4, !noalias !223
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.083.8.vec.insert701 = shufflevector <4 x float> %.sroa.083.0.vec.insert, <4 x float> %i.ix, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 60
  %i.iz = load float, ptr %i.iy, align 4, !noalias !223
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.iz, i64 2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ij, i64 36
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 44
  %i.je = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.jf = load float, ptr %i.je, align 16, !noalias !223 ; 3 uses
  %i.jg = load float, ptr %i.jb, align 4, !noalias !223 ; 2 uses
  %i.jh = load <4 x float>, ptr %i.ja, align 8, !noalias !223
  %i.ji = load float, ptr %i.jc, align 8, !noalias !223 ; 3 uses
  %i.jj = load float, ptr %i.jd, align 4, !noalias !223 ; 3 uses
  %i.jk = fmul float %i.ji, %i.ji
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.jg, float %i.jg, float %i.jk)
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.jl)
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.jm) ; 2 uses
  %i.jo = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jp = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.jo) ; 3 uses
  %i.jq = extractelement <4 x float> %i.jp, i64 0 ; 2 uses
  %i.jr = fmul float %i.jq, 1.500000e+00
  %i.js = fmul float %i.jn, 5.000000e-01
  %i.jt = fmul float %i.jq, %i.js
  %foldExtExtBinop703 = fmul <4 x float> %i.jp, %i.jp
  %i.ju = extractelement <4 x float> %foldExtExtBinop703, i64 0
  %i.jv = fmul float %i.ju, %i.jt
  %i.jw = fsub float %i.jr, %i.jv                 ; 4 uses
  %i.jx = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.jw, i64 3
  %i.jy = fmul <4 x float> %i.jh, %i.jx
  %i.jz = fmul float %i.ji, %i.jw
  %i.ka = fmul float %i.jj, %i.jw
  %i.kb = fmul float %i.jf, %i.jw
  %.sroa.083.12.vec.insert = insertelement <4 x float> %.sroa.083.8.vec.insert701, float %i.jz, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.ka, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.kb, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.m:                                             ; preds = %bb.j
  %i.kc = load ptr, ptr %i.v, align 8, !noalias !225 ; 8 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load <2 x float>, ptr %i.kd, align 4, !noalias !223
  %i.kf = load float, ptr %i.kc, align 4, !noalias !223
  %i.kg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.kf, i64 0
  %i.kh = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ki = shufflevector <4 x float> %i.kg, <4 x float> %i.kh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kl = load <2 x float>, ptr %i.kk, align 4, !noalias !223
  %i.km = load float, ptr %i.kj, align 4, !noalias !223
  %i.kn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.km, i64 0
  %i.ko = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kp = shufflevector <4 x float> %i.kn, <4 x float> %i.ko, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kc, i64 28
  %i.ks = load <2 x float>, ptr %i.kr, align 4, !noalias !223
  %i.kt = load float, ptr %i.kq, align 4, !noalias !223
  %i.ku = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.kt, i64 0
  %i.kv = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kw = shufflevector <4 x float> %i.ku, <4 x float> %i.kv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 36
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.kz = load <2 x float>, ptr %i.ky, align 4, !noalias !223
  %i.la = load float, ptr %i.kx, align 4, !noalias !223
  %i.lb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.la, i64 0
  %i.lc = shufflevector <2 x float> %i.kz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ld = shufflevector <4 x float> %i.lb, <4 x float> %i.lc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.n:                                             ; preds = %bb.j
  %i.le = load ptr, ptr %i.v, align 8, !noalias !225 ; 12 uses
  %i.lf = load float, ptr %i.le, align 4, !noalias !225
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lh = load float, ptr %i.lg, align 4, !noalias !225
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lj = load float, ptr %i.li, align 4, !noalias !225
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.ll = load float, ptr %i.lk, align 4, !noalias !225
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.ln = load float, ptr %i.lm, align 4, !noalias !225
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  %i.lp = load float, ptr %i.lo, align 4, !noalias !225
  %i.lq = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lr = load float, ptr %i.lq, align 4, !noalias !225
  %i.ls = getelementptr inbounds nuw i8, ptr %i.le, i64 28
  %i.lt = load float, ptr %i.ls, align 4, !noalias !225
  %i.lu = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lv = load float, ptr %i.lu, align 4, !noalias !225
  %i.lw = getelementptr inbounds nuw i8, ptr %i.le, i64 36
  %i.lx = load float, ptr %i.lw, align 4, !noalias !225
  %i.ly = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lz = load float, ptr %i.ly, align 4, !noalias !225
  %i.ma = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %i.mb = load float, ptr %i.ma, align 4, !noalias !225
  %i.mc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lf, i64 0
  %i.md = insertelement <4 x float> %i.mc, float %i.ln, i64 1
  %i.me = insertelement <4 x float> %i.md, float %i.lv, i64 2
  %i.mf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lh, i64 0
  %i.mg = insertelement <4 x float> %i.mf, float %i.lp, i64 1
  %i.mh = insertelement <4 x float> %i.mg, float %i.lx, i64 2
  %i.mi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lj, i64 0
  %i.mj = insertelement <4 x float> %i.mi, float %i.lr, i64 1
  %i.mk = insertelement <4 x float> %i.mj, float %i.lz, i64 2
  %i.ml = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ll, i64 0
  %i.mm = insertelement <4 x float> %i.ml, float %i.lt, i64 1
  %i.mn = insertelement <4 x float> %i.mm, float %i.mb, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

_ZNK6embree13InstanceArray3l2wEmm.exit6:          ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.sroa.26.0 = phi <4 x float> [ %i.ii, %bb.k ], [ %i.jy, %bb.l ], [ %i.ld, %bb.m ], [ %i.mn, %bb.n ], [ undef, %bb.j ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.ig, %bb.k ], [ %.sroa.18.44.vec.insert, %bb.l ], [ %i.kw, %bb.m ], [ %i.mk, %bb.n ], [ undef, %bb.j ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.ie, %bb.k ], [ %.sroa.10.28.vec.insert, %bb.l ], [ %i.kp, %bb.m ], [ %i.mh, %bb.n ], [ undef, %bb.j ] ; 2 uses
  %.sroa.083.0 = phi <4 x float> [ %i.ic, %bb.k ], [ %.sroa.083.12.vec.insert, %bb.l ], [ %i.ki, %bb.m ], [ %i.me, %bb.n ], [ undef, %bb.j ] ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit6, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.sink679.ph = phi <4 x float> [ %i.hr, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sink677.ph = phi <4 x float> [ %i.ia, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sink675.ph = phi <4 x float> [ %i.hj, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sink671.ph = phi <4 x float> [ %i.hd, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.083.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %i.mo = load ptr, ptr %i.k, align 8, !noalias !223
  %i.mp = load i32, ptr %i.mo, align 4, !noalias !223 ; 2 uses
  %i.mq = icmp ne i32 %i.mp, -1
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = load ptr, ptr %i.n, align 16, !noalias !223
  %i.ms = zext i32 %i.mp to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !223
  br label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit6, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.0.i8.sink692 = phi ptr [ %i.j, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %i.j, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %i.mu, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 4 uses
  %.sink679 = phi <4 x float> [ %i.hr, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink679.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink677 = phi <4 x float> [ %i.ia, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink677.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink675 = phi <4 x float> [ %i.hj, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink675.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink671 = phi <4 x float> [ %i.hd, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.083.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink671.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i8.sink692, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i8.sink692, i64 48
  %i.mx = load <4 x float>, ptr %i.mv, align 16, !noalias !223
  %i.my = load <4 x float>, ptr %i.mw, align 16, !noalias !223
  %i.mz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mx, <4 x float> %i.my) ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i8.sink692, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.i8.sink692, i64 64
  %i.nc = load <4 x float>, ptr %i.na, align 16, !noalias !223
  %i.nd = load <4 x float>, ptr %i.nb, align 16, !noalias !223
  %i.ne = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nc, <4 x float> %i.nd) ; 3 uses
  %i.nf = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nh = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ni = fmul <4 x float> %.sink679, %i.nh
  %i.nj = fadd <4 x float> %.sink677, %i.ni       ; 2 uses
  %i.nk = fmul <4 x float> %.sink675, %i.ng       ; 2 uses
  %i.nl = fadd <4 x float> %i.nk, %i.nj           ; 2 uses
  %i.nm = fmul <4 x float> %.sink671, %i.nf       ; 4 uses
  %i.nn = fadd <4 x float> %i.nm, %i.nl           ; 2 uses
  %i.no = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.nn)
  %i.np = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.nn)
  %i.nq = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.nr = fmul <4 x float> %.sink679, %i.nq
  %i.ns = fadd <4 x float> %.sink677, %i.nr       ; 2 uses
  %i.nt = fadd <4 x float> %i.nk, %i.ns           ; 2 uses
  %i.nu = fadd <4 x float> %i.nm, %i.nt           ; 2 uses
  %i.nv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.no, <4 x float> %i.nu)
  %i.nw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.np, <4 x float> %i.nu)
  %i.nx = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ny = fmul <4 x float> %.sink675, %i.nx       ; 2 uses
  %i.nz = fadd <4 x float> %i.nj, %i.ny           ; 2 uses
  %i.oa = fadd <4 x float> %i.nm, %i.nz           ; 2 uses
  %i.ob = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nv, <4 x float> %i.oa)
  %i.oc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nw, <4 x float> %i.oa)
  %i.od = fadd <4 x float> %i.ny, %i.ns           ; 2 uses
  %i.oe = fadd <4 x float> %i.nm, %i.od           ; 2 uses
  %i.of = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ob, <4 x float> %i.oe)
  %i.og = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oc, <4 x float> %i.oe)
  %i.oh = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = fmul <4 x float> %.sink671, %i.oh       ; 4 uses
  %i.oj = fadd <4 x float> %i.nl, %i.oi           ; 2 uses
  %i.ok = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.of, <4 x float> %i.oj)
  %i.ol = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.og, <4 x float> %i.oj)
  %i.om = fadd <4 x float> %i.oi, %i.nt           ; 2 uses
  %i.on = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ok, <4 x float> %i.om)
  %i.oo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ol, <4 x float> %i.om)
  %i.op = fadd <4 x float> %i.oi, %i.nz           ; 2 uses
  %i.oq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.on, <4 x float> %i.op)
  %i.or = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oo, <4 x float> %i.op)
  %i.os = fadd <4 x float> %i.oi, %i.od           ; 2 uses
  %i.ot = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oq, <4 x float> %i.os)
  %i.ou = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.or, <4 x float> %i.os)
  br label %_ZNK6embree13InstanceArray6boundsEm.exit

_ZNK6embree13InstanceArray6boundsEm.exit:         ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit
  %.sroa.37.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.ou, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ]
  %.sroa.0.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.ot, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ]
  %i.ov = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.o, <4 x float> %.sroa.0.0) ; 2 uses
  %i.ow = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> %.sroa.37.0) ; 2 uses
  %i.ox = add nuw i64 %.0603, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ox, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !222

.loopexit:                                        ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit, %bb.c
  %.lcssa602 = phi <4 x float> [ splat (float -inf), %bb.c ], [ %i.ow, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.c ], [ %i.ov, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa602, ptr %i.f, align 16
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZThn16_NK6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  tail call void @_ZNK6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null, null}
!1 = distinct !{!1, !10}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 2158289097}
!9 = !{i8 0, i8 2}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{null, null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{null, null, null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{null}
!24 = distinct !{!24, !10}
!25 = !{i64 16}
!26 = distinct !{ptr @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED2Ev, null, null}
!27 = !{ptr @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED2Ev}
!28 = distinct !{!28, i1 true, !"_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE"}
!29 = distinct !{!29, !28, !"_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!31 = distinct !{!31, !30, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!32 = distinct !{!32, i1 true, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!33 = distinct !{!33, !32, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!34 = distinct !{!34, i1 true, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!35 = distinct !{!35, !34, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!37 = distinct !{!37, !36, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!39 = distinct !{!39, !38, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!41 = distinct !{!41, !40, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!42 = distinct !{!42, !10}
!43 = !{!29}
!44 = !{!31, !29}
!45 = !{!33, !31, !29}
!46 = !{!37, !35, !29}
!47 = !{!41, !39, !29}
!48 = distinct !{ptr @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED2Ev, null, null}
!49 = !{ptr @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED2Ev}
!50 = distinct !{!50, i1 true, !"_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE"}
!51 = distinct !{!51, !50, !"_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE: argument 0"}
end_hunk_0
