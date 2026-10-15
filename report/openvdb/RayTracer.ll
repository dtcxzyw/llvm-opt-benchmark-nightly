Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoEEclEPS5_:bb.a
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17, !inline_history !822
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit

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
  br i1 %i.ai, label %bb.n, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, !prof !302

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_012RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !100
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !207
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25, !inline_history !360
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #17, !inline_history !360
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %6 = alloca %"class.std::shared_ptr.309", align 8 ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %11 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %12 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %13 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %.sroa.01453 = alloca [3 x double], align 8     ; 4 uses
  %14 = alloca %"class.openvdb::v13_0::math::Vec3.327", align 8 ; 5 uses
  %15 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %.sroa.01410 = alloca [3 x double], align 8     ; 4 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 8 uses
  %17 = alloca %"class.openvdb::v13_0::math::Vec3.327", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %19 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 13 uses
  %20 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %21 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 8 uses
  %22 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !380
  %i.e = uitofp i64 %i.d to float
  %i.f = fadd float %i.e, 1.000000e+00
  %i.g = fdiv float 1.000000e+00, %i.f            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = load i64, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph2062, label %._crit_edge2063

.lr.ph2062:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx1411 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.61412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.101413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 18 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 17 uses
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
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 16 uses
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 24 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !111
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !281
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %._crit_edge2063, label %.lr.ph2062.split.preheader

.lr.ph2062.split.preheader:                       ; preds = %.lr.ph2062
  %i.bd = insertelement <2 x float> poison, float %i.g, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph2062.split

._crit_edge2063:                                  ; preds = %._crit_edge2057, %.lr.ph2062, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  ret void

.lr.ph2062.split:                                 ; preds = %.lr.ph2062.split.preheader, %._crit_edge2057
  %.0262060 = phi i64 [ %.1.lcssa, %._crit_edge2057 ], [ 0, %.lr.ph2062.split.preheader ] ; 2 uses
  %.0272059 = phi i64 [ %i.bj, %._crit_edge2057 ], [ %i.i, %.lr.ph2062.split.preheader ] ; 4 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !111
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !281 ; 2 uses
  %.not2064 = icmp eq i64 %i.bi, 0
  br i1 %.not2064, label %._crit_edge2057, label %.lr.ph2056

._crit_edge2057:                                  ; preds = %._crit_edge, %.lr.ph2062.split
  %.1.lcssa = phi i64 [ %.0262060, %.lr.ph2062.split ], [ %.2.lcssa, %._crit_edge ]
  %i.bj = add nuw i64 %.0272059, 1                ; 2 uses
  %exitcond2142.not = icmp eq i64 %i.bj, %i.j
  br i1 %exitcond2142.not, label %._crit_edge2063, label %.lr.ph2062.split, !llvm.loop !823

