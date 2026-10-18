Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7openvdb5v13_02io10HalfReaderILb1EdE4readERSiPdjjPNS1_19DelayedLoadMetadataEm:bb.a
_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit: ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #25
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30: ; preds = %bb.n, %bb.m, %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #25
  resume { ptr, i32 } %i.bb

_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoEEclEPS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !297  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !300
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !301
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !1012
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !1012
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !298
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !302

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !297  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !300
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !301
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17, !inline_history !1013
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17, !inline_history !1013
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i.i.i2.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !298
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit, !prof !302

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.309", align 8 ; 7 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %8 = alloca %"class.std::shared_ptr.309", align 8 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %11 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %12 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %13 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %15 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %16 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %17 = alloca %"class.std::shared_ptr.309", align 8 ; 7 uses
  %.sroa.01462 = alloca [3 x double], align 8     ; 4 uses
  %18 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %19 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %.sroa.01419 = alloca [3 x double], align 8     ; 4 uses
  %20 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 8 uses
  %21 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %22 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %23 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 15 uses
  %24 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 11 uses
  %25 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 8 uses
  %26 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !476
  %i.e = uitofp i64 %i.d to float
  %i.f = fadd float %i.e, 1.000000e+00
  %i.g = fdiv float 1.000000e+00, %i.f            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = load i64, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph2078, label %._crit_edge2079

.lr.ph2078:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx1420 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.61421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.101422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 20 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 19 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 24 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 40 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 40 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 40 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 48 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 16 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 48 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 32 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 32 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 32 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 48 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 18 uses
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 24 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !111
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !281
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %._crit_edge2079, label %.lr.ph2078.split.preheader

.lr.ph2078.split.preheader:                       ; preds = %.lr.ph2078
  %i.bf = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph2078.split

._crit_edge2079:                                  ; preds = %._crit_edge2073, %.lr.ph2078, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  ret void

.lr.ph2078.split:                                 ; preds = %.lr.ph2078.split.preheader, %._crit_edge2073
  %.0262076 = phi i64 [ %.1.lcssa, %._crit_edge2073 ], [ 0, %.lr.ph2078.split.preheader ] ; 2 uses
  %.0272075 = phi i64 [ %i.bl, %._crit_edge2073 ], [ %i.i, %.lr.ph2078.split.preheader ] ; 4 uses
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !281 ; 2 uses
  %.not2080 = icmp eq i64 %i.bk, 0
  br i1 %.not2080, label %._crit_edge2073, label %.lr.ph2072

._crit_edge2073:                                  ; preds = %._crit_edge, %.lr.ph2078.split
  %.1.lcssa = phi i64 [ %.0262076, %.lr.ph2078.split ], [ %.2.lcssa, %._crit_edge ]
  %i.bl = add nuw i64 %.0272075, 1                ; 2 uses
  %exitcond2160.not = icmp eq i64 %i.bl, %i.j
  br i1 %exitcond2160.not, label %._crit_edge2079, label %.lr.ph2078.split, !llvm.loop !1014

.lr.ph2072:                                       ; preds = %.lr.ph2078.split, %._crit_edge
  %.0252070 = phi i64 [ %i.bbf, %._crit_edge ], [ 0, %.lr.ph2078.split ] ; 4 uses
  %.12069 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.0262076, %.lr.ph2078.split ] ; 2 uses
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !164 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !111 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !281
  %i.br = mul i64 %i.bq, %.0272075
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !288
  %i.bt = getelementptr [16 x i8], ptr %i.bs, i64 %.0252070
  %i.bu = getelementptr [16 x i8], ptr %i.bt, i64 %i.br ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %25, ptr noundef nonnull align 8 dereferenceable(496) %i.bm, i64 noundef %.0252070, i64 noundef %.0272075, double noundef 5.000000e-01, double noundef 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01419)
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !1075
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276, !noalias !1075 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !294, !noalias !1077 ; 3 uses
  store ptr %i.cb, ptr %8, align 8, !tbaa !296, !alias.scope !1076, !noalias !1075
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !297, !noalias !1077 ; 3 uses
  store ptr %i.cd, ptr %i.o, align 8, !tbaa !297, !alias.scope !1076, !noalias !1075
  %.not.i.i.i.i.i65 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i65, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i67, label %bb.b

bb.b:                                             ; preds = %.lr.ph2072
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1077
  %.not.i.i.i.i.i.i66 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !298, !noalias !1077
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !298, !noalias !1077
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i67

bb.d:                                             ; preds = %bb.b
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4, !noalias !1077 ; 0 uses
  %.pre.i72 = load ptr, ptr %8, align 8, !tbaa !296, !noalias !1075
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i67

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i67: ; preds = %bb.d, %bb.c, %.lr.ph2072
  %i.cj = phi ptr [ %i.cb, %.lr.ph2072 ], [ %i.cb, %bb.c ], [ %.pre.i72, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !1078
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !100, !noalias !1078
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1078
  invoke void %i.cm(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(88) %25)
          to label %.noexc.i unwind label %bb.l, !noalias !1075, !inline_history !3

.noexc.i:                                         ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i67
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !1078
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !100, !noalias !1078
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1078
  invoke void %i.cp(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.e unwind label %bb.l, !noalias !1075, !inline_history !3

bb.e:                                             ; preds = %.noexc.i
  %i.cq = load double, ptr %i.q, align 16, !tbaa !163, !noalias !1078 ; 3 uses
  %i.cr = load <2 x double>, ptr %7, align 16, !tbaa !163, !noalias !1078 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cr, %i.cr
  %i.cs = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ct = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cs)
  %i.cv = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cu)
  %i.cw = call noundef double @sqrt(double noundef %i.cv) #17, !noalias !1078 ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = fdiv <2 x double> %i.cr, %i.cy          ; 2 uses
  %i.da = fdiv double %i.cq, %i.cw                ; 2 uses
  %i.db = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !1078
  %i.dc = fmul <2 x double> %i.cy, %i.db          ; 4 uses
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01419, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.de = fdiv <2 x double> splat (double 1.000000e+00), %i.cz ; 3 uses
  %i.df = fdiv double 1.000000e+00, %i.da         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !1078
  %i.dg = load ptr, ptr %i.o, align 8, !tbaa !297, !noalias !1075 ; 8 uses
  %.not.i.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i68, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8, !noalias !1075 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.dh, align 8, !tbaa !300, !noalias !1075
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !301, !noalias !1075
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !100, !noalias !1075
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !1075
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #17, !noalias !1075, !inline_history !7
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !100, !noalias !1075
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !1075
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #17, !noalias !1075, !inline_history !7
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1075
  %.not.i.i.i.i69 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i69, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !298, !noalias !1075
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70

bb.j:                                             ; preds = %bb.h
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4, !noalias !1075
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i71 = phi i32 [ %i.dk, %bb.i ], [ %i.du, %bb.j ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i71, 1
  br i1 %i.dv, label %bb.k, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, !prof !302

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #17, !noalias !1075
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

common.resume:                                    ; preds = %bb.ft, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fp, %bb.fn, %bb.sq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1249, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i700, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i725, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1274, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i779, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i804, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1299, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i858, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i883, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1324, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i937, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i962, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1349, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1016, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1041, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1374, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1095, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1120, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1399, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1174, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1199, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1224, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i441, %bb.ey, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.dw, %bb.l ], [ %i.baa, %bb.ey ], [ %i.far, %bb.sq ], [ %i.bjs, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i441 ], [ %i.bnd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.brs, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1224 ], [ %i.bvg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1199 ], [ %i.byr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1174 ], [ %i.cdl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1399 ], [ %i.chd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1120 ], [ %i.ckq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1095 ], [ %i.cpn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1374 ], [ %i.cte, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1041 ], [ %i.cwr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1016 ], [ %i.dbo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1349 ], [ %i.dff, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i962 ], [ %i.dis, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i937 ], [ %i.dnp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1324 ], [ %i.drh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i883 ], [ %i.duu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i858 ], [ %i.dzr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1299 ], [ %i.edk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i804 ], [ %i.egx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i779 ], [ %i.elu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1274 ], [ %i.epm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i725 ], [ %i.esz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i700 ], [ %i.exw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1249 ], [ %i.bdo, %bb.fn ], [ %i.bdo, %bb.fp ], [ %i.bdo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.bdo, %bb.ft ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.noexc.i, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i67
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !1075
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !1075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01419, i64 24, i1 false)
  store <2 x double> %i.cz, ptr %.sroa.4.0..sroa_idx1420, align 8
  store double %i.da, ptr %.sroa.61421.0..sroa_idx, align 8
  store <2 x double> %i.de, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.df, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.dc, ptr %.sroa.101422.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01419)
  %i.dx = load <2 x i32>, ptr %i.s, align 8
  %i.dy = load <1 x double>, ptr %i.m, align 8
  %i.dz = load i32, ptr %i.t, align 4, !tbaa !298
  %i.ea = insertelement <2 x i32> %i.dx, i32 %i.dz, i64 1
  %i.eb = sitofp <2 x i32> %i.ea to <2 x double>
  %i.ec = shufflevector <1 x double> %i.dy, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fsub <2 x double> %i.eb, %i.ec
  %i.ee = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.ee, %i.ed          ; 4 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0
  %i.eh = extractelement <2 x double> %i.ef, i64 1
  %i.ei = fcmp ogt double %i.eg, %i.eh
  %i.ej = insertelement <2 x i1> poison, i1 %i.ei, i64 0
  %i.ek = shufflevector <2 x i1> %i.ej, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.em = select <2 x i1> %i.ek, <2 x double> %i.ef, <2 x double> %i.el ; 3 uses
  %i.en = shufflevector <2 x double> %i.dc, <2 x double> %i.em, <2 x i32> <i32 1, i32 3>
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.ep = fcmp ogt <2 x double> %i.en, %i.eo
  %i.eq = select <2 x i1> %i.ep, <2 x double> %i.em, <2 x double> %i.dd ; 5 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = extractelement <2 x double> %i.eq, i64 1
  %i.et = fcmp ule double %i.es, %i.er
  br i1 %i.et, label %bb.m, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit
  %i.eu = load <2 x i32>, ptr %i.u, align 4
  %i.ev = load <1 x double>, ptr %i.v, align 8
  %i.ew = load i32, ptr %i.w, align 8, !tbaa !298
  %i.ex = insertelement <2 x i32> %i.eu, i32 %i.ew, i64 1
  %i.ey = sitofp <2 x i32> %i.ex to <2 x double>
  %i.ez = shufflevector <1 x double> %i.ev, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fsub <2 x double> %i.ey, %i.ez
  %i.fb = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = fmul <2 x double> %i.fb, %i.fa          ; 4 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = extractelement <2 x double> %i.fc, i64 1
  %i.ff = fcmp ogt double %i.fd, %i.fe
  %i.fg = insertelement <2 x i1> poison, i1 %i.ff, i64 0
  %i.fh = shufflevector <2 x i1> %i.fg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fi = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = select <2 x i1> %i.fh, <2 x double> %i.fc, <2 x double> %i.fi ; 3 uses
  %i.fk = shufflevector <2 x double> %i.eq, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3>
  %i.fl = shufflevector <2 x double> %i.fj, <2 x double> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.fm = fcmp ogt <2 x double> %i.fk, %i.fl
  %i.fn = select <2 x i1> %i.fm, <2 x double> %i.fj, <2 x double> %i.eq ; 2 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 0 ; 3 uses
  %i.fp = extractelement <2 x double> %i.fn, i64 1 ; 3 uses
  %i.fq = fcmp ule double %i.fp, %i.fo
  br i1 %i.fq, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i: ; preds = %bb.m
  %i.fr = load i32, ptr %i.x, align 8, !tbaa !298
  %i.fs = sitofp i32 %i.fr to double
  %i.ft = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.fu = fsub double %i.fs, %i.ft
  %i.fv = fmul double %i.df, %i.fu                ; 3 uses
  %i.fw = load i32, ptr %i.z, align 4, !tbaa !298
  %i.fx = sitofp i32 %i.fw to double
  %i.fy = fsub double %i.fx, %i.ft
  %i.fz = fmul double %i.df, %i.fy                ; 3 uses
  %i.ga = fcmp ogt double %i.fv, %i.fz            ; 2 uses
  %.030.2.i.i.i = select i1 %i.ga, double %i.fz, double %i.fv ; 2 uses
  %.0.2.i.i.i = select i1 %i.ga, double %i.fv, double %i.fz ; 2 uses
  %i.gb = fcmp ogt double %.030.2.i.i.i, %i.fp
  %.27.i.i = select i1 %i.gb, double %.030.2.i.i.i, double %i.fp ; 2 uses
  %i.gc = fcmp olt double %.0.2.i.i.i, %i.fo
  %i.gd = select i1 %i.gc, double %.0.2.i.i.i, double %i.fo ; 2 uses
  %i.ge = fcmp ule double %.27.i.i, %i.gd
  br i1 %i.ge, label %bb.n, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i
  store double %.27.i.i, ptr %.sroa.101422.0..sroa_idx, align 8, !tbaa !290
  store double %i.gd, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !291
  %i.gf = call noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(320) %i.m)
  br i1 %i.gf, label %bb.o, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.gg = load double, ptr %i.aa, align 8, !tbaa !490 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load double, ptr %.sroa.4.0..sroa_idx1420, align 8, !noalias !1079
  %i.gh = fmul double %i.gg, %.sroa.0.0.copyload.i.i.i
  %.sroa.0.0.copyload2.i.i = load double, ptr %i.m, align 8
  %i.gi = fadd double %i.gh, %.sroa.0.0.copyload2.i.i ; 3 uses
  %i.gj = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1079 ; 2 uses
  %i.gk = insertelement <2 x double> %i.gj, double %i.gg, i64 0
  %i.gl = insertelement <2 x double> %i.gj, double %i.gg, i64 1
  %i.gm = fmul <2 x double> %i.gk, %i.gl
  %i.gn = load <2 x double>, ptr %i.v, align 8
  %i.go = fadd <2 x double> %i.gm, %i.gn          ; 4 uses
  store double %i.gi, ptr %23, align 8
  %27 = extractelement <2 x double> %i.go, i64 0
  %28 = extractelement <2 x double> %i.go, i64 1
  store <2 x double> %i.go, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.gp = call noundef double @llvm.floor.f64(double %i.gi)
  %29 = call noundef double @llvm.floor.f64(double %27)
  %30 = insertelement <2 x double> poison, double %i.gp, i64 0
  %31 = insertelement <2 x double> %30, double %29, i64 1
  %32 = fptosi <2 x double> %31 to <2 x i32>      ; 4 uses
  %33 = extractelement <2 x i32> %32, i64 1       ; 11 uses
  %34 = call noundef double @llvm.floor.f64(double %28)
  %35 = fptosi double %34 to i32                  ; 13 uses
  %36 = extractelement <2 x i32> %32, i64 0       ; 8 uses
  store <2 x i32> %32, ptr %20, align 8
  store i32 %35, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.gq = load i32, ptr %i.ab, align 8, !tbaa !298
  %i.gr = icmp eq i32 %i.gq, %36
  br i1 %i.gr, label %bb.p, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i

bb.p:                                             ; preds = %bb.o
  %37 = load i32, ptr %i.ac, align 4, !tbaa !298
  %38 = icmp ne i32 %37, %33
  %39 = load i32, ptr %i.ad, align 8
  %40 = icmp ne i32 %39, %35
  %or.cond.i.i = select i1 %38, i1 true, i1 %40
  br i1 %or.cond.i.i, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %20, i64 12, i1 false), !tbaa.struct !445
  %i.gs = and i32 %36, -8
  %i.gt = load i32, ptr %i.af, align 8, !tbaa !298
  %i.gu = icmp eq i32 %i.gs, %i.gt
  br i1 %i.gu, label %bb.q, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i

bb.q:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i
  %i.gv = and i32 %33, -8
  %i.gw = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.gx = icmp eq i32 %i.gv, %i.gw
  br i1 %i.gx, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.q
  %i.gy = and i32 %35, -8
  %i.gz = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.ha = icmp eq i32 %i.gy, %i.gz
  br i1 %i.ha, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.hb = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %i.hc = shl i32 %36, 6
  %i.hd = and i32 %i.hc, 448
  %i.he = shl i32 %33, 3
  %i.hf = and i32 %i.he, 56
  %i.hg = and i32 %35, 7
  %i.hh = or disjoint i32 %i.hd, %i.hg
  %i.hi = or disjoint i32 %i.hh, %i.hf
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hj
  %.not.i.not.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.q, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i
  %i.hl = and i32 %36, -128                       ; 3 uses
  %i.hm = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.hn = icmp eq i32 %i.hl, %i.hm
  br i1 %i.hn, label %bb.r, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i

bb.r:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i
  %i.ho = and i32 %33, -128
  %i.hp = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.hq = icmp eq i32 %i.ho, %i.hp
  br i1 %i.hq, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.r
  %i.hr = and i32 %35, -128
  %i.hs = load i32, ptr %i.al, align 4, !tbaa !298
  %i.ht = icmp eq i32 %i.hr, %i.hs
  br i1 %i.ht, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.hu = load ptr, ptr %i.ar, align 8, !tbaa !491
  %i.hv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.hu, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.r, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i
  %i.hw = and i32 %36, -4096                      ; 2 uses
  %i.hx = load i32, ptr %i.am, align 8, !tbaa !298
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.s, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

