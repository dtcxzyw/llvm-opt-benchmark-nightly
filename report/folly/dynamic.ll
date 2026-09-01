Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/dynamic?download=true
inline.NumInlined: 2778
inline.NumDeleted: 1117
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNKR5folly7dynamic11try_get_ptrERKNS_12json_pointerE:bb.a
  store i64 %.sroa.7.0371496, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !65
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.036376493, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !125
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.dz, align 8, !tbaa !387
  br label %.thread273

.thread213:                                       ; preds = %bb.i, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243
  %.sroa.5180.3 = phi ptr [ %.sroa.5180.0374495, %bb.i ], [ %.sroa.5180.0374495, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %i.dy, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 2 uses
  %.sroa.0179.3 = phi ptr [ %.sroa.0179.0375494, %bb.i ], [ %.sroa.0179.0375494, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %i.dv, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 2 uses
  %.5 = phi ptr [ null, %bb.i ], [ %i.ba, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %i.dx, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 3 uses
  %.3 = phi i64 [ %.0380492, %bb.i ], [ %i.am, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %.0380492, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0173.0368499, i64 32 ; 2 uses
  %.not301 = icmp eq ptr %i.ea, %i.f
  br i1 %.not301, label %.thread279, label %bb.c

.thread279:                                       ; preds = %.thread213
  store ptr %.036376493, ptr %0, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0179.3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !18
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5180.3, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !65
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.eb, align 8, !tbaa !387
  br label %.thread273

.thread273:                                       ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, %bb.m, %_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread207, %bb.j, %bb.g, %bb.w, %bb.d, %.thread279, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5folly12json_pointer6tokensB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare { i64, i64 } @_ZN5folly6detail15str_to_integralImEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNKR5folly7dynamic7get_ptrERKNS_12json_pointerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Expected.141", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNKR5folly7dynamic11try_get_ptrERKNS_12json_pointerE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !387
  switch i8 %i.b, label %bb.b [
    i8 1, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit
  ], !prof !404

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !405
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
  unreachable

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10, label %bb.c

bb.c:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  br label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10: ; preds = %bb.c, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit ]
  %i.i = load i8, ptr %2, align 8, !tbaa !409
  switch i8 %i.i, label %bb.l [
    i8 6, label %bb.j
    i8 5, label %bb.g
    i8 4, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.62)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.63)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.59, i32 noundef %i.h) #12
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.f
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.j, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.k, %bb.f ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit
  %.1 = phi ptr [ %i.d, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit ], [ null, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret ptr %.1
}

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7dynamic7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i32 %i.a, label %bb.k [
    i32 1, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !292
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult i64 %1, 15
  br i1 %i.h, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i, label %bb.f

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i: ; preds = %bb.e
  %i.i = shl nuw nsw i64 %1, 3
  %i.j = add nuw nsw i64 %i.i, 16
  %i.k = trunc nuw nsw i64 %1 to i8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %1, -1
  %i.m = udiv i64 %i.l, 12
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = sub nuw nsw i64 64, %i.n                 ; 3 uses
  %i.p = shl i64 12, %i.o
  %i.q = icmp ugt i64 %i.p, 72057594037927935
  br i1 %i.q, label %bb.g, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #12
  unreachable

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i.i.i: ; preds = %bb.f
  %i.r = shl nuw nsw i64 1, %i.o
  %i.s = shl i64 128, %i.o
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i.i.i, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i
  %.0.pn.i19.i.i.i = phi i8 [ 12, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i.i.i ], [ %i.k, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i ]
  %.pn21.i17.i.i.i = phi i64 [ %i.r, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i.i.i ], [ 1, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i ] ; 4 uses
  %i.t = phi i64 [ %i.s, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i.i.i ], [ %i.j, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.thread.i.i.i ]
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #38 ; 11 uses
  %xtraiter = and i64 %.pn21.i17.i.i.i, 7         ; 3 uses
  %i.v = icmp samesign ult i64 %.pn21.i17.i.i.i, 8
  br i1 %i.v, label %.lr.ph.i.i.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.pn21.i17.i.i.i, 9223372036854775800
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.new
  %.08.i.i.i.i = phi i64 [ 0, %.new ], [ %i.at, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %i.w = shl nuw nsw i64 %.08.i.i.i.i, 7
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = shl i64 %.08.i.i.i.i, 7
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = shl i64 %.08.i.i.i.i, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = shl i64 %.08.i.i.i.i, 7
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = shl i64 %.08.i.i.i.i, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = shl i64 %.08.i.i.i.i, 7
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = shl i64 %.08.i.i.i.i, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = shl i64 %.08.i.i.i.i, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw nsw i64 %.08.i.i.i.i, 8         ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !245

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i.unr-lcssa, %bb.h
  %.08.i.i.i.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.08.i.i.i.i.epil = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.epil ], [ %.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.au = shl nuw nsw i64 %.08.i.i.i.i.epil, 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = add nuw nsw i64 %.08.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !410

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.epil, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i.unr-lcssa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  store i8 %.0.pn.i19.i.i.i, ptr %i.ax, align 2, !tbaa !248
  store ptr %i.u, ptr %i.b, align 8, !tbaa !217
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.pn21.i17.i.i.i, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !208
  %i.bb = and i64 %i.ba, -256
  %i.bc = or disjoint i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !208
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE7reserveEm.exit

bb.i:                                             ; preds = %bb.c
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE7reserveEm.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %1)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE7reserveEm.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.60, i32 noundef %i.a) #12
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE7reserveEm.exit: ; preds = %bb.i, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.i.i.i, %bb.d, %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.d = load ptr, ptr %0, align 8, !tbaa !205
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !203
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #37 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !205    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !203  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #32
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #32, !inline_history !411
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !412

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !205
  br label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit
  %i.t = phi ptr [ %.pr, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #34
  br label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !205
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.y, ptr %i.j, align 8, !tbaa !203
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %1
  store ptr %i.z, ptr %i.b, align 8, !tbaa !233
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !208  ; 2 uses
  %i.c = lshr i64 %i.b, 8                         ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.c) ; 11 uses
  %i.d = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32, !inline_history !301
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11maybeRehashEmb.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %i.c
  %i.e = and i64 %i.b, 255                        ; 4 uses
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 1, %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.i = load i8, ptr %i.h, align 1, !tbaa !34
  %i.j = and i8 %i.i, 15
  %i.k = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.l = shl i64 %i.k, %i.e
  %i.m = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.m, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.sroa.speculated, -1
  %i.o = udiv i64 %i.n, 12
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = sub nuw nsw i64 64, %i.p                 ; 2 uses
  %i.r = shl i64 12, %i.q
  %i.s = icmp ugt i64 %i.r, 72057594037927935
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = shl nuw nsw i64 1, %i.q
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.d, %bb.g
  %.pn21.i.i = phi i64 [ %i.t, %bb.g ], [ 1, %bb.d ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.g ], [ %.sroa.speculated, %bb.d ] ; 2 uses
  %i.u = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.l, %i.u
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11maybeRehashEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.k, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11maybeRehashEmb.exit

bb.i:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !217
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = and i8 %i.x, 15
  %i.z = zext nneg i8 %i.y to i64                 ; 2 uses
  %i.aa = shl i64 %i.z, %i.e                      ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.aa
  br i1 %.not10, label %bb.j, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11maybeRehashEmb.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = shl nuw i64 1, %i.e
  %i.ac = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ac, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ad = add i64 %i.aa, 7
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add i64 %i.ae, %i.aa
  %i.ag = icmp ugt i64 %.sroa.speculated, %i.af
  br i1 %i.ag, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.ah, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.n:                                             ; preds = %bb.j
  %i.ai = add i64 %.sroa.speculated, -1
  %i.aj = udiv i64 %i.ai, 12
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = sub nuw nsw i64 64, %i.ak               ; 2 uses
  %i.am = shl i64 12, %i.al
  %i.an = icmp ugt i64 %i.am, 72057594037927935
end_hunk_0