.lr.ph2056:                                       ; preds = %.lr.ph2062.split, %._crit_edge
  %.0252054 = phi i64 [ %i.bac, %._crit_edge ], [ 0, %.lr.ph2062.split ] ; 4 uses
  %.12053 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.0262060, %.lr.ph2062.split ] ; 2 uses
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !102 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !281
  %i.bp = mul i64 %i.bo, %.0272059
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !288
  %i.br = getelementptr [16 x i8], ptr %i.bq, i64 %.0252054
  %i.bs = getelementptr [16 x i8], ptr %i.br, i64 %i.bp ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %21, ptr noundef nonnull align 8 dereferenceable(496) %i.bk, i64 noundef %.0252054, i64 noundef %.0272059, double noundef 5.000000e-01, double noundef 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01410)
  %i.bw = load ptr, ptr %i.n, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !875
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !276, !noalias !875 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !294, !noalias !877 ; 3 uses
  store ptr %i.bz, ptr %6, align 8, !tbaa !296, !alias.scope !876, !noalias !875
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !297, !noalias !877 ; 3 uses
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !297, !alias.scope !876, !noalias !875
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph2056
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !877
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !298, !noalias !877
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !298, !noalias !877
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4, !noalias !877 ; 0 uses
  %.pre.i72 = load ptr, ptr %6, align 8, !tbaa !296, !noalias !875
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph2056
  %i.ch = phi ptr [ %i.bz, %.lr.ph2056 ], [ %i.bz, %bb.c ], [ %.pre.i72, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !878
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !100, !noalias !878
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !878
  invoke void %i.ck(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %.noexc.i unwind label %bb.l, !noalias !875, !inline_history !3

.noexc.i:                                         ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !878
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !100, !noalias !878
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !878
  invoke void %i.cn(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.e unwind label %bb.l, !noalias !875, !inline_history !3

bb.e:                                             ; preds = %.noexc.i
  %i.co = load double, ptr %i.q, align 16, !tbaa !163, !noalias !878 ; 3 uses
  %i.cp = load <2 x double>, ptr %5, align 16, !tbaa !163, !noalias !878 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cp, %i.cp
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cr = extractelement <2 x double> %i.cp, i64 0 ; 2 uses
  %i.cs = call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.cq)
  %i.ct = call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cs)
  %i.cu = call noundef double @sqrt(double noundef %i.ct) #17, !noalias !878 ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fdiv <2 x double> %i.cp, %i.cw          ; 2 uses
  %i.cy = fdiv double %i.co, %i.cu                ; 2 uses
  %i.cz = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !878
  %i.da = fmul <2 x double> %i.cw, %i.cz          ; 4 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01410, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dc = fdiv <2 x double> splat (double 1.000000e+00), %i.cx ; 3 uses
  %i.dd = fdiv double 1.000000e+00, %i.cy         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !878
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !878
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !297, !noalias !875 ; 8 uses
  %.not.i.i.i71 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i71, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8, !noalias !875 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.df, align 8, !tbaa !300, !noalias !875
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !301, !noalias !875
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !100, !noalias !875
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !875
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #17, !noalias !875, !inline_history !4
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !100, !noalias !875
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !875
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #17, !noalias !875, !inline_history !4
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

bb.h:                                             ; preds = %bb.f
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !875
  %.not.i.i.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !298, !noalias !875
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4, !noalias !875
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.di, %bb.i ], [ %i.ds, %bb.j ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.k, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, !prof !302

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #17, !noalias !875
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

common.resume:                                    ; preds = %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fe, %bb.fc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1240, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i691, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i716, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1265, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i770, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i795, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1290, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i849, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i874, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1315, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i928, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i953, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1340, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1007, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1032, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1365, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1086, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1111, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1390, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1165, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1190, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1215, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i432, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.l ], [ %i.exo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1240 ], [ %i.bja, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i432 ], [ %i.bmn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.brk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1215 ], [ %i.buy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1190 ], [ %i.byj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1165 ], [ %i.cdd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1390 ], [ %i.cgv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1111 ], [ %i.cki, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1086 ], [ %i.cpf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1365 ], [ %i.csw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1032 ], [ %i.cwj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1007 ], [ %i.dbg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1340 ], [ %i.dex, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i953 ], [ %i.dik, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i928 ], [ %i.dnh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1315 ], [ %i.dqz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i874 ], [ %i.dum, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i849 ], [ %i.dzj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1290 ], [ %i.edc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i795 ], [ %i.egp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i770 ], [ %i.elm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1265 ], [ %i.epe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i716 ], [ %i.esr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i691 ], [ %i.bcl, %bb.fc ], [ %i.bcl, %bb.fe ], [ %i.bcl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.bcl, %bb.fi ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.noexc.i, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #17, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !875
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01410, i64 24, i1 false)
  store <2 x double> %i.cx, ptr %.sroa.4.0..sroa_idx1411, align 8
  store double %i.cy, ptr %.sroa.61412.0..sroa_idx, align 8
  store <2 x double> %i.dc, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.dd, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.da, ptr %.sroa.101413.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01410)
  %i.dv = load <2 x i32>, ptr %i.s, align 4
  %i.dw = load <1 x double>, ptr %i.m, align 8
  %i.dx = load i32, ptr %i.t, align 8, !tbaa !298
  %i.dy = insertelement <2 x i32> %i.dv, i32 %i.dx, i64 1
  %i.dz = sitofp <2 x i32> %i.dy to <2 x double>
  %i.ea = shufflevector <1 x double> %i.dw, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fsub <2 x double> %i.dz, %i.ea
  %i.ec = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.ec, %i.eb          ; 4 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  %i.ef = extractelement <2 x double> %i.ed, i64 1
  %i.eg = fcmp ogt double %i.ee, %i.ef
  %i.eh = insertelement <2 x i1> poison, i1 %i.eg, i64 0
  %i.ei = shufflevector <2 x i1> %i.eh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = select <2 x i1> %i.ei, <2 x double> %i.ed, <2 x double> %i.ej ; 3 uses
  %i.el = shufflevector <2 x double> %i.da, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.em = shufflevector <2 x double> %i.ek, <2 x double> %i.da, <2 x i32> <i32 0, i32 2>
  %i.en = fcmp ogt <2 x double> %i.el, %i.em
  %i.eo = select <2 x i1> %i.en, <2 x double> %i.ek, <2 x double> %i.db ; 5 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = extractelement <2 x double> %i.eo, i64 1
  %i.er = fcmp ule double %i.eq, %i.ep
  br i1 %i.er, label %bb.m, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit
  %i.es = load <2 x i32>, ptr %i.u, align 8
  %i.et = load <1 x double>, ptr %i.v, align 8
  %i.eu = load i32, ptr %i.w, align 4, !tbaa !298
  %i.ev = insertelement <2 x i32> %i.es, i32 %i.eu, i64 1
  %i.ew = sitofp <2 x i32> %i.ev to <2 x double>
  %i.ex = shufflevector <1 x double> %i.et, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fsub <2 x double> %i.ew, %i.ex
  %i.ez = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = fmul <2 x double> %i.ez, %i.ey          ; 4 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 0
  %i.fc = extractelement <2 x double> %i.fa, i64 1
  %i.fd = fcmp ogt double %i.fb, %i.fc
  %i.fe = insertelement <2 x i1> poison, i1 %i.fd, i64 0
  %i.ff = shufflevector <2 x i1> %i.fe, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fg = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = select <2 x i1> %i.ff, <2 x double> %i.fa, <2 x double> %i.fg ; 3 uses
  %i.fi = shufflevector <2 x double> %i.eo, <2 x double> %i.fh, <2 x i32> <i32 0, i32 3>
  %i.fj = shufflevector <2 x double> %i.fh, <2 x double> %i.eo, <2 x i32> <i32 0, i32 3>
  %i.fk = fcmp ogt <2 x double> %i.fi, %i.fj
  %i.fl = select <2 x i1> %i.fk, <2 x double> %i.fh, <2 x double> %i.eo ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0 ; 3 uses
  %i.fn = extractelement <2 x double> %i.fl, i64 1 ; 3 uses
  %i.fo = fcmp ule double %i.fn, %i.fm
  br i1 %i.fo, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i: ; preds = %bb.m
  %i.fp = load i32, ptr %i.x, align 4, !tbaa !298
  %i.fq = sitofp i32 %i.fp to double
  %i.fr = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.fs = fsub double %i.fq, %i.fr
  %i.ft = fmul double %i.dd, %i.fs                ; 3 uses
  %i.fu = load i32, ptr %i.z, align 8, !tbaa !298
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !298
  %i.aww = icmp slt i32 %i.awv, %i.awe
  br i1 %i.aww, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i470, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i448

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i470: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i447, %bb.ef, %bb.ed
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i448

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i448: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i470, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i447, %bb.eg, %bb.ee
  %.sink.i.i.i.i.i449 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i470 ], [ 16, %bb.eg ], [ 16, %bb.ee ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i447 ]
  %.19.i.i.i.i.i450 = phi ptr [ %.0813.i.i.i.i.i446, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i470 ], [ %.014.i.i.i.i.i445, %bb.eg ], [ %.014.i.i.i.i.i445, %bb.ee ], [ %.014.i.i.i.i.i445, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i447 ] ; 7 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i445, i64 %.sink.i.i.i.i.i449
  %.1.i.i.i.i.i451 = load ptr, ptr %i.awx, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i.i452 = icmp eq ptr %.1.i.i.i.i.i451, null
  br i1 %.not.i.i.i.i.i452, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i453, label %bb.ed, !llvm.loop !27

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i453: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i448
  %i.awy = icmp eq ptr %.19.i.i.i.i.i450, %i.awh
  br i1 %i.awy, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469, label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i453
  %i.awz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i450, i64 32
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !298 ; 2 uses
  %i.axb = icmp slt i32 %i.awl, %i.axa
  br i1 %i.axb, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.axc = icmp sgt i32 %i.awl, %i.axa
  br i1 %i.axc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i455, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.axd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i450, i64 36
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !298 ; 2 uses
  %i.axf = icmp slt i32 %i.awd, %i.axe
  br i1 %i.axf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.axg = icmp sgt i32 %i.awd, %i.axe
  br i1 %i.axg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i455, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i454

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i454: ; preds = %bb.ek
  %i.axh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i450, i64 40
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !298
  %i.axj = icmp slt i32 %i.awe, %i.axi
  br i1 %i.axj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i455

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i454, %bb.ej, %bb.eh, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i453, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i135
  %i.axk = getelementptr inbounds nuw i8, ptr %i.avw, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i455: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i454, %bb.ek, %bb.ei
  %i.axl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i450, i64 48 ; 2 uses
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !448 ; 2 uses
  %.not.i456 = icmp eq ptr %i.axm, null
  br i1 %.not.i456, label %bb.en, label %bb.el