bb.s:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i
  %i.hz = and i32 %33, -4096
  %i.ia = load i32, ptr %i.an, align 4, !tbaa !298
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.s
  %i.ic = and i32 %35, -4096
  %i.id = load i32, ptr %i.ao, align 8, !tbaa !298
  %i.ie = icmp eq i32 %i.ic, %i.id
  br i1 %i.ie, label %bb.t, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !492 ; 2 uses
  %i.ig = shl i32 %36, 3
  %i.ih = and i32 %i.ig, 31744
  %i.ii = lshr i32 %33, 2
  %i.ij = and i32 %i.ii, 992
  %i.ik = or disjoint i32 %i.ij, %i.ih            ; 2 uses
  %i.il = lshr i32 %35, 7
  %i.im = and i32 %i.il, 31
  %i.in = or disjoint i32 %i.ik, %i.im            ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 262144
  %i.ip = lshr i32 %i.ik, 6
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !249
  %i.it = and i32 %i.in, 63
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = and i64 %i.is, %i.iv
  %.not.i.i.i64 = icmp eq i64 %i.iw, 0
  %i.ix = zext nneg i32 %i.in to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ix ; 3 uses
  br i1 %.not.i.i.i64, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !207
  %41 = and i32 %33, -128
  %42 = and i32 %35, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %41 to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.hl to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.aj, align 4
  store i32 %42, ptr %i.al, align 4, !tbaa !207
  store ptr %i.iz, ptr %i.ar, align 8, !tbaa !491
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !207
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ja, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.s, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i
  %i.jc = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 60
  %43 = load i32, ptr %i.jd, align 4, !tbaa !298
  %44 = sub nsw i32 %33, %43
  %45 = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %46 = load i32, ptr %45, align 4, !tbaa !298
  %47 = sub nsw i32 %35, %46
  %48 = and i32 %44, -4096                        ; 4 uses
  %i.je = and i32 %47, -4096                      ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !438 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !298
  %i.jk = sub nsw i32 %36, %i.jj
  %i.jl = and i32 %i.jk, -4096                    ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !298 ; 2 uses
  %i.jo = icmp slt i32 %i.jn, %i.jl
  br i1 %i.jo, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jp = icmp sgt i32 %i.jn, %i.jl
  br i1 %i.jp, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !298 ; 2 uses
  %i.js = icmp slt i32 %i.jr, %48
  br i1 %i.js, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jt = icmp sgt i32 %i.jr, %48
  br i1 %i.jt, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.y
  %i.ju = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !298
  %i.jw = icmp slt i32 %i.jv, %i.je
  br i1 %i.jw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.x, %bb.v
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.y, %bb.w
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.y ], [ 16, %bb.w ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.y ], [ %.014.i.i.i.i.i, %bb.w ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.jx, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i.i261 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i261, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.v, !llvm.loop !31

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.jy = icmp eq ptr %.19.i.i.i.i.i, %i.jh
  br i1 %i.jy, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !298 ; 2 uses
  %i.kb = icmp slt i32 %i.jl, %i.ka
  br i1 %i.kb, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kc = icmp sgt i32 %i.jl, %i.ka
  br i1 %i.kc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !298 ; 2 uses
  %i.kf = icmp slt i32 %48, %i.ke
  br i1 %i.kf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kg = icmp sgt i32 %48, %i.ke
  br i1 %i.kg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.ac
  %i.kh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !298
  %i.kj = icmp slt i32 %i.je, %i.ki
  br i1 %i.kj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ab, %bb.z, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ac, %bb.aa
  %i.kl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !493 ; 2 uses
  %.not.i = icmp eq ptr %i.km, null
  br i1 %.not.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.kn = and i32 %33, -4096
  %i.ko = and i32 %35, -4096
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.kn to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.hw to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.am, align 8
  store i32 %i.ko, ptr %i.ao, align 8, !tbaa !207
  store ptr %i.km, ptr %i.aq, align 8, !tbaa !492
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !483 ; 2 uses
  %i.kq = shl i32 %36, 3
  %i.kr = and i32 %i.kq, 31744
  %i.ks = lshr i32 %33, 2
  %i.kt = and i32 %i.ks, 992
  %i.ku = or disjoint i32 %i.kt, %i.kr            ; 2 uses
  %i.kv = lshr i32 %35, 7
  %i.kw = and i32 %i.kv, 31
  %i.kx = or disjoint i32 %i.ku, %i.kw            ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 262144
  %i.kz = lshr i32 %i.ku, 6
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !249
  %i.ld = and i32 %i.kx, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl nuw i64 1, %i.le
  %i.lg = and i64 %i.lc, %i.lf
  %.not.i.i = icmp eq i64 %i.lg, 0
  %i.lh = zext nneg i32 %i.kx to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.lh ; 3 uses
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !207
  %49 = and i32 %33, -128
  %50 = and i32 %35, -128
  %.sroa.2.0.insert.ext.i.i.i262 = zext i32 %49 to i64
  %.sroa.2.0.insert.shift.i.i.i263 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i262, 32
  %.sroa.0.0.insert.ext.i.i.i264 = zext i32 %i.hl to i64
  %.sroa.0.0.insert.insert.i.i.i265 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i263, %.sroa.0.0.insert.ext.i.i.i264
  store i64 %.sroa.0.0.insert.insert.i.i.i265, ptr %i.aj, align 4
  store i32 %50, ptr %i.al, align 4, !tbaa !207
  store ptr %i.lj, ptr %i.ar, align 8, !tbaa !491
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !207
  %i.ll = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.lk, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

bb.af:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, %bb.t, %bb.u
  %.1.i.i = phi ptr [ %i.hk, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i ], [ %i.hv, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i ], [ %i.jb, %bb.u ], [ %i.iy, %bb.t ], [ %i.kk, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.lm, %bb.af ], [ %i.ll, %bb.ae ], [ %i.li, %bb.ad ]
  %i.ln = load double, ptr %.1.i.i, align 8, !tbaa !163
  %i.lo = load ptr, ptr %i.as, align 8, !tbaa !165
  store double %i.ln, ptr %i.lo, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.lp = load i64, ptr %i.ab, align 8            ; 6 uses
  %i.lq = load i32, ptr %i.ad, align 8, !tbaa !298
  %i.lr = add nsw i32 %i.lq, 1                    ; 11 uses
  store i64 %i.lp, ptr %9, align 8
  store i32 %i.lr, ptr %.sroa.224.0..sroa_idx.i, align 8
  %i.ls = trunc i64 %i.lp to i32                  ; 7 uses
  %i.lt = and i32 %i.ls, -8
  %i.lu = load i32, ptr %i.af, align 8, !tbaa !298
  %i.lv = icmp eq i32 %i.lt, %i.lu
  %i.lw = lshr i64 %i.lp, 32
  %i.lx = trunc nuw i64 %i.lw to i32              ; 7 uses
  br i1 %i.lv, label %bb.ag, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244

bb.ag:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.ly = and i32 %i.lx, -8
  %i.lz = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.ma = icmp eq i32 %i.ly, %i.lz
  br i1 %i.ma, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i257, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i257: ; preds = %bb.ag
  %i.mb = and i32 %i.lr, -8
  %i.mc = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.md = icmp eq i32 %i.mb, %i.mc
  br i1 %i.md, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i258, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i258: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i257
  %i.me = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %i.mf = shl i32 %i.ls, 6
  %i.mg = and i32 %i.mf, 448
  %i.mh = shl i32 %i.lx, 3
  %i.mi = and i32 %i.mh, 56
  %i.mj = and i32 %i.lr, 7
  %i.mk = or disjoint i32 %i.mg, %i.mj
  %i.ml = or disjoint i32 %i.mk, %i.mi
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mm
  %.not.i.not.i259 = icmp eq ptr %i.me, null
  br i1 %.not.i.not.i259, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit260

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i258, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i257, %bb.ag, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.mo = and i32 %i.ls, -128
  %i.mp = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.mq = icmp eq i32 %i.mo, %i.mp
  br i1 %i.mq, label %bb.ah, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i245

bb.ah:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244
  %i.mr = and i32 %i.lx, -128
  %i.ms = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.mt = icmp eq i32 %i.mr, %i.ms
  br i1 %i.mt, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i255, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i245

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i255: ; preds = %bb.ah
  %i.mu = and i32 %i.lr, -128
  %i.mv = load i32, ptr %i.al, align 4, !tbaa !298
  %i.mw = icmp eq i32 %i.mu, %i.mv
  br i1 %i.mw, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i256, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i245

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i256: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i255
  %i.mx = load ptr, ptr %i.ar, align 8, !tbaa !491
  %i.my = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.mx, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit260

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i245: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i255, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i244
  %i.mz = and i32 %i.ls, -4096
  %i.na = load i32, ptr %i.am, align 8, !tbaa !298
  %i.nb = icmp eq i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.ai, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i246

bb.ai:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i245
  %i.nc = and i32 %i.lx, -4096
  %i.nd = load i32, ptr %i.an, align 4, !tbaa !298
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i248, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i246

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i248: ; preds = %bb.ai
  %i.nf = and i32 %i.lr, -4096
  %i.ng = load i32, ptr %i.ao, align 8, !tbaa !298
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.aj, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i246

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i248
  %i.ni = load ptr, ptr %i.aq, align 8, !tbaa !492 ; 2 uses
  %i.nj = shl i32 %i.ls, 3
  %i.nk = and i32 %i.nj, 31744
  %i.nl = lshr i32 %i.lx, 2
  %i.nm = and i32 %i.nl, 992
  %i.nn = or disjoint i32 %i.nm, %i.nk            ; 2 uses
  %i.no = lshr i32 %i.lr, 7
  %i.np = and i32 %i.no, 31
  %i.nq = or disjoint i32 %i.nn, %i.np            ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 262144
  %i.ns = lshr i32 %i.nn, 6
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.nt
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !249
  %i.nw = and i32 %i.nq, 63
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = shl nuw i64 1, %i.nx
  %i.nz = and i64 %i.nv, %i.ny
  %.not.i.i.i249 = icmp eq i64 %i.nz, 0
  %i.oa = zext nneg i32 %i.nq to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.oa ; 3 uses
  br i1 %.not.i.i.i249, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit260, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !207
  %i.od = and i32 %i.lr, -128
  %.sroa.0.0.insert.insert.i.i.i.i253 = and i64 %i.lp, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i.i253, ptr %i.aj, align 4
  store i32 %i.od, ptr %i.al, align 4, !tbaa !207
  store ptr %i.oc, ptr %i.ar, align 8, !tbaa !491
  %i.oe = load ptr, ptr %i.ob, align 8, !tbaa !207
  %i.of = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.oe, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit260

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i246: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i248, %bb.ai, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i245
  %i.og = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 60
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !298
  %i.oj = sub nsw i32 %i.lx, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 64
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !298
  %i.om = sub nsw i32 %i.lr, %i.ol
  %i.on = and i32 %i.oj, -4096                    ; 4 uses
  %i.oo = and i32 %i.om, -4096                    ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !438 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  %.not12.i.i.i.i.i626 = icmp eq ptr %i.oq, null
  br i1 %.not12.i.i.i.i.i626, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i652, label %.lr.ph.i.i.i.i.i627

.lr.ph.i.i.i.i.i627:                              ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i246
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 56
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !298
  %i.ou = sub nsw i32 %i.ls, %i.ot
  %i.ov = and i32 %i.ou, -4096                    ; 4 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631, %.lr.ph.i.i.i.i.i627
  %.014.i.i.i.i.i628 = phi ptr [ %i.oq, %.lr.ph.i.i.i.i.i627 ], [ %.1.i.i.i.i.i634, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631 ] ; 7 uses
  %.0813.i.i.i.i.i629 = phi ptr [ %i.or, %.lr.ph.i.i.i.i.i627 ], [ %.19.i.i.i.i.i633, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i628, i64 32
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !298 ; 2 uses
  %i.oy = icmp slt i32 %i.ox, %i.ov
  br i1 %i.oy, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.oz = icmp sgt i32 %i.ox, %i.ov
  br i1 %i.oz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i628, i64 36
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !298 ; 2 uses
  %i.pc = icmp slt i32 %i.pb, %i.on
  br i1 %i.pc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pd = icmp sgt i32 %i.pb, %i.on
  br i1 %i.pd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i630

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i630: ; preds = %bb.ao
  %i.pe = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i628, i64 40
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !298
  %i.pg = icmp slt i32 %i.pf, %i.oo
  br i1 %i.pg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i630, %bb.an, %bb.al
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i630, %bb.ao, %bb.am
  %.sink.i.i.i.i.i632 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653 ], [ 16, %bb.ao ], [ 16, %bb.am ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i630 ]
  %.19.i.i.i.i.i633 = phi ptr [ %.0813.i.i.i.i.i629, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i653 ], [ %.014.i.i.i.i.i628, %bb.ao ], [ %.014.i.i.i.i.i628, %bb.am ], [ %.014.i.i.i.i.i628, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i630 ] ; 7 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i628, i64 %.sink.i.i.i.i.i632
  %.1.i.i.i.i.i634 = load ptr, ptr %i.ph, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i.i635 = icmp eq ptr %.1.i.i.i.i.i634, null
  br i1 %.not.i.i.i.i.i635, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i636, label %bb.al, !llvm.loop !31

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i636: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i631
  %i.pi = icmp eq ptr %.19.i.i.i.i.i633, %i.or
  br i1 %i.pi, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i652, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i636
  %i.pj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i633, i64 32
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !298 ; 2 uses
  %i.pl = icmp slt i32 %i.ov, %i.pk
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.aue = load ptr, ptr %i.aq, align 8, !tbaa !492 ; 2 uses
  %i.auf = shl i32 %i.asn, 3
  %i.aug = and i32 %i.auf, 31744
  %i.auh = lshr i32 %i.asp, 2
  %i.aui = and i32 %i.auh, 992
  %i.auj = or disjoint i32 %i.aui, %i.aug         ; 2 uses
  %i.auk = lshr i32 %i.asq, 7
  %i.aul = and i32 %i.auk, 31
  %i.aum = or disjoint i32 %i.auj, %i.aul         ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aue, i64 262144
  %i.auo = lshr i32 %i.auj, 6
  %i.aup = zext nneg i32 %i.auo to i64
  %i.auq = getelementptr inbounds nuw [8 x i8], ptr %i.aun, i64 %i.aup
  %i.aur = load i64, ptr %i.auq, align 8, !tbaa !249
  %i.aus = and i32 %i.aum, 63
  %i.aut = zext nneg i32 %i.aus to i64
  %i.auu = shl nuw i64 1, %i.aut
  %i.auv = and i64 %i.aur, %i.auu
  %.not.i.i.i147 = icmp eq i64 %i.auv, 0
  %i.auw = zext nneg i32 %i.aum to i64
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %i.aue, i64 %i.auw ; 3 uses
  br i1 %.not.i.i.i147, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !207
  %i.auz = and i32 %i.asp, -128
  %i.ava = and i32 %i.asq, -128
  %.sroa.2.0.insert.ext.i.i.i.i148 = zext i32 %i.auz to i64
  %.sroa.2.0.insert.shift.i.i.i.i149 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i148, 32
  %.sroa.0.0.insert.ext.i.i.i.i150 = zext i32 %i.atk to i64
  %.sroa.0.0.insert.insert.i.i.i.i151 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i149, %.sroa.0.0.insert.ext.i.i.i.i150
  store i64 %.sroa.0.0.insert.insert.i.i.i.i151, ptr %i.aj, align 4
  store i32 %i.ava, ptr %i.al, align 4, !tbaa !207
  store ptr %i.auy, ptr %i.ar, align 8, !tbaa !491
  %i.avb = load ptr, ptr %i.aux, align 8, !tbaa !207
  %i.avc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.avb, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i144: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i146, %bb.ea, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i143
  %i.avd = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 6 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 60
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !298
  %i.avg = sub nsw i32 %i.asp, %i.avf
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avd, i64 64
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !298
  %i.avj = sub nsw i32 %i.asq, %i.avi
  %i.avk = and i32 %i.avg, -4096                  ; 4 uses
  %i.avl = and i32 %i.avj, -4096                  ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avd, i64 16
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !438 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avd, i64 8 ; 2 uses
  %.not12.i.i.i.i.i452 = icmp eq ptr %i.avn, null
  br i1 %.not12.i.i.i.i.i452, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478, label %.lr.ph.i.i.i.i.i453

.lr.ph.i.i.i.i.i453:                              ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i144
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avd, i64 56
  %i.avq = load i32, ptr %i.avp, align 8, !tbaa !298
  %i.avr = sub nsw i32 %i.asn, %i.avq
  %i.avs = and i32 %i.avr, -4096                  ; 4 uses
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457, %.lr.ph.i.i.i.i.i453
  %.014.i.i.i.i.i454 = phi ptr [ %i.avn, %.lr.ph.i.i.i.i.i453 ], [ %.1.i.i.i.i.i460, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457 ] ; 7 uses
  %.0813.i.i.i.i.i455 = phi ptr [ %i.avo, %.lr.ph.i.i.i.i.i453 ], [ %.19.i.i.i.i.i459, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457 ]
  %i.avt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i454, i64 32
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !298 ; 2 uses
  %i.avv = icmp slt i32 %i.avu, %i.avs
  br i1 %i.avv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.avw = icmp sgt i32 %i.avu, %i.avs
  br i1 %i.avw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.avx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i454, i64 36
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !298 ; 2 uses
  %i.avz = icmp slt i32 %i.avy, %i.avk
  br i1 %i.avz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.awa = icmp sgt i32 %i.avy, %i.avk
  br i1 %i.awa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i456

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i456: ; preds = %bb.eg
  %i.awb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i454, i64 40
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !298
  %i.awd = icmp slt i32 %i.awc, %i.avl
  br i1 %i.awd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i456, %bb.ef, %bb.ed
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i456, %bb.eg, %bb.ee
  %.sink.i.i.i.i.i458 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479 ], [ 16, %bb.eg ], [ 16, %bb.ee ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i456 ]
  %.19.i.i.i.i.i459 = phi ptr [ %.0813.i.i.i.i.i455, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i479 ], [ %.014.i.i.i.i.i454, %bb.eg ], [ %.014.i.i.i.i.i454, %bb.ee ], [ %.014.i.i.i.i.i454, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i456 ] ; 7 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i454, i64 %.sink.i.i.i.i.i458
  %.1.i.i.i.i.i460 = load ptr, ptr %i.awe, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i.i461 = icmp eq ptr %.1.i.i.i.i.i460, null
  br i1 %.not.i.i.i.i.i461, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i462, label %bb.ed, !llvm.loop !31

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i462: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i457
  %i.awf = icmp eq ptr %.19.i.i.i.i.i459, %i.avo
  br i1 %i.awf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478, label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i462
  %i.awg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i459, i64 32
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !298 ; 2 uses
  %i.awi = icmp slt i32 %i.avs, %i.awh
  br i1 %i.awi, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.awj = icmp sgt i32 %i.avs, %i.awh
  br i1 %i.awj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i464, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.awk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i459, i64 36
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !298 ; 2 uses
  %i.awm = icmp slt i32 %i.avk, %i.awl
  br i1 %i.awm, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.awn = icmp sgt i32 %i.avk, %i.awl
  br i1 %i.awn, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i464, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i463

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i463: ; preds = %bb.ek
  %i.awo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i459, i64 40
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !298
  %i.awq = icmp slt i32 %i.avl, %i.awp
  br i1 %i.awq, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i464

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i463, %bb.ej, %bb.eh, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i462, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i144
  %i.awr = getelementptr inbounds nuw i8, ptr %i.avd, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i464: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i463, %bb.ek, %bb.ei
  %i.aws = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i459, i64 48 ; 2 uses
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !493 ; 2 uses
  %.not.i465 = icmp eq ptr %i.awt, null
  br i1 %.not.i465, label %bb.en, label %bb.el

