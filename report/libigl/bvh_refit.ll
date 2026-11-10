Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_refit?download=true
inline.NumInlined: 357
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED2Ev:bb.a
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !0
  br label %_ZNSt10unique_ptrIN6embree7BuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6embree7BuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22, !inline_history !27
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED2Ev.exit, label %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !26
  br label %_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED2Ev.exit

_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6embree8RefCount6refIncEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree8RefCount6refDecEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 -1 seq_cst, align 8
  %.not = icmp eq i64 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ugt i32 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree4sse212BVHNRefitterILi4EE5refitEv(ptr noundef nonnull align 8 dereferenceable(2072) %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree7Builder14deleteGeometryEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr hidden void @_ZNK6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = and i64 %i.a, 15
  %i.c = add nsw i64 %i.b, -8                     ; 2 uses
  %i.d = and i64 %i.a, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq i64 %i.a, 8
  br i1 %i.f, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  store <4 x float> splat (float +inf), ptr %0, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit
  %.051 = phi i64 [ 0, %.lr.ph ], [ %i.ff, %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit ] ; 2 uses
  %i.j = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.fd, %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit ]
  %i.k = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.fe, %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit ]
  %i.l = getelementptr inbounds nuw [176 x i8], ptr %i.e, i64 %.051 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.o = load i32, ptr %i.m, align 16, !noalias !43 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.v = load i32, ptr %i.n, align 16, !noalias !43 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %i.u, align 8, !noalias !43 ; 4 uses
  %i.y = load i64, ptr %i.t, align 8, !noalias !43 ; 4 uses
  %i.z = mul i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !43
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.s, align 8, !noalias !44 ; 12 uses
  %i.ae = load i64, ptr %i.r, align 8, !noalias !44 ; 12 uses
  %i.af = mul i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !noalias !45 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !43
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load <4 x float>, ptr %i.am, align 1, !noalias !46 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !43
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul i64 %i.ae, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ar
  %i.at = load <4 x float>, ptr %i.as, align 1, !noalias !47 ; 5 uses
  %i.au = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.an, <4 x float> %i.at)
  %i.av = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.an, <4 x float> %i.at)
  %i.aw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ah, <4 x float> %i.au)
  %i.ax = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ah, <4 x float> %i.av)
  %i.ay = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.aw) ; 2 uses
  %i.az = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ax) ; 2 uses
  %.sroa.073.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.o, i64 0 ; 2 uses
  %.sroa.070.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.v, i64 0 ; 2 uses
  %.sroa.064.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.866.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.1468.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.058.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.an, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.860.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.an, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.1462.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.an, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.at, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.at, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.14.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.at, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !43 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  %i.be = load i32, ptr %i.bd, align 4, !noalias !43 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul i64 %i.y, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !43
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul i64 %i.ae, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bk
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !noalias !45 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !43
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul i64 %i.ae, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bq
  %i.bs = load <4 x float>, ptr %i.br, align 1, !noalias !46 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !43
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul i64 %i.ae, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bw
  %i.by = load <4 x float>, ptr %i.bx, align 1, !noalias !47 ; 5 uses
  %i.bz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.by)
  %i.ca = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bs, <4 x float> %i.by)
  %i.cb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bm, <4 x float> %i.bz)
  %i.cc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bm, <4 x float> %i.ca)
  %i.cd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ay, <4 x float> %i.cb) ; 2 uses
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.az, <4 x float> %i.cc) ; 2 uses
  %.sroa.073.4.vec.insert = insertelement <4 x i32> %.sroa.073.0.vec.insert, i32 %i.bb, i64 1 ; 2 uses
  %.sroa.070.4.vec.insert = insertelement <4 x i32> %.sroa.070.0.vec.insert, i32 %i.be, i64 1 ; 2 uses
  %.sroa.064.4.vec.insert = shufflevector <4 x float> %.sroa.064.0.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.866.20.vec.insert = shufflevector <4 x float> %.sroa.866.16.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1468.36.vec.insert = shufflevector <4 x float> %.sroa.1468.32.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.058.4.vec.insert = shufflevector <4 x float> %.sroa.058.0.vec.insert, <4 x float> %i.bs, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.860.20.vec.insert = shufflevector <4 x float> %.sroa.860.16.vec.insert, <4 x float> %i.bs, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1462.36.vec.insert = shufflevector <4 x float> %.sroa.1462.32.vec.insert, <4 x float> %i.bs, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.by, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.14.36.vec.insert = shufflevector <4 x float> %.sroa.14.32.vec.insert, <4 x float> %i.by, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.cg = load i32, ptr %i.cf, align 8, !noalias !43 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.cj = load i32, ptr %i.ci, align 8, !noalias !43 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul i64 %i.y, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cl ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !43
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul i64 %i.ae, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cp
  %i.cr = load <4 x float>, ptr %i.cq, align 1, !noalias !45 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !43
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul i64 %i.ae, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cv
  %i.cx = load <4 x float>, ptr %i.cw, align 1, !noalias !46 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !noalias !43
  %i.da = zext i32 %i.cz to i64
  %i.db = mul i64 %i.ae, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.db
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !noalias !47 ; 5 uses
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cx, <4 x float> %i.dd)
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cx, <4 x float> %i.dd)
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cr, <4 x float> %i.de)
  %i.dh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cr, <4 x float> %i.df)
  %i.di = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cd, <4 x float> %i.dg) ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ce, <4 x float> %i.dh) ; 2 uses
  %.sroa.073.8.vec.insert = insertelement <4 x i32> %.sroa.073.4.vec.insert, i32 %i.cg, i64 2 ; 2 uses
  %.sroa.070.8.vec.insert = insertelement <4 x i32> %.sroa.070.4.vec.insert, i32 %i.cj, i64 2 ; 2 uses
  %.sroa.064.8.vec.insert = shufflevector <4 x float> %.sroa.064.4.vec.insert, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.866.24.vec.insert = shufflevector <4 x float> %.sroa.866.20.vec.insert, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1468.40.vec.insert = shufflevector <4 x float> %.sroa.1468.36.vec.insert, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.058.8.vec.insert = shufflevector <4 x float> %.sroa.058.4.vec.insert, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.860.24.vec.insert = shufflevector <4 x float> %.sroa.860.20.vec.insert, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1462.40.vec.insert = shufflevector <4 x float> %.sroa.1462.36.vec.insert, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.14.40.vec.insert = shufflevector <4 x float> %.sroa.14.36.vec.insert, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !43 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.do = load i32, ptr %i.dn, align 4, !noalias !43 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = mul i64 %i.y, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dq ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !43
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul i64 %i.ae, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !noalias !45 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !43
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul i64 %i.ae, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ea
  %i.ec = load <4 x float>, ptr %i.eb, align 1, !noalias !46 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !43
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul i64 %i.ae, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 1, !noalias !47 ; 5 uses
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ec, <4 x float> %i.ei)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ec, <4 x float> %i.ei)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dw, <4 x float> %i.ej)
  %i.em = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dw, <4 x float> %i.ek)
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.di, <4 x float> %i.el)
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dj, <4 x float> %i.em)
  %.sroa.073.12.vec.insert = insertelement <4 x i32> %.sroa.073.8.vec.insert, i32 %i.dl, i64 3
  %.sroa.070.12.vec.insert = insertelement <4 x i32> %.sroa.070.8.vec.insert, i32 %i.do, i64 3
  %.sroa.064.12.vec.insert = shufflevector <4 x float> %.sroa.064.8.vec.insert, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.866.28.vec.insert = shufflevector <4 x float> %.sroa.866.24.vec.insert, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1468.44.vec.insert = shufflevector <4 x float> %.sroa.1468.40.vec.insert, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.058.12.vec.insert = shufflevector <4 x float> %.sroa.058.8.vec.insert, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.860.28.vec.insert = shufflevector <4 x float> %.sroa.860.24.vec.insert, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1462.44.vec.insert = shufflevector <4 x float> %.sroa.1462.40.vec.insert, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.14.44.vec.insert = shufflevector <4 x float> %.sroa.14.40.vec.insert, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  br label %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit

_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.073.0 = phi <4 x i32> [ splat (i32 -1), %bb.d ], [ %.sroa.073.0.vec.insert, %bb.e ], [ %.sroa.073.4.vec.insert, %bb.f ], [ %.sroa.073.8.vec.insert, %bb.g ], [ %.sroa.073.12.vec.insert, %bb.h ]
  %.sroa.070.0 = phi <4 x i32> [ splat (i32 -1), %bb.d ], [ %.sroa.070.0.vec.insert, %bb.e ], [ %.sroa.070.4.vec.insert, %bb.f ], [ %.sroa.070.8.vec.insert, %bb.g ], [ %.sroa.070.12.vec.insert, %bb.h ]
  %.sroa.1468.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.1468.32.vec.insert, %bb.e ], [ %.sroa.1468.36.vec.insert, %bb.f ], [ %.sroa.1468.40.vec.insert, %bb.g ], [ %.sroa.1468.44.vec.insert, %bb.h ] ; 3 uses
  %.sroa.866.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.866.16.vec.insert, %bb.e ], [ %.sroa.866.20.vec.insert, %bb.f ], [ %.sroa.866.24.vec.insert, %bb.g ], [ %.sroa.866.28.vec.insert, %bb.h ] ; 3 uses
  %.sroa.064.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.064.0.vec.insert, %bb.e ], [ %.sroa.064.4.vec.insert, %bb.f ], [ %.sroa.064.8.vec.insert, %bb.g ], [ %.sroa.064.12.vec.insert, %bb.h ] ; 3 uses
  %.sroa.1462.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.1462.32.vec.insert, %bb.e ], [ %.sroa.1462.36.vec.insert, %bb.f ], [ %.sroa.1462.40.vec.insert, %bb.g ], [ %.sroa.1462.44.vec.insert, %bb.h ]
  %.sroa.860.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.860.16.vec.insert, %bb.e ], [ %.sroa.860.20.vec.insert, %bb.f ], [ %.sroa.860.24.vec.insert, %bb.g ], [ %.sroa.860.28.vec.insert, %bb.h ]
  %.sroa.058.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.058.0.vec.insert, %bb.e ], [ %.sroa.058.4.vec.insert, %bb.f ], [ %.sroa.058.8.vec.insert, %bb.g ], [ %.sroa.058.12.vec.insert, %bb.h ]
  %.sroa.14.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.14.32.vec.insert, %bb.e ], [ %.sroa.14.36.vec.insert, %bb.f ], [ %.sroa.14.40.vec.insert, %bb.g ], [ %.sroa.14.44.vec.insert, %bb.h ]
  %.sroa.8.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.8.16.vec.insert, %bb.e ], [ %.sroa.8.20.vec.insert, %bb.f ], [ %.sroa.8.24.vec.insert, %bb.g ], [ %.sroa.8.28.vec.insert, %bb.h ]
  %.sroa.0.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.0.0.vec.insert, %bb.e ], [ %.sroa.0.4.vec.insert, %bb.f ], [ %.sroa.0.8.vec.insert, %bb.g ], [ %.sroa.0.12.vec.insert, %bb.h ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.d ], [ %i.az, %bb.e ], [ %i.ce, %bb.f ], [ %i.dj, %bb.g ], [ %i.eo, %bb.h ]
  %.sroa.0.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.d ], [ %i.ay, %bb.e ], [ %i.cd, %bb.f ], [ %i.di, %bb.g ], [ %i.en, %bb.h ]
  %i.ep = fsub <4 x float> %.sroa.064.0, %.sroa.058.0
  %i.eq = fsub <4 x float> %.sroa.866.0, %.sroa.860.0
  %i.er = fsub <4 x float> %.sroa.1468.0, %.sroa.1462.0
  %i.es = fsub <4 x float> %.sroa.0.0, %.sroa.064.0
  %i.et = fsub <4 x float> %.sroa.8.0, %.sroa.866.0
  %i.eu = fsub <4 x float> %.sroa.14.0, %.sroa.1468.0
  store <4 x float> %.sroa.064.0, ptr %i.l, align 16, !noalias !43
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %.sroa.866.0, ptr %i.ev, align 16, !noalias !43
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store <4 x float> %.sroa.1468.0, ptr %i.ew, align 16, !noalias !43
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store <4 x float> %i.ep, ptr %i.ex, align 16, !noalias !43
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store <4 x float> %i.eq, ptr %i.ey, align 16, !noalias !43
  %i.ez = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store <4 x float> %i.er, ptr %i.ez, align 16, !noalias !43
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <4 x float> %i.es, ptr %i.fa, align 16, !noalias !43
  %i.fb = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store <4 x float> %i.et, ptr %i.fb, align 16, !noalias !43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store <4 x float> %i.eu, ptr %i.fc, align 16, !noalias !43
  store <4 x i32> %.sroa.073.0, ptr %i.m, align 16, !noalias !43
  store <4 x i32> %.sroa.070.0, ptr %i.n, align 16, !noalias !43
  %i.fd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.j, <4 x float> %.sroa.0.0.lcssa) ; 2 uses
  %i.fe = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.k, <4 x float> %.sroa.6.0.lcssa) ; 2 uses
  %i.ff = add nuw i64 %.051, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ff, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !42

.loopexit:                                        ; preds = %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit, %bb.c
  %.lcssa50 = phi <4 x float> [ splat (float -inf), %bb.c ], [ %i.fe, %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.c ], [ %i.fd, %_ZN6embree9TriangleMILi4EE6updateEPNS_12TriangleMeshE.exit ]
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa50, ptr %i.h, align 16
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZThn16_NK6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  tail call void @_ZNK6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
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
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22, !inline_history !49
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED2Ev.exit, label %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !48
  br label %_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED2Ev.exit