bb.el:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i455
  %i.axn = and i32 %i.ati, -4096
  %i.axo = and i32 %i.atj, -4096
  %.sroa.2.0.insert.ext.i.i457 = zext i32 %i.axn to i64
  %.sroa.2.0.insert.shift.i.i458 = shl nuw i64 %.sroa.2.0.insert.ext.i.i457, 32
  %.sroa.0.0.insert.ext.i.i459 = zext i32 %i.auo to i64
  %.sroa.0.0.insert.insert.i.i460 = or disjoint i64 %.sroa.2.0.insert.shift.i.i458, %.sroa.0.0.insert.ext.i.i459
  store i64 %.sroa.0.0.insert.insert.i.i460, ptr %i.am, align 8
  store i32 %i.axo, ptr %i.ao, align 8, !tbaa !207
  store ptr %i.axm, ptr %i.aq, align 8, !tbaa !447
  %i.axp = load ptr, ptr %i.axl, align 8, !tbaa !397 ; 2 uses
  %i.axq = shl i32 %i.atg, 3
  %i.axr = and i32 %i.axq, 31744
  %i.axs = lshr i32 %i.ati, 2
  %i.axt = and i32 %i.axs, 992
  %i.axu = or disjoint i32 %i.axt, %i.axr         ; 2 uses
  %i.axv = lshr i32 %i.atj, 7
  %i.axw = and i32 %i.axv, 31
  %i.axx = or disjoint i32 %i.axu, %i.axw         ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axp, i64 262144
  %i.axz = lshr i32 %i.axu, 6
  %i.aya = zext nneg i32 %i.axz to i64
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %i.axy, i64 %i.aya
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !249
  %i.ayd = and i32 %i.axx, 63
  %i.aye = zext nneg i32 %i.ayd to i64
  %i.ayf = shl nuw i64 1, %i.aye
  %i.ayg = and i64 %i.ayc, %i.ayf
  %.not.i.i462 = icmp eq i64 %i.ayg, 0
  %i.ayh = zext nneg i32 %i.axx to i64
  %i.ayi = getelementptr inbounds nuw [8 x i8], ptr %i.axp, i64 %i.ayh ; 3 uses
  br i1 %.not.i.i462, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !207
  %i.ayk = and i32 %i.ati, -128
  %i.ayl = and i32 %i.atj, -128
  %.sroa.2.0.insert.ext.i.i.i463 = zext i32 %i.ayk to i64
  %.sroa.2.0.insert.shift.i.i.i464 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i463, 32
  %.sroa.0.0.insert.ext.i.i.i465 = zext i32 %i.aud to i64
  %.sroa.0.0.insert.insert.i.i.i466 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i464, %.sroa.0.0.insert.ext.i.i.i465
  store i64 %.sroa.0.0.insert.insert.i.i.i466, ptr %i.aj, align 4
  store i32 %i.ayl, ptr %i.al, align 4, !tbaa !207
  store ptr %i.ayj, ptr %i.ar, align 8, !tbaa !446
  %i.aym = load ptr, ptr %i.ayi, align 8, !tbaa !207
  %i.ayn = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.aym, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149

bb.en:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i455
  %i.ayo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i450, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149: ; preds = %bb.en, %bb.em, %bb.el, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i147, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i145, %bb.eb, %bb.ec
  %.1.i.i136 = phi ptr [ %i.auc, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i147 ], [ %i.aun, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i145 ], [ %i.avv, %bb.ec ], [ %i.avq, %bb.eb ], [ %i.axk, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i469 ], [ %i.ayo, %bb.en ], [ %i.ayn, %bb.em ], [ %i.ayi, %bb.el ]
  %i.ayp = load float, ptr %.1.i.i136, align 4, !tbaa !98
  %i.ayq = load ptr, ptr %i.as, align 8, !tbaa !127
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 28
  store float %i.ayp, ptr %i.ayr, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ays = load <2 x double>, ptr %19, align 16, !tbaa !163
  %.pre9.i = load double, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !tbaa !163
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i