bb.el:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i464
  %i.awu = and i32 %i.asp, -4096
  %i.awv = and i32 %i.asq, -4096
  %.sroa.2.0.insert.ext.i.i466 = zext i32 %i.awu to i64
  %.sroa.2.0.insert.shift.i.i467 = shl nuw i64 %.sroa.2.0.insert.ext.i.i466, 32
  %.sroa.0.0.insert.ext.i.i468 = zext i32 %i.atv to i64
  %.sroa.0.0.insert.insert.i.i469 = or disjoint i64 %.sroa.2.0.insert.shift.i.i467, %.sroa.0.0.insert.ext.i.i468
  store i64 %.sroa.0.0.insert.insert.i.i469, ptr %i.am, align 8
  store i32 %i.awv, ptr %i.ao, align 8, !tbaa !207
  store ptr %i.awt, ptr %i.aq, align 8, !tbaa !492
  %i.aww = load ptr, ptr %i.aws, align 8, !tbaa !483 ; 2 uses
  %i.awx = shl i32 %i.asn, 3
  %i.awy = and i32 %i.awx, 31744
  %i.awz = lshr i32 %i.asp, 2
  %i.axa = and i32 %i.awz, 992
  %i.axb = or disjoint i32 %i.axa, %i.awy         ; 2 uses
  %i.axc = lshr i32 %i.asq, 7
  %i.axd = and i32 %i.axc, 31
  %i.axe = or disjoint i32 %i.axb, %i.axd         ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.aww, i64 262144
  %i.axg = lshr i32 %i.axb, 6
  %i.axh = zext nneg i32 %i.axg to i64
  %i.axi = getelementptr inbounds nuw [8 x i8], ptr %i.axf, i64 %i.axh
  %i.axj = load i64, ptr %i.axi, align 8, !tbaa !249
  %i.axk = and i32 %i.axe, 63
  %i.axl = zext nneg i32 %i.axk to i64
  %i.axm = shl nuw i64 1, %i.axl
  %i.axn = and i64 %i.axj, %i.axm
  %.not.i.i471 = icmp eq i64 %i.axn, 0
  %i.axo = zext nneg i32 %i.axe to i64
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %i.aww, i64 %i.axo ; 3 uses
  br i1 %.not.i.i471, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !207
  %i.axr = and i32 %i.asp, -128
  %i.axs = and i32 %i.asq, -128
  %.sroa.2.0.insert.ext.i.i.i472 = zext i32 %i.axr to i64
  %.sroa.2.0.insert.shift.i.i.i473 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i472, 32
  %.sroa.0.0.insert.ext.i.i.i474 = zext i32 %i.atk to i64
  %.sroa.0.0.insert.insert.i.i.i475 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i473, %.sroa.0.0.insert.ext.i.i.i474
  store i64 %.sroa.0.0.insert.insert.i.i.i475, ptr %i.aj, align 4
  store i32 %i.axs, ptr %i.al, align 4, !tbaa !207
  store ptr %i.axq, ptr %i.ar, align 8, !tbaa !491
  %i.axt = load ptr, ptr %i.axp, align 8, !tbaa !207
  %i.axu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.axt, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158

bb.en:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i464
  %i.axv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i459, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158: ; preds = %bb.en, %bb.em, %bb.el, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i156, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i154, %bb.eb, %bb.ec
  %.1.i.i145 = phi ptr [ %i.atj, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i156 ], [ %i.atu, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i154 ], [ %i.avc, %bb.ec ], [ %i.aux, %bb.eb ], [ %i.awr, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i478 ], [ %i.axv, %bb.en ], [ %i.axu, %bb.em ], [ %i.axp, %bb.el ]
  %i.axw = load double, ptr %.1.i.i145, align 8, !tbaa !163
  %i.axx = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 56
  store double %i.axw, ptr %i.axy, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %.pre = load double, ptr %23, align 8, !tbaa !163, !noalias !1080
  %51 = load <2 x i32>, ptr %i.ab, align 8, !tbaa !298, !noalias !1080
  %i.axz = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !163, !noalias !1080
  %.pre2165 = load i32, ptr %i.ad, align 8, !tbaa !298, !noalias !1080
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i

_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158, %bb.p
  %i.aya = phi i32 [ %.pre2165, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158 ], [ %35, %bb.p ]
  %i.ayb = phi double [ %.pre, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158 ], [ %i.gi, %bb.p ]
  %i.ayc = phi <2 x double> [ %i.axz, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158 ], [ %i.go, %bb.p ] ; 2 uses
  %i.ayd = phi <2 x i32> [ %51, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit158 ], [ %32, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %52 = sitofp <2 x i32> %i.ayd to <2 x double>   ; 2 uses
  %53 = extractelement <2 x double> %52, i64 0
  %54 = fsub double %i.ayb, %53
  %i.aye = sitofp i32 %i.aya to double
  %55 = extractelement <2 x double> %i.ayc, i64 1
  %56 = fsub double %55, %i.aye
  %i.ayf = load ptr, ptr %i.as, align 8, !tbaa !165, !noalias !1080 ; 6 uses
  %57 = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %58 = load double, ptr %i.ayf, align 8, !tbaa !163, !noalias !1080
  %59 = getelementptr inbounds nuw i8, ptr %i.ayf, i64 24
  %60 = load double, ptr %59, align 8, !tbaa !163, !noalias !1080
  %61 = getelementptr inbounds nuw i8, ptr %i.ayf, i64 40
  %62 = getelementptr inbounds nuw i8, ptr %i.ayf, i64 32
  %63 = load double, ptr %62, align 8, !tbaa !163, !noalias !1080
  %64 = getelementptr inbounds nuw i8, ptr %i.ayf, i64 56
  %65 = load double, ptr %64, align 8, !tbaa !163, !noalias !1080
  %66 = load <2 x double>, ptr %57, align 8, !tbaa !163, !noalias !1080
  %67 = insertelement <2 x double> poison, double %58, i64 0
  %68 = insertelement <2 x double> %67, double %60, i64 1 ; 2 uses
  %i.ayg = fsub <2 x double> %66, %68             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17, !noalias !1080
  %69 = insertelement <2 x double> poison, double %56, i64 0
  %i.ayh = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ayi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayg, <2 x double> %i.ayh, <2 x double> %68) ; 2 uses
  %70 = load <2 x double>, ptr %61, align 8, !tbaa !163, !noalias !1080
  %71 = insertelement <2 x double> poison, double %63, i64 0
  %72 = insertelement <2 x double> %71, double %65, i64 1 ; 2 uses
  %73 = fsub <2 x double> %70, %72                ; 3 uses
  %74 = shufflevector <2 x double> %i.ayg, <2 x double> %73, <2 x i32> <i32 1, i32 3>
  %75 = shufflevector <2 x double> %i.ayg, <2 x double> %73, <2 x i32> <i32 0, i32 2> ; 2 uses
  %76 = fsub <2 x double> %74, %75
  %77 = shufflevector <2 x double> %i.ayc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayj = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %78 = fsub <2 x double> %77, %i.ayj             ; 2 uses
  %i.ayk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> %78, <2 x double> %75) ; 2 uses
  %i.ayl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %i.ayh, <2 x double> %72) ; 2 uses
  %79 = shufflevector <2 x double> %i.ayi, <2 x double> %i.ayl, <2 x i32> <i32 1, i32 3>
  %80 = shufflevector <2 x double> %i.ayi, <2 x double> %i.ayl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aym = fsub <2 x double> %79, %80             ; 3 uses
  %i.ayn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aym, <2 x double> %78, <2 x double> %80) ; 2 uses
  %shift2561 = shufflevector <2 x double> %i.ayn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2562 = fsub <2 x double> %shift2561, %i.ayn
  %i.ayo = extractelement <2 x double> %foldExtExtBinop2562, i64 0
  store double %i.ayo, ptr %16, align 8, !tbaa !163, !noalias !1080
  %i.ayp = shufflevector <2 x double> %i.aym, <2 x double> %i.ayk, <2 x i32> <i32 1, i32 3>
  %i.ayq = shufflevector <2 x double> %i.aym, <2 x double> %i.ayk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ayr = fsub <2 x double> %i.ayp, %i.ayq
  %i.ays = insertelement <2 x double> poison, double %54, i64 0
  %i.ayt = shufflevector <2 x double> %i.ays, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayr, <2 x double> %i.ayt, <2 x double> %i.ayq)
  store <2 x double> %i.ayu, ptr %i.at, align 8, !tbaa !163, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17, !noalias !1080
  %i.ayv = load ptr, ptr %i.n, align 8, !tbaa !484, !noalias !1080
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 56
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !276, !noalias !1080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !294, !noalias !1082 ; 3 uses
  store ptr %i.ayy, ptr %17, align 8, !tbaa !296, !alias.scope !1081, !noalias !1080
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !297, !noalias !1082 ; 3 uses
  store ptr %i.aza, ptr %i.au, align 8, !tbaa !297, !alias.scope !1081, !noalias !1080
  %.not.i.i.i.i.i = icmp eq ptr %i.aza, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i, label %bb.eo

bb.eo:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8 ; 3 uses
  %i.azc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1082
  %.not.i.i.i.i.i.i = icmp eq i8 %i.azc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.azd = load i32, ptr %i.azb, align 4, !tbaa !298, !noalias !1082
  %i.aze = add nsw i32 %i.azd, 1
  store i32 %i.aze, ptr %i.azb, align 4, !tbaa !298, !noalias !1082
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

bb.eq:                                            ; preds = %bb.eo
  %i.azf = atomicrmw volatile add ptr %i.azb, i32 1 acq_rel, align 4, !noalias !1082 ; 0 uses
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !296, !noalias !1080
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i: ; preds = %bb.eq, %bb.ep, %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i
  %i.azg = phi ptr [ %i.ayy, %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i ], [ %i.ayy, %bb.ep ], [ %.pre.i, %bb.eq ] ; 2 uses
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !100, !noalias !1080
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 80
  %i.azj = load ptr, ptr %i.azi, align 8, !noalias !1080
  invoke void %i.azj(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.azg, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.azk = load ptr, ptr %i.au, align 8, !tbaa !297, !noalias !1080 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.azk, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8 ; 4 uses
  %i.azm = load atomic i64, ptr %i.azl acquire, align 8 ; 2 uses
  %i.azn = icmp eq i64 %i.azm, 4294967297
  %i.azo = trunc i64 %i.azm to i32                ; 2 uses
  br i1 %i.azn, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.azl, align 8, !tbaa !300
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azk, i64 12
  store i32 0, ptr %i.azp, align 4, !tbaa !301
  %i.azq = load ptr, ptr %i.azk, align 8, !tbaa !100
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 16
  %i.azs = load ptr, ptr %i.azr, align 8
  call void %i.azs(ptr noundef nonnull align 8 dereferenceable(16) %i.azk) #17, !inline_history !1027
  %i.azt = load ptr, ptr %i.azk, align 8, !tbaa !100
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 24
  %i.azv = load ptr, ptr %i.azu, align 8
  call void %i.azv(ptr noundef nonnull align 8 dereferenceable(16) %i.azk) #17, !inline_history !1027
  br label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit

bb.eu:                                            ; preds = %bb.es
  %i.azw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1080
  %.not.i.i.i.i = icmp eq i8 %i.azw, 0
  br i1 %.not.i.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.azx = add nsw i32 %i.azo, -1
  store i32 %i.azx, ptr %i.azl, align 8, !tbaa !298
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ew:                                            ; preds = %bb.eu
  %i.azy = atomicrmw volatile add ptr %i.azl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i.i = phi i32 [ %i.azo, %bb.ev ], [ %i.azy, %bb.ew ]
  %i.azz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.azz, label %bb.ex, label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit, !prof !302

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azk) #17
  br label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit

bb.ey:                                            ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.baa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17, !noalias !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17, !noalias !1080
  br label %common.resume

_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit: ; preds = %bb.er, %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17, !noalias !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17, !noalias !1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.bab = load <2 x double>, ptr %24, align 16, !tbaa !163 ; 4 uses
  %foldExtExtBinop2564 = fmul <2 x double> %i.bab, %i.bab
  %i.bac = extractelement <2 x double> %foldExtExtBinop2564, i64 1
  %i.bad = extractelement <2 x double> %i.bab, i64 0 ; 2 uses
  %i.bae = call double @llvm.fmuladd.f64(double %i.bad, double %i.bad, double %i.bac)
  %i.baf = load double, ptr %i.av, align 16, !tbaa !163 ; 3 uses
  %i.bag = call double @llvm.fmuladd.f64(double %i.baf, double %i.baf, double %i.bae)
  %i.bah = call noundef double @sqrt(double noundef %i.bag) #17 ; 2 uses
  %i.bai = call noundef double @llvm.fabs.f64(double %i.bah)
  %i.baj = fcmp ogt double %i.bai, f0x3E7AD7F29ABCAF48
  br i1 %i.baj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit
  %i.bak = fdiv double 1.000000e+00, %i.bah       ; 2 uses
  %i.bal = fmul double %i.baf, %i.bak
  %i.bam = insertelement <2 x double> poison, double %i.bak, i64 0
  %i.ban = shufflevector <2 x double> %i.bam, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bao = fmul <2 x double> %i.bab, %i.ban
  store <2 x double> %i.bao, ptr %24, align 16, !tbaa !163
  store double %i.bal, ptr %i.av, align 16, !tbaa !163
  br label %bb.fa