_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ugt i32 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree4sse212BVHNRefitterILi4EE5refitEv(ptr noundef nonnull align 8 dereferenceable(2072) %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr hidden void @_ZNK6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = and i64 %i.a, 15
  %i.c = add nsw i64 %i.b, -8                     ; 2 uses
  %i.d = and i64 %i.a, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq i64 %i.a, 8
  br i1 %i.f, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  store <4 x float> splat (float +inf), ptr %0, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit
  %.042 = phi i64 [ 0, %.lr.ph ], [ %i.ez, %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit ] ; 2 uses
  %i.j = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.ex, %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit ]
  %i.k = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.ey, %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit ]
  %i.l = getelementptr inbounds nuw [176 x i8], ptr %i.e, i64 %.042 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.o = load i32, ptr %i.m, align 16, !noalias !65 ; 3 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.v = load i32, ptr %i.n, align 16, !noalias !65
  %i.w = zext i32 %i.o to i64
  %i.x = load ptr, ptr %i.u, align 8, !noalias !65 ; 4 uses
  %i.y = load i64, ptr %i.t, align 8, !noalias !65 ; 4 uses
  %i.z = mul i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !65
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.s, align 8, !noalias !66 ; 12 uses
  %i.ae = load i64, ptr %i.r, align 8, !noalias !66 ; 12 uses
  %i.af = mul i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !noalias !67 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !65
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load <4 x float>, ptr %i.am, align 1, !noalias !68 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !65
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul i64 %i.ae, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ar
  %i.at = load <4 x float>, ptr %i.as, align 1, !noalias !69 ; 5 uses
  %i.au = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.an, <4 x float> %i.at)
  %i.av = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.an, <4 x float> %i.at)
  %i.aw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ah, <4 x float> %i.au)
  %i.ax = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ah, <4 x float> %i.av)
  %i.ay = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.aw) ; 2 uses
  %i.az = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ax) ; 2 uses
  %.sroa.064.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.v, i64 0 ; 2 uses
  %.sroa.061.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.o, i64 0 ; 2 uses
  %.sroa.055.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.857.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.1459.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.049.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.an, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.851.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.an, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.1453.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.an, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.at, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.at, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.14.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.at, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !65 ; 3 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.be = load i32, ptr %i.bd, align 4, !noalias !65
  %i.bf = zext i32 %i.bb to i64
  %i.bg = mul i64 %i.y, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !65
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul i64 %i.ae, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bk
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !noalias !67 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !65
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul i64 %i.ae, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bq
  %i.bs = load <4 x float>, ptr %i.br, align 1, !noalias !68 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !65
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul i64 %i.ae, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bw
  %i.by = load <4 x float>, ptr %i.bx, align 1, !noalias !69 ; 5 uses
  %i.bz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.by)
  %i.ca = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bs, <4 x float> %i.by)
  %i.cb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bm, <4 x float> %i.bz)
  %i.cc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bm, <4 x float> %i.ca)
  %i.cd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ay, <4 x float> %i.cb) ; 2 uses
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.az, <4 x float> %i.cc) ; 2 uses
  %.sroa.064.4.vec.insert = insertelement <4 x i32> %.sroa.064.0.vec.insert, i32 %i.be, i64 1 ; 2 uses
  %.sroa.061.4.vec.insert = insertelement <4 x i32> %.sroa.061.0.vec.insert, i32 %i.bb, i64 1 ; 2 uses
  %.sroa.055.4.vec.insert = shufflevector <4 x float> %.sroa.055.0.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.857.20.vec.insert = shufflevector <4 x float> %.sroa.857.16.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1459.36.vec.insert = shufflevector <4 x float> %.sroa.1459.32.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.049.4.vec.insert = shufflevector <4 x float> %.sroa.049.0.vec.insert, <4 x float> %i.bs, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.851.20.vec.insert = shufflevector <4 x float> %.sroa.851.16.vec.insert, <4 x float> %i.bs, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1453.36.vec.insert = shufflevector <4 x float> %.sroa.1453.32.vec.insert, <4 x float> %i.bs, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.by, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.14.36.vec.insert = shufflevector <4 x float> %.sroa.14.32.vec.insert, <4 x float> %i.by, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.cg = load i32, ptr %i.cf, align 8, !noalias !65 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.cj = load i32, ptr %i.ci, align 8, !noalias !65
  %i.ck = zext i32 %i.cg to i64
  %i.cl = mul i64 %i.y, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cl ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !65
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul i64 %i.ae, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cp
  %i.cr = load <4 x float>, ptr %i.cq, align 1, !noalias !67 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !65
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul i64 %i.ae, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cv
  %i.cx = load <4 x float>, ptr %i.cw, align 1, !noalias !68 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !noalias !65
  %i.da = zext i32 %i.cz to i64
  %i.db = mul i64 %i.ae, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.db
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !noalias !69 ; 5 uses
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cx, <4 x float> %i.dd)
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cx, <4 x float> %i.dd)
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cr, <4 x float> %i.de)
  %i.dh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cr, <4 x float> %i.df)
  %i.di = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cd, <4 x float> %i.dg) ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ce, <4 x float> %i.dh) ; 2 uses
  %.sroa.064.8.vec.insert = insertelement <4 x i32> %.sroa.064.4.vec.insert, i32 %i.cj, i64 2 ; 2 uses
  %.sroa.061.8.vec.insert = insertelement <4 x i32> %.sroa.061.4.vec.insert, i32 %i.cg, i64 2 ; 2 uses
  %.sroa.055.8.vec.insert = shufflevector <4 x float> %.sroa.055.4.vec.insert, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.857.24.vec.insert = shufflevector <4 x float> %.sroa.857.20.vec.insert, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1459.40.vec.insert = shufflevector <4 x float> %.sroa.1459.36.vec.insert, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.049.8.vec.insert = shufflevector <4 x float> %.sroa.049.4.vec.insert, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.851.24.vec.insert = shufflevector <4 x float> %.sroa.851.20.vec.insert, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1453.40.vec.insert = shufflevector <4 x float> %.sroa.1453.36.vec.insert, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.14.40.vec.insert = shufflevector <4 x float> %.sroa.14.36.vec.insert, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !65 ; 3 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.do = load i32, ptr %i.dn, align 4, !noalias !65
  %i.dp = zext i32 %i.dl to i64
  %i.dq = mul i64 %i.y, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dq ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !65
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul i64 %i.ae, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !noalias !67 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !65
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul i64 %i.ae, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ea
  %i.ec = load <4 x float>, ptr %i.eb, align 1, !noalias !68 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !65
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul i64 %i.ae, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 1, !noalias !69 ; 5 uses
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ec, <4 x float> %i.ei)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ec, <4 x float> %i.ei)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dw, <4 x float> %i.ej)
  %i.em = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dw, <4 x float> %i.ek)
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.di, <4 x float> %i.el)
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dj, <4 x float> %i.em)
  %.sroa.064.12.vec.insert = insertelement <4 x i32> %.sroa.064.8.vec.insert, i32 %i.do, i64 3
  %.sroa.061.12.vec.insert = insertelement <4 x i32> %.sroa.061.8.vec.insert, i32 %i.dl, i64 3
  %.sroa.055.12.vec.insert = shufflevector <4 x float> %.sroa.055.8.vec.insert, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.857.28.vec.insert = shufflevector <4 x float> %.sroa.857.24.vec.insert, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1459.44.vec.insert = shufflevector <4 x float> %.sroa.1459.40.vec.insert, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.049.12.vec.insert = shufflevector <4 x float> %.sroa.049.8.vec.insert, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.851.28.vec.insert = shufflevector <4 x float> %.sroa.851.24.vec.insert, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1453.44.vec.insert = shufflevector <4 x float> %.sroa.1453.40.vec.insert, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.14.44.vec.insert = shufflevector <4 x float> %.sroa.14.40.vec.insert, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  br label %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit

_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.064.0 = phi <4 x i32> [ splat (i32 -1), %bb.d ], [ %.sroa.064.0.vec.insert, %bb.e ], [ %.sroa.064.4.vec.insert, %bb.f ], [ %.sroa.064.8.vec.insert, %bb.g ], [ %.sroa.064.12.vec.insert, %bb.h ]
  %.sroa.061.0 = phi <4 x i32> [ splat (i32 -1), %bb.d ], [ %.sroa.061.0.vec.insert, %bb.e ], [ %.sroa.061.4.vec.insert, %bb.f ], [ %.sroa.061.8.vec.insert, %bb.g ], [ %.sroa.061.12.vec.insert, %bb.h ]
  %.sroa.1459.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.1459.32.vec.insert, %bb.e ], [ %.sroa.1459.36.vec.insert, %bb.f ], [ %.sroa.1459.40.vec.insert, %bb.g ], [ %.sroa.1459.44.vec.insert, %bb.h ]
  %.sroa.857.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.857.16.vec.insert, %bb.e ], [ %.sroa.857.20.vec.insert, %bb.f ], [ %.sroa.857.24.vec.insert, %bb.g ], [ %.sroa.857.28.vec.insert, %bb.h ]
  %.sroa.055.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.055.0.vec.insert, %bb.e ], [ %.sroa.055.4.vec.insert, %bb.f ], [ %.sroa.055.8.vec.insert, %bb.g ], [ %.sroa.055.12.vec.insert, %bb.h ]
  %.sroa.1453.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.1453.32.vec.insert, %bb.e ], [ %.sroa.1453.36.vec.insert, %bb.f ], [ %.sroa.1453.40.vec.insert, %bb.g ], [ %.sroa.1453.44.vec.insert, %bb.h ]
  %.sroa.851.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.851.16.vec.insert, %bb.e ], [ %.sroa.851.20.vec.insert, %bb.f ], [ %.sroa.851.24.vec.insert, %bb.g ], [ %.sroa.851.28.vec.insert, %bb.h ]
  %.sroa.049.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.049.0.vec.insert, %bb.e ], [ %.sroa.049.4.vec.insert, %bb.f ], [ %.sroa.049.8.vec.insert, %bb.g ], [ %.sroa.049.12.vec.insert, %bb.h ]
  %.sroa.14.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.14.32.vec.insert, %bb.e ], [ %.sroa.14.36.vec.insert, %bb.f ], [ %.sroa.14.40.vec.insert, %bb.g ], [ %.sroa.14.44.vec.insert, %bb.h ]
  %.sroa.8.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.8.16.vec.insert, %bb.e ], [ %.sroa.8.20.vec.insert, %bb.f ], [ %.sroa.8.24.vec.insert, %bb.g ], [ %.sroa.8.28.vec.insert, %bb.h ]
  %.sroa.0.0 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %.sroa.0.0.vec.insert, %bb.e ], [ %.sroa.0.4.vec.insert, %bb.f ], [ %.sroa.0.8.vec.insert, %bb.g ], [ %.sroa.0.12.vec.insert, %bb.h ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.d ], [ %i.az, %bb.e ], [ %i.ce, %bb.f ], [ %i.dj, %bb.g ], [ %i.eo, %bb.h ]
  %.sroa.0.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.d ], [ %i.ay, %bb.e ], [ %i.cd, %bb.f ], [ %i.di, %bb.g ], [ %i.en, %bb.h ]
  store <4 x float> %.sroa.055.0, ptr %i.l, align 16, !noalias !65
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %.sroa.857.0, ptr %i.ep, align 16, !noalias !65
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store <4 x float> %.sroa.1459.0, ptr %i.eq, align 16, !noalias !65
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store <4 x float> %.sroa.049.0, ptr %i.er, align 16, !noalias !65
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store <4 x float> %.sroa.851.0, ptr %i.es, align 16, !noalias !65
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store <4 x float> %.sroa.1453.0, ptr %i.et, align 16, !noalias !65
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <4 x float> %.sroa.0.0, ptr %i.eu, align 16, !noalias !65
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store <4 x float> %.sroa.8.0, ptr %i.ev, align 16, !noalias !65
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store <4 x float> %.sroa.14.0, ptr %i.ew, align 16, !noalias !65
  store <4 x i32> %.sroa.064.0, ptr %i.n, align 16, !noalias !65
  store <4 x i32> %.sroa.061.0, ptr %i.m, align 16, !noalias !65
  %i.ex = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.j, <4 x float> %.sroa.0.0.lcssa) ; 2 uses
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.k, <4 x float> %.sroa.6.0.lcssa) ; 2 uses
  %i.ez = add nuw i64 %.042, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ez, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !64

.loopexit:                                        ; preds = %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit, %bb.c
  %.lcssa41 = phi <4 x float> [ splat (float -inf), %bb.c ], [ %i.ey, %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.c ], [ %i.ex, %_ZN6embree10TriangleMvILi4EE6updateEPNS_12TriangleMeshE.exit ]
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa41, ptr %i.h, align 16
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZThn16_NK6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  tail call void @_ZNK6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEED2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
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
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22, !inline_history !93
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEED2Ev.exit, label %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !92
  br label %_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEED2Ev.exit