_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149, %bb.p
  %i.ayt = phi double [ %i.gm, %bb.p ], [ %.pre9.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149 ]
  %i.ayu = phi <2 x double> [ %i.gl, %bb.p ], [ %i.ays, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ayv = fptrunc <2 x double> %i.ayu to <2 x float>
  store <2 x float> %i.ayv, ptr %17, align 8, !tbaa !98
  %i.ayw = fptrunc double %i.ayt to float
  store float %i.ayw, ptr %i.at, align 8, !tbaa !98
  %i.ayx = call { <2 x float>, float } @_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IfEE(ptr noundef nonnull align 8 dereferenceable(140) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %17) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ayx, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ayx, 1
  %i.ayy = fpext <2 x float> %.fca.0.extract.i to <2 x double> ; 5 uses
  %i.ayz = extractelement <2 x double> %i.ayy, i64 0 ; 2 uses
  store <2 x double> %i.ayy, ptr %20, align 16, !tbaa !163
  %i.aza = fpext float %.fca.1.extract.i to double ; 4 uses
  store double %i.aza, ptr %i.au, align 16, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %foldExtExtBinop2515 = fmul <2 x double> %i.ayy, %i.ayy
  %i.azb = extractelement <2 x double> %foldExtExtBinop2515, i64 1
  %i.azc = call double @llvm.fmuladd.f64(double %i.ayz, double %i.ayz, double %i.azb)
  %i.azd = call double @llvm.fmuladd.f64(double %i.aza, double %i.aza, double %i.azc)
  %i.aze = call noundef double @sqrt(double noundef %i.azd) #17 ; 2 uses
  %i.azf = call noundef double @llvm.fabs.f64(double %i.aze)
  %i.azg = fcmp ogt double %i.azf, f0x3E7AD7F29ABCAF48
  br i1 %i.azg, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i
  %i.azh = fdiv double 1.000000e+00, %i.aze       ; 2 uses
  %i.azi = fmul double %i.azh, %i.aza
  %i.azj = insertelement <2 x double> poison, double %i.azh, i64 0
  %i.azk = shufflevector <2 x double> %i.azj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azl = fmul <2 x double> %i.azk, %i.ayy
  store <2 x double> %i.azl, ptr %20, align 16, !tbaa !163
  store double %i.azi, ptr %i.au, align 16, !tbaa !163
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.azm = load ptr, ptr %i.n, align 8, !tbaa !398
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 56
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !276, !noalias !880
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !294, !noalias !881 ; 2 uses
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !100, !noalias !881
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 56
  %i.azs = load ptr, ptr %i.azr, align 8, !noalias !881
  call void %i.azs(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.azp, ptr noundef nonnull align 8 dereferenceable(24) %19), !inline_history !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %i.azt = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  %i.azv = load ptr, ptr %i.azu, align 8
  %i.azw = call { <2 x float>, <2 x float> } %i.azv(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 2 uses
  %i.azx = extractvalue { <2 x float>, <2 x float> } %i.azw, 0
  %i.azy = extractvalue { <2 x float>, <2 x float> } %i.azw, 1
  br label %bb.eq

_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread: ; preds = %bb.m, %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, %bb.n
  %.sroa.01399.0.copyload = load <2 x float>, ptr %i.bs, align 4, !tbaa !98
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !98
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread, %bb.ep
  %.sroa.10.0 = phi <2 x float> [ %i.azy, %bb.ep ], [ %.sroa.10.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread ] ; 2 uses
  %.sroa.01399.0 = phi <2 x float> [ %i.azx, %bb.ep ], [ %.sroa.01399.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread ] ; 2 uses
  %i.azz = load i64, ptr %i.c, align 8, !tbaa !380
  %.not2065 = icmp eq i64 %i.azz, 0
  br i1 %.not2065, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eq
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %bb.er

._crit_edge:                                      ; preds = %bb.rx, %bb.eq
  %.sroa.10.1.lcssa = phi <2 x float> [ %.sroa.10.0, %bb.eq ], [ %i.ezq, %bb.rx ]
  %.sroa.01399.1.lcssa = phi <2 x float> [ %.sroa.01399.0, %bb.eq ], [ %i.ezp, %bb.rx ]
  %.2.lcssa = phi i64 [ %.12053, %bb.eq ], [ %i.ezs, %bb.rx ] ; 2 uses
  %i.baa = fmul <2 x float> %i.be, %.sroa.01399.1.lcssa
  %.sroa.10.8.vec.extract = extractelement <2 x float> %.sroa.10.1.lcssa, i64 0
  %i.bab = fmul float %i.g, %.sroa.10.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bab, i64 0
  store <2 x float> %i.baa, ptr %i.bs, align 4, !tbaa !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.bac = add nuw i64 %.0252054, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bac, %i.bi
  br i1 %exitcond.not, label %._crit_edge2057, label %.lr.ph2056, !llvm.loop !837

bb.er:                                            ; preds = %.lr.ph, %bb.rx
  %.02050 = phi i64 [ 0, %.lr.ph ], [ %i.ezr, %bb.rx ]
  %.22049 = phi i64 [ %.12053, %.lr.ph ], [ %i.ezs, %bb.rx ] ; 3 uses
  %.sroa.01399.12048 = phi <2 x float> [ %.sroa.01399.0, %.lr.ph ], [ %i.ezp, %bb.rx ]
  %.sroa.10.12047 = phi <2 x float> [ %.sroa.10.0, %.lr.ph ], [ %i.ezq, %bb.rx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.bad = load ptr, ptr %i.l, align 8, !tbaa !102 ; 2 uses
  %i.bae = load ptr, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %i.baf = and i64 %.22049, 15
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %i.bae, i64 %i.baf
  %i.bah = load double, ptr %i.bag, align 8, !tbaa !163
  %i.bai = add i64 %.22049, 1
  %i.baj = and i64 %i.bai, 15
  %i.bak = getelementptr inbounds nuw [8 x i8], ptr %i.bae, i64 %i.baj
  %i.bal = load double, ptr %i.bak, align 8, !tbaa !163
  %i.bam = load ptr, ptr %i.bad, align 8, !tbaa !100
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 16
  %i.bao = load ptr, ptr %i.ban, align 8
  call void %i.bao(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %22, ptr noundef nonnull align 8 dereferenceable(496) %i.bad, i64 noundef %.0252054, i64 noundef %.0272059, double noundef %i.bah, double noundef %i.bal)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %21, ptr noundef nonnull align 8 dereferenceable(88) %22, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01453)
  %i.bap = load ptr, ptr %i.n, align 8, !tbaa !398
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 56
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !276, !noalias !882 ; 2 uses
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !294, !noalias !883 ; 4 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bar, i64 8
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !297, !noalias !883 ; 16 uses
  %.not.i.i.i.i.i121 = icmp eq ptr %i.bau, null   ; 3 uses
  br i1 %.not.i.i.i.i.i121, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i123, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 8 ; 3 uses
  %i.baw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !883
  %.not.i.i.i.i.i.i122 = icmp eq i8 %i.baw, 0
  br i1 %.not.i.i.i.i.i.i122, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bax = load i32, ptr %i.bav, align 4, !tbaa !298, !noalias !883
  %i.bay = add nsw i32 %i.bax, 1
  store i32 %i.bay, ptr %i.bav, align 4, !tbaa !298, !noalias !883
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i123

bb.eu:                                            ; preds = %bb.es
  %i.baz = atomicrmw volatile add ptr %i.bav, i32 1 acq_rel, align 4, !noalias !883 ; 0 uses
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i123

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i123: ; preds = %bb.eu, %bb.et, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !884
  %i.bba = load ptr, ptr %i.bas, align 8, !tbaa !100, !noalias !884
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 64
  %i.bbc = load ptr, ptr %i.bbb, align 8, !noalias !884
  invoke void %i.bbc(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bas, ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %.noexc.i124 unwind label %bb.fc, !noalias !882, !inline_history !3

.noexc.i124:                                      ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !884
  %i.bbd = load ptr, ptr %i.bas, align 8, !tbaa !100, !noalias !884
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 248
  %i.bbf = load ptr, ptr %i.bbe, align 8, !noalias !884
  invoke void %i.bbf(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bas, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ev unwind label %bb.fc, !noalias !882, !inline_history !3

bb.ev:                                            ; preds = %.noexc.i124
  %i.bbg = load double, ptr %i.aw, align 16, !tbaa !163, !noalias !884 ; 3 uses
  %i.bbh = load <2 x double>, ptr %3, align 16, !tbaa !163, !noalias !884 ; 4 uses
  %foldExtExtBinop2517 = fmul <2 x double> %i.bbh, %i.bbh
  %i.bbi = extractelement <2 x double> %foldExtExtBinop2517, i64 1
  %i.bbj = extractelement <2 x double> %i.bbh, i64 0 ; 2 uses
  %i.bbk = call double @llvm.fmuladd.f64(double %i.bbj, double %i.bbj, double %i.bbi)
  %i.bbl = call double @llvm.fmuladd.f64(double %i.bbg, double %i.bbg, double %i.bbk)
  %i.bbm = call noundef double @sqrt(double noundef %i.bbl) #17, !noalias !884 ; 2 uses
  %i.bbn = insertelement <2 x double> poison, double %i.bbm, i64 0
  %i.bbo = shufflevector <2 x double> %i.bbn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bbp = fdiv <2 x double> %i.bbh, %i.bbo       ; 2 uses
  %i.bbq = fdiv double %i.bbg, %i.bbm             ; 2 uses
  %i.bbr = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !884
  %i.bbs = fmul <2 x double> %i.bbo, %i.bbr       ; 4 uses
  %i.bbt = shufflevector <2 x double> %i.bbs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01453, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bbu = fdiv <2 x double> splat (double 1.000000e+00), %i.bbp ; 3 uses
  %i.bbv = fdiv double 1.000000e+00, %i.bbq       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !884
  br i1 %.not.i.i.i.i.i121, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit132, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bau, i64 8 ; 4 uses
  %i.bbx = load atomic i64, ptr %i.bbw acquire, align 8, !noalias !882 ; 2 uses
  %i.bby = icmp eq i64 %i.bbx, 4294967297
  %i.bbz = trunc i64 %i.bbx to i32                ; 2 uses
  br i1 %i.bby, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.bbw, align 8, !tbaa !300, !noalias !882
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bau, i64 12
  store i32 0, ptr %i.bca, align 4, !tbaa !301, !noalias !882
  %i.bcb = load ptr, ptr %i.bau, align 8, !tbaa !100, !noalias !882
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 16
  %i.bcd = load ptr, ptr %i.bcc, align 8, !noalias !882
  call void %i.bcd(ptr noundef nonnull align 8 dereferenceable(16) %i.bau) #17, !noalias !882, !inline_history !4
  %i.bce = load ptr, ptr %i.bau, align 8, !tbaa !100, !noalias !882
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 24
  %i.bcg = load ptr, ptr %i.bcf, align 8, !noalias !882
  call void %i.bcg(ptr noundef nonnull align 8 dereferenceable(16) %i.bau) #17, !noalias !882, !inline_history !4
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit132

bb.ey:                                            ; preds = %bb.ew
  %i.bch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !882
  %.not.i.i.i.i128 = icmp eq i8 %i.bch, 0
  br i1 %.not.i.i.i.i128, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bci = add nsw i32 %i.bbz, -1
  store i32 %i.bci, ptr %i.bbw, align 8, !tbaa !298, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129

bb.fa:                                            ; preds = %bb.ey
  %i.bcj = atomicrmw volatile add ptr %i.bbw, i32 -1 acq_rel, align 4, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i130 = phi i32 [ %i.bbz, %bb.ez ], [ %i.bcj, %bb.fa ]
  %i.bck = icmp eq i32 %.0.i.i.i.i.i130, 1
  br i1 %i.bck, label %bb.fb, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit132, !prof !302

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bau) #17, !noalias !882
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit132

bb.fc:                                            ; preds = %.noexc.i124, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i123
  %i.bcl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  br i1 %.not.i.i.i.i.i121, label %common.resume, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bau, i64 8 ; 4 uses
  %i.bcn = load atomic i64, ptr %i.bcm acquire, align 8, !noalias !882 ; 2 uses
  %i.bco = icmp eq i64 %i.bcn, 4294967297
  %i.bcp = trunc i64 %i.bcn to i32                ; 2 uses
  br i1 %i.bco, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.bcm, align 8, !tbaa !300, !noalias !882
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bau, i64 12
  store i32 0, ptr %i.bcq, align 4, !tbaa !301, !noalias !882
  %i.bcr = load ptr, ptr %i.bau, align 8, !tbaa !100, !noalias !882
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 16
  %i.bct = load ptr, ptr %i.bcs, align 8, !noalias !882
  call void %i.bct(ptr noundef nonnull align 8 dereferenceable(16) %i.bau) #17, !noalias !882, !inline_history !28
  %i.bcu = load ptr, ptr %i.bau, align 8, !tbaa !100, !noalias !882
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 24
  %i.bcw = load ptr, ptr %i.bcv, align 8, !noalias !882
  call void %i.bcw(ptr noundef nonnull align 8 dereferenceable(16) %i.bau) #17, !noalias !882, !inline_history !28
  br label %common.resume

bb.ff:                                            ; preds = %bb.fd
  %i.bcx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !882
  %.not.i.i.i442 = icmp eq i8 %i.bcx, 0
  br i1 %.not.i.i.i442, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bcy = add nsw i32 %i.bcp, -1
  store i32 %i.bcy, ptr %i.bcm, align 8, !tbaa !298, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.bcz = atomicrmw volatile add ptr %i.bcm, i32 -1 acq_rel, align 4, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i = phi i32 [ %i.bcp, %bb.fg ], [ %i.bcz, %bb.fh ]
  %i.bda = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bda, label %bb.fi, label %common.resume, !prof !302

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bau) #17, !noalias !882
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit132: ; preds = %bb.ev, %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i129, %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01453, i64 24, i1 false)
  store <2 x double> %i.bbp, ptr %.sroa.4.0..sroa_idx1411, align 8
  store double %i.bbq, ptr %.sroa.61412.0..sroa_idx, align 8
  store <2 x double> %i.bbu, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.bbv, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.bbs, ptr %.sroa.101413.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01453)
  %i.bdb = load <2 x i32>, ptr %i.s, align 4
  %i.bdc = load <1 x double>, ptr %i.m, align 8
  %i.bdd = load i32, ptr %i.t, align 8, !tbaa !298
  %i.bde = insertelement <2 x i32> %i.bdb, i32 %i.bdd, i64 1
  %i.bdf = sitofp <2 x i32> %i.bde to <2 x double>
  %i.bdg = shufflevector <1 x double> %i.bdc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bdh = fsub <2 x double> %i.bdf, %i.bdg
  %i.bdi = shufflevector <2 x double> %i.bbu, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoEEclEPS5_:bb.a
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
  %.0252070 = phi i64 [ %i.bdh, %._crit_edge ], [ 0, %.lr.ph2078.split ] ; 4 uses
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
  %common.resume.op = phi { ptr, i32 } [ %i.dw, %bb.l ], [ %i.bcc, %bb.ey ], [ %i.fev, %bb.sq ], [ %i.bmi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i441 ], [ %i.bpv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.bus, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1224 ], [ %i.byg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1199 ], [ %i.cbr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1174 ], [ %i.cgl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1399 ], [ %i.ckd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1120 ], [ %i.cnq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1095 ], [ %i.csn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1374 ], [ %i.cwe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1041 ], [ %i.czr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1016 ], [ %i.deo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1349 ], [ %i.dif, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i962 ], [ %i.dls, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i937 ], [ %i.dqp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1324 ], [ %i.duh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i883 ], [ %i.dxu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i858 ], [ %i.ecr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1299 ], [ %i.egk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i804 ], [ %i.ejx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i779 ], [ %i.eou, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1274 ], [ %i.esm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i725 ], [ %i.evz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i700 ], [ %i.faw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1249 ], [ %i.bfq, %bb.fn ], [ %i.bfq, %bb.fp ], [ %i.bfq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.bfq, %bb.ft ]
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
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.azv = insertelement <2 x double> %i.azu, double %i.azn, i64 1 ; 2 uses
  %i.azw = fsub <2 x double> %i.azt, %i.azv       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17, !noalias !1080
  %i.azx = insertelement <2 x double> poison, double %i.azi, i64 0
  %i.azy = shufflevector <2 x double> %i.azx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.azz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azw, <2 x double> %i.azy, <2 x double> %i.azv) ; 2 uses
  %i.baa = load <2 x double>, ptr %i.azo, align 8, !tbaa !163, !noalias !1080
  %i.bab = insertelement <2 x double> poison, double %i.azq, i64 0
  %i.bac = insertelement <2 x double> %i.bab, double %i.azs, i64 1 ; 2 uses
  %i.bad = fsub <2 x double> %i.baa, %i.bac       ; 3 uses
  %i.bae = shufflevector <2 x double> %i.azw, <2 x double> %i.bad, <2 x i32> <i32 1, i32 3>
  %i.baf = shufflevector <2 x double> %i.azw, <2 x double> %i.bad, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bag = fsub <2 x double> %i.bae, %i.baf
  %i.bah = shufflevector <2 x double> %i.azb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bai = shufflevector <2 x double> %i.azd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.baj = fsub <2 x double> %i.bah, %i.bai       ; 2 uses
  %i.bak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bag, <2 x double> %i.baj, <2 x double> %i.baf) ; 2 uses
  %i.bal = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bad, <2 x double> %i.azy, <2 x double> %i.bac) ; 2 uses
  %i.bam = shufflevector <2 x double> %i.azz, <2 x double> %i.bal, <2 x i32> <i32 1, i32 3>
  %i.ban = shufflevector <2 x double> %i.azz, <2 x double> %i.bal, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bao = fsub <2 x double> %i.bam, %i.ban       ; 3 uses
  %i.bap = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bao, <2 x double> %i.baj, <2 x double> %i.ban) ; 2 uses
  %shift2561 = shufflevector <2 x double> %i.bap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2562 = fsub <2 x double> %shift2561, %i.bap
  %i.baq = extractelement <2 x double> %foldExtExtBinop2562, i64 0
  store double %i.baq, ptr %16, align 8, !tbaa !163, !noalias !1080
  %i.bar = shufflevector <2 x double> %i.bao, <2 x double> %i.bak, <2 x i32> <i32 1, i32 3>
  %i.bas = shufflevector <2 x double> %i.bao, <2 x double> %i.bak, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bat = fsub <2 x double> %i.bar, %i.bas
  %i.bau = insertelement <2 x double> poison, double %i.azf, i64 0
  %i.bav = shufflevector <2 x double> %i.bau, <2 x double> poison, <2 x i32> zeroinitializer
  %i.baw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bat, <2 x double> %i.bav, <2 x double> %i.bas)
  store <2 x double> %i.baw, ptr %i.at, align 8, !tbaa !163, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17, !noalias !1080
  %i.bax = load ptr, ptr %i.n, align 8, !tbaa !484, !noalias !1080
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 56
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !276, !noalias !1080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !294, !noalias !1082 ; 3 uses
  store ptr %i.bba, ptr %17, align 8, !tbaa !296, !alias.scope !1081, !noalias !1080
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !297, !noalias !1082 ; 3 uses
  store ptr %i.bbc, ptr %i.au, align 8, !tbaa !297, !alias.scope !1081, !noalias !1080
  %.not.i.i.i.i.i = icmp eq ptr %i.bbc, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i, label %bb.eo