bb.fa:                                            ; preds = %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.bap = load ptr, ptr %i.n, align 8, !tbaa !484
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 56
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !276, !noalias !1083
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !294, !noalias !1084 ; 2 uses
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !100, !noalias !1084
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 56
  %i.bav = load ptr, ptr %i.bau, align 8, !noalias !1084
  call void %i.bav(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.bas, ptr noundef nonnull align 8 dereferenceable(24) %23), !inline_history !1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  %i.baw = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 16
  %i.bay = load ptr, ptr %i.bax, align 8
  %i.baz = call { <2 x float>, <2 x float> } %i.bay(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 2 uses
  %i.bba = extractvalue { <2 x float>, <2 x float> } %i.baz, 0
  %i.bbb = extractvalue { <2 x float>, <2 x float> } %i.baz, 1
  br label %bb.fb

_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread: ; preds = %bb.m, %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, %bb.n
  %.sroa.01408.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !98
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !98
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread, %bb.fa
  %.sroa.10.0 = phi <2 x float> [ %i.bbb, %bb.fa ], [ %.sroa.10.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread ] ; 2 uses
  %.sroa.01408.0 = phi <2 x float> [ %i.bba, %bb.fa ], [ %.sroa.01408.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread ] ; 2 uses
  %i.bbc = load i64, ptr %i.c, align 8, !tbaa !476
  %.not2081 = icmp eq i64 %i.bbc, 0
  br i1 %.not2081, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fb
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %bb.fc

._crit_edge:                                      ; preds = %bb.st, %bb.fb
  %.sroa.10.1.lcssa = phi <2 x float> [ %.sroa.10.0, %bb.fb ], [ %i.fbu, %bb.st ]
  %.sroa.01408.1.lcssa = phi <2 x float> [ %.sroa.01408.0, %bb.fb ], [ %i.fbt, %bb.st ]
  %.2.lcssa = phi i64 [ %.12069, %bb.fb ], [ %i.fbw, %bb.st ] ; 2 uses
  %i.bbd = fmul <2 x float> %i.bg, %.sroa.01408.1.lcssa
  %.sroa.10.8.vec.extract = extractelement <2 x float> %.sroa.10.1.lcssa, i64 0
  %i.bbe = fmul float %i.g, %.sroa.10.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bbe, i64 0
  store <2 x float> %i.bbd, ptr %i.bu, align 4, !tbaa !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.bbf = add nuw i64 %.0252070, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bbf, %i.bk
  br i1 %exitcond.not, label %._crit_edge2073, label %.lr.ph2072, !llvm.loop !1033

bb.fc:                                            ; preds = %.lr.ph, %bb.st
  %.02066 = phi i64 [ 0, %.lr.ph ], [ %i.fbv, %bb.st ]
  %.22065 = phi i64 [ %.12069, %.lr.ph ], [ %i.fbw, %bb.st ] ; 3 uses
  %.sroa.01408.12064 = phi <2 x float> [ %.sroa.01408.0, %.lr.ph ], [ %i.fbt, %bb.st ]
  %.sroa.10.12063 = phi <2 x float> [ %.sroa.10.0, %.lr.ph ], [ %i.fbu, %bb.st ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.bbg = load ptr, ptr %i.l, align 8, !tbaa !164 ; 2 uses
  %i.bbh = load ptr, ptr %i.aw, align 8, !tbaa !162 ; 2 uses
  %i.bbi = and i64 %.22065, 15
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %i.bbh, i64 %i.bbi
  %i.bbk = load double, ptr %i.bbj, align 8, !tbaa !163
  %i.bbl = add i64 %.22065, 1
  %i.bbm = and i64 %i.bbl, 15
  %i.bbn = getelementptr inbounds nuw [8 x i8], ptr %i.bbh, i64 %i.bbm
  %i.bbo = load double, ptr %i.bbn, align 8, !tbaa !163
  %i.bbp = load ptr, ptr %i.bbg, align 8, !tbaa !100
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 16
  %i.bbr = load ptr, ptr %i.bbq, align 8
  call void %i.bbr(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %26, ptr noundef nonnull align 8 dereferenceable(496) %i.bbg, i64 noundef %.0252070, i64 noundef %.0272075, double noundef %i.bbk, double noundef %i.bbo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull align 8 dereferenceable(88) %26, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01462)
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.bct = fdiv double %i.bcj, %i.bcp             ; 2 uses
  %i.bcu = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !1087
  %i.bcv = fmul <2 x double> %i.bcr, %i.bcu       ; 4 uses
  %i.bcw = shufflevector <2 x double> %i.bcv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01462, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bcx = fdiv <2 x double> splat (double 1.000000e+00), %i.bcs ; 3 uses
  %i.bcy = fdiv double 1.000000e+00, %i.bct       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !1087
  br i1 %.not.i.i.i.i.i130, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8 ; 4 uses
  %i.bda = load atomic i64, ptr %i.bcz acquire, align 8, !noalias !1085 ; 2 uses
  %i.bdb = icmp eq i64 %i.bda, 4294967297
  %i.bdc = trunc i64 %i.bda to i32                ; 2 uses
  br i1 %i.bdb, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.bcz, align 8, !tbaa !300, !noalias !1085
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bbx, i64 12
  store i32 0, ptr %i.bdd, align 4, !tbaa !301, !noalias !1085
  %i.bde = load ptr, ptr %i.bbx, align 8, !tbaa !100, !noalias !1085
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 16
  %i.bdg = load ptr, ptr %i.bdf, align 8, !noalias !1085
  call void %i.bdg(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #17, !noalias !1085, !inline_history !7
  %i.bdh = load ptr, ptr %i.bbx, align 8, !tbaa !100, !noalias !1085
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24
  %i.bdj = load ptr, ptr %i.bdi, align 8, !noalias !1085
  call void %i.bdj(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #17, !noalias !1085, !inline_history !7
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141

bb.fj:                                            ; preds = %bb.fh
  %i.bdk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1085
  %.not.i.i.i.i137 = icmp eq i8 %i.bdk, 0
  br i1 %.not.i.i.i.i137, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bdl = add nsw i32 %i.bdc, -1
  store i32 %i.bdl, ptr %i.bcz, align 8, !tbaa !298, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138

bb.fl:                                            ; preds = %bb.fj
  %i.bdm = atomicrmw volatile add ptr %i.bcz, i32 -1 acq_rel, align 4, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i139 = phi i32 [ %i.bdc, %bb.fk ], [ %i.bdm, %bb.fl ]
  %i.bdn = icmp eq i32 %.0.i.i.i.i.i139, 1
  br i1 %i.bdn, label %bb.fm, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141, !prof !302

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #17, !noalias !1085
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141

bb.fn:                                            ; preds = %.noexc.i133, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132
  %i.bdo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  br i1 %.not.i.i.i.i.i130, label %common.resume, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8 ; 4 uses
  %i.bdq = load atomic i64, ptr %i.bdp acquire, align 8, !noalias !1085 ; 2 uses
  %i.bdr = icmp eq i64 %i.bdq, 4294967297
  %i.bds = trunc i64 %i.bdq to i32                ; 2 uses
  br i1 %i.bdr, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.bdp, align 8, !tbaa !300, !noalias !1085
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bbx, i64 12
  store i32 0, ptr %i.bdt, align 4, !tbaa !301, !noalias !1085
  %i.bdu = load ptr, ptr %i.bbx, align 8, !tbaa !100, !noalias !1085
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 16
  %i.bdw = load ptr, ptr %i.bdv, align 8, !noalias !1085
  call void %i.bdw(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #17, !noalias !1085, !inline_history !28
  %i.bdx = load ptr, ptr %i.bbx, align 8, !tbaa !100, !noalias !1085
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 24
  %i.bdz = load ptr, ptr %i.bdy, align 8, !noalias !1085
  call void %i.bdz(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #17, !noalias !1085, !inline_history !28
  br label %common.resume

bb.fq:                                            ; preds = %bb.fo
  %i.bea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1085
  %.not.i.i.i451 = icmp eq i8 %i.bea, 0
  br i1 %.not.i.i.i451, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.beb = add nsw i32 %i.bds, -1
  store i32 %i.beb, ptr %i.bdp, align 8, !tbaa !298, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.bec = atomicrmw volatile add ptr %i.bdp, i32 -1 acq_rel, align 4, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i = phi i32 [ %i.bds, %bb.fr ], [ %i.bec, %bb.fs ]
  %i.bed = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bed, label %bb.ft, label %common.resume, !prof !302

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #17, !noalias !1085
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141: ; preds = %bb.fg, %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138, %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01462, i64 24, i1 false)
  store <2 x double> %i.bcs, ptr %.sroa.4.0..sroa_idx1420, align 8
  store double %i.bct, ptr %.sroa.61421.0..sroa_idx, align 8
  store <2 x double> %i.bcx, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.bcy, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.bcv, ptr %.sroa.101422.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01462)
  %i.bee = load <2 x i32>, ptr %i.s, align 8
  %i.bef = load <1 x double>, ptr %i.m, align 8
  %i.beg = load i32, ptr %i.t, align 4, !tbaa !298
  %i.beh = insertelement <2 x i32> %i.bee, i32 %i.beg, i64 1
  %i.bei = sitofp <2 x i32> %i.beh to <2 x double>
  %i.bej = shufflevector <1 x double> %i.bef, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bek = fsub <2 x double> %i.bei, %i.bej
  %i.bel = shufflevector <2 x double> %i.bcx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bem = fmul <2 x double> %i.bel, %i.bek       ; 4 uses
  %i.ben = extractelement <2 x double> %i.bem, i64 0
  %i.beo = extractelement <2 x double> %i.bem, i64 1
  %i.bep = fcmp ogt double %i.ben, %i.beo
  %i.beq = insertelement <2 x i1> poison, i1 %i.bep, i64 0
  %i.ber = shufflevector <2 x i1> %i.beq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bes = shufflevector <2 x double> %i.bem, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bet = select <2 x i1> %i.ber, <2 x double> %i.bem, <2 x double> %i.bes ; 3 uses
  %i.beu = shufflevector <2 x double> %i.bcv, <2 x double> %i.bet, <2 x i32> <i32 1, i32 3>
  %i.bev = shufflevector <2 x double> %i.bet, <2 x double> %i.bcv, <2 x i32> <i32 0, i32 2>
  %i.bew = fcmp ogt <2 x double> %i.beu, %i.bev
  %i.bex = select <2 x i1> %i.bew, <2 x double> %i.bet, <2 x double> %i.bcw ; 5 uses
  %i.bey = extractelement <2 x double> %i.bex, i64 0
  %i.bez = extractelement <2 x double> %i.bex, i64 1
  %i.bfa = fcmp ule double %i.bez, %i.bey
  br i1 %i.bfa, label %bb.fu, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread

bb.fu:                                            ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141
  %i.bfb = load <2 x i32>, ptr %i.u, align 4
  %i.bfc = load <1 x double>, ptr %i.v, align 8
  %i.bfd = load i32, ptr %i.w, align 8, !tbaa !298
  %i.bfe = insertelement <2 x i32> %i.bfb, i32 %i.bfd, i64 1
  %i.bff = sitofp <2 x i32> %i.bfe to <2 x double>
  %i.bfg = shufflevector <1 x double> %i.bfc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bfh = fsub <2 x double> %i.bff, %i.bfg
  %i.bfi = shufflevector <2 x double> %i.bcx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bfj = fmul <2 x double> %i.bfi, %i.bfh       ; 4 uses
  %i.bfk = extractelement <2 x double> %i.bfj, i64 0
  %i.bfl = extractelement <2 x double> %i.bfj, i64 1
  %i.bfm = fcmp ogt double %i.bfk, %i.bfl
  %i.bfn = insertelement <2 x i1> poison, i1 %i.bfm, i64 0
  %i.bfo = shufflevector <2 x i1> %i.bfn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bfp = shufflevector <2 x double> %i.bfj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bfq = select <2 x i1> %i.bfo, <2 x double> %i.bfj, <2 x double> %i.bfp ; 3 uses
  %i.bfr = shufflevector <2 x double> %i.bex, <2 x double> %i.bfq, <2 x i32> <i32 0, i32 3>
  %i.bfs = shufflevector <2 x double> %i.bfq, <2 x double> %i.bex, <2 x i32> <i32 0, i32 3>
  %i.bft = fcmp ogt <2 x double> %i.bfr, %i.bfs
  %i.bfu = select <2 x i1> %i.bft, <2 x double> %i.bfq, <2 x double> %i.bex ; 2 uses
  %i.bfv = extractelement <2 x double> %i.bfu, i64 0 ; 3 uses
  %i.bfw = extractelement <2 x double> %i.bfu, i64 1 ; 3 uses
  %i.bfx = fcmp ule double %i.bfw, %i.bfv
  br i1 %i.bfx, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i59, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i59: ; preds = %bb.fu
  %i.bfy = load i32, ptr %i.x, align 8, !tbaa !298
  %i.bfz = sitofp i32 %i.bfy to double
  %i.bga = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.bgb = fsub double %i.bfz, %i.bga
  %i.bgc = fmul double %i.bcy, %i.bgb             ; 3 uses
  %i.bgd = load i32, ptr %i.z, align 4, !tbaa !298
  %i.bge = sitofp i32 %i.bgd to double
  %i.bgf = fsub double %i.bge, %i.bga
  %i.bgg = fmul double %i.bcy, %i.bgf             ; 3 uses
  %i.bgh = fcmp ogt double %i.bgc, %i.bgg         ; 2 uses
  %.030.2.i.i.i60 = select i1 %i.bgh, double %i.bgg, double %i.bgc ; 2 uses
  %.0.2.i.i.i61 = select i1 %i.bgh, double %i.bgc, double %i.bgg ; 2 uses
  %i.bgi = fcmp ogt double %.030.2.i.i.i60, %i.bfw
  %.27.i.i62 = select i1 %i.bgi, double %.030.2.i.i.i60, double %i.bfw ; 2 uses
  %i.bgj = fcmp olt double %.0.2.i.i.i61, %i.bfv
  %i.bgk = select i1 %i.bgj, double %.0.2.i.i.i61, double %i.bfv ; 2 uses
  %i.bgl = fcmp ule double %.27.i.i62, %i.bgk
  br i1 %i.bgl, label %bb.fv, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread

bb.fv:                                            ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i59
  store double %.27.i.i62, ptr %.sroa.101422.0..sroa_idx, align 8, !tbaa !290
  store double %i.bgk, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !291
  %i.bgm = call noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(320) %i.m)
  br i1 %i.bgm, label %bb.fw, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread

bb.fw:                                            ; preds = %bb.fv
  %i.bgn = load double, ptr %i.aa, align 8, !tbaa !490 ; 3 uses
  %.sroa.0.0.copyload.i.i.i30 = load double, ptr %.sroa.4.0..sroa_idx1420, align 8, !noalias !1088
  %i.bgo = fmul double %i.bgn, %.sroa.0.0.copyload.i.i.i30
  %.sroa.0.0.copyload2.i.i35 = load double, ptr %i.m, align 8
  %i.bgp = fadd double %i.bgo, %.sroa.0.0.copyload2.i.i35 ; 3 uses
  %i.bgq = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1088 ; 2 uses
  %i.bgr = insertelement <2 x double> %i.bgq, double %i.bgn, i64 0
  %i.bgs = insertelement <2 x double> %i.bgq, double %i.bgn, i64 1
  %i.bgt = fmul <2 x double> %i.bgr, %i.bgs
  %i.bgu = load <2 x double>, ptr %i.v, align 8
  %i.bgv = fadd <2 x double> %i.bgt, %i.bgu       ; 4 uses
  store double %i.bgp, ptr %23, align 8
  %81 = extractelement <2 x double> %i.bgv, i64 0
  %82 = extractelement <2 x double> %i.bgv, i64 1
  store <2 x double> %i.bgv, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %83 = call noundef double @llvm.floor.f64(double %i.bgp)
  %i.bgw = call noundef double @llvm.floor.f64(double %81)
  %84 = insertelement <2 x double> poison, double %83, i64 0
  %85 = insertelement <2 x double> %84, double %i.bgw, i64 1
  %i.bgx = fptosi <2 x double> %85 to <2 x i32>   ; 4 uses
  %86 = extractelement <2 x i32> %i.bgx, i64 1    ; 20 uses
  %i.bgy = extractelement <2 x i32> %i.bgx, i64 0 ; 14 uses
  %87 = call noundef double @llvm.floor.f64(double %82)
  %88 = fptosi double %87 to i32                  ; 22 uses
  %i.bgz = load i32, ptr %i.ab, align 8, !tbaa !298
  %i.bha = icmp eq i32 %i.bgz, %i.bgy
  br i1 %i.bha, label %bb.fx, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47

bb.fx:                                            ; preds = %bb.fw
  %89 = load i32, ptr %i.ac, align 4, !tbaa !298
  %90 = icmp ne i32 %89, %86
  %91 = load i32, ptr %i.ad, align 8
  %92 = icmp ne i32 %91, %88
  %or.cond.i.i49 = select i1 %90, i1 true, i1 %92
  br i1 %or.cond.i.i49, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47: ; preds = %bb.fx, %bb.fw
  store <2 x i32> %i.bgx, ptr %i.ab, align 8
  store i32 %88, ptr %i.ad, align 8, !tbaa !207
  %i.bhb = and i32 %i.bgy, -8                     ; 4 uses
  %i.bhc = load i32, ptr %i.af, align 8, !tbaa !298
  %i.bhd = icmp eq i32 %i.bhb, %i.bhc
  br i1 %i.bhd, label %bb.fy, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113

bb.fy:                                            ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47
  %i.bhe = and i32 %86, -8
  %i.bhf = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.bhg = icmp eq i32 %i.bhe, %i.bhf
  br i1 %i.bhg, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i126, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i126: ; preds = %bb.fy
  %i.bhh = and i32 %88, -8
  %i.bhi = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.bhj = icmp eq i32 %i.bhh, %i.bhi
  br i1 %i.bhj, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i127, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i127: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i126
  %i.bhk = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %i.bhl = shl i32 %i.bgy, 6
  %i.bhm = and i32 %i.bhl, 448
  %i.bhn = shl i32 %86, 3
  %i.bho = and i32 %i.bhn, 56
  %i.bhp = or disjoint i32 %i.bho, %i.bhm
  %i.bhq = and i32 %88, 7
  %i.bhr = or disjoint i32 %i.bhp, %i.bhq
  %i.bhs = zext nneg i32 %i.bhr to i64
  %i.bht = getelementptr inbounds nuw [8 x i8], ptr %i.bhk, i64 %i.bhs
  %.not.i.not.i128 = icmp eq ptr %i.bhk, null
  br i1 %.not.i.not.i128, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i127, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i126, %bb.fy, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47
  %i.bhu = and i32 %i.bgy, -128                   ; 3 uses
  %i.bhv = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.bhw = icmp eq i32 %i.bhu, %i.bhv
  br i1 %i.bhw, label %bb.fz, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i114

bb.fz:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113
  %i.bhx = and i32 %86, -128
  %i.bhy = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.bhz = icmp eq i32 %i.bhx, %i.bhy
  br i1 %i.bhz, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i124, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i114

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i124: ; preds = %bb.fz
  %i.bia = and i32 %88, -128
  %i.bib = load i32, ptr %i.al, align 4, !tbaa !298
  %i.bic = icmp eq i32 %i.bia, %i.bib
  br i1 %i.bic, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i125, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i114

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i125: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i124
  %i.bid = load ptr, ptr %i.ar, align 8, !tbaa !491 ; 2 uses
  %i.bie = shl i32 %i.bgy, 5
  %i.bif = and i32 %i.bie, 3840
  %i.big = shl i32 %86, 1
  %i.bih = and i32 %i.big, 240
  %i.bii = or disjoint i32 %i.bih, %i.bif         ; 2 uses
  %i.bij = lshr i32 %88, 3
  %i.bik = and i32 %i.bij, 15
  %i.bil = or disjoint i32 %i.bii, %i.bik         ; 2 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bid, i64 32768
  %i.bin = lshr i32 %i.bii, 6
  %i.bio = zext nneg i32 %i.bin to i64
  %i.bip = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %i.bio
  %i.biq = load i64, ptr %i.bip, align 8, !tbaa !249
  %i.bir = and i32 %i.bil, 63
  %i.bis = zext nneg i32 %i.bir to i64
  %i.bit = shl nuw i64 1, %i.bis
  %i.biu = and i64 %i.biq, %i.bit
  %.not.i425 = icmp eq i64 %i.biu, 0
  %i.biv = zext nneg i32 %i.bil to i64
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %i.bid, i64 %i.biv ; 3 uses
  br i1 %.not.i425, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129, label %bb.ga

bb.ga:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i125
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !207 ; 7 uses
  %93 = and i32 %86, -8
  %94 = and i32 %88, -8
  %.sroa.2.0.insert.ext.i.i426 = zext i32 %93 to i64
  %.sroa.2.0.insert.shift.i.i427 = shl nuw i64 %.sroa.2.0.insert.ext.i.i426, 32
  %.sroa.0.0.insert.ext.i.i428 = zext i32 %i.bhb to i64
  %.sroa.0.0.insert.insert.i.i429 = or disjoint i64 %.sroa.2.0.insert.shift.i.i427, %.sroa.0.0.insert.ext.i.i428
  store i64 %.sroa.0.0.insert.insert.i.i429, ptr %i.af, align 8
  store i32 %94, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.bix, ptr %i.ay, align 8, !tbaa !494
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 8
  %i.biz = load atomic i32, ptr %i.biy seq_cst, align 4
  %.not.i.i.i431 = icmp eq i32 %i.biz, 0
  br i1 %.not.i.i.i431, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i432, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bix)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i432

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i432: ; preds = %bb.gb, %bb.ga
  %i.bja = load ptr, ptr %i.bix, align 8, !tbaa !207 ; 2 uses
  %i.bjb = icmp eq ptr %i.bja, null
  br i1 %i.bjb, label %bb.gc, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i433

bb.gc:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i432
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bix, i64 12 ; 4 uses
  %i.bjd = atomicrmw xchg ptr %i.bjc, i8 1 seq_cst, align 1
  %i.bje = trunc i8 %i.bjd to i1
  br i1 %i.bje, label %.lr.ph.i.i.i.i.i442, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i439

.lr.ph.i.i.i.i.i442:                              ; preds = %bb.gc, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i444
  %.sroa.0.02.i.i.i.i.i443 = phi i32 [ %.sroa.0.1.i.i.i.i.i445, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i444 ], [ 1, %bb.gc ] ; 8 uses
  %i.bjf = icmp slt i32 %.sroa.0.02.i.i.i.i.i443, 17
  br i1 %i.bjf, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph.i.i.i.i.i442
  %i.bjg = icmp sgt i32 %.sroa.0.02.i.i.i.i.i443, 0
  br i1 %i.bjg, label %.lr.ph.i.i.i.i.i.i.i447.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i446

.lr.ph.i.i.i.i.i.i.i447.preheader:                ; preds = %bb.gd
  %xtraiter2658.a = and i32 %.sroa.0.02.i.i.i.i.i443, 7 ; 2 uses
  %lcmp.mod2659.not.a = icmp eq i32 %xtraiter2658.a, 0
  br i1 %lcmp.mod2659.not.a, label %.lr.ph.i.i.i.i.i.i.i447.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i447.prol

.lr.ph.i.i.i.i.i.i.i447.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i447.preheader, %.lr.ph.i.i.i.i.i.i.i447.prol
  %.01.i.i.i.i.i.i.i448.prol = phi i32 [ %i.bjh, %.lr.ph.i.i.i.i.i.i.i447.prol ], [ %.sroa.0.02.i.i.i.i.i443, %.lr.ph.i.i.i.i.i.i.i447.preheader ]
  %prol.iter2660.a = phi i32 [ %prol.iter2660.next.a, %.lr.ph.i.i.i.i.i.i.i447.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i447.preheader ]
  %i.bjh = add nsw i32 %.01.i.i.i.i.i.i.i448.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter2660.next.a = add i32 %prol.iter2660.a, 1 ; 2 uses
  %prol.iter2660.cmp.not.a = icmp eq i32 %prol.iter2660.next.a, %xtraiter2658.a
  br i1 %prol.iter2660.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i447.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i447.prol, !llvm.loop !1042

.lr.ph.i.i.i.i.i.i.i447.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i447.prol, %.lr.ph.i.i.i.i.i.i.i447.preheader
  %.01.i.i.i.i.i.i.i448.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i443, %.lr.ph.i.i.i.i.i.i.i447.preheader ], [ %i.bjh, %.lr.ph.i.i.i.i.i.i.i447.prol ]
  %i.bji = icmp ult i32 %.sroa.0.02.i.i.i.i.i443, 8
  br i1 %i.bji, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i446, label %.lr.ph.i.i.i.i.i.i.i447

.lr.ph.i.i.i.i.i.i.i447:                          ; preds = %.lr.ph.i.i.i.i.i.i.i447.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i447
  %.01.i.i.i.i.i.i.i448 = phi i32 [ %i.bjj, %.lr.ph.i.i.i.i.i.i.i447 ], [ %.01.i.i.i.i.i.i.i448.unr, %.lr.ph.i.i.i.i.i.i.i447.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bjj = add nsw i32 %.01.i.i.i.i.i.i.i448, -8
  call void @llvm.x86.sse2.pause()
  %i.bjk = icmp sgt i32 %.01.i.i.i.i.i.i.i448, 8
  br i1 %i.bjk, label %.lr.ph.i.i.i.i.i.i.i447, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i446, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i446: ; preds = %.lr.ph.i.i.i.i.i.i.i447.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i447, %bb.gd
  %i.bjl = shl i32 %.sroa.0.02.i.i.i.i.i443, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i444

bb.ge:                                            ; preds = %.lr.ph.i.i.i.i.i442
  %i.bjm = call noundef i32 @sched_yield() #17    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i444

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i444: ; preds = %bb.ge, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i446
  %.sroa.0.1.i.i.i.i.i445 = phi i32 [ %i.bjl, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i446 ], [ %.sroa.0.02.i.i.i.i.i443, %bb.ge ]
  %i.bjn = atomicrmw xchg ptr %i.bjc, i8 1 seq_cst, align 1
  %i.bjo = trunc i8 %i.bjn to i1
  br i1 %i.bjo, label %.lr.ph.i.i.i.i.i442, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i439, !llvm.loop !22

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i439: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i444, %bb.gc
  %i.bjp = load ptr, ptr %i.bix, align 8, !tbaa !207 ; 2 uses
  %i.bjq = icmp eq ptr %i.bjp, null
  br i1 %i.bjq, label %bb.gf, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i440

bb.gf:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i439
  %i.bjr = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #27
          to label %bb.gg unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i441 ; 2 uses

bb.gg:                                            ; preds = %bb.gf
  store ptr %i.bjr, ptr %i.bix, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i440

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i441: ; preds = %bb.gf
  %i.bjs = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.bjc release, align 1
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i440: ; preds = %bb.gg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i439
  %i.bjt = phi ptr [ %i.bjr, %bb.gg ], [ %i.bjp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i439 ]
  store atomic i8 0, ptr %i.bjc release, align 4
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i433

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i433: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i440, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i432
  %i.bju = phi ptr [ %i.bjt, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i440 ], [ %i.bja, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i432 ]
  store ptr %i.bju, ptr %i.ai, align 8, !tbaa !337
  %i.bjv = load ptr, ptr %i.biw, align 8, !tbaa !207 ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 8
  %i.bjx = load atomic i32, ptr %i.bjw seq_cst, align 4
  %.not.i.i.i.i.i.i.i434 = icmp eq i32 %i.bjx, 0
  br i1 %.not.i.i.i.i.i.i.i434, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i435, label %bb.gh

bb.gh:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i433
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bjv)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i435

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i435: ; preds = %bb.gh, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i433
  %i.bjy = shl i32 %86, 3
  %i.bjz = and i32 %i.bjy, 56
  %i.bka = shl i32 %i.bgy, 6
  %i.bkb = and i32 %i.bka, 448
  %i.bkc = or disjoint i32 %i.bjz, %i.bkb
  %i.bkd = and i32 %88, 7
  %i.bke = or disjoint i32 %i.bkc, %i.bkd
  %i.bkf = load ptr, ptr %i.bjv, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i436 = icmp eq ptr %i.bkf, null
  %i.bkg = zext nneg i32 %i.bke to i64
  %i.bkh = getelementptr inbounds nuw [8 x i8], ptr %i.bkf, i64 %i.bkg
  %.0.i.i.i.i.i.i437 = select i1 %.not.i.i.i.i.i.i436, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.bkh
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i114: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i124, %bb.fz, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i113
  %i.bki = and i32 %i.bgy, -4096                  ; 2 uses
  %i.bkj = load i32, ptr %i.am, align 8, !tbaa !298
  %i.bkk = icmp eq i32 %i.bki, %i.bkj
  br i1 %i.bkk, label %bb.gi, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i115

bb.gi:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i114
  %i.bkl = and i32 %86, -4096
  %i.bkm = load i32, ptr %i.an, align 4, !tbaa !298
  %i.bkn = icmp eq i32 %i.bkl, %i.bkm
  br i1 %i.bkn, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i117, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i115

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i117: ; preds = %bb.gi
  %i.bko = and i32 %88, -4096
  %i.bkp = load i32, ptr %i.ao, align 8, !tbaa !298
  %i.bkq = icmp eq i32 %i.bko, %i.bkp
  br i1 %i.bkq, label %bb.gj, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i115

bb.gj:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i117
  %i.bkr = load ptr, ptr %i.aq, align 8, !tbaa !492 ; 2 uses
  %i.bks = shl i32 %i.bgy, 3
  %i.bkt = and i32 %i.bks, 31744
  %i.bku = lshr i32 %86, 2
  %i.bkv = and i32 %i.bku, 992
  %i.bkw = or disjoint i32 %i.bkv, %i.bkt         ; 2 uses
  %i.bkx = lshr i32 %88, 7
  %i.bky = and i32 %i.bkx, 31
  %i.bkz = or disjoint i32 %i.bky, %i.bkw         ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkr, i64 262144
  %i.blb = lshr i32 %i.bkw, 6
  %i.blc = zext nneg i32 %i.blb to i64
  %i.bld = getelementptr inbounds nuw [8 x i8], ptr %i.bla, i64 %i.blc
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !249
  %i.blf = and i32 %i.bkz, 63
  %i.blg = zext nneg i32 %i.blf to i64
  %i.blh = shl nuw i64 1, %i.blg
  %i.bli = and i64 %i.ble, %i.blh
  %.not.i.i.i118 = icmp eq i64 %i.bli, 0
  %i.blj = zext nneg i32 %i.bkz to i64
  %i.blk = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %i.blj ; 3 uses
  br i1 %.not.i.i.i118, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !207
  %i.blm = and i32 %86, -128
  %i.bln = and i32 %88, -128
  %.sroa.2.0.insert.ext.i.i.i.i119 = zext i32 %i.blm to i64
  %.sroa.2.0.insert.shift.i.i.i.i120 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i119, 32
  %.sroa.0.0.insert.ext.i.i.i.i121 = zext i32 %i.bhu to i64
  %.sroa.0.0.insert.insert.i.i.i.i122 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i120, %.sroa.0.0.insert.ext.i.i.i.i121
  store i64 %.sroa.0.0.insert.insert.i.i.i.i122, ptr %i.aj, align 4
  store i32 %i.bln, ptr %i.al, align 4, !tbaa !207
  store ptr %i.bll, ptr %i.ar, align 8, !tbaa !491
  %i.blo = load ptr, ptr %i.blk, align 8, !tbaa !207 ; 2 uses
  %i.blp = shl i32 %i.bgy, 5
  %i.blq = and i32 %i.blp, 3840
  %i.blr = shl i32 %86, 1
  %i.bls = and i32 %i.blr, 240
  %i.blt = or disjoint i32 %i.bls, %i.blq         ; 2 uses
  %i.blu = lshr i32 %88, 3
  %i.blv = and i32 %i.blu, 15
  %i.blw = or disjoint i32 %i.blt, %i.blv         ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blo, i64 32768
  %i.bly = lshr i32 %i.blt, 6
  %i.blz = zext nneg i32 %i.bly to i64
  %i.bma = getelementptr inbounds nuw [8 x i8], ptr %i.blx, i64 %i.blz
  %i.bmb = load i64, ptr %i.bma, align 8, !tbaa !249
  %i.bmc = and i32 %i.blw, 63
  %i.bmd = zext nneg i32 %i.bmc to i64
  %i.bme = shl nuw i64 1, %i.bmd
  %i.bmf = and i64 %i.bmb, %i.bme
  %.not.i415 = icmp eq i64 %i.bmf, 0
  %i.bmg = zext nneg i32 %i.blw to i64
  %i.bmh = getelementptr inbounds nuw [8 x i8], ptr %i.blo, i64 %i.bmg ; 3 uses
  br i1 %.not.i415, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !207 ; 7 uses
  %95 = and i32 %86, -8
  %96 = and i32 %88, -8
  %.sroa.2.0.insert.ext.i.i416 = zext i32 %95 to i64
  %.sroa.2.0.insert.shift.i.i417 = shl nuw i64 %.sroa.2.0.insert.ext.i.i416, 32
  %.sroa.0.0.insert.ext.i.i418 = zext i32 %i.bhb to i64
  %.sroa.0.0.insert.insert.i.i419 = or disjoint i64 %.sroa.2.0.insert.shift.i.i417, %.sroa.0.0.insert.ext.i.i418
  store i64 %.sroa.0.0.insert.insert.i.i419, ptr %i.af, align 8
  store i32 %96, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.bmi, ptr %i.ay, align 8, !tbaa !494
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 8
  %i.bmk = load atomic i32, ptr %i.bmj seq_cst, align 4
  %.not.i.i.i421 = icmp eq i32 %i.bmk, 0
  br i1 %.not.i.i.i421, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bmi)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.gm, %bb.gl
  %i.bml = load ptr, ptr %i.bmi, align 8, !tbaa !207 ; 2 uses
  %i.bmm = icmp eq ptr %i.bml, null
  br i1 %i.bmm, label %bb.gn, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i