_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ugt i32 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree4sse212BVHNRefitterILi4EE5refitEv(ptr noundef nonnull align 8 dereferenceable(2072) %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr hidden void @_ZNK6embree4sse210BVHNRefitTILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = and i64 %i.a, 15
  %i.c = add nsw i64 %i.b, -8                     ; 2 uses
  %i.d = and i64 %i.a, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq i64 %i.a, 8
  br i1 %i.f, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  store <4 x float> splat (float +inf), ptr %0, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.hd, %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit ] ; 2 uses
  %i.j = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.hb, %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit ]
  %i.k = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.hc, %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit ]
  %i.l = getelementptr inbounds nuw [224 x i8], ptr %i.e, i64 %.052 ; 29 uses
  %i.m = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 4 uses
  %i.t = load i32, ptr %i.n, align 16, !noalias !121 ; 3 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.y = load i32, ptr %i.o, align 16, !noalias !121
  %i.z = zext i32 %i.t to i64
  %i.aa = load ptr, ptr %i.p, align 8, !noalias !121
  %i.ab = load i64, ptr %i.q, align 8, !noalias !121
  %i.ac = mul i64 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !121
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.r, align 8, !noalias !122 ; 4 uses
  %i.ah = load i64, ptr %i.s, align 8, !noalias !122 ; 4 uses
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load <4 x float>, ptr %i.aj, align 1, !noalias !123 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = load i32, ptr %i.al, align 4, !noalias !121
  %i.an = zext i32 %i.am to i64
  %i.ao = mul i64 %i.ah, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !noalias !124 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !noalias !121
  %i.at = zext i32 %i.as to i64
  %i.au = mul i64 %i.ah, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load <4 x float>, ptr %i.av, align 1, !noalias !125 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !121
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.ah, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !noalias !126 ; 5 uses
  %i.bd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ak, <4 x float> %i.aq)
  %i.be = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ak, <4 x float> %i.aq)
  %i.bf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aw, <4 x float> %i.bc)
  %i.bg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aw, <4 x float> %i.bc)
  %i.bh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bd, <4 x float> %i.bf)
  %i.bi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.be, <4 x float> %i.bg)
  %i.bj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.bh) ; 2 uses
  %i.bk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.bi) ; 2 uses
  %.sroa.074.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.y, i64 0 ; 2 uses
  %.sroa.071.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.t, i64 0 ; 2 uses
  %.sroa.065.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ak, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.867.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ak, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.1469.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ak, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.059.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aq, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.861.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.1463.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aq, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aw, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aw, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.14.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aw, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.019.0.vec.extract = extractelement <4 x float> %i.bc, i64 0
  store float %.sroa.019.0.vec.extract, ptr %i.x, align 16, !noalias !121
  %.sroa.019.4.vec.extract = extractelement <4 x float> %i.bc, i64 1
  store float %.sroa.019.4.vec.extract, ptr %i.w, align 16, !noalias !121
  %.sroa.019.8.vec.extract = extractelement <4 x float> %i.bc, i64 2
  store float %.sroa.019.8.vec.extract, ptr %i.v, align 16, !noalias !121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 212
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !121 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !121
  %i.bq = zext i32 %i.bm to i64
  %i.br = load ptr, ptr %i.p, align 8, !noalias !121
  %i.bs = load i64, ptr %i.q, align 8, !noalias !121
  %i.bt = mul i64 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !121
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.r, align 8, !noalias !122 ; 4 uses
  %i.by = load i64, ptr %i.s, align 8, !noalias !122 ; 4 uses
  %i.bz = mul i64 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  %i.cb = load <4 x float>, ptr %i.ca, align 1, !noalias !123 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !121
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul i64 %i.by, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cf
  %i.ch = load <4 x float>, ptr %i.cg, align 1, !noalias !124 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !noalias !121
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul i64 %i.by, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cl
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !noalias !125 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !noalias !121
  %i.cq = zext i32 %i.cp to i64
  %i.cr = mul i64 %i.by, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cr
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !noalias !126 ; 5 uses
  %i.cu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cb, <4 x float> %i.ch)
  %i.cv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cb, <4 x float> %i.ch)
  %i.cw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cn, <4 x float> %i.ct)
  %i.cx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cn, <4 x float> %i.ct)
  %i.cy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cu, <4 x float> %i.cw)
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cv, <4 x float> %i.cx)
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bj, <4 x float> %i.cy) ; 2 uses
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bk, <4 x float> %i.cz) ; 2 uses
  %.sroa.074.4.vec.insert = insertelement <4 x i32> %.sroa.074.0.vec.insert, i32 %i.bp, i64 1 ; 2 uses
  %.sroa.071.4.vec.insert = insertelement <4 x i32> %.sroa.071.0.vec.insert, i32 %i.bm, i64 1 ; 2 uses
  %.sroa.065.4.vec.insert = shufflevector <4 x float> %.sroa.065.0.vec.insert, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.867.20.vec.insert = shufflevector <4 x float> %.sroa.867.16.vec.insert, <4 x float> %i.cb, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1469.36.vec.insert = shufflevector <4 x float> %.sroa.1469.32.vec.insert, <4 x float> %i.cb, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.059.4.vec.insert = shufflevector <4 x float> %.sroa.059.0.vec.insert, <4 x float> %i.ch, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.861.20.vec.insert = shufflevector <4 x float> %.sroa.861.16.vec.insert, <4 x float> %i.ch, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1463.36.vec.insert = shufflevector <4 x float> %.sroa.1463.32.vec.insert, <4 x float> %i.ch, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.cn, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.cn, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.14.36.vec.insert = shufflevector <4 x float> %.sroa.14.32.vec.insert, <4 x float> %i.cn, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.019.0.vec.extract.1 = extractelement <4 x float> %i.ct, i64 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  store float %.sroa.019.0.vec.extract.1, ptr %i.dc, align 4, !noalias !121
  %.sroa.019.4.vec.extract.1 = extractelement <4 x float> %i.ct, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  store float %.sroa.019.4.vec.extract.1, ptr %i.dd, align 4, !noalias !121
  %.sroa.019.8.vec.extract.1 = extractelement <4 x float> %i.ct, i64 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  store float %.sroa.019.8.vec.extract.1, ptr %i.de, align 4, !noalias !121
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.dg = load i32, ptr %i.df, align 8, !noalias !121 ; 3 uses
  %i.dh = icmp eq i32 %i.dg, -1
  br i1 %i.dh, label %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.dj = load i32, ptr %i.di, align 8, !noalias !121
  %i.dk = zext i32 %i.dg to i64
  %i.dl = load ptr, ptr %i.p, align 8, !noalias !121
  %i.dm = load i64, ptr %i.q, align 8, !noalias !121
  %i.dn = mul i64 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn ; 4 uses
  %i.dp = load i32, ptr %i.do, align 4, !noalias !121
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.r, align 8, !noalias !122 ; 4 uses
  %i.ds = load i64, ptr %i.s, align 8, !noalias !122 ; 4 uses
  %i.dt = mul i64 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = load <4 x float>, ptr %i.du, align 1, !noalias !123 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !noalias !121
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul i64 %i.ds, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dz
  %i.eb = load <4 x float>, ptr %i.ea, align 1, !noalias !124 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !noalias !121
  %i.ee = zext i32 %i.ed to i64
  %i.ef = mul i64 %i.ds, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ef
  %i.eh = load <4 x float>, ptr %i.eg, align 1, !noalias !125 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !noalias !121
  %i.ek = zext i32 %i.ej to i64
  %i.el = mul i64 %i.ds, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.el
  %i.en = load <4 x float>, ptr %i.em, align 1, !noalias !126 ; 5 uses
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dv, <4 x float> %i.eb)
  %i.ep = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dv, <4 x float> %i.eb)
  %i.eq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eh, <4 x float> %i.en)
  %i.er = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eh, <4 x float> %i.en)
  %i.es = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eo, <4 x float> %i.eq)
  %i.et = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ep, <4 x float> %i.er)
  %i.eu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.da, <4 x float> %i.es) ; 2 uses
  %i.ev = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.db, <4 x float> %i.et) ; 2 uses
  %.sroa.074.8.vec.insert = insertelement <4 x i32> %.sroa.074.4.vec.insert, i32 %i.dj, i64 2 ; 2 uses
  %.sroa.071.8.vec.insert = insertelement <4 x i32> %.sroa.071.4.vec.insert, i32 %i.dg, i64 2 ; 2 uses
  %.sroa.065.8.vec.insert = shufflevector <4 x float> %.sroa.065.4.vec.insert, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.867.24.vec.insert = shufflevector <4 x float> %.sroa.867.20.vec.insert, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1469.40.vec.insert = shufflevector <4 x float> %.sroa.1469.36.vec.insert, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.059.8.vec.insert = shufflevector <4 x float> %.sroa.059.4.vec.insert, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.861.24.vec.insert = shufflevector <4 x float> %.sroa.861.20.vec.insert, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1463.40.vec.insert = shufflevector <4 x float> %.sroa.1463.36.vec.insert, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.14.40.vec.insert = shufflevector <4 x float> %.sroa.14.36.vec.insert, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.019.0.vec.extract.2 = extractelement <4 x float> %i.en, i64 0
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store float %.sroa.019.0.vec.extract.2, ptr %i.ew, align 8, !noalias !121
  %.sroa.019.4.vec.extract.2 = extractelement <4 x float> %i.en, i64 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store float %.sroa.019.4.vec.extract.2, ptr %i.ex, align 8, !noalias !121
  %.sroa.019.8.vec.extract.2 = extractelement <4 x float> %i.en, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store float %.sroa.019.8.vec.extract.2, ptr %i.ey, align 8, !noalias !121
  %i.ez = getelementptr inbounds nuw i8, ptr %i.l, i64 220
  %i.fa = load i32, ptr %i.ez, align 4, !noalias !121 ; 3 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %_ZN6embree6QuadMvILi4EE6updateEPNS_8QuadMeshE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 204
  %i.fd = load i32, ptr %i.fc, align 4, !noalias !121
  %i.fe = zext i32 %i.fa to i64
  %i.ff = load ptr, ptr %i.p, align 8, !noalias !121
  %i.fg = load i64, ptr %i.q, align 8, !noalias !121
  %i.fh = mul i64 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh ; 4 uses
  %i.fj = load i32, ptr %i.fi, align 4, !noalias !121
  %i.fk = zext i32 %i.fj to i64
  %i.fl = load ptr, ptr %i.r, align 8, !noalias !122 ; 4 uses
  %i.fm = load i64, ptr %i.s, align 8, !noalias !122 ; 4 uses
  %i.fn = mul i64 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !noalias !123 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !noalias !121
  %i.fs = zext i32 %i.fr to i64
  %i.ft = mul i64 %i.fm, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ft
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !noalias !124 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !noalias !121
  %i.fy = zext i32 %i.fx to i64
  %i.fz = mul i64 %i.fm, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fz
  %i.gb = load <4 x float>, ptr %i.ga, align 1, !noalias !125 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !noalias !121
  %i.ge = zext i32 %i.gd to i64
  %i.gf = mul i64 %i.fm, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gf
  %i.gh = load <4 x float>, ptr %i.gg, align 1, !noalias !126 ; 5 uses
  %i.gi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fp, <4 x float> %i.fv)
  %i.gj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fp, <4 x float> %i.fv)
  %i.gk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gb, <4 x float> %i.gh)
  %i.gl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gb, <4 x float> %i.gh)
  %i.gm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gi, <4 x float> %i.gk)
  %i.gn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gj, <4 x float> %i.gl)
  %i.go = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eu, <4 x float> %i.gm)
  %i.gp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ev, <4 x float> %i.gn)
  %.sroa.074.12.vec.insert = insertelement <4 x i32> %.sroa.074.8.vec.insert, i32 %i.fd, i64 3
  %.sroa.071.12.vec.insert = insertelement <4 x i32> %.sroa.071.8.vec.insert, i32 %i.fa, i64 3
  %.sroa.065.12.vec.insert = shufflevector <4 x float> %.sroa.065.8.vec.insert, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.867.28.vec.insert = shufflevector <4 x float> %.sroa.867.24.vec.insert, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1469.44.vec.insert = shufflevector <4 x float> %.sroa.1469.40.vec.insert, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.059.12.vec.insert = shufflevector <4 x float> %.sroa.059.8.vec.insert, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.861.28.vec.insert = shufflevector <4 x float> %.sroa.861.24.vec.insert, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1463.44.vec.insert = shufflevector <4 x float> %.sroa.1463.40.vec.insert, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.14.44.vec.insert = shufflevector <4 x float> %.sroa.14.40.vec.insert, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.019.0.vec.extract.3 = extractelement <4 x float> %i.gh, i64 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  store float %.sroa.019.0.vec.extract.3, ptr %i.gq, align 4, !noalias !121
  %.sroa.019.4.vec.extract.3 = extractelement <4 x float> %i.gh, i64 1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.l, i64 172