bb.eo:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8 ; 3 uses
  %i.bbe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1082
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bbe, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bbf = load i32, ptr %i.bbd, align 4, !tbaa !298, !noalias !1082
  %i.bbg = add nsw i32 %i.bbf, 1
  store i32 %i.bbg, ptr %i.bbd, align 4, !tbaa !298, !noalias !1082
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

bb.eq:                                            ; preds = %bb.eo
  %i.bbh = atomicrmw volatile add ptr %i.bbd, i32 1 acq_rel, align 4, !noalias !1082 ; 0 uses
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !296, !noalias !1080
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i: ; preds = %bb.eq, %bb.ep, %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i
  %i.bbi = phi ptr [ %i.bba, %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i ], [ %i.bba, %bb.ep ], [ %.pre.i, %bb.eq ] ; 2 uses
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !100, !noalias !1080
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 80
  %i.bbl = load ptr, ptr %i.bbk, align 8, !noalias !1080
  invoke void %i.bbl(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.bbi, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.bbm = load ptr, ptr %i.au, align 8, !tbaa !297, !noalias !1080 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bbm, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8 ; 4 uses
  %i.bbo = load atomic i64, ptr %i.bbn acquire, align 8 ; 2 uses
  %i.bbp = icmp eq i64 %i.bbo, 4294967297
  %i.bbq = trunc i64 %i.bbo to i32                ; 2 uses
  br i1 %i.bbp, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.bbn, align 8, !tbaa !300
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbm, i64 12
  store i32 0, ptr %i.bbr, align 4, !tbaa !301
  %i.bbs = load ptr, ptr %i.bbm, align 8, !tbaa !100
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 16
  %i.bbu = load ptr, ptr %i.bbt, align 8
  call void %i.bbu(ptr noundef nonnull align 8 dereferenceable(16) %i.bbm) #17, !inline_history !1027
  %i.bbv = load ptr, ptr %i.bbm, align 8, !tbaa !100
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 24
  %i.bbx = load ptr, ptr %i.bbw, align 8
  call void %i.bbx(ptr noundef nonnull align 8 dereferenceable(16) %i.bbm) #17, !inline_history !1027
  br label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit

bb.eu:                                            ; preds = %bb.es
  %i.bby = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1080
  %.not.i.i.i.i = icmp eq i8 %i.bby, 0
  br i1 %.not.i.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bbz = add nsw i32 %i.bbq, -1
  store i32 %i.bbz, ptr %i.bbn, align 8, !tbaa !298
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ew:                                            ; preds = %bb.eu
  %i.bca = atomicrmw volatile add ptr %i.bbn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i.i = phi i32 [ %i.bbq, %bb.ev ], [ %i.bca, %bb.ew ]
  %i.bcb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bcb, label %bb.ex, label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit, !prof !302

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbm) #17
  br label %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit

bb.ey:                                            ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.bcc = landingpad { ptr, i32 }
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
  %i.bcd = load <2 x double>, ptr %24, align 16, !tbaa !163 ; 4 uses
  %foldExtExtBinop2564 = fmul <2 x double> %i.bcd, %i.bcd
  %i.bce = extractelement <2 x double> %foldExtExtBinop2564, i64 1
  %i.bcf = extractelement <2 x double> %i.bcd, i64 0 ; 2 uses
  %i.bcg = call double @llvm.fmuladd.f64(double %i.bcf, double %i.bcf, double %i.bce)
  %i.bch = load double, ptr %i.av, align 16, !tbaa !163 ; 3 uses
  %i.bci = call double @llvm.fmuladd.f64(double %i.bch, double %i.bch, double %i.bcg)
  %i.bcj = call noundef double @sqrt(double noundef %i.bci) #17 ; 2 uses
  %i.bck = call noundef double @llvm.fabs.f64(double %i.bcj)
  %i.bcl = fcmp ogt double %i.bck, f0x3E7AD7F29ABCAF48
  br i1 %i.bcl, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit
  %i.bcm = fdiv double 1.000000e+00, %i.bcj       ; 2 uses
  %i.bcn = fmul double %i.bch, %i.bcm
  %i.bco = insertelement <2 x double> poison, double %i.bcm, i64 0
  %i.bcp = shufflevector <2 x double> %i.bco, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcq = fmul <2 x double> %i.bcd, %i.bcp
  store <2 x double> %i.bcq, ptr %24, align 16, !tbaa !163
  store double %i.bcn, ptr %i.av, align 16, !tbaa !163
  br label %bb.fa