bb.gn:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmi, i64 12 ; 4 uses
  %i.bmo = atomicrmw xchg ptr %i.bmn, i8 1 seq_cst, align 1
  %i.bmp = trunc i8 %i.bmo to i1
  br i1 %i.bmp, label %.lr.ph.i.i.i.i.i424, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i

.lr.ph.i.i.i.i.i424:                              ; preds = %bb.gn, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i ], [ 1, %bb.gn ] ; 8 uses
  %i.bmq = icmp slt i32 %.sroa.0.02.i.i.i.i.i, 17
  br i1 %i.bmq, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.lr.ph.i.i.i.i.i424
  %i.bmr = icmp sgt i32 %.sroa.0.02.i.i.i.i.i, 0
  br i1 %i.bmr, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.go
  %xtraiter2655.a = and i32 %.sroa.0.02.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2656.not.a = icmp eq i32 %xtraiter2655.a, 0
  br i1 %lcmp.mod2656.not.a, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.prol = phi i32 [ %i.bms, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter2657.a = phi i32 [ %prol.iter2657.next.a, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.bms = add nsw i32 %.01.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter2657.next.a = add i32 %prol.iter2657.a, 1 ; 2 uses
  %prol.iter2657.cmp.not.a = icmp eq i32 %prol.iter2657.next.a, %xtraiter2655.a
  br i1 %prol.iter2657.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1043

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bms, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bmt = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 8
  br i1 %i.bmt, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i = phi i32 [ %i.bmu, %.lr.ph.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bmu = add nsw i32 %.01.i.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.bmv = icmp sgt i32 %.01.i.i.i.i.i.i.i, 8
  br i1 %i.bmv, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.go
  %i.bmw = shl i32 %.sroa.0.02.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i424
  %i.bmx = call noundef i32 @sched_yield() #17    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i: ; preds = %bb.gp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i = phi i32 [ %i.bmw, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i, %bb.gp ]
  %i.bmy = atomicrmw xchg ptr %i.bmn, i8 1 seq_cst, align 1
  %i.bmz = trunc i8 %i.bmy to i1
  br i1 %i.bmz, label %.lr.ph.i.i.i.i.i424, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i, !llvm.loop !22

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i, %bb.gn
  %i.bna = load ptr, ptr %i.bmi, align 8, !tbaa !207 ; 2 uses
  %i.bnb = icmp eq ptr %i.bna, null
  br i1 %i.bnb, label %bb.gq, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i

bb.gq:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i
  %i.bnc = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #27
          to label %bb.gr unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  store ptr %i.bnc, ptr %i.bmi, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i: ; preds = %bb.gq
  %i.bnd = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.bmn release, align 1
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i: ; preds = %bb.gr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i
  %i.bne = phi ptr [ %i.bnc, %bb.gr ], [ %i.bna, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i ]
  store atomic i8 0, ptr %i.bmn release, align 4
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i
  %i.bnf = phi ptr [ %i.bne, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i ], [ %i.bml, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i ]
  store ptr %i.bnf, ptr %i.ai, align 8, !tbaa !337
  %i.bng = load ptr, ptr %i.bmh, align 8, !tbaa !207 ; 3 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 8
  %i.bni = load atomic i32, ptr %i.bnh seq_cst, align 4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bni, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i, label %bb.gs

bb.gs:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bng)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i: ; preds = %bb.gs, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i
  %i.bnj = shl i32 %86, 3
  %i.bnk = and i32 %i.bnj, 56
  %i.bnl = shl i32 %i.bgy, 6
  %i.bnm = and i32 %i.bnl, 448
  %i.bnn = or disjoint i32 %i.bnk, %i.bnm
  %i.bno = and i32 %88, 7
  %i.bnp = or disjoint i32 %i.bnn, %i.bno
  %i.bnq = load ptr, ptr %i.bng, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i422 = icmp eq ptr %i.bnq, null
  %i.bnr = zext nneg i32 %i.bnp to i64
  %i.bns = getelementptr inbounds nuw [8 x i8], ptr %i.bnq, i64 %i.bnr
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i422, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.bns
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i115: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i117, %bb.gi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i114
  %i.bnt = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 6 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 60
  %97 = load i32, ptr %i.bnu, align 4, !tbaa !298
  %98 = sub nsw i32 %86, %97
  %99 = getelementptr inbounds nuw i8, ptr %i.bnt, i64 64
  %100 = load i32, ptr %99, align 4, !tbaa !298
  %101 = sub nsw i32 %88, %100
  %102 = and i32 %98, -4096                       ; 4 uses
  %i.bnv = and i32 %101, -4096                    ; 2 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnt, i64 16
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !438 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnt, i64 8 ; 2 uses
  %.not12.i.i.i.i.i386 = icmp eq ptr %i.bnx, null
  br i1 %.not12.i.i.i.i.i386, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412, label %.lr.ph.i.i.i.i.i387

.lr.ph.i.i.i.i.i387:                              ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i115
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bnt, i64 56
  %i.boa = load i32, ptr %i.bnz, align 8, !tbaa !298
  %i.bob = sub nsw i32 %i.bgy, %i.boa
  %i.boc = and i32 %i.bob, -4096                  ; 4 uses
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391, %.lr.ph.i.i.i.i.i387
  %.014.i.i.i.i.i388 = phi ptr [ %i.bnx, %.lr.ph.i.i.i.i.i387 ], [ %.1.i.i.i.i.i394, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391 ] ; 7 uses
  %.0813.i.i.i.i.i389 = phi ptr [ %i.bny, %.lr.ph.i.i.i.i.i387 ], [ %.19.i.i.i.i.i393, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391 ]
  %i.bod = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i388, i64 32
  %i.boe = load i32, ptr %i.bod, align 4, !tbaa !298 ; 2 uses
  %i.bof = icmp slt i32 %i.boe, %i.boc
  br i1 %i.bof, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bog = icmp sgt i32 %i.boe, %i.boc
  br i1 %i.bog, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.boh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i388, i64 36
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !298 ; 2 uses
  %i.boj = icmp slt i32 %i.boi, %102
  br i1 %i.boj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bok = icmp sgt i32 %i.boi, %102
  br i1 %i.bok, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i390

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i390: ; preds = %bb.gw
  %i.bol = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i388, i64 40
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !298
  %i.bon = icmp slt i32 %i.bom, %i.bnv
  br i1 %i.bon, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i390, %bb.gv, %bb.gt
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i390, %bb.gw, %bb.gu
  %.sink.i.i.i.i.i392 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413 ], [ 16, %bb.gw ], [ 16, %bb.gu ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i390 ]
  %.19.i.i.i.i.i393 = phi ptr [ %.0813.i.i.i.i.i389, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i413 ], [ %.014.i.i.i.i.i388, %bb.gw ], [ %.014.i.i.i.i.i388, %bb.gu ], [ %.014.i.i.i.i.i388, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i390 ] ; 7 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i388, i64 %.sink.i.i.i.i.i392
  %.1.i.i.i.i.i394 = load ptr, ptr %i.boo, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i.i395 = icmp eq ptr %.1.i.i.i.i.i394, null
  br i1 %.not.i.i.i.i.i395, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i396, label %bb.gt, !llvm.loop !31

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i396: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i391
  %i.bop = icmp eq ptr %.19.i.i.i.i.i393, %i.bny
  br i1 %i.bop, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412, label %bb.gx

bb.gx:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i396
  %i.boq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i393, i64 32
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !298 ; 2 uses
  %i.bos = icmp slt i32 %i.boc, %i.bor
  br i1 %i.bos, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bot = icmp sgt i32 %i.boc, %i.bor
  br i1 %i.bot, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i398, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bou = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i393, i64 36
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !298 ; 2 uses
  %i.bow = icmp slt i32 %102, %i.bov
  br i1 %i.bow, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.box = icmp sgt i32 %102, %i.bov
  br i1 %i.box, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i398, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i397

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i397: ; preds = %bb.ha
  %i.boy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i393, i64 40
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !298
  %i.bpa = icmp slt i32 %i.bnv, %i.boz
  br i1 %i.bpa, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i398

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i397, %bb.gz, %bb.gx, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i396, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i115
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bnt, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i398: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i397, %bb.ha, %bb.gy
  %i.bpc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i393, i64 48 ; 2 uses
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !493 ; 2 uses
  %.not.i399 = icmp eq ptr %i.bpd, null
  br i1 %.not.i399, label %bb.hl, label %bb.hb

bb.hb:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i398
  %i.bpe = and i32 %86, -4096
  %i.bpf = and i32 %88, -4096
  %.sroa.2.0.insert.ext.i.i400 = zext i32 %i.bpe to i64
  %.sroa.2.0.insert.shift.i.i401 = shl nuw i64 %.sroa.2.0.insert.ext.i.i400, 32
  %.sroa.0.0.insert.ext.i.i402 = zext i32 %i.bki to i64
  %.sroa.0.0.insert.insert.i.i403 = or disjoint i64 %.sroa.2.0.insert.shift.i.i401, %.sroa.0.0.insert.ext.i.i402
  store i64 %.sroa.0.0.insert.insert.i.i403, ptr %i.am, align 8
  store i32 %i.bpf, ptr %i.ao, align 8, !tbaa !207
  store ptr %i.bpd, ptr %i.aq, align 8, !tbaa !492
  %i.bpg = load ptr, ptr %i.bpc, align 8, !tbaa !483 ; 2 uses
  %i.bph = shl i32 %i.bgy, 3
  %i.bpi = and i32 %i.bph, 31744
  %i.bpj = lshr i32 %86, 2
  %i.bpk = and i32 %i.bpj, 992
  %i.bpl = or disjoint i32 %i.bpk, %i.bpi         ; 2 uses
  %i.bpm = lshr i32 %88, 7
  %i.bpn = and i32 %i.bpm, 31
  %i.bpo = or disjoint i32 %i.bpl, %i.bpn         ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpg, i64 262144
  %i.bpq = lshr i32 %i.bpl, 6
  %i.bpr = zext nneg i32 %i.bpq to i64
  %i.bps = getelementptr inbounds nuw [8 x i8], ptr %i.bpp, i64 %i.bpr
  %i.bpt = load i64, ptr %i.bps, align 8, !tbaa !249
  %i.bpu = and i32 %i.bpo, 63
  %i.bpv = zext nneg i32 %i.bpu to i64
  %i.bpw = shl nuw i64 1, %i.bpv
  %i.bpx = and i64 %i.bpt, %i.bpw
  %.not.i.i405 = icmp eq i64 %i.bpx, 0
  %i.bpy = zext nneg i32 %i.bpo to i64
  %i.bpz = getelementptr inbounds nuw [8 x i8], ptr %i.bpg, i64 %i.bpy ; 3 uses
  br i1 %.not.i.i405, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !207
  %i.bqb = and i32 %86, -128
  %i.bqc = and i32 %88, -128
  %.sroa.2.0.insert.ext.i.i.i406 = zext i32 %i.bqb to i64
  %.sroa.2.0.insert.shift.i.i.i407 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i406, 32
  %.sroa.0.0.insert.ext.i.i.i408 = zext i32 %i.bhu to i64
  %.sroa.0.0.insert.insert.i.i.i409 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i407, %.sroa.0.0.insert.ext.i.i.i408
  store i64 %.sroa.0.0.insert.insert.i.i.i409, ptr %i.aj, align 4
  store i32 %i.bqc, ptr %i.al, align 4, !tbaa !207
  store ptr %i.bqa, ptr %i.ar, align 8, !tbaa !491
  %i.bqd = load ptr, ptr %i.bpz, align 8, !tbaa !207 ; 2 uses
  %i.bqe = shl i32 %i.bgy, 5
  %i.bqf = and i32 %i.bqe, 3840
  %i.bqg = shl i32 %86, 1
  %i.bqh = and i32 %i.bqg, 240
  %i.bqi = or disjoint i32 %i.bqh, %i.bqf         ; 2 uses
  %i.bqj = lshr i32 %88, 3
  %i.bqk = and i32 %i.bqj, 15
  %i.bql = or disjoint i32 %i.bqi, %i.bqk         ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqd, i64 32768
  %i.bqn = lshr i32 %i.bqi, 6
  %i.bqo = zext nneg i32 %i.bqn to i64
  %i.bqp = getelementptr inbounds nuw [8 x i8], ptr %i.bqm, i64 %i.bqo
  %i.bqq = load i64, ptr %i.bqp, align 8, !tbaa !249
  %i.bqr = and i32 %i.bql, 63
  %i.bqs = zext nneg i32 %i.bqr to i64
  %i.bqt = shl nuw i64 1, %i.bqs
  %i.bqu = and i64 %i.bqq, %i.bqt
  %.not.i1208 = icmp eq i64 %i.bqu, 0
  %i.bqv = zext nneg i32 %i.bql to i64
  %i.bqw = getelementptr inbounds nuw [8 x i8], ptr %i.bqd, i64 %i.bqv ; 3 uses
  br i1 %.not.i1208, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !207 ; 7 uses
  %103 = and i32 %86, -8
  %104 = and i32 %88, -8
  %.sroa.2.0.insert.ext.i.i1209 = zext i32 %103 to i64
  %.sroa.2.0.insert.shift.i.i1210 = shl nuw i64 %.sroa.2.0.insert.ext.i.i1209, 32
  %.sroa.0.0.insert.ext.i.i1211 = zext i32 %i.bhb to i64
  %.sroa.0.0.insert.insert.i.i1212 = or disjoint i64 %.sroa.2.0.insert.shift.i.i1210, %.sroa.0.0.insert.ext.i.i1211
  store i64 %.sroa.0.0.insert.insert.i.i1212, ptr %i.af, align 8
  store i32 %104, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.bqx, ptr %i.ay, align 8, !tbaa !494
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 8
  %i.bqz = load atomic i32, ptr %i.bqy seq_cst, align 4
  %.not.i.i.i1214 = icmp eq i32 %i.bqz, 0
  br i1 %.not.i.i.i1214, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1215, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bqx)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1215

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1215: ; preds = %bb.he, %bb.hd
  %i.bra = load ptr, ptr %i.bqx, align 8, !tbaa !207 ; 2 uses
  %i.brb = icmp eq ptr %i.bra, null
  br i1 %i.brb, label %bb.hf, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1216