end_hunk_1
begin_hunk_2_@_ZThn16_NK6embree4sse210BVHNRefitTILi4ENS_12UserGeometryENS_6ObjectEE10leafBoundsERNS_10NodeRefPtrILi4EEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !152
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.09.i
  %i.q = load ptr, ptr %i.i, align 8, !noalias !152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !154
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !noalias !154
  store ptr %i.u, ptr %3, align 8, !noalias !154
  store i32 %i.s, ptr %i.j, align 8, !noalias !154
  store i32 0, ptr %i.k, align 4, !noalias !154
  store ptr %4, ptr %i.l, align 8, !noalias !154
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !noalias !154
  call void %i.w(ptr noundef nonnull %3), !noalias !152, !inline_history !155
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !154
  %i.x = load <4 x float>, ptr %4, align 16, !noalias !156
  %i.y = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> %i.x) ; 2 uses
  %i.z = load <4 x float>, ptr %i.m, align 16, !noalias !157
  %i.aa = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> %i.z) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !152
  %i.ab = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.c
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.d, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  %.lcssa8.i = phi <4 x float> [ splat (float -inf), %bb.c ], [ %i.aa, %bb.d ]
  %.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.c ], [ %i.y, %bb.d ]
  store <4 x float> %.lcssa.i, ptr %0, align 16, !alias.scope !152
  store <4 x float> %.lcssa8.i, ptr %i.h, align 16, !alias.scope !152
  br label %_ZNK6embree4sse210BVHNRefitTILi4ENS_12UserGeometryENS_6ObjectEE10leafBoundsERNS_10NodeRefPtrILi4EEE.exit