bb.fa:                                            ; preds = %_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE.exit, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.bcr = load ptr, ptr %i.n, align 8, !tbaa !484
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 56
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !276, !noalias !1083
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !294, !noalias !1084 ; 2 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !100, !noalias !1084
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 56
  %i.bcx = load ptr, ptr %i.bcw, align 8, !noalias !1084
  call void %i.bcx(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.bcu, ptr noundef nonnull align 8 dereferenceable(24) %23), !inline_history !1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  %i.bcy = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 16
  %i.bda = load ptr, ptr %i.bcz, align 8
  %i.bdb = call { <2 x float>, <2 x float> } %i.bda(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 2 uses
  %i.bdc = extractvalue { <2 x float>, <2 x float> } %i.bdb, 0
  %i.bdd = extractvalue { <2 x float>, <2 x float> } %i.bdb, 1
  br label %bb.fb

_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread: ; preds = %bb.m, %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, %bb.n
  %.sroa.01408.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !98
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !98
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread, %bb.fa
  %.sroa.10.0 = phi <2 x float> [ %i.bdd, %bb.fa ], [ %.sroa.10.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread ] ; 2 uses
  %.sroa.01408.0 = phi <2 x float> [ %i.bdc, %bb.fa ], [ %.sroa.01408.0.copyload, %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread ] ; 2 uses
  %i.bde = load i64, ptr %i.c, align 8, !tbaa !476
  %.not2081 = icmp eq i64 %i.bde, 0
  br i1 %.not2081, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fb
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %bb.fc

._crit_edge:                                      ; preds = %bb.st, %bb.fb
  %.sroa.10.1.lcssa = phi <2 x float> [ %.sroa.10.0, %bb.fb ], [ %i.ffy, %bb.st ]
  %.sroa.01408.1.lcssa = phi <2 x float> [ %.sroa.01408.0, %bb.fb ], [ %i.ffx, %bb.st ]
  %.2.lcssa = phi i64 [ %.12069, %bb.fb ], [ %i.fga, %bb.st ] ; 2 uses
  %i.bdf = fmul <2 x float> %i.bg, %.sroa.01408.1.lcssa
  %.sroa.10.8.vec.extract = extractelement <2 x float> %.sroa.10.1.lcssa, i64 0
  %i.bdg = fmul float %i.g, %.sroa.10.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bdg, i64 0
  store <2 x float> %i.bdf, ptr %i.bu, align 4, !tbaa !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.bdh = add nuw i64 %.0252070, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bdh, %i.bk
  br i1 %exitcond.not, label %._crit_edge2073, label %.lr.ph2072, !llvm.loop !1033

bb.fc:                                            ; preds = %.lr.ph, %bb.st
  %.02066 = phi i64 [ 0, %.lr.ph ], [ %i.ffz, %bb.st ]
  %.22065 = phi i64 [ %.12069, %.lr.ph ], [ %i.fga, %bb.st ] ; 3 uses
  %.sroa.01408.12064 = phi <2 x float> [ %.sroa.01408.0, %.lr.ph ], [ %i.ffx, %bb.st ]
  %.sroa.10.12063 = phi <2 x float> [ %.sroa.10.0, %.lr.ph ], [ %i.ffy, %bb.st ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.bdi = load ptr, ptr %i.l, align 8, !tbaa !164 ; 2 uses
  %i.bdj = load ptr, ptr %i.aw, align 8, !tbaa !162 ; 2 uses
  %i.bdk = and i64 %.22065, 15
  %i.bdl = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %i.bdk
  %i.bdm = load double, ptr %i.bdl, align 8, !tbaa !163
  %i.bdn = add i64 %.22065, 1
  %i.bdo = and i64 %i.bdn, 15
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %i.bdo
  %i.bdq = load double, ptr %i.bdp, align 8, !tbaa !163
  %i.bdr = load ptr, ptr %i.bdi, align 8, !tbaa !100
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  %i.bdt = load ptr, ptr %i.bds, align 8
  call void %i.bdt(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %26, ptr noundef nonnull align 8 dereferenceable(496) %i.bdi, i64 noundef %.0252070, i64 noundef %.0272075, double noundef %i.bdm, double noundef %i.bdq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull align 8 dereferenceable(88) %26, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01462)
  %i.bdu = load ptr, ptr %i.n, align 8, !tbaa !484
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 56
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !276, !noalias !1085 ; 2 uses
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !294, !noalias !1086 ; 4 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !297, !noalias !1086 ; 16 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.bdz, null   ; 3 uses
  br i1 %.not.i.i.i.i.i130, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8 ; 3 uses
  %i.beb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1086
  %.not.i.i.i.i.i.i131 = icmp eq i8 %i.beb, 0
  br i1 %.not.i.i.i.i.i.i131, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bec = load i32, ptr %i.bea, align 4, !tbaa !298, !noalias !1086
  %i.bed = add nsw i32 %i.bec, 1
  store i32 %i.bed, ptr %i.bea, align 4, !tbaa !298, !noalias !1086
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132

bb.ff:                                            ; preds = %bb.fd
  %i.bee = atomicrmw volatile add ptr %i.bea, i32 1 acq_rel, align 4, !noalias !1086 ; 0 uses
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132: ; preds = %bb.ff, %bb.fe, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !1087
  %i.bef = load ptr, ptr %i.bdx, align 8, !tbaa !100, !noalias !1087
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 64
  %i.beh = load ptr, ptr %i.beg, align 8, !noalias !1087
  invoke void %i.beh(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bdx, ptr noundef nonnull align 8 dereferenceable(88) %25)
          to label %.noexc.i133 unwind label %bb.fn, !noalias !1085, !inline_history !3

.noexc.i133:                                      ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !1087
  %i.bei = load ptr, ptr %i.bdx, align 8, !tbaa !100, !noalias !1087
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 248
  %i.bek = load ptr, ptr %i.bej, align 8, !noalias !1087
  invoke void %i.bek(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bdx, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.fg unwind label %bb.fn, !noalias !1085, !inline_history !3

bb.fg:                                            ; preds = %.noexc.i133
  %i.bel = load double, ptr %i.ax, align 16, !tbaa !163, !noalias !1087 ; 3 uses
  %i.bem = load <2 x double>, ptr %3, align 16, !tbaa !163, !noalias !1087 ; 4 uses
  %foldExtExtBinop2566 = fmul <2 x double> %i.bem, %i.bem
  %i.ben = extractelement <2 x double> %foldExtExtBinop2566, i64 1
  %i.beo = extractelement <2 x double> %i.bem, i64 0 ; 2 uses
  %i.bep = call double @llvm.fmuladd.f64(double %i.beo, double %i.beo, double %i.ben)
  %i.beq = call double @llvm.fmuladd.f64(double %i.bel, double %i.bel, double %i.bep)
  %i.ber = call noundef double @sqrt(double noundef %i.beq) #17, !noalias !1087 ; 2 uses
  %i.bes = insertelement <2 x double> poison, double %i.ber, i64 0
  %i.bet = shufflevector <2 x double> %i.bes, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.beu = fdiv <2 x double> %i.bem, %i.bet       ; 2 uses
  %i.bev = fdiv double %i.bel, %i.ber             ; 2 uses
  %i.bew = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !1087
  %i.bex = fmul <2 x double> %i.bet, %i.bew       ; 4 uses
  %i.bey = shufflevector <2 x double> %i.bex, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01462, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bez = fdiv <2 x double> splat (double 1.000000e+00), %i.beu ; 3 uses
  %i.bfa = fdiv double 1.000000e+00, %i.bev       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !1087
  br i1 %.not.i.i.i.i.i130, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8 ; 4 uses
  %i.bfc = load atomic i64, ptr %i.bfb acquire, align 8, !noalias !1085 ; 2 uses
  %i.bfd = icmp eq i64 %i.bfc, 4294967297
  %i.bfe = trunc i64 %i.bfc to i32                ; 2 uses
  br i1 %i.bfd, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.bfb, align 8, !tbaa !300, !noalias !1085
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bdz, i64 12
  store i32 0, ptr %i.bff, align 4, !tbaa !301, !noalias !1085
  %i.bfg = load ptr, ptr %i.bdz, align 8, !tbaa !100, !noalias !1085
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16
  %i.bfi = load ptr, ptr %i.bfh, align 8, !noalias !1085
  call void %i.bfi(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz) #17, !noalias !1085, !inline_history !7
  %i.bfj = load ptr, ptr %i.bdz, align 8, !tbaa !100, !noalias !1085
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 24
  %i.bfl = load ptr, ptr %i.bfk, align 8, !noalias !1085
  call void %i.bfl(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz) #17, !noalias !1085, !inline_history !7
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141

bb.fj:                                            ; preds = %bb.fh
  %i.bfm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1085
  %.not.i.i.i.i137 = icmp eq i8 %i.bfm, 0
  br i1 %.not.i.i.i.i137, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bfn = add nsw i32 %i.bfe, -1
  store i32 %i.bfn, ptr %i.bfb, align 8, !tbaa !298, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138

bb.fl:                                            ; preds = %bb.fj
  %i.bfo = atomicrmw volatile add ptr %i.bfb, i32 -1 acq_rel, align 4, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i139 = phi i32 [ %i.bfe, %bb.fk ], [ %i.bfo, %bb.fl ]
  %i.bfp = icmp eq i32 %.0.i.i.i.i.i139, 1
  br i1 %i.bfp, label %bb.fm, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141, !prof !302

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz) #17, !noalias !1085
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141

bb.fn:                                            ; preds = %.noexc.i133, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i132
  %i.bfq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  br i1 %.not.i.i.i.i.i130, label %common.resume, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8 ; 4 uses
  %i.bfs = load atomic i64, ptr %i.bfr acquire, align 8, !noalias !1085 ; 2 uses
  %i.bft = icmp eq i64 %i.bfs, 4294967297
  %i.bfu = trunc i64 %i.bfs to i32                ; 2 uses
  br i1 %i.bft, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.bfr, align 8, !tbaa !300, !noalias !1085
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bdz, i64 12
  store i32 0, ptr %i.bfv, align 4, !tbaa !301, !noalias !1085
  %i.bfw = load ptr, ptr %i.bdz, align 8, !tbaa !100, !noalias !1085
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 16
  %i.bfy = load ptr, ptr %i.bfx, align 8, !noalias !1085
  call void %i.bfy(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz) #17, !noalias !1085, !inline_history !28
  %i.bfz = load ptr, ptr %i.bdz, align 8, !tbaa !100, !noalias !1085
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 24
  %i.bgb = load ptr, ptr %i.bga, align 8, !noalias !1085
  call void %i.bgb(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz) #17, !noalias !1085, !inline_history !28
  br label %common.resume

bb.fq:                                            ; preds = %bb.fo
  %i.bgc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1085
  %.not.i.i.i451 = icmp eq i8 %i.bgc, 0
  br i1 %.not.i.i.i451, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bgd = add nsw i32 %i.bfu, -1
  store i32 %i.bgd, ptr %i.bfr, align 8, !tbaa !298, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.bge = atomicrmw volatile add ptr %i.bfr, i32 -1 acq_rel, align 4, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i = phi i32 [ %i.bfu, %bb.fr ], [ %i.bge, %bb.fs ]
  %i.bgf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bgf, label %bb.ft, label %common.resume, !prof !302

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz) #17, !noalias !1085
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit141: ; preds = %bb.fg, %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i138, %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01462, i64 24, i1 false)
  store <2 x double> %i.beu, ptr %.sroa.4.0..sroa_idx1420, align 8
  store double %i.bev, ptr %.sroa.61421.0..sroa_idx, align 8
  store <2 x double> %i.bez, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.bfa, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.bex, ptr %.sroa.101422.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01462)
  %i.bgg = load <2 x i32>, ptr %i.s, align 8
  %i.bgh = load <1 x double>, ptr %i.m, align 8
  %i.bgi = load i32, ptr %i.t, align 4, !tbaa !298
  %i.bgj = insertelement <2 x i32> %i.bgg, i32 %i.bgi, i64 1
  %i.bgk = sitofp <2 x i32> %i.bgj to <2 x double>
  %i.bgl = shufflevector <1 x double> %i.bgh, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bgm = fsub <2 x double> %i.bgk, %i.bgl
  %i.bgn = shufflevector <2 x double> %i.bez, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_3