bb.hf:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1215
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqx, i64 12 ; 4 uses
  %i.brd = atomicrmw xchg ptr %i.brc, i8 1 seq_cst, align 1
  %i.bre = trunc i8 %i.brd to i1
  br i1 %i.bre, label %.lr.ph.i.i.i.i.i1225, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1222

.lr.ph.i.i.i.i.i1225:                             ; preds = %bb.hf, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1227
  %.sroa.0.02.i.i.i.i.i1226 = phi i32 [ %.sroa.0.1.i.i.i.i.i1228, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1227 ], [ 1, %bb.hf ] ; 8 uses
  %i.brf = icmp slt i32 %.sroa.0.02.i.i.i.i.i1226, 17
  br i1 %i.brf, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i1225
  %i.brg = icmp sgt i32 %.sroa.0.02.i.i.i.i.i1226, 0
  br i1 %i.brg, label %.lr.ph.i.i.i.i.i.i.i1230.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1229

.lr.ph.i.i.i.i.i.i.i1230.preheader:               ; preds = %bb.hg
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i1226, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i1230.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1230.prol

.lr.ph.i.i.i.i.i.i.i1230.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1230.preheader, %.lr.ph.i.i.i.i.i.i.i1230.prol
  %.01.i.i.i.i.i.i.i1231.prol = phi i32 [ %i.brh, %.lr.ph.i.i.i.i.i.i.i1230.prol ], [ %.sroa.0.02.i.i.i.i.i1226, %.lr.ph.i.i.i.i.i.i.i1230.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i1230.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1230.preheader ]
  %i.brh = add nsw i32 %.01.i.i.i.i.i.i.i1231.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1230.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1230.prol, !llvm.loop !1044

.lr.ph.i.i.i.i.i.i.i1230.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1230.prol, %.lr.ph.i.i.i.i.i.i.i1230.preheader
  %.01.i.i.i.i.i.i.i1231.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i1226, %.lr.ph.i.i.i.i.i.i.i1230.preheader ], [ %i.brh, %.lr.ph.i.i.i.i.i.i.i1230.prol ]
  %i.bri = icmp ult i32 %.sroa.0.02.i.i.i.i.i1226, 8
  br i1 %i.bri, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1229, label %.lr.ph.i.i.i.i.i.i.i1230

.lr.ph.i.i.i.i.i.i.i1230:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1230.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1230
  %.01.i.i.i.i.i.i.i1231 = phi i32 [ %i.brj, %.lr.ph.i.i.i.i.i.i.i1230 ], [ %.01.i.i.i.i.i.i.i1231.unr, %.lr.ph.i.i.i.i.i.i.i1230.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.brj = add nsw i32 %.01.i.i.i.i.i.i.i1231, -8
  call void @llvm.x86.sse2.pause()
  %i.brk = icmp sgt i32 %.01.i.i.i.i.i.i.i1231, 8
  br i1 %i.brk, label %.lr.ph.i.i.i.i.i.i.i1230, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1229, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1229: ; preds = %.lr.ph.i.i.i.i.i.i.i1230.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1230, %bb.hg
  %i.brl = shl i32 %.sroa.0.02.i.i.i.i.i1226, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1227

bb.hh:                                            ; preds = %.lr.ph.i.i.i.i.i1225
  %i.brm = call noundef i32 @sched_yield() #17    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1227

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1227: ; preds = %bb.hh, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1229
  %.sroa.0.1.i.i.i.i.i1228 = phi i32 [ %i.brl, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1229 ], [ %.sroa.0.02.i.i.i.i.i1226, %bb.hh ]
  %i.brn = atomicrmw xchg ptr %i.brc, i8 1 seq_cst, align 1
  %i.bro = trunc i8 %i.brn to i1
  br i1 %i.bro, label %.lr.ph.i.i.i.i.i1225, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1222, !llvm.loop !22

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1222: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1227, %bb.hf
  %i.brp = load ptr, ptr %i.bqx, align 8, !tbaa !207 ; 2 uses
  %i.brq = icmp eq ptr %i.brp, null
  br i1 %i.brq, label %bb.hi, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1223

bb.hi:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1222
  %i.brr = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #27
          to label %bb.hj unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1224 ; 2 uses

bb.hj:                                            ; preds = %bb.hi
  store ptr %i.brr, ptr %i.bqx, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1223

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1224: ; preds = %bb.hi
  %i.brs = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.brc release, align 1
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1223: ; preds = %bb.hj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1222
  %i.brt = phi ptr [ %i.brr, %bb.hj ], [ %i.brp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1222 ]
  store atomic i8 0, ptr %i.brc release, align 4
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1216

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1216: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1223, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1215
  %i.bru = phi ptr [ %i.brt, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1223 ], [ %i.bra, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1215 ]
  store ptr %i.bru, ptr %i.ai, align 8, !tbaa !337
  %i.brv = load ptr, ptr %i.bqw, align 8, !tbaa !207 ; 3 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 8
  %i.brx = load atomic i32, ptr %i.brw seq_cst, align 4
  %.not.i.i.i.i.i.i.i1217 = icmp eq i32 %i.brx, 0
  br i1 %.not.i.i.i.i.i.i.i1217, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1218, label %bb.hk

bb.hk:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1216
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.brv)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1218

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1218: ; preds = %bb.hk, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1216
  %i.bry = shl i32 %86, 3
  %i.brz = and i32 %i.bry, 56
  %i.bsa = shl i32 %i.bgy, 6
  %i.bsb = and i32 %i.bsa, 448
  %i.bsc = or disjoint i32 %i.brz, %i.bsb
  %i.bsd = and i32 %88, 7
  %i.bse = or disjoint i32 %i.bsc, %i.bsd
  %i.bsf = load ptr, ptr %i.brv, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i1219 = icmp eq ptr %i.bsf, null
  %i.bsg = zext nneg i32 %i.bse to i64
  %i.bsh = getelementptr inbounds nuw [8 x i8], ptr %i.bsf, i64 %i.bsg
  %.0.i.i.i.i.i.i1220 = select i1 %.not.i.i.i.i.i.i1219, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.bsh
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129

bb.hl:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i398
  %i.bsi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i393, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129: ; preds = %bb.hl, %bb.hb, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412, %bb.hc, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1218, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i, %bb.gk, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i435, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i125, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i127, %bb.gj
  %.1.i.i116 = phi ptr [ %i.bht, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i127 ], [ %i.biw, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i125 ], [ %i.bmh, %bb.gk ], [ %i.blk, %bb.gj ], [ %.0.i.i.i.i.i.i437, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i435 ], [ %.0.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i ], [ %i.bpb, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i412 ], [ %i.bsi, %bb.hl ], [ %i.bpz, %bb.hb ], [ %.0.i.i.i.i.i.i1220, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1218 ], [ %i.bqw, %bb.hc ]
  %i.bsj = load double, ptr %.1.i.i116, align 8, !tbaa !163
  %i.bsk = load ptr, ptr %i.as, align 8, !tbaa !165
  store double %i.bsj, ptr %i.bsk, align 8, !tbaa !163
  %i.bsl = load i64, ptr %i.ab, align 8           ; 10 uses
  %i.bsm = load i32, ptr %i.ad, align 8, !tbaa !298
  %i.bsn = add nsw i32 %i.bsm, 1                  ; 19 uses
  %.sroa.01818.0.extract.trunc = trunc i64 %i.bsl to i32 ; 13 uses
  %i.bso = and i32 %.sroa.01818.0.extract.trunc, -8
  %i.bsp = load i32, ptr %i.af, align 8, !tbaa !298
  %i.bsq = icmp eq i32 %i.bso, %i.bsp
  br i1 %i.bsq, label %bb.hm, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i369