_ZNK6embree4sse210BVHNRefitTILi4ENS_12UserGeometryENS_6ObjectEE10leafBoundsERNS_10NodeRefPtrILi4EEE.exit: ; preds = %bb.b, %.loopexit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
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
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEEE, i64 96), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22, !inline_history !159
  br label %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6embree4sse212BVHNRefitterILi4EEEEclEPS3_.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEED2Ev.exit, label %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !158
  br label %_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEED2Ev.exit

_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6embree4sse212BVHNRefitterILi4EEESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6embree7BuilderEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr hidden void @_ZN6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEE5clearEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr hidden void @_ZNK6embree4sse210BVHNRefitTILi4ENS_8InstanceENS_17InstancePrimitiveEE10leafBoundsERNS_10NodeRefPtrILi4EEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 4 uses
  %i.b = and i64 %i.a, 15                         ; 3 uses
  %i.c = add nsw i64 %i.b, -8                     ; 3 uses
  %i.d = icmp eq i64 %i.a, 8
  br i1 %i.d, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  store <4 x float> splat (float +inf), ptr %0, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.j = load i32, ptr %i.i, align 4, !noalias !199
  %i.k = and i32 %i.j, 65280
  %i.l = icmp eq i32 %i.k, 256
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.o = load ptr, ptr %i.n, align 16, !noalias !199 ; 12 uses
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.t = load float, ptr %i.p, align 4, !noalias !200 ; 8 uses
  %i.u = load float, ptr %i.q, align 4, !noalias !200 ; 8 uses
  %i.v = load float, ptr %i.r, align 4, !noalias !200 ; 8 uses
  %i.w = load float, ptr %i.s, align 4, !noalias !200 ; 7 uses
  %i.x = load <4 x float>, ptr %i.o, align 16, !noalias !201 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !202 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ab = load <3 x float>, ptr %i.aa, align 16, !noalias !203 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ad = load <3 x float>, ptr %i.ac, align 16, !noalias !204 ; 3 uses
  %.sroa.17249.52.vec.insert.us = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.x, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.17249.56.vec.insert.us = shufflevector <4 x float> %.sroa.17249.52.vec.insert.us, <4 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ae = fmul float %i.u, %i.u
  %i.af = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.ae)
  %i.ag = fneg float %i.v                         ; 3 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.v, float %i.af)
  %i.ai = fneg float %i.w                         ; 3 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.w, float %i.ah)
  %i.ak = fmul float %i.t, %i.w
  %i.al = tail call float @llvm.fmuladd.f32(float %i.u, float %i.v, float %i.ak)
  %i.am = fmul float %i.al, 2.000000e+00
  %i.an = fmul float %i.t, %i.ag
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.u, float %i.w, float %i.an)
  %i.ap = fmul float %i.ao, 2.000000e+00
  %i.aq = fmul float %i.t, %i.ai
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.u, float %i.v, float %i.aq)
  %i.as = fmul float %i.ar, 2.000000e+00
  %i.at = fneg float %i.u                         ; 2 uses
  %i.au = fmul float %i.u, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.au) ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.av)
  %i.ax = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.t, i64 1
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.az = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.u, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.v, i64 2 ; 2 uses
  %i.bc = insertelement <4 x float> %i.bb, float %i.at, i64 3
  %i.bd = fmul <4 x float> %i.ay, %i.bc
  %i.be = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> %i.bb, <4 x i32> <i32 0, i32 6, i32 5, i32 6>
  %i.bg = insertelement <4 x float> poison, float %i.w, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bh, <4 x float> %i.bd) ; 3 uses
  %i.bj = extractelement <4 x float> %i.bi, i64 1
  %i.bk = fmul float %i.bj, 2.000000e+00
  %i.bl = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bm = fmul <2 x float> %i.bl, splat (float 2.000000e+00) ; 2 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.v, float %i.av)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.bn)
  %i.bp = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = insertelement <4 x float> poison, float %i.am, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.bu, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.bw = fmul <4 x float> %i.bs, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.bx = fadd <4 x float> %i.bv, %i.bw
  %i.by = fmul <4 x float> %i.bq, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.bz = fadd <4 x float> %i.by, %i.bx           ; 4 uses
  %i.ca = insertelement <4 x float> poison, float %i.as, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fmul <4 x float> %i.ce, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.cg = fmul <4 x float> %i.cc, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ch = fadd <4 x float> %i.cg, %i.cf
  %i.ci = fmul <4 x float> %i.cb, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.cj = fadd <4 x float> %i.ci, %i.ch           ; 4 uses
  %i.ck = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cl = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cm = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fmul <4 x float> %i.cn, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.cp = fmul <4 x float> %i.cl, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.cq = fadd <4 x float> %i.cp, %i.co
  %i.cr = fmul <4 x float> %i.ck, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.cs = fadd <4 x float> %i.cr, %i.cq           ; 3 uses
  %i.ct = fadd <4 x float> %.sroa.17249.56.vec.insert.us, zeroinitializer
  %i.cu = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul <4 x float> %i.cs, zeroinitializer ; 2 uses
  %i.cw = fmul <4 x float> %i.cj, zeroinitializer
  %i.cx = fadd <4 x float> %i.cw, %i.cv
  %i.cy = fmul <4 x float> %i.cu, %i.bz
  %i.cz = fadd <4 x float> %i.cy, %i.cx           ; 2 uses
  %i.da = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = fmul <4 x float> %i.db, %i.cj
  %i.dd = fadd <4 x float> %i.dc, %i.cv
  %i.de = fmul <4 x float> %i.da, %i.bz
  %i.df = fadd <4 x float> %i.de, %i.dd           ; 2 uses
  %i.dg = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dh = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.di = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dj = fmul <4 x float> %i.di, %i.cs
  %i.dk = fmul <4 x float> %i.dh, %i.cj
  %i.dl = fadd <4 x float> %i.dk, %i.dj
  %i.dm = fmul <4 x float> %i.dg, %i.bz
  %i.dn = fadd <4 x float> %i.dm, %i.dl           ; 2 uses
  %i.do = shufflevector <3 x float> %i.ad, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dp = shufflevector <3 x float> %i.ad, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dq = shufflevector <3 x float> %i.ad, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dr = fmul <4 x float> %i.dq, %i.cs
  %i.ds = fmul <4 x float> %i.dp, %i.cj
  %i.dt = fadd <4 x float> %i.ds, %i.dr
  %i.du = fmul <4 x float> %i.do, %i.bz
  %i.dv = fadd <4 x float> %i.du, %i.dt
  %i.dw = fadd <4 x float> %i.ct, %i.dv           ; 2 uses
  %i.dx = load ptr, ptr %i.m, align 8, !noalias !199 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ea = load <4 x float>, ptr %i.dy, align 16, !noalias !205
  %i.eb = load <4 x float>, ptr %i.dz, align 16, !noalias !205
  %i.ec = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ea, <4 x float> %i.eb) ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.ef = load <4 x float>, ptr %i.ed, align 16, !noalias !206
  %i.eg = load <4 x float>, ptr %i.ee, align 16, !noalias !206
  %i.eh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ef, <4 x float> %i.eg) ; 3 uses
  %i.ei = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ek = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.el = fmul <4 x float> %i.ek, %i.dn
  %i.em = fadd <4 x float> %i.el, %i.dw           ; 2 uses
  %i.en = fmul <4 x float> %i.ej, %i.df           ; 2 uses
  %i.eo = fadd <4 x float> %i.en, %i.em           ; 2 uses
  %i.ep = fmul <4 x float> %i.ei, %i.cz           ; 4 uses
  %i.eq = fadd <4 x float> %i.ep, %i.eo           ; 2 uses
  %i.er = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.eq)
  %i.es = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.eq)
  %i.et = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eu = fmul <4 x float> %i.dn, %i.et
  %i.ev = fadd <4 x float> %i.dw, %i.eu           ; 2 uses
  %i.ew = fadd <4 x float> %i.en, %i.ev           ; 2 uses
  %i.ex = fadd <4 x float> %i.ep, %i.ew           ; 2 uses
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.er, <4 x float> %i.ex)
  %i.ez = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.es, <4 x float> %i.ex)
  %i.fa = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fb = fmul <4 x float> %i.df, %i.fa           ; 2 uses
  %i.fc = fadd <4 x float> %i.em, %i.fb           ; 2 uses
  %i.fd = fadd <4 x float> %i.ep, %i.fc           ; 2 uses
  %i.fe = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.fd)
  %i.ff = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ez, <4 x float> %i.fd)
  %i.fg = fadd <4 x float> %i.fb, %i.ev           ; 2 uses
  %i.fh = fadd <4 x float> %i.ep, %i.fg           ; 2 uses
  %i.fi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fe, <4 x float> %i.fh)
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ff, <4 x float> %i.fh)
  %i.fk = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fmul <4 x float> %i.cz, %i.fk           ; 4 uses
  %i.fm = fadd <4 x float> %i.fl, %i.eo           ; 2 uses
  %i.fn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fi, <4 x float> %i.fm)
  %i.fo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fj, <4 x float> %i.fm)
  %i.fp = fadd <4 x float> %i.fl, %i.ew           ; 2 uses
  %i.fq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fn, <4 x float> %i.fp)
  %i.fr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  %i.fs = fadd <4 x float> %i.fl, %i.fc           ; 2 uses
  %i.ft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fq, <4 x float> %i.fs)
  %i.fu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fr, <4 x float> %i.fs)
  %i.fv = fadd <4 x float> %i.fl, %i.fg           ; 2 uses
  %i.fw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ft, <4 x float> %i.fv) ; 9 uses
  %i.fx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fu, <4 x float> %i.fv) ; 9 uses
  %i.fy = add nsw i64 %i.b, -9
  %xtraiter543 = and i64 %i.a, 7                  ; 4 uses
  %i.fz = icmp ult i64 %i.fy, 7
  br i1 %i.fz, label %_ZNK6embree8Instance6boundsEm.exit.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter553 = sub nsw i64 %i.c, %xtraiter543
  br label %_ZNK6embree8Instance6boundsEm.exit.us