bb.hm:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129
  %.sroa.01818.4.extract.shift1839 = lshr i64 %i.bsl, 32
  %.sroa.01818.4.extract.trunc1840 = trunc nuw i64 %.sroa.01818.4.extract.shift1839 to i32 ; 2 uses
  %i.bsr = and i32 %.sroa.01818.4.extract.trunc1840, -8
  %i.bss = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.bst = icmp eq i32 %i.bsr, %i.bss
  br i1 %i.bst, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i382, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i369

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i382: ; preds = %bb.hm
  %i.bsu = and i32 %i.bsn, -8
  %i.bsv = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.bsw = icmp eq i32 %i.bsu, %i.bsv
  br i1 %i.bsw, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i383, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i369

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i383: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i382
  %i.bsx = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %i.bsy = shl i32 %.sroa.01818.0.extract.trunc, 6
  %i.bsz = and i32 %i.bsy, 448
  %i.bta = shl i32 %.sroa.01818.4.extract.trunc1840, 3
  %i.btb = and i32 %i.bta, 56
  %i.btc = and i32 %i.bsn, 7
  %i.btd = or disjoint i32 %i.btc, %i.bsz
  %i.bte = or disjoint i32 %i.btd, %i.btb
  %i.btf = zext nneg i32 %i.bte to i64
  %i.btg = getelementptr inbounds nuw [8 x i8], ptr %i.bsx, i64 %i.btf
  %.not.i.not.i384 = icmp eq ptr %i.bsx, null
  br i1 %.not.i.not.i384, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i369, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit385

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i369: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i383, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i382, %bb.hm, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit129
  %i.bth = and i32 %.sroa.01818.0.extract.trunc, -128
  %i.bti = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.btj = icmp eq i32 %i.bth, %i.bti
  br i1 %i.btj, label %bb.hn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i370

bb.hn:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i369
  %.sroa.01818.4.extract.shift1836 = lshr i64 %i.bsl, 32
  %.sroa.01818.4.extract.trunc1837 = trunc nuw i64 %.sroa.01818.4.extract.shift1836 to i32 ; 3 uses
  %i.btk = and i32 %.sroa.01818.4.extract.trunc1837, -128
  %i.btl = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.btm = icmp eq i32 %i.btk, %i.btl
  br i1 %i.btm, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i380, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i370

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i380: ; preds = %bb.hn
  %i.btn = and i32 %i.bsn, -128
  %i.bto = load i32, ptr %i.al, align 4, !tbaa !298
  %i.btp = icmp eq i32 %i.btn, %i.bto
  br i1 %i.btp, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i381, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i370

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i381: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i380
  %i.btq = load ptr, ptr %i.ar, align 8, !tbaa !491 ; 2 uses
  %i.btr = shl i32 %.sroa.01818.0.extract.trunc, 5
  %i.bts = and i32 %i.btr, 3840
  %i.btt = shl i32 %.sroa.01818.4.extract.trunc1837, 1
  %i.btu = and i32 %i.btt, 240
  %i.btv = or disjoint i32 %i.btu, %i.bts         ; 2 uses
  %i.btw = lshr i32 %i.bsn, 3
  %i.btx = and i32 %i.btw, 15
  %i.bty = or disjoint i32 %i.btv, %i.btx         ; 2 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %i.btq, i64 32768
  %i.bua = lshr i32 %i.btv, 6
  %i.bub = zext nneg i32 %i.bua to i64
  %i.buc = getelementptr inbounds nuw [8 x i8], ptr %i.btz, i64 %i.bub
  %i.bud = load i64, ptr %i.buc, align 8, !tbaa !249
  %i.bue = and i32 %i.bty, 63
  %i.buf = zext nneg i32 %i.bue to i64
  %i.bug = shl nuw i64 1, %i.buf
  %i.buh = and i64 %i.bud, %i.bug
  %.not.i1183 = icmp eq i64 %i.buh, 0
  %i.bui = zext nneg i32 %i.bty to i64
  %i.buj = getelementptr inbounds nuw [8 x i8], ptr %i.btq, i64 %i.bui ; 3 uses
  br i1 %.not.i1183, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit385, label %bb.ho

bb.ho:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i381
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !207 ; 7 uses
  %i.bul = and i32 %i.bsn, -8
  %.sroa.0.0.insert.insert.i.i1187 = and i64 %i.bsl, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i1187, ptr %i.af, align 8
  store i32 %i.bul, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.buk, ptr %i.ay, align 8, !tbaa !494
  %i.bum = getelementptr inbounds nuw i8, ptr %i.buk, i64 8
  %i.bun = load atomic i32, ptr %i.bum seq_cst, align 4
  %.not.i.i.i1189 = icmp eq i32 %i.bun, 0
  br i1 %.not.i.i.i1189, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1190, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.buk)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1190

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1190: ; preds = %bb.hp, %bb.ho
  %i.buo = load ptr, ptr %i.buk, align 8, !tbaa !207 ; 2 uses
  %i.bup = icmp eq ptr %i.buo, null
  br i1 %i.bup, label %bb.hq, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1191

bb.hq:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1190
  %i.buq = getelementptr inbounds nuw i8, ptr %i.buk, i64 12 ; 4 uses
  %i.bur = atomicrmw xchg ptr %i.buq, i8 1 seq_cst, align 1
  %i.bus = trunc i8 %i.bur to i1
  br i1 %i.bus, label %.lr.ph.i.i.i.i.i1200, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1197

.lr.ph.i.i.i.i.i1200:                             ; preds = %bb.hq, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1202
  %.sroa.0.02.i.i.i.i.i1201 = phi i32 [ %.sroa.0.1.i.i.i.i.i1203, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1202 ], [ 1, %bb.hq ] ; 8 uses
  %i.but = icmp slt i32 %.sroa.0.02.i.i.i.i.i1201, 17
  br i1 %i.but, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %.lr.ph.i.i.i.i.i1200
  %i.buu = icmp sgt i32 %.sroa.0.02.i.i.i.i.i1201, 0
  br i1 %i.buu, label %.lr.ph.i.i.i.i.i.i.i1205.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1204

.lr.ph.i.i.i.i.i.i.i1205.preheader:               ; preds = %bb.hr
  %xtraiter2667.a = and i32 %.sroa.0.02.i.i.i.i.i1201, 7 ; 2 uses
  %lcmp.mod2668.not.a = icmp eq i32 %xtraiter2667.a, 0
  br i1 %lcmp.mod2668.not.a, label %.lr.ph.i.i.i.i.i.i.i1205.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1205.prol

.lr.ph.i.i.i.i.i.i.i1205.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1205.preheader, %.lr.ph.i.i.i.i.i.i.i1205.prol
  %.01.i.i.i.i.i.i.i1206.prol = phi i32 [ %i.buv, %.lr.ph.i.i.i.i.i.i.i1205.prol ], [ %.sroa.0.02.i.i.i.i.i1201, %.lr.ph.i.i.i.i.i.i.i1205.preheader ]
  %prol.iter2669.a = phi i32 [ %prol.iter2669.next.a, %.lr.ph.i.i.i.i.i.i.i1205.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1205.preheader ]
  %i.buv = add nsw i32 %.01.i.i.i.i.i.i.i1206.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter2669.next.a = add i32 %prol.iter2669.a, 1 ; 2 uses
  %prol.iter2669.cmp.not.a = icmp eq i32 %prol.iter2669.next.a, %xtraiter2667.a
  br i1 %prol.iter2669.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i1205.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1205.prol, !llvm.loop !1045

.lr.ph.i.i.i.i.i.i.i1205.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1205.prol, %.lr.ph.i.i.i.i.i.i.i1205.preheader
  %.01.i.i.i.i.i.i.i1206.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i1201, %.lr.ph.i.i.i.i.i.i.i1205.preheader ], [ %i.buv, %.lr.ph.i.i.i.i.i.i.i1205.prol ]
  %i.buw = icmp ult i32 %.sroa.0.02.i.i.i.i.i1201, 8
  br i1 %i.buw, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1204, label %.lr.ph.i.i.i.i.i.i.i1205

.lr.ph.i.i.i.i.i.i.i1205:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1205.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1205
  %.01.i.i.i.i.i.i.i1206 = phi i32 [ %i.bux, %.lr.ph.i.i.i.i.i.i.i1205 ], [ %.01.i.i.i.i.i.i.i1206.unr, %.lr.ph.i.i.i.i.i.i.i1205.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bux = add nsw i32 %.01.i.i.i.i.i.i.i1206, -8
  call void @llvm.x86.sse2.pause()
  %i.buy = icmp sgt i32 %.01.i.i.i.i.i.i.i1206, 8
  br i1 %i.buy, label %.lr.ph.i.i.i.i.i.i.i1205, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1204, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1204: ; preds = %.lr.ph.i.i.i.i.i.i.i1205.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1205, %bb.hr
  %i.buz = shl i32 %.sroa.0.02.i.i.i.i.i1201, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1202

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i1200
  %i.bva = call noundef i32 @sched_yield() #17    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1202

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1202: ; preds = %bb.hs, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1204
  %.sroa.0.1.i.i.i.i.i1203 = phi i32 [ %i.buz, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1204 ], [ %.sroa.0.02.i.i.i.i.i1201, %bb.hs ]
  %i.bvb = atomicrmw xchg ptr %i.buq, i8 1 seq_cst, align 1
  %i.bvc = trunc i8 %i.bvb to i1
  br i1 %i.bvc, label %.lr.ph.i.i.i.i.i1200, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1197, !llvm.loop !22

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1197: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1202, %bb.hq
  %i.bvd = load ptr, ptr %i.buk, align 8, !tbaa !207 ; 2 uses
  %i.bve = icmp eq ptr %i.bvd, null
  br i1 %i.bve, label %bb.ht, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1198

bb.ht:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1197
  %i.bvf = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #27
          to label %bb.hu unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1199 ; 2 uses

bb.hu:                                            ; preds = %bb.ht
  store ptr %i.bvf, ptr %i.buk, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1198

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1199: ; preds = %bb.ht
  %i.bvg = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.buq release, align 1
  br label %common.resume

end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.evp = and i32 %i.evo, 31
  %i.evq = or disjoint i32 %i.evn, %i.evp         ; 2 uses
  %i.evr = getelementptr inbounds nuw i8, ptr %i.evi, i64 262144
  %i.evs = lshr i32 %i.evn, 6
  %i.evt = zext nneg i32 %i.evs to i64
  %i.evu = getelementptr inbounds nuw [8 x i8], ptr %i.evr, i64 %i.evt
  %i.evv = load i64, ptr %i.evu, align 8, !tbaa !249
  %i.evw = and i32 %i.evq, 63
  %i.evx = zext nneg i32 %i.evw to i64
  %i.evy = shl nuw i64 1, %i.evx
  %i.evz = and i64 %i.evv, %i.evy
  %.not.i.i674 = icmp eq i64 %i.evz, 0
  %i.ewa = zext nneg i32 %i.evq to i64
  %i.ewb = getelementptr inbounds nuw [8 x i8], ptr %i.evi, i64 %i.ewa ; 3 uses
  br i1 %.not.i.i674, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.ewc = load ptr, ptr %i.ewb, align 8, !tbaa !207
  %i.ewd = and i32 %i.emr, -128
  %i.ewe = and i32 %i.ems, -128
  %.sroa.2.0.insert.ext.i.i.i675 = zext i32 %i.ewd to i64
  %.sroa.2.0.insert.shift.i.i.i676 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i675, 32
  %.sroa.0.0.insert.ext.i.i.i677 = zext i32 %i.enm to i64
  %.sroa.0.0.insert.insert.i.i.i678 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i676, %.sroa.0.0.insert.ext.i.i.i677
  store i64 %.sroa.0.0.insert.insert.i.i.i678, ptr %i.aj, align 4
  store i32 %i.ewe, ptr %i.al, align 4, !tbaa !207
  store ptr %i.ewc, ptr %i.ar, align 8, !tbaa !491
  %i.ewf = load ptr, ptr %i.ewb, align 8, !tbaa !207 ; 2 uses
  %i.ewg = shl i32 %i.emp, 5
  %i.ewh = and i32 %i.ewg, 3840
  %i.ewi = shl i32 %i.emr, 1
  %i.ewj = and i32 %i.ewi, 240
  %i.ewk = or disjoint i32 %i.ewj, %i.ewh         ; 2 uses
  %i.ewl = lshr i32 %i.ems, 3
  %i.ewm = and i32 %i.ewl, 15
  %i.ewn = or disjoint i32 %i.ewk, %i.ewm         ; 2 uses
  %i.ewo = getelementptr inbounds nuw i8, ptr %i.ewf, i64 32768
  %i.ewp = lshr i32 %i.ewk, 6
  %i.ewq = zext nneg i32 %i.ewp to i64
  %i.ewr = getelementptr inbounds nuw [8 x i8], ptr %i.ewo, i64 %i.ewq
  %i.ews = load i64, ptr %i.ewr, align 8, !tbaa !249
  %i.ewt = and i32 %i.ewn, 63
  %i.ewu = zext nneg i32 %i.ewt to i64
  %i.ewv = shl nuw i64 1, %i.ewu
  %i.eww = and i64 %i.ews, %i.ewv
  %.not.i1233 = icmp eq i64 %i.eww, 0
  %i.ewx = zext nneg i32 %i.ewn to i64
  %i.ewy = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.ewx ; 3 uses
  br i1 %.not.i1233, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.ewz = load ptr, ptr %i.ewy, align 8, !tbaa !207 ; 7 uses
  %i.exa = and i32 %i.emr, -8
  %i.exb = and i32 %i.ems, -8
  %.sroa.2.0.insert.ext.i.i1234 = zext i32 %i.exa to i64
  %.sroa.2.0.insert.shift.i.i1235 = shl nuw i64 %.sroa.2.0.insert.ext.i.i1234, 32
  %.sroa.0.0.insert.ext.i.i1236 = zext i32 %i.emt to i64
  %.sroa.0.0.insert.insert.i.i1237 = or disjoint i64 %.sroa.2.0.insert.shift.i.i1235, %.sroa.0.0.insert.ext.i.i1236
  store i64 %.sroa.0.0.insert.insert.i.i1237, ptr %i.af, align 8
  store i32 %i.exb, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.ewz, ptr %i.ay, align 8, !tbaa !494
  %i.exc = getelementptr inbounds nuw i8, ptr %i.ewz, i64 8
  %i.exd = load atomic i32, ptr %i.exc seq_cst, align 4
  %.not.i.i.i1239 = icmp eq i32 %i.exd, 0
  br i1 %.not.i.i.i1239, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1240, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.ewz)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1240

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1240: ; preds = %bb.ry, %bb.rx
  %i.exe = load ptr, ptr %i.ewz, align 8, !tbaa !207 ; 2 uses
  %i.exf = icmp eq ptr %i.exe, null
  br i1 %i.exf, label %bb.rz, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1241

bb.rz:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1240
  %i.exg = getelementptr inbounds nuw i8, ptr %i.ewz, i64 12 ; 4 uses
  %i.exh = atomicrmw xchg ptr %i.exg, i8 1 seq_cst, align 1
  %i.exi = trunc i8 %i.exh to i1
  br i1 %i.exi, label %.lr.ph.i.i.i.i.i1250, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1247

.lr.ph.i.i.i.i.i1250:                             ; preds = %bb.rz, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1252
  %.sroa.0.02.i.i.i.i.i1251 = phi i32 [ %.sroa.0.1.i.i.i.i.i1253, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1252 ], [ 1, %bb.rz ] ; 8 uses
  %i.exj = icmp slt i32 %.sroa.0.02.i.i.i.i.i1251, 17
  br i1 %i.exj, label %bb.sa, label %bb.sb

bb.sa:                                            ; preds = %.lr.ph.i.i.i.i.i1250
  %i.exk = icmp sgt i32 %.sroa.0.02.i.i.i.i.i1251, 0
  br i1 %i.exk, label %.lr.ph.i.i.i.i.i.i.i1255.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1254

.lr.ph.i.i.i.i.i.i.i1255.preheader:               ; preds = %bb.sa
  %xtraiter2715 = and i32 %.sroa.0.02.i.i.i.i.i1251, 7 ; 2 uses
  %lcmp.mod2716.not = icmp eq i32 %xtraiter2715, 0
  br i1 %lcmp.mod2716.not, label %.lr.ph.i.i.i.i.i.i.i1255.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1255.prol

.lr.ph.i.i.i.i.i.i.i1255.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1255.preheader, %.lr.ph.i.i.i.i.i.i.i1255.prol
  %.01.i.i.i.i.i.i.i1256.prol = phi i32 [ %i.exl, %.lr.ph.i.i.i.i.i.i.i1255.prol ], [ %.sroa.0.02.i.i.i.i.i1251, %.lr.ph.i.i.i.i.i.i.i1255.preheader ]
  %prol.iter2717 = phi i32 [ %prol.iter2717.next, %.lr.ph.i.i.i.i.i.i.i1255.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1255.preheader ]
  %i.exl = add nsw i32 %.01.i.i.i.i.i.i.i1256.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter2717.next = add i32 %prol.iter2717, 1 ; 2 uses
  %prol.iter2717.cmp.not = icmp eq i32 %prol.iter2717.next, %xtraiter2715
  br i1 %prol.iter2717.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1255.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1255.prol, !llvm.loop !1065

.lr.ph.i.i.i.i.i.i.i1255.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1255.prol, %.lr.ph.i.i.i.i.i.i.i1255.preheader
  %.01.i.i.i.i.i.i.i1256.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i1251, %.lr.ph.i.i.i.i.i.i.i1255.preheader ], [ %i.exl, %.lr.ph.i.i.i.i.i.i.i1255.prol ]
  %i.exm = icmp ult i32 %.sroa.0.02.i.i.i.i.i1251, 8
  br i1 %i.exm, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1254, label %.lr.ph.i.i.i.i.i.i.i1255