_ZNK6embree8Instance6boundsEm.exit.us:            ; preds = %_ZNK6embree8Instance6boundsEm.exit.us, %.lr.ph.split.us.new
  %i.ga = phi <4 x float> [ splat (float +inf), %.lr.ph.split.us.new ], [ %i.gq, %_ZNK6embree8Instance6boundsEm.exit.us ]
  %i.gb = phi <4 x float> [ splat (float -inf), %.lr.ph.split.us.new ], [ %i.gr, %_ZNK6embree8Instance6boundsEm.exit.us ]
  %niter554 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter554.next.7, %_ZNK6embree8Instance6boundsEm.exit.us ]
  %i.gc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ga, <4 x float> %i.fw)
  %i.gd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gb, <4 x float> %i.fx)
  %i.ge = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gc, <4 x float> %i.fw)
  %i.gf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gd, <4 x float> %i.fx)
  %i.gg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ge, <4 x float> %i.fw)
  %i.gh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gf, <4 x float> %i.fx)
  %i.gi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gg, <4 x float> %i.fw)
  %i.gj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gh, <4 x float> %i.fx)
  %i.gk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gi, <4 x float> %i.fw)
  %i.gl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gj, <4 x float> %i.fx)
  %i.gm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gk, <4 x float> %i.fw)
  %i.gn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gl, <4 x float> %i.fx)
  %i.go = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gm, <4 x float> %i.fw)
  %i.gp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gn, <4 x float> %i.fx)
  %i.gq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.go, <4 x float> %i.fw) ; 3 uses
  %i.gr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gp, <4 x float> %i.fx) ; 3 uses
  %niter554.next.7 = add i64 %niter554, 8         ; 2 uses
  %niter554.ncmp.7 = icmp eq i64 %niter554.next.7, %unroll_iter553
  br i1 %niter554.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6embree8Instance6boundsEm.exit.us, !llvm.loop !180

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.gs = load <4 x float>, ptr %i.o, align 16, !noalias !207 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !noalias !208 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.gw = load <4 x float>, ptr %i.gv, align 16, !noalias !209 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.gy = load <4 x float>, ptr %i.gx, align 16, !noalias !210 ; 2 uses
  %i.gz = load ptr, ptr %i.m, align 8, !noalias !199 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hc = load <4 x float>, ptr %i.ha, align 16, !noalias !211
  %i.hd = load <4 x float>, ptr %i.hb, align 16, !noalias !211
  %i.he = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hc, <4 x float> %i.hd) ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
end_hunk_2
begin_hunk_3_@_ZNK6embree4sse210BVHNRefitTILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE10leafBoundsERNS_10NodeRefPtrILi4EEE:bb.a

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
  %.sroa.17273.52.vec.insert = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %.sroa.0155.0, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
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
end_hunk_3