.lr.ph.i.i.i.i.i.i.i1255:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1255.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1255
  %.01.i.i.i.i.i.i.i1256 = phi i32 [ %i.exn, %.lr.ph.i.i.i.i.i.i.i1255 ], [ %.01.i.i.i.i.i.i.i1256.unr, %.lr.ph.i.i.i.i.i.i.i1255.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.exn = add nsw i32 %.01.i.i.i.i.i.i.i1256, -8
  call void @llvm.x86.sse2.pause()
  %i.exo = icmp sgt i32 %.01.i.i.i.i.i.i.i1256, 8
  br i1 %i.exo, label %.lr.ph.i.i.i.i.i.i.i1255, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1254, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1254: ; preds = %.lr.ph.i.i.i.i.i.i.i1255.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1255, %bb.sa
  %i.exp = shl i32 %.sroa.0.02.i.i.i.i.i1251, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1252

bb.sb:                                            ; preds = %.lr.ph.i.i.i.i.i1250
  %i.exq = call noundef i32 @sched_yield() #17    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1252

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1252: ; preds = %bb.sb, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1254
  %.sroa.0.1.i.i.i.i.i1253 = phi i32 [ %i.exp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i1254 ], [ %.sroa.0.02.i.i.i.i.i1251, %bb.sb ]
  %i.exr = atomicrmw xchg ptr %i.exg, i8 1 seq_cst, align 1
  %i.exs = trunc i8 %i.exr to i1
  br i1 %i.exs, label %.lr.ph.i.i.i.i.i1250, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1247, !llvm.loop !22

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1247: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i1252, %bb.rz
  %i.ext = load ptr, ptr %i.ewz, align 8, !tbaa !207 ; 2 uses
  %i.exu = icmp eq ptr %i.ext, null
  br i1 %i.exu, label %bb.sc, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1248

bb.sc:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1247
  %i.exv = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #27
          to label %bb.sd unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1249 ; 2 uses

bb.sd:                                            ; preds = %bb.sc
  store ptr %i.exv, ptr %i.ewz, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1248

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1249: ; preds = %bb.sc
  %i.exw = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.exg release, align 1
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1248: ; preds = %bb.sd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1247
  %i.exx = phi ptr [ %i.exv, %bb.sd ], [ %i.ext, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i1247 ]
  store atomic i8 0, ptr %i.exg release, align 4
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1241

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1241: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1248, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1240
  %i.exy = phi ptr [ %i.exx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i1248 ], [ %i.exe, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i1240 ]
  store ptr %i.exy, ptr %i.ai, align 8, !tbaa !337
  %i.exz = load ptr, ptr %i.ewy, align 8, !tbaa !207 ; 3 uses
  %i.eya = getelementptr inbounds nuw i8, ptr %i.exz, i64 8
  %i.eyb = load atomic i32, ptr %i.eya seq_cst, align 4
  %.not.i.i.i.i.i.i.i1242 = icmp eq i32 %i.eyb, 0
  br i1 %.not.i.i.i.i.i.i.i1242, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1243, label %bb.se

bb.se:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1241
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.exz)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1243

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1243: ; preds = %bb.se, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i1241
  %i.eyc = shl i32 %i.emr, 3
  %i.eyd = and i32 %i.eyc, 56
  %i.eye = shl i32 %i.emp, 6
  %i.eyf = and i32 %i.eye, 448
  %i.eyg = and i32 %i.ems, 7
  %i.eyh = or disjoint i32 %i.eyg, %i.eyf
  %i.eyi = or disjoint i32 %i.eyh, %i.eyd
  %i.eyj = load ptr, ptr %i.exz, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i1244 = icmp eq ptr %i.eyj, null
  %i.eyk = zext nneg i32 %i.eyi to i64
  %i.eyl = getelementptr inbounds nuw [8 x i8], ptr %i.eyj, i64 %i.eyk
  %.0.i.i.i.i.i.i1245 = select i1 %.not.i.i.i.i.i.i1244, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.eyl
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283

bb.sf:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i667
  %i.eym = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i662, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283: ; preds = %bb.sf, %bb.rv, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i681, %bb.rw, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1243, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i694, %bb.re, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i719, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i279, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i281, %bb.rd
  %.1.i.i270 = phi ptr [ %i.enl, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i281 ], [ %i.eoo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i279 ], [ %i.esb, %bb.re ], [ %i.ere, %bb.rd ], [ %.0.i.i.i.i.i.i721, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i719 ], [ %.0.i.i.i.i.i.i696, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i694 ], [ %i.evd, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i681 ], [ %i.eym, %bb.sf ], [ %i.ewb, %bb.rv ], [ %.0.i.i.i.i.i.i1245, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i1243 ], [ %i.ewy, %bb.rw ]
  %i.eyn = load double, ptr %.1.i.i270, align 8, !tbaa !163
  %i.eyo = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 56
  store double %i.eyn, ptr %i.eyp, align 8, !tbaa !163
  %.pre2166 = load double, ptr %23, align 8, !tbaa !163, !noalias !1089
  %105 = load <2 x i32>, ptr %i.ab, align 8, !tbaa !298, !noalias !1089
  %i.eyq = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !163, !noalias !1089
  %.pre2171 = load i32, ptr %i.ad, align 8, !tbaa !298, !noalias !1089
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48

_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283, %bb.fx
  %i.eyr = phi i32 [ %.pre2171, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283 ], [ %88, %bb.fx ]
  %i.eys = phi double [ %.pre2166, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283 ], [ %i.bgp, %bb.fx ]
  %i.eyt = phi <2 x double> [ %i.eyq, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283 ], [ %i.bgv, %bb.fx ] ; 2 uses
  %i.eyu = phi <2 x i32> [ %105, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit283 ], [ %i.bgx, %bb.fx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %106 = sitofp <2 x i32> %i.eyu to <2 x double>  ; 2 uses
  %107 = extractelement <2 x double> %106, i64 0
  %108 = fsub double %i.eys, %107
  %i.eyv = sitofp i32 %i.eyr to double
  %109 = extractelement <2 x double> %i.eyt, i64 1
  %110 = fsub double %109, %i.eyv
  %i.eyw = load ptr, ptr %i.as, align 8, !tbaa !165, !noalias !1089 ; 6 uses
  %111 = getelementptr inbounds nuw i8, ptr %i.eyw, i64 8
  %112 = load double, ptr %i.eyw, align 8, !tbaa !163, !noalias !1089
  %113 = getelementptr inbounds nuw i8, ptr %i.eyw, i64 24
  %114 = load double, ptr %113, align 8, !tbaa !163, !noalias !1089
  %115 = getelementptr inbounds nuw i8, ptr %i.eyw, i64 40
  %116 = getelementptr inbounds nuw i8, ptr %i.eyw, i64 32
  %117 = load double, ptr %116, align 8, !tbaa !163, !noalias !1089
  %118 = getelementptr inbounds nuw i8, ptr %i.eyw, i64 56
  %119 = load double, ptr %118, align 8, !tbaa !163, !noalias !1089
  %120 = load <2 x double>, ptr %111, align 8, !tbaa !163, !noalias !1089
  %121 = insertelement <2 x double> poison, double %112, i64 0
  %122 = insertelement <2 x double> %121, double %114, i64 1 ; 2 uses
  %i.eyx = fsub <2 x double> %120, %122           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !1089
  %123 = insertelement <2 x double> poison, double %110, i64 0
  %i.eyy = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eyz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eyx, <2 x double> %i.eyy, <2 x double> %122) ; 2 uses
  %124 = load <2 x double>, ptr %115, align 8, !tbaa !163, !noalias !1089
  %125 = insertelement <2 x double> poison, double %117, i64 0
  %126 = insertelement <2 x double> %125, double %119, i64 1 ; 2 uses
  %127 = fsub <2 x double> %124, %126             ; 3 uses
  %128 = shufflevector <2 x double> %i.eyx, <2 x double> %127, <2 x i32> <i32 1, i32 3>
  %129 = shufflevector <2 x double> %i.eyx, <2 x double> %127, <2 x i32> <i32 0, i32 2> ; 2 uses
  %130 = fsub <2 x double> %128, %129
  %131 = shufflevector <2 x double> %i.eyt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eza = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %132 = fsub <2 x double> %131, %i.eza           ; 2 uses
  %i.ezb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %130, <2 x double> %132, <2 x double> %129) ; 2 uses
  %i.ezc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %i.eyy, <2 x double> %126) ; 2 uses
  %133 = shufflevector <2 x double> %i.eyz, <2 x double> %i.ezc, <2 x i32> <i32 1, i32 3>
  %134 = shufflevector <2 x double> %i.eyz, <2 x double> %i.ezc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ezd = fsub <2 x double> %133, %134           ; 3 uses
  %i.eze = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ezd, <2 x double> %132, <2 x double> %134) ; 2 uses
  %shift2571 = shufflevector <2 x double> %i.eze, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2572 = fsub <2 x double> %shift2571, %i.eze
  %i.ezf = extractelement <2 x double> %foldExtExtBinop2572, i64 0
  store double %i.ezf, ptr %4, align 8, !tbaa !163, !noalias !1089
  %i.ezg = shufflevector <2 x double> %i.ezd, <2 x double> %i.ezb, <2 x i32> <i32 1, i32 3>
  %i.ezh = shufflevector <2 x double> %i.ezd, <2 x double> %i.ezb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ezi = fsub <2 x double> %i.ezg, %i.ezh
  %i.ezj = insertelement <2 x double> poison, double %108, i64 0
  %i.ezk = shufflevector <2 x double> %i.ezj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ezl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ezi, <2 x double> %i.ezk, <2 x double> %i.ezh)
  store <2 x double> %i.ezl, ptr %i.az, align 8, !tbaa !163, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !1089
  %i.ezm = load ptr, ptr %i.n, align 8, !tbaa !484, !noalias !1089
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.ezm, i64 56
  %i.ezo = load ptr, ptr %i.ezn, align 8, !tbaa !276, !noalias !1089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.ezp = load ptr, ptr %i.ezo, align 8, !tbaa !294, !noalias !1091 ; 3 uses
  store ptr %i.ezp, ptr %5, align 8, !tbaa !296, !alias.scope !1090, !noalias !1089
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.ezo, i64 8
  %i.ezr = load ptr, ptr %i.ezq, align 8, !tbaa !297, !noalias !1091 ; 3 uses
  store ptr %i.ezr, ptr %i.ba, align 8, !tbaa !297, !alias.scope !1090, !noalias !1089
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ezr, null
  br i1 %.not.i.i.i.i.i73, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i75, label %bb.sg

bb.sg:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.ezr, i64 8 ; 3 uses
  %i.ezt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1091
  %.not.i.i.i.i.i.i74 = icmp eq i8 %i.ezt, 0
  br i1 %.not.i.i.i.i.i.i74, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.ezu = load i32, ptr %i.ezs, align 4, !tbaa !298, !noalias !1091
  %i.ezv = add nsw i32 %i.ezu, 1
  store i32 %i.ezv, ptr %i.ezs, align 4, !tbaa !298, !noalias !1091
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i75

bb.si:                                            ; preds = %bb.sg
  %i.ezw = atomicrmw volatile add ptr %i.ezs, i32 1 acq_rel, align 4, !noalias !1091 ; 0 uses
  %.pre.i80 = load ptr, ptr %5, align 8, !tbaa !296, !noalias !1089
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i75

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i75: ; preds = %bb.si, %bb.sh, %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48
  %i.ezx = phi ptr [ %i.ezp, %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48 ], [ %i.ezp, %bb.sh ], [ %.pre.i80, %bb.si ] ; 2 uses
  %i.ezy = load ptr, ptr %i.ezx, align 8, !tbaa !100, !noalias !1089
  %i.ezz = getelementptr inbounds nuw i8, ptr %i.ezy, i64 80
  %i.faa = load ptr, ptr %i.ezz, align 8, !noalias !1089
  invoke void %i.faa(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ezx, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.sj unwind label %bb.sq

bb.sj:                                            ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i75
  %i.fab = load ptr, ptr %i.ba, align 8, !tbaa !297, !noalias !1089 ; 8 uses
  %.not.i.i.i76 = icmp eq ptr %i.fab, null
  br i1 %.not.i.i.i76, label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.fac = getelementptr inbounds nuw i8, ptr %i.fab, i64 8 ; 4 uses
  %i.fad = load atomic i64, ptr %i.fac acquire, align 8 ; 2 uses
  %i.fae = icmp eq i64 %i.fad, 4294967297
  %i.faf = trunc i64 %i.fad to i32                ; 2 uses
  br i1 %i.fae, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %bb.sk
  store i32 0, ptr %i.fac, align 8, !tbaa !300
  %i.fag = getelementptr inbounds nuw i8, ptr %i.fab, i64 12
  store i32 0, ptr %i.fag, align 4, !tbaa !301
  %i.fah = load ptr, ptr %i.fab, align 8, !tbaa !100
  %i.fai = getelementptr inbounds nuw i8, ptr %i.fah, i64 16
  %i.faj = load ptr, ptr %i.fai, align 8
  call void %i.faj(ptr noundef nonnull align 8 dereferenceable(16) %i.fab) #17, !inline_history !1027
  %i.fak = load ptr, ptr %i.fab, align 8, !tbaa !100
  %i.fal = getelementptr inbounds nuw i8, ptr %i.fak, i64 24
  %i.fam = load ptr, ptr %i.fal, align 8
  call void %i.fam(ptr noundef nonnull align 8 dereferenceable(16) %i.fab) #17, !inline_history !1027
  br label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81

bb.sm:                                            ; preds = %bb.sk
  %i.fan = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1089
  %.not.i.i.i.i77 = icmp eq i8 %i.fan, 0
  br i1 %.not.i.i.i.i77, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.fao = add nsw i32 %i.faf, -1
  store i32 %i.fao, ptr %i.fac, align 8, !tbaa !298
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.so:                                            ; preds = %bb.sm
  %i.fap = atomicrmw volatile add ptr %i.fac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.so, %bb.sn
  %.0.i.i.i.i.i79 = phi i32 [ %i.faf, %bb.sn ], [ %i.fap, %bb.so ]
  %i.faq = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.faq, label %bb.sp, label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81, !prof !302

bb.sp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fab) #17
  br label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81

bb.sq:                                            ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i75
  %i.far = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !1089
  br label %common.resume

_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81: ; preds = %bb.sj, %bb.sl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !1089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %i.fas = load <2 x double>, ptr %24, align 16, !tbaa !163 ; 4 uses
  %foldExtExtBinop2574 = fmul <2 x double> %i.fas, %i.fas
  %i.fat = extractelement <2 x double> %foldExtExtBinop2574, i64 1
  %i.fau = extractelement <2 x double> %i.fas, i64 0 ; 2 uses
  %i.fav = call double @llvm.fmuladd.f64(double %i.fau, double %i.fau, double %i.fat)
  %i.faw = load double, ptr %i.av, align 16, !tbaa !163 ; 3 uses
  %i.fax = call double @llvm.fmuladd.f64(double %i.faw, double %i.faw, double %i.fav)
  %i.fay = call noundef double @sqrt(double noundef %i.fax) #17 ; 2 uses
  %i.faz = call noundef double @llvm.fabs.f64(double %i.fay)
  %i.fba = fcmp ogt double %i.faz, f0x3E7AD7F29ABCAF48
  br i1 %i.fba, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81
  %i.fbb = fdiv double 1.000000e+00, %i.fay       ; 2 uses
  %i.fbc = fmul double %i.faw, %i.fbb
  %i.fbd = insertelement <2 x double> poison, double %i.fbb, i64 0
  %i.fbe = shufflevector <2 x double> %i.fbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fbf = fmul <2 x double> %i.fas, %i.fbe
  store <2 x double> %i.fbf, ptr %24, align 16, !tbaa !163
  store double %i.fbc, ptr %i.av, align 16, !tbaa !163
  br label %bb.ss

bb.ss:                                            ; preds = %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit81, %bb.sr
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.fbg = load ptr, ptr %i.n, align 8, !tbaa !484
  %i.fbh = getelementptr inbounds nuw i8, ptr %i.fbg, i64 56
  %i.fbi = load ptr, ptr %i.fbh, align 8, !tbaa !276, !noalias !1092
  %i.fbj = load ptr, ptr %i.fbi, align 8, !tbaa !294, !noalias !1093 ; 2 uses
  %i.fbk = load ptr, ptr %i.fbj, align 8, !tbaa !100, !noalias !1093
  %i.fbl = getelementptr inbounds nuw i8, ptr %i.fbk, i64 56
  %i.fbm = load ptr, ptr %i.fbl, align 8, !noalias !1093
  call void %i.fbm(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.fbj, ptr noundef nonnull align 8 dereferenceable(24) %23), !inline_history !1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.fbn = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.fbo = getelementptr inbounds nuw i8, ptr %i.fbn, i64 16
  %i.fbp = load ptr, ptr %i.fbo, align 8
  %i.fbq = call { <2 x float>, <2 x float> } %i.fbp(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 2 uses
  %i.fbr = extractvalue { <2 x float>, <2 x float> } %i.fbq, 0
  %i.fbs = extractvalue { <2 x float>, <2 x float> } %i.fbq, 1
  br label %bb.st

_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread: ; preds = %bb.fu, %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141, %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i59, %bb.fv
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !98
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !98
  br label %bb.st

bb.st:                                            ; preds = %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread, %bb.ss
  %.sroa.6.0 = phi <2 x float> [ %i.fbs, %bb.ss ], [ %.sroa.6.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread ]
  %.sroa.0.0 = phi <2 x float> [ %i.fbr, %bb.ss ], [ %.sroa.0.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit63.thread ]
  %i.fbt = fadd <2 x float> %.sroa.01408.12064, %.sroa.0.0 ; 2 uses
  %i.fbu = fadd <2 x float> %.sroa.10.12063, %.sroa.6.0 ; 2 uses
  %i.fbv = add nuw i64 %.02066, 1                 ; 2 uses
  %i.fbw = add i64 %.22065, 2                     ; 2 uses
  %i.fbx = load i64, ptr %i.c, align 8, !tbaa !476
  %i.fby = icmp ult i64 %i.fbv, %i.fbx
  br i1 %i.fby, label %bb.fc, label %._crit_edge, !llvm.loop !1074
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSS_RSU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !244
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !245
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !207
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !123
  %i.g = load i64, ptr %0, align 8, !tbaa !122
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSS_RSU_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !248
  %i.h = invoke noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRKS6_RKSU_RSW_RS2_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !267
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.j, align 8, !tbaa !272
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.k, align 8, !tbaa !273
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 448
end_hunk_3
