Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7openvdb5v13_05tools8rayTraceINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEEvRKT_RKT0_RKNS1_10BaseShaderERNS1_10BaseCameraEmjb:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %i.d, ptr noundef nonnull align 8 dereferenceable(140) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 248
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.l, ptr %i.h, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 344 ; 2 uses
  store ptr %3, ptr %i.m, align 8, !tbaa !164
  invoke void @_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEE15setPixelSamplesEmj(ptr noundef nonnull align 8 dereferenceable(360) %9, i64 noundef %4, i32 noundef %5)
          to label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEC2ERKSL_RKNS1_10BaseShaderERNS1_10BaseCameraEmj.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i, label %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i: ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #17, !inline_history !508
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.n, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i ], [ %i.aw, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i ]
  call void @_ZN7openvdb5v13_05tools22LevelSetRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.c) #17
  br label %common.resume

_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEC2ERKSL_RKNS1_10BaseShaderERNS1_10BaseCameraEmj.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !164
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !120
  store i64 %i.x, ptr %8, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !123
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.z, align 8, !tbaa !124
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEC2ERKSL_RKNS1_10BaseShaderERNS1_10BaseCameraEmj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSS_RSU_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(360) %9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.g

bb.f:                                             ; preds = %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEC2ERKSL_RKNS1_10BaseShaderERNS1_10BaseCameraEmj.exit
  invoke void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(360) %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %.noexc, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.aa = load i8, ptr %9, align 8, !tbaa !161, !range !125, !noundef !126
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !162 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !101 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i10, label %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i9

_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i9: ; preds = %bb.j
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #17, !inline_history !2
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i10

_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i10: ; preds = %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i9, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !165 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i10
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !166
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i:            ; preds = %bb.k, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i10
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.ap, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !169
  %i.at = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i unwind label %bb.m, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC2ERKSJ_RNS1_10BaseCameraE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(496) %1, ptr noundef nonnull align 8 dereferenceable(496) %2) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC5ERKSJ_RNS1_10BaseCameraE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199, !noalias !515 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100, !alias.scope !517
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !129, !alias.scope !517
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !517
  store ptr null, ptr %3, align 8, !tbaa !202, !noalias !517
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !203, !noalias !517
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !517
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !517
  store ptr %0, ptr %i.b, align 8, !tbaa !131, !noalias !517
  %i.k = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !517
  store ptr null, ptr %i.i, align 8, !tbaa !206, !noalias !517
  %i.l = load ptr, ptr %3, align 8, !tbaa !202, !noalias !517 ; 3 uses
  %.not.i.i3.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i3.i.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i
  store ptr null, ptr %3, align 8, !tbaa !202, !noalias !517
  %i.m = load i8, ptr %i.h, align 8, !tbaa !203, !range !125, !noalias !517, !noundef !126
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = atomicrmw and ptr %i.l, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %5 = atomicrmw sub ptr %i.l, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !517
  store ptr null, ptr %i.i, align 8, !tbaa !206, !noalias !517
  %i.q = load ptr, ptr %3, align 8, !tbaa !202, !noalias !517 ; 3 uses
  %.not.i.i4.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i4.i.i.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %3, align 8, !tbaa !202, !noalias !517
  %i.r = load i8, ptr %i.h, align 8, !tbaa !203, !range !125, !noalias !517, !noundef !126
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw and ptr %i.q, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %6 = atomicrmw sub ptr %i.q, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i

common.resume:                                    ; preds = %bb.r, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i ], [ %.pn.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !517
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !517
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %0, align 8, !tbaa !100, !alias.scope !517
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.v, align 8, !alias.scope !517
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !207, !alias.scope !517
  %.06.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4, !alias.scope !517
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !207, !alias.scope !517
  %.06.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i.i, align 8, !alias.scope !517
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i, align 8, !tbaa !207, !alias.scope !517
  store ptr null, ptr %i.u, align 8, !tbaa !208, !alias.scope !517
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !alias.scope !517
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !129, !alias.scope !517 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.w, align 8, !tbaa !209, !alias.scope !517
  br label %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit

_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit: ; preds = %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.z, align 8, !tbaa !218
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.k unwind label %bb.n       ; 19 uses

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit
  store i8 0, ptr %i.ab, align 8, !tbaa !219
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !220
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 2 uses
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !220
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.ag, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i64 9223372034707292159, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !224
  store double %i.aq, ptr %i.ao, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !225
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !226
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ax = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.l unwind label %bb.o       ; 19 uses

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ax, align 8, !tbaa !219
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !220
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 2 uses
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !220
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.bb, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i64 9223372034707292159, ptr %i.bd, align 8
  %.sroa.6.0..sroa_idx.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i10, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i11, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i12, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i13, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i14 = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i14, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !223
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bj = load double, ptr %i.ap, align 8, !tbaa !224
  store double %i.bj, ptr %i.bi, align 8, !tbaa !224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !225
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !226
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x double> <double 1.000000e+00, double 3.000000e+00>, ptr %i.bo, align 8, !tbaa !163
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> <double 5.000000e-03, double 2.000000e-01>, ptr %i.bp, align 8, !tbaa !163
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x double> splat (double 3.000000e-01), ptr %4, align 16, !tbaa !163
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0.000000e+00, ptr %i.br, align 16, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !518
  invoke void @_ZNK7openvdb5v13_04math4Vec3IdE4unitEdRd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> splat (double f0x3FE6666666666666), ptr %i.bs, align 8, !tbaa !163
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> splat (double 1.000000e-01), ptr %i.bu, align 8, !tbaa !163
  store <2 x double> <double f0x3FE6666666666666, double 1.000000e-01>, ptr %i.bt, align 8, !tbaa !163
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double 1.500000e+00, ptr %i.bw, align 8, !tbaa !163
  store <2 x double> splat (double 1.500000e+00), ptr %i.bv, align 8, !tbaa !163
  ret void

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.by, %bb.o ]
  call void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bx, %bb.n ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #17
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !226    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !219, !range !125, !noundef !126
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !221  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #17, !inline_history !519
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 496) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC2ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC5ERKSL_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %0, ptr %i.a, align 8, !tbaa !131
  %i.h = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.f ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.f, align 8, !tbaa !206
  %i.i = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.j = load i8, ptr %i.e, align 8, !tbaa !203, !range !125, !noundef !126
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = atomicrmw and ptr %i.i, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %3 = atomicrmw sub ptr %i.i, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.f, align 8, !tbaa !206
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.o = load i8, ptr %i.e, align 8, !tbaa !203, !range !125, !noundef !126
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw and ptr %i.n, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.i:                                             ; preds = %bb.g
  %4 = atomicrmw sub ptr %i.n, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %bb.n, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !227
  store i64 %i.t, ptr %i.r, align 8, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218
  store ptr %i.y, ptr %i.w, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.j unwind label %bb.l       ; 19 uses

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226 ; 4 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !219
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !220
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !221 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !220
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.ah, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i64 9223372034707292159, ptr %i.aj, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !207
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !223
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !224
  store double %i.ar, ptr %i.ap, align 8, !tbaa !224
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !226
  %i.ax = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.k unwind label %bb.m       ; 19 uses

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !226 ; 4 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !219
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !220
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !221 ; 2 uses
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !220
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.be, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i64 9223372034707292159, ptr %i.bg, align 8
  %.sroa.6.0..sroa_idx.i.i.i18 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i18, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i19, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i20 = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i20, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i21, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i22, align 8, !tbaa !207
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !223
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bl, i64 88, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !224
  store double %i.bo, ptr %i.bm, align 8, !tbaa !224
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !225
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ax, ptr %i.bu, align 8, !tbaa !226
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bx = load <2 x double>, ptr %i.bw, align 8, !tbaa !163
  store <2 x double> %i.bx, ptr %i.bv, align 8, !tbaa !163
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ca = load <2 x double>, ptr %i.bz, align 8, !tbaa !163
  store <2 x double> %i.ca, ptr %i.by, align 8, !tbaa !163
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  ret void

bb.l:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.m ], [ %i.cj, %bb.l ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #17
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEE6renderEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %4 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  %5 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  store i64 %i.f, ptr %5, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.h, align 8, !tbaa !124
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 1, ptr %i.i, align 4, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.k, align 8, !tbaa !245
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE5printERSoi:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !329
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !207
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !6
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  %i.u = icmp eq i32 %2, 2
  br i1 %i.u, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.v = icmp samesign ugt i32 %2, 2
  br i1 %i.v, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink7 = phi i32 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 2, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !221  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(1232) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sink7)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setWorldRayERKSH_(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  call void @_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !290 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !291 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.k = load i32, ptr %i.d, align 8, !tbaa !298
  %i.l = sitofp i32 %i.k to double
  %i.m = load double, ptr %i.c, align 8, !tbaa !163 ; 2 uses
  %i.n = fsub double %i.l, %i.m
  %i.o = load double, ptr %i.i, align 8, !tbaa !163 ; 2 uses
  %i.p = fmul double %i.n, %i.o                   ; 3 uses
  %i.q = load i32, ptr %i.j, align 4, !tbaa !298
  %i.r = sitofp i32 %i.q to double
  %i.s = fsub double %i.r, %i.m
  %i.t = fmul double %i.o, %i.s                   ; 3 uses
  %i.u = fcmp ogt double %i.p, %i.t               ; 2 uses
  %.030.i.i.i = select i1 %i.u, double %i.t, double %i.p ; 2 uses
  %.0.i.i.i = select i1 %i.u, double %i.p, double %i.t ; 2 uses
  %i.v = fcmp ogt double %.030.i.i.i, %i.f
  %.05.i.i = select i1 %i.v, double %.030.i.i.i, double %i.f ; 3 uses
  %i.w = fcmp olt double %.0.i.i.i, %i.h
  %.0.i.i = select i1 %i.w, double %.0.i.i.i, double %i.h ; 3 uses
  %i.x = fcmp ule double %.05.i.i, %.0.i.i
  br i1 %i.x, label %bb.b, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setIndexRayERKSH_.exit

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298
  %i.aa = sitofp i32 %i.z to double
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !163 ; 2 uses
  %i.ad = fsub double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load double, ptr %i.ae, align 8, !tbaa !163 ; 2 uses
  %i.ag = fmul double %i.ad, %i.af                ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fsub double %i.aj, %i.ac
  %i.al = fmul double %i.af, %i.ak                ; 3 uses
  %i.am = fcmp ogt double %i.ag, %i.al            ; 2 uses
  %.030.1.i.i.i = select i1 %i.am, double %i.al, double %i.ag ; 2 uses
  %.0.1.i.i.i = select i1 %i.am, double %i.ag, double %i.al ; 2 uses
  %i.an = fcmp ogt double %.030.1.i.i.i, %.05.i.i
  %.16.i.i = select i1 %i.an, double %.030.1.i.i.i, double %.05.i.i ; 3 uses
  %i.ao = fcmp olt double %.0.1.i.i.i, %.0.i.i
  %i.ap = select i1 %i.ao, double %.0.1.i.i.i, double %.0.i.i ; 3 uses
  %i.aq = fcmp ule double %.16.i.i, %i.ap
  br i1 %i.aq, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setIndexRayERKSH_.exit

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i: ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !298
  %i.at = sitofp i32 %i.as to double
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = load double, ptr %i.au, align 8, !tbaa !163 ; 2 uses
  %i.aw = fsub double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !163 ; 2 uses
  %i.az = fmul double %i.aw, %i.ay                ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !298
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fsub double %i.bc, %i.av
  %i.be = fmul double %i.ay, %i.bd                ; 3 uses
  %i.bf = fcmp ogt double %i.az, %i.be            ; 2 uses
  %.030.2.i.i.i = select i1 %i.bf, double %i.be, double %i.az ; 2 uses
  %.0.2.i.i.i = select i1 %i.bf, double %i.az, double %i.be ; 2 uses
  %i.bg = fcmp ogt double %.030.2.i.i.i, %.16.i.i
  %.27.i.i = select i1 %i.bg, double %.030.2.i.i.i, double %.16.i.i ; 2 uses
  %i.bh = fcmp olt double %.0.2.i.i.i, %i.ap
  %i.bi = select i1 %i.bh, double %.0.2.i.i.i, double %i.ap ; 3 uses
  %i.bj = fcmp ule double %.27.i.i, %i.bi
  br i1 %i.bj, label %bb.c, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setIndexRayERKSH_.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i
  store double %.27.i.i, ptr %i.e, align 8, !tbaa !290
  store double %i.bi, ptr %i.g, align 8, !tbaa !291
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.bi, ptr %i.bk, align 8, !tbaa !224
  br label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setIndexRayERKSH_.exit

_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setIndexRayERKSH_.exit: ; preds = %bb.a, %bb.b, %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, %bb.c
  %.lcssa.i12.i4.i = phi i1 [ true, %bb.c ], [ false, %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i1 %.lcssa.i12.i4.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC2ERKSJ_RNS1_10BaseCameraE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(496) %1, ptr noundef nonnull align 8 dereferenceable(496) %2) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC5ERKSJ_RNS1_10BaseCameraE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333, !noalias !608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100, !alias.scope !610
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !167, !alias.scope !610
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !610
  store ptr null, ptr %3, align 8, !tbaa !202, !noalias !610
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !203, !noalias !610
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !610
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !610
  store ptr %0, ptr %i.b, align 8, !tbaa !169, !noalias !610
  %i.k = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !610
  store ptr null, ptr %i.i, align 8, !tbaa !336, !noalias !610
  %i.l = load ptr, ptr %3, align 8, !tbaa !202, !noalias !610 ; 3 uses
  %.not.i.i3.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i3.i.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i
  store ptr null, ptr %3, align 8, !tbaa !202, !noalias !610
  %i.m = load i8, ptr %i.h, align 8, !tbaa !203, !range !125, !noalias !610, !noundef !126
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = atomicrmw and ptr %i.l, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %5 = atomicrmw sub ptr %i.l, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !610
  store ptr null, ptr %i.i, align 8, !tbaa !336, !noalias !610
  %i.q = load ptr, ptr %3, align 8, !tbaa !202, !noalias !610 ; 3 uses
  %.not.i.i4.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i4.i.i.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %3, align 8, !tbaa !202, !noalias !610
  %i.r = load i8, ptr %i.h, align 8, !tbaa !203, !range !125, !noalias !610, !noundef !126
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw and ptr %i.q, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %6 = atomicrmw sub ptr %i.q, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i

common.resume:                                    ; preds = %bb.r, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i ], [ %.pn.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !610
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !610
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %0, align 8, !tbaa !100, !alias.scope !610
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.v, align 8, !alias.scope !610
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !207, !alias.scope !610
  %.06.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4, !alias.scope !610
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !207, !alias.scope !610
  %.06.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i.i, align 8, !alias.scope !610
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i, align 8, !tbaa !207, !alias.scope !610
  store ptr null, ptr %i.u, align 8, !tbaa !337, !alias.scope !610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !alias.scope !610
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !167, !alias.scope !610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.w, align 8, !tbaa !338, !alias.scope !610
  br label %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit

_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit: ; preds = %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.z, align 8, !tbaa !347
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.k unwind label %bb.n       ; 19 uses

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit
  store i8 0, ptr %i.ab, align 8, !tbaa !348
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !220
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !349 ; 2 uses
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !220
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.ag, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i64 9223372034707292159, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !350
  store double %i.aq, ptr %i.ao, align 8, !tbaa !350
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !225
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !351
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ax = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.l unwind label %bb.o       ; 19 uses

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ax, align 8, !tbaa !348
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !220
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !349 ; 2 uses
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !220
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.bb, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i64 9223372034707292159, ptr %i.bd, align 8
  %.sroa.6.0..sroa_idx.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i10, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i11, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i12, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i13, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i14 = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i14, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !223
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bj = load double, ptr %i.ap, align 8, !tbaa !350
  store double %i.bj, ptr %i.bi, align 8, !tbaa !350
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !225
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !351
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x double> <double 1.000000e+00, double 3.000000e+00>, ptr %i.bo, align 8, !tbaa !163
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> <double 5.000000e-03, double 2.000000e-01>, ptr %i.bp, align 8, !tbaa !163
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x double> splat (double 3.000000e-01), ptr %4, align 16, !tbaa !163
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0.000000e+00, ptr %i.br, align 16, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !611
  invoke void @_ZNK7openvdb5v13_04math4Vec3IdE4unitEdRd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> splat (double f0x3FE6666666666666), ptr %i.bs, align 8, !tbaa !163
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> splat (double 1.000000e-01), ptr %i.bu, align 8, !tbaa !163
  store <2 x double> <double f0x3FE6666666666666, double 1.000000e-01>, ptr %i.bt, align 8, !tbaa !163
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double 1.500000e+00, ptr %i.bw, align 8, !tbaa !163
  store <2 x double> splat (double 1.500000e+00), ptr %i.bv, align 8, !tbaa !163
  ret void

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE16getConstAccessorEv.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.by, %bb.o ]
  call void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bx, %bb.n ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #17
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !351    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !348, !range !125, !noundef !126
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !349  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #17, !inline_history !612
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 496) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC2ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC5ERKSL_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %0, ptr %i.a, align 8, !tbaa !169
  %i.h = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.f ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.f, align 8, !tbaa !336
  %i.i = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.j = load i8, ptr %i.e, align 8, !tbaa !203, !range !125, !noundef !126
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = atomicrmw and ptr %i.i, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %3 = atomicrmw sub ptr %i.i, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.f, align 8, !tbaa !336
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.o = load i8, ptr %i.e, align 8, !tbaa !203, !range !125, !noundef !126
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw and ptr %i.n, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.i:                                             ; preds = %bb.g
  %4 = atomicrmw sub ptr %i.n, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %bb.n, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !352
  store i64 %i.t, ptr %i.r, align 8, !tbaa !352
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !347
  store ptr %i.y, ptr %i.w, align 8, !tbaa !347
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.j unwind label %bb.l       ; 19 uses

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !351 ; 4 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !348
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !220
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !349 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !220
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.ah, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i64 9223372034707292159, ptr %i.aj, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i, align 8, !tbaa !207
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !223
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !350
  store double %i.ar, ptr %i.ap, align 8, !tbaa !350
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !351
  %i.ax = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #27
          to label %bb.k unwind label %bb.m       ; 19 uses

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !351 ; 4 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !348
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !220
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !349 ; 2 uses
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !220
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.be, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i64 9223372034707292159, ptr %i.bg, align 8
  %.sroa.6.0..sroa_idx.i.i.i18 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i18, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i19, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i20 = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i20, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i21, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i22, align 8, !tbaa !207
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !223
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bl, i64 88, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !350
  store double %i.bo, ptr %i.bm, align 8, !tbaa !350
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !225
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ax, ptr %i.bu, align 8, !tbaa !351
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bx = load <2 x double>, ptr %i.bw, align 8, !tbaa !163
  store <2 x double> %i.bx, ptr %i.bv, align 8, !tbaa !163
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ca = load <2 x double>, ptr %i.bz, align 8, !tbaa !163
  store <2 x double> %i.ca, ptr %i.by, align 8, !tbaa !163
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  ret void

bb.l:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.m ], [ %i.cj, %bb.l ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #17
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEE6renderEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %4 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  %5 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  store i64 %i.f, ptr %5, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.h, align 8, !tbaa !124
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 1, ptr %i.i, align 4, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.k, align 8, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 4, ptr %i.l, align 1, !tbaa !207
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %4)
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE7releaseEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2
  %.042 = phi i64 [ %.2.ph.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2 ], [ %i.d, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = and i64 %.042, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %0, i64 noundef %i.i, i1 noundef zeroext false)
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, %bb.a
  %.1.ph = phi i64 [ %.042, %bb.a ], [ %i.cd, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge ] ; 6 uses
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !363
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8 ; 5 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 63 to ptr)
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !131    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.critedge.thread, label %.lr.ph150

bb.b:                                             ; preds = %.lr.ph150
  %i.r = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !131
  %i.t = icmp eq ptr %i.n, %i.s
  br i1 %i.t, label %.critedge.thread, label %.lr.ph150, !llvm.loop !701

.lr.ph150:                                        ; preds = %.lr.ph, %bb.b
  %.02290149 = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.u = load ptr, ptr %.02290149, align 8, !tbaa !369 ; 5 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 63 to ptr)
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !701

.critedge:                                        ; preds = %.lr.ph150, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %.023.lcssa = phi ptr [ null, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.02290149, %.lr.ph150 ]
  %.022.lcssa = phi ptr [ %i.l, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %i.u, %.lr.ph150 ] ; 2 uses
  %i.w = icmp eq ptr %.022.lcssa, null
  br i1 %i.w, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.x = load atomic i64, ptr %i.c acquire, align 8 ; 3 uses
  %.not.i26 = icmp eq i64 %.1.ph, %i.x
  br i1 %.not.i26, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = xor i64 %i.x, %.1.ph
  %i.z = and i64 %i.y, %i.b
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %.1.ph, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.012.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ab = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.ab, 0
  %i.ac = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.f, label %bb.g, !llvm.loop !8

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.b                     ; 2 uses
  %i.af = or i64 %i.ae, 1
  %i.ag = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true) ; 2 uses
  %i.ah = xor i64 %i.ag, 63
  %i.ai = lshr exact i64 -9223372036854775808, %i.ag
  %i.aj = and i64 %i.ai, -2
  %i.ak = sub i64 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8
  %i.aq = icmp eq ptr %i.ap, inttoptr (i64 3 to ptr)
  br i1 %i.aq, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph, %.critedge
  %.02373 = phi ptr [ %.023.lcssa, %.critedge ], [ null, %.lr.ph ], [ %.02290149, %bb.b ] ; 2 uses
  %.02267 = phi ptr [ %.022.lcssa, %.critedge ], [ %i.l, %.lr.ph ], [ %i.u, %bb.b ] ; 4 uses
  %i.ar = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  store i8 1, ptr %i.f, align 8, !tbaa !203
  %i.at = load ptr, ptr %2, align 8, !tbaa !202   ; 9 uses
  %i.au = load atomic i64, ptr %i.at monotonic, align 8 ; 3 uses
  %i.av = and i64 %i.au, -4
  %i.aw = icmp eq i64 %i.av, 4
  %i.ax = and i64 %i.au, 2
  %.not13.i = icmp eq i64 %i.ax, 0
  %or.cond14.i = or i1 %i.aw, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.bd, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = or i64 %.0815.i, 3
  %i.az = cmpxchg ptr %i.at, i64 %.0815.i, i64 %i.ay seq_cst seq_cst, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bb = load atomic i64, ptr %i.at monotonic, align 8
  %i.bc = and i64 %i.bb, -4
  %.not217.i = icmp eq i64 %i.bc, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.bd = extractvalue { i64, i1 } %i.az, 0       ; 3 uses
  %i.be = and i64 %i.bd, -4
  %i.bf = icmp eq i64 %i.be, 4
  %i.bg = and i64 %i.bd, 2
  %.not.i39 = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bf, %.not.i39
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.bh = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph19.i
  %i.bi = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.bj, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bj = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !702

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.prol ]
  %i.bk = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.bk, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bl = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.bm = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.i
  %i.bn = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.j:                                             ; preds = %.lr.ph19.i
  %i.bo = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.j, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.bn, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.j ]
  %i.bp = load atomic i64, ptr %i.at monotonic, align 8
  %i.bq = and i64 %i.bp, -4
  %.not2.i = icmp eq i64 %i.bq, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !11

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %3 = atomicrmw sub ptr %i.at, i64 6 seq_cst, align 8 ; 0 uses
  br label %.loopexit

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.h
  %4 = atomicrmw sub ptr %i.at, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, %._crit_edge.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.cb, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.br = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, %bb.n
  %i.bs = load atomic i64, ptr %i.at monotonic, align 8 ; 3 uses
  %i.bt = and i64 %i.bs, -3
  %.not.i.i38 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i38, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.bu = cmpxchg ptr %i.at, i64 %i.bs, i64 1 seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, label %.lr.ph.i.i.preheader.i.i

bb.l:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.bw = and i64 %i.bs, 2
  %.not1.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not1.i.i, label %bb.m, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bx = atomicrmw or ptr %i.at, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.m, %bb.l
  br i1 %i.br, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.n

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.by = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.by, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.k
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.k ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.bz, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bz = add nsw i32 %.01.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.ca = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.cb = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, !llvm.loop !12

bb.n:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.cc = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !12

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.k
  %i.cd = load atomic i64, ptr %i.c acquire, align 8 ; 4 uses
  %.not.i28 = icmp eq i64 %.1.ph, %i.cd
  br i1 %.not.i28, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit, label %bb.o

bb.o:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ce = xor i64 %i.cd, %.1.ph
  %i.cf = and i64 %i.ce, %i.b
  %.not.i.i29 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i29, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = add i64 %.1.ph, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.012.i.i30 = phi i64 [ %i.cg, %bb.p ], [ %i.ci, %bb.q ] ; 2 uses
  %i.ch = and i64 %.012.i.i30, %i.b
  %.not13.i.i31 = icmp eq i64 %i.ch, 0
  %i.ci = shl i64 %.012.i.i30, 1                  ; 2 uses
  br i1 %.not13.i.i31, label %bb.q, label %bb.r, !llvm.loop !8

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %i.ci, -1
  %i.ck = and i64 %i.cj, %i.b                     ; 2 uses
  %i.cl = or i64 %i.ck, 1
  %i.cm = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true) ; 2 uses
  %i.cn = xor i64 %i.cm, 63
  %i.co = lshr exact i64 -9223372036854775808, %i.cm
  %i.cp = and i64 %i.co, -2
  %i.cq = sub i64 %i.ck, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cn
  %i.cs = load atomic ptr, ptr %i.cr acquire, align 8
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load atomic ptr, ptr %i.cu acquire, align 8
  %i.cw = icmp eq ptr %i.cv, inttoptr (i64 3 to ptr)
  br i1 %i.cw, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge: ; preds = %bb.r, %bb.o
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer

.loopexit:                                        ; preds = %.critedge.thread, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread
  %i.cx = icmp eq ptr %.02373, null
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !363
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %.02267, align 8, !tbaa !369
  store atomic ptr %i.da, ptr %i.cz monotonic, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0

bb.t:                                             ; preds = %.loopexit
  %i.db = load ptr, ptr %.02267, align 8, !tbaa !369
  store ptr %i.db, ptr %.02373, align 8, !tbaa !369
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2: ; preds = %bb.r, %bb.g
  %.2.ph.jt2 = phi i64 [ %i.x, %bb.g ], [ %i.cd, %bb.r ]
  %i.dc = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.not.i34.jt2 = icmp eq ptr %i.dc, null
  br i1 %.not.i34.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2, label %bb.u

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0: ; preds = %bb.s, %bb.t
  %5 = atomicrmw sub ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.not.i34.jt0 = icmp eq ptr %i.dd, null
  br i1 %.not.i34.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0, label %bb.v

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1: ; preds = %bb.c, %bb.g, %bb.d
  %i.de = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.not.i34.jt1 = icmp eq ptr %i.de, null
  br i1 %.not.i34.jt1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1, label %bb.w

bb.u:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.df = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.x, label %bb.aa

bb.v:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.dh = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.y, label %bb.ab

bb.w:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.dj = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.z, label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.dl = atomicrmw and ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2

bb.y:                                             ; preds = %bb.v
  %i.dm = atomicrmw and ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0

bb.z:                                             ; preds = %bb.w
  %i.dn = atomicrmw and ptr %i.de, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1

bb.aa:                                            ; preds = %bb.u
  %6 = atomicrmw sub ptr %i.dc, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2

bb.ab:                                            ; preds = %bb.v
  %7 = atomicrmw sub ptr %i.dd, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0

bb.ac:                                            ; preds = %bb.w
  %8 = atomicrmw sub ptr %i.de, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2: ; preds = %bb.aa, %bb.x, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.a

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0: ; preds = %bb.ab, %bb.y, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.do = getelementptr inbounds nuw i8, ptr %.02267, i64 8 ; 4 uses
  br label %.preheader.i.i.outer

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1: ; preds = %bb.ac, %bb.z, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit64

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.ag
  %i.dp = load atomic i64, ptr %i.do monotonic, align 8 ; 3 uses
  %i.dq = and i64 %i.dp, -3
  %.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.i.i
  %i.dr = cmpxchg ptr %i.do, i64 %i.dp, i64 1 seq_cst seq_cst, align 8
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37, label %.lr.ph.i.i.preheader.i.i.i

bb.ae:                                            ; preds = %.preheader.i.i
  %i.dt = and i64 %i.dp, 2
  %.not1.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not1.i.i.i, label %bb.af, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.du = atomicrmw or ptr %i.do, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.af, %bb.ae
  br i1 %i.dz, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i, label %bb.ag

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i
  %i.dv = icmp sgt i32 %.sroa.0.0.i.i.i.ph, 0
  br i1 %i.dv, label %.lr.ph.i.i.preheader.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i, %bb.ad
  %.sroa.0.1811.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i ], [ 1, %bb.ad ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.1811.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %i.dw = add nsw i32 %.01.i.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.dx = icmp samesign ugt i32 %.01.i.i.i.i.i, 1
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i
  %.sroa.0.1810.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i ], [ %.sroa.0.1811.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.dy = shl nsw i32 %.sroa.0.1810.i.i.i, 1
  br label %.preheader.i.i.outer, !llvm.loop !12

.preheader.i.i.outer:                             ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0
  %.sroa.0.0.i.i.i.ph = phi i32 [ %i.dy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ 1, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0 ] ; 4 uses
  %i.dz = icmp slt i32 %.sroa.0.0.i.i.i.ph, 17
  br label %.preheader.i.i

bb.ag:                                            ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i
  %i.ea = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %.preheader.i.i, !llvm.loop !12

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37: ; preds = %bb.ad
  %i.eb = atomicrmw and ptr %i.do, i64 -4 seq_cst, align 8 ; 0 uses
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.02267)
  br label %.loopexit64

.loopexit64:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37
  %.3 = phi i1 [ true, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37 ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !203
  %i.b = or i64 %2, 1
  %i.c = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 2 uses
  %i.d = xor i64 %i.c, 63
  %i.e = lshr exact i64 -9223372036854775808, %i.c
  %i.f = and i64 %i.e, -2
  %i.g = sub i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !363
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %i.o = icmp eq ptr %i.n, inttoptr (i64 3 to ptr)
  %.pre10 = load ptr, ptr %i.l, align 8, !tbaa !363 ; 5 uses
  br i1 %i.o, label %bb.b, label %.noexc.thread

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i64, ptr %.pre10 monotonic, align 8 ; 2 uses
  %i.q = and i64 %i.p, -3
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %.noexc.thread

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.b
  %i.r = cmpxchg ptr %.pre10, i64 %i.p, i64 1 seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !363 ; 3 uses
  br i1 %i.s, label %bb.c, label %.noexc.thread

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i
  store ptr %.pre10, ptr %0, align 8, !tbaa !202
  store i8 1, ptr %i.a, align 8, !tbaa !203
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  %i.v = icmp eq ptr %i.u, inttoptr (i64 3 to ptr)
  br i1 %i.v, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %1, ptr noundef nonnull %.pre, i64 noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit unwind label %bb.n, !inline_history !703

.noexc.thread:                                    ; preds = %bb.b, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.a
  %i.w = phi ptr [ %.pre10, %bb.b ], [ %.pre, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i ], [ %.pre10, %bb.a ] ; 7 uses
  %i.x = zext i1 %3 to i8
  store i8 %i.x, ptr %i.a, align 8, !tbaa !203
  store ptr %i.w, ptr %0, align 8, !tbaa !202
  br i1 %3, label %.preheader.i.outer, label %.preheader9.i.outer

.preheader.i.outer:                               ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.ai, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %.noexc.thread ] ; 4 uses
  %i.y = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.h
  %i.z = load atomic i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.aa = and i64 %i.z, -3
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.ab = cmpxchg ptr %i.w, i64 %i.z, i64 1 seq_cst seq_cst, align 8
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit, label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %.preheader.i
  %i.ad = and i64 %i.z, 2
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.g, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = atomicrmw or ptr %i.w, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.g, %bb.f
  br i1 %i.y, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.h

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.af = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.af, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.e
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.e ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ag = add nsw i32 %.01.i.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ah = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %.preheader.i.outer, !llvm.loop !12

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.aj = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %.preheader.i, !llvm.loop !12

.preheader9.i:                                    ; preds = %.preheader9.i.outer, %bb.m
  %i.ak = load atomic i64, ptr %i.w monotonic, align 8
  %i.al = and i64 %i.ak, 3
  %.not.i4.i = icmp eq i64 %i.al, 0
  br i1 %.not.i4.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader9.i
  %i.am = atomicrmw add ptr %i.w, i64 4 seq_cst, align 8
  %i.an = and i64 %i.am, 1
  %.not5.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not5.not.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader9.i
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp sgt i32 %.sroa.0.0.i3.i.ph, 0
  br i1 %i.ao, label %.lr.ph.i.i.i7.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.l
  %xtraiter = and i32 %.sroa.0.0.i3.i.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i7.i.prol.loopexit, label %.lr.ph.i.i.i7.i.prol

.lr.ph.i.i.i7.i.prol:                             ; preds = %.lr.ph.i.i.i7.i.preheader, %.lr.ph.i.i.i7.i.prol
  %.01.i.i.i8.i.prol = phi i32 [ %i.ap, %.lr.ph.i.i.i7.i.prol ], [ %.sroa.0.0.i3.i.ph, %.lr.ph.i.i.i7.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i7.i.prol ], [ 0, %.lr.ph.i.i.i7.i.preheader ]
  %i.ap = add nsw i32 %.01.i.i.i8.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i7.i.prol.loopexit, label %.lr.ph.i.i.i7.i.prol, !llvm.loop !704

.lr.ph.i.i.i7.i.prol.loopexit:                    ; preds = %.lr.ph.i.i.i7.i.prol, %.lr.ph.i.i.i7.i.preheader
  %.01.i.i.i8.i.unr = phi i32 [ %.sroa.0.0.i3.i.ph, %.lr.ph.i.i.i7.i.preheader ], [ %i.ap, %.lr.ph.i.i.i7.i.prol ]
  %i.aq = icmp ult i32 %.sroa.0.0.i3.i.ph, 8
  br i1 %i.aq, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i, label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i.prol.loopexit, %.lr.ph.i.i.i7.i
  %.01.i.i.i8.i = phi i32 [ %i.ar, %.lr.ph.i.i.i7.i ], [ %.01.i.i.i8.i.unr, %.lr.ph.i.i.i7.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ar = add nsw i32 %.01.i.i.i8.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.as = icmp sgt i32 %.01.i.i.i8.i, 8
  br i1 %i.as, label %.lr.ph.i.i.i7.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i:  ; preds = %.lr.ph.i.i.i7.i.prol.loopexit, %.lr.ph.i.i.i7.i, %bb.l
  %i.at = shl i32 %.sroa.0.0.i3.i.ph, 1
  br label %.preheader9.i.outer, !llvm.loop !13

.preheader9.i.outer:                              ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i
  %.sroa.0.0.i3.i.ph = phi i32 [ %i.at, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i ], [ 1, %.noexc.thread ] ; 7 uses
  %i.au = icmp slt i32 %.sroa.0.0.i3.i.ph, 17
  br label %.preheader9.i

bb.m:                                             ; preds = %bb.k
  %i.av = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %.preheader9.i, !llvm.loop !13

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit: ; preds = %bb.i, %bb.e, %bb.c, %bb.d
  ret void

bb.n:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %0, align 8, !tbaa !202   ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !202
  %i.ay = load i8, ptr %i.a, align 8, !tbaa !203, !range !125, !noundef !126
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = atomicrmw and ptr %i.ax, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %5 = atomicrmw sub ptr %i.ax, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit: ; preds = %bb.n, %bb.p, %bb.q
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store atomic ptr null, ptr %i.a release, align 8
  %i.b = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.c = lshr i64 9223372036854775807, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = and i64 %i.c, %2
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 noundef %i.d, i1 noundef zeroext false)
  %i.e = lshr i64 -2, %i.b
  %i.f = or i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !363
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 63 to ptr)
  br i1 %i.k, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.f
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !363
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 63 to ptr)
  br i1 %i.p, label %.lr.ph.backedge, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.02544 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.02544.be, %.lr.ph.backedge ] ; 3 uses
  %.02743 = phi ptr [ %i.j, %.lr.ph.lr.ph ], [ %.02743.be, %.lr.ph.backedge ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02743, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.f, %i.s
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %bb.b, label %bb.n

bb.b:                                             ; preds = %.lr.ph
  %i.v = load i8, ptr %i.l, align 8, !tbaa !203, !range !125, !noundef !126
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.l, align 8, !tbaa !203
  %i.x = load ptr, ptr %3, align 8, !tbaa !202    ; 9 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.z = and i64 %i.y, -4
  %i.aa = icmp eq i64 %i.z, 4
  %i.ab = and i64 %i.y, 2
  %.not13.i = icmp eq i64 %i.ab, 0
  %or.cond14.i = or i1 %i.aa, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.ah, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ac = or i64 %.0815.i, 3
  %i.ad = cmpxchg ptr %i.x, i64 %.0815.i, i64 %i.ac seq_cst seq_cst, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.af = load atomic i64, ptr %i.x monotonic, align 8
  %i.ag = and i64 %i.af, -4
  %.not217.i = icmp eq i64 %i.ag, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.ah = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ai = and i64 %i.ah, -4
  %i.aj = icmp eq i64 %i.ai, 4
  %i.ak = and i64 %i.ah, 2
  %.not.i32 = icmp eq i64 %i.ak, 0
  %or.cond.i = or i1 %i.aj, %.not.i32
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.al = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i
  %i.am = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.an, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.an = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !705

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %i.ao = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.ao, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.ap = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.aq = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d
  %i.ar = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.e:                                             ; preds = %.lr.ph19.i
  %i.as = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.e, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ar, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.e ]
  %i.at = load atomic i64, ptr %i.x monotonic, align 8
  %i.au = and i64 %i.at, -4
  %.not2.i = icmp eq i64 %i.au, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !11

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %4 = atomicrmw sub ptr %i.x, i64 6 seq_cst, align 8 ; 0 uses
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.c
  %5 = atomicrmw sub ptr %i.x, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, %._crit_edge.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.bf, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.av = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, %bb.i
  %i.aw = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.ax = and i64 %i.aw, -3
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ay = cmpxchg ptr %i.x, i64 %i.aw, i64 1 seq_cst seq_cst, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.loopexit, label %.lr.ph.i.i.preheader.i.i

bb.g:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ba = and i64 %i.aw, 2
  %.not1.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not1.i.i, label %bb.h, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bb = atomicrmw or ptr %i.x, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.h, %bb.g
  br i1 %i.av, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bc = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.bc, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.f
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.f ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bd = add nsw i32 %.01.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.be = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.bf = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, !llvm.loop !12

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bg = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !12

bb.j:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, %bb.b
  %i.bh = load ptr, ptr %.02743, align 8, !tbaa !369 ; 3 uses
  %i.bi = icmp eq ptr %.02544, null
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !363
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store atomic ptr %i.bh, ptr %i.bk monotonic, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.bh, ptr %.02544, align 8, !tbaa !369
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = load atomic ptr, ptr %i.a monotonic, align 8
  store ptr %i.bl, ptr %.02743, align 8, !tbaa !369
  store atomic ptr %.02743, ptr %i.a monotonic, align 8
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %.02743, align 8, !tbaa !369
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.m, %bb.n
  %.229 = phi ptr [ %i.bm, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.02743, %bb.n ], [ %.02544, %bb.m ]
  %i.bn = icmp ugt ptr %.229, inttoptr (i64 63 to ptr)
  br i1 %i.bn, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %.loopexit
  %.02544.be = phi ptr [ %.2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %.loopexit ]
  %.02743.be = phi ptr [ %.229, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ %i.o, %.loopexit ]
  br label %.lr.ph, !llvm.loop !706

._crit_edge:                                      ; preds = %.loopexit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.a
  %i.bo = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %.not.i30 = icmp eq ptr %i.bo, null
  br i1 %.not.i30, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !203, !range !125, !noundef !126
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = atomicrmw and ptr %i.bo, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

bb.q:                                             ; preds = %bb.o
  %6 = atomicrmw sub ptr %i.bo, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31: ; preds = %._crit_edge, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #17

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, -4
  %i.c = icmp eq i64 %i.b, 4
  %i.d = and i64 %i.a, 2
  %.not13 = icmp eq i64 %i.d, 0
  %or.cond14 = or i1 %i.c, %.not13
  br i1 %or.cond14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0815 = phi i64 [ %i.j, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = or i64 %.0815, 3
  %i.f = cmpxchg ptr %0, i64 %.0815, i64 %i.e seq_cst seq_cst, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %.preheader, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

.preheader:                                       ; preds = %.lr.ph
  %i.h = load atomic i64, ptr %0 monotonic, align 8
  %i.i = and i64 %i.h, -4
  %.not217 = icmp eq i64 %i.i, 4
  br i1 %.not217, label %._crit_edge20, label %.lr.ph19

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.j = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  %i.k = and i64 %i.j, -4
  %i.l = icmp eq i64 %i.k, 4
  %i.m = and i64 %i.j, 2
  %.not = icmp eq i64 %i.m, 0
  %or.cond = or i1 %i.l, %.not
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !9

.lr.ph19:                                         ; preds = %.preheader, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit
  %.sroa.0.018 = phi i32 [ %.sroa.0.1, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit ], [ 1, %.preheader ] ; 8 uses
  %i.n = icmp slt i32 %.sroa.0.018, 17
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph19
  %i.o = icmp sgt i32 %.sroa.0.018, 0
  br i1 %i.o, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i32 %.sroa.0.018, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.p, %.lr.ph.i.i.prol ], [ %.sroa.0.018, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = add nsw i32 %.01.i.i.prol, -1            ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !707

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.018, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i32 %.sroa.0.018, 8
  br i1 %i.q, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.r = add nsw i32 %.01.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.s = icmp sgt i32 %.01.i.i, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.t = shl i32 %.sroa.0.018, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

bb.c:                                             ; preds = %.lr.ph19
  %i.u = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit:   ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, %bb.c
  %.sroa.0.1 = phi i32 [ %i.t, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i ], [ %.sroa.0.018, %bb.c ]
  %i.v = load atomic i64, ptr %0 monotonic, align 8
  %i.w = and i64 %i.v, -4
  %.not2 = icmp eq i64 %i.w, 4
  br i1 %.not2, label %._crit_edge20, label %.lr.ph19, !llvm.loop !11

._crit_edge20:                                    ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit, %.preheader
  %1 = atomicrmw sub ptr %0, i64 6 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %2 = atomicrmw sub ptr %0, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, %._crit_edge
  %.sroa.0.0.i.ph = phi i32 [ %i.ah, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ 1, %._crit_edge ] ; 4 uses
  %i.x = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.g
  %i.y = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.z = and i64 %i.y, -3
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.aa = cmpxchg ptr %0, i64 %i.y, i64 1 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit, label %.lr.ph.i.i.preheader.i

bb.e:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.ac = and i64 %i.y, 2
  %.not1.i = icmp eq i64 %i.ac, 0
  br i1 %.not1.i, label %bb.f, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = atomicrmw or ptr %0, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.f, %bb.e
  br i1 %i.x, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, label %bb.g

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ae = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.ae, label %.lr.ph.i.i.preheader.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, %bb.d
  %.sroa.0.1811.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ 1, %bb.d ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01.i.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.af = add nsw i32 %.01.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ag = icmp samesign ugt i32 %.01.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i
  %.sroa.0.1810.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.i ]
  %i.ah = shl nsw i32 %.sroa.0.1810.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !12

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ai = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !12

_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit:     ; preds = %bb.d, %._crit_edge20
  %or.cond12 = phi i1 [ true, %._crit_edge20 ], [ false, %bb.d ]
  ret i1 %or.cond12
}

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %0, ptr %i.a, align 8, !tbaa !131
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.c, !inline_history !132 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26, !inline_history !132
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !209
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 20 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not52 = icmp eq ptr %3, null
  %i.i = zext i1 %4 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.080 = phi i64 [ %.4.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %i.d, %.preheader ] ; 5 uses
  %.044 = phi ptr [ %.3.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %6, %.preheader ] ; 4 uses
  %.039 = phi i64 [ %.241.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !363
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !131
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !369 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !708

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp, !inline_history !709

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = load ptr, ptr %7, align 8, !tbaa !202    ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.av

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %.critedge, label %.lr.ph, !llvm.loop !710

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit, %bb.g
  store i8 1, ptr %i.f, align 8, !tbaa !203
  %i.z = load ptr, ptr %7, align 8, !tbaa !202
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !363
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59

.lr.ph.i57:                                       ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !131
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !131
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !369 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !708

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i56 = phi ptr [ %i.ad, %bb.h ], [ %.07.i58, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  %i.am = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.g, !llvm.loop !710

bb.k:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %bb.l, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %7, align 8, !tbaa !202
  %i.ap = atomicrmw add ptr %i.ao, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !203
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.g, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit
  %i.aq = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.aq
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ar = xor i64 %i.aq, %.080
  %i.as = and i64 %i.ar, %i.b
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add i64 %.080, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.012.i.i = phi i64 [ %i.at, %bb.n ], [ %i.av, %bb.o ] ; 2 uses
  %i.au = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.au, 0
  %i.av = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.o, label %bb.p, !llvm.loop !8

bb.p:                                             ; preds = %bb.o
  %i.aw = add i64 %i.av, -1
  %i.ax = and i64 %i.aw, %i.b                     ; 2 uses
  %i.ay = or i64 %i.ax, 1
  %i.az = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true) ; 2 uses
  %i.ba = xor i64 %i.az, 63
  %i.bb = lshr exact i64 -9223372036854775808, %i.az
  %i.bc = and i64 %i.bb, -2
  %i.bd = sub i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ba
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bj = icmp eq ptr %i.bi, inttoptr (i64 3 to ptr)
  br i1 %i.bj, label %bb.q, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.q:                                             ; preds = %bb.m, %bb.p, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !363
  %i.bl = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bm = add i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bo = load atomic ptr, ptr %i.bn monotonic, align 8
  store ptr %i.bo, ptr %.145, align 8, !tbaa !369
  store atomic ptr %.145, ptr %i.bn monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bm, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %.5.ph, 1
  %i.bq = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63                       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.br ; 2 uses
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8
  %.not12.i = icmp eq ptr %i.bt, null
  br i1 %.not12.i, label %bb.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = cmpxchg ptr %i.bs, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bv = extractvalue { ptr, i1 } %i.bu, 1
  %spec.select.i = select i1 %i.bv, i64 %i.br, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.s, %bb.r, %bb.q, %bb.k, %bb.l, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.l ], [ null, %bb.s ], [ %.145, %bb.k ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.q ], [ null, %bb.r ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.l ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.l ], [ %spec.select.i, %bb.s ], [ %.039, %bb.k ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.l ], [ %.145, %bb.s ], [ %.0.lcssa.i56, %bb.k ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.q ], [ %.145, %bb.r ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.t

bb.t:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bx = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = and i64 %i.bx, -3
  %.not.i.i66 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bz = and i64 %i.bx, 3
  %.not.i7.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i7.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.cb = and i64 %i.ca, 1
  %.not5.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %bb.w
  %8 = atomicrmw sub ptr %i.bw, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.y

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.u
  %i.cc = cmpxchg ptr %i.bw, i64 %i.bx, i64 1 seq_cst seq_cst, align 8
  %i.cd = extractvalue { i64, i1 } %i.cc, 1
  br i1 %i.cd, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.u, %bb.v, %bb.x
  call void @llvm.x86.sse2.pause()
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.y
  %.sroa.0.0 = phi i32 [ 2, %bb.y ], [ %i.cr, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.ce = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = and i64 %i.ce, -3
  %.not.i.i70 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cg = and i64 %i.ce, 3
  %.not.i7.i67 = icmp eq i64 %i.cg, 0
  br i1 %.not.i7.i67, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ch = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.ci = and i64 %i.ch, 1
  %.not5.not.i.i68 = icmp eq i64 %i.ci, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %9 = atomicrmw sub ptr %i.bw, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ae

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.aa
  %i.cj = cmpxchg ptr %i.bw, i64 %i.ce, i64 1 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ae

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cl = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.cm, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cm = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !711

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %i.cn = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cn, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.co, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.co = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cp = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cr = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !712

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !202   ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = atomicrmw and ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %10 = atomicrmw sub ptr %i.cs, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cw = call noundef i32 @sched_yield() #17     ; 0 uses
  %i.cx = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.w, %bb.ac, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !202
  store i8 %i.i, ptr %i.j, align 8, !tbaa !203
  %i.cy = load ptr, ptr %7, align 8, !tbaa !202   ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.cy, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.cz = load ptr, ptr %7, align 8, !tbaa !202   ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.cz, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.ak

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.p, %bb.ai
  %.4.jt2 = phi i64 [ %i.cx, %bb.ai ], [ %i.aq, %bb.p ]
  %.3.jt2 = phi ptr [ %.246, %bb.ai ], [ %.145, %bb.p ]
  %.241.jt2 = phi i64 [ %.140, %bb.ai ], [ %.039, %bb.p ]
  %i.da = load ptr, ptr %7, align 8, !tbaa !202   ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.da, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.al

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.db = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.dd = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.df = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.dh = atomicrmw and ptr %i.cy, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.an:                                            ; preds = %bb.ak
  %i.di = atomicrmw and ptr %i.cz, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ao:                                            ; preds = %bb.al
  %i.dj = atomicrmw and ptr %i.da, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ap:                                            ; preds = %bb.aj
  %11 = atomicrmw sub ptr %i.cy, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.aq:                                            ; preds = %bb.ak
  %12 = atomicrmw sub ptr %i.cz, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ar:                                            ; preds = %bb.al
  %13 = atomicrmw sub ptr %i.da, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dk, align 8, !tbaa !206
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dl, align 8, !tbaa !714
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ar, %bb.ao, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit92
  %i.dm = icmp ugt i64 %.140, 7
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dn = shl nuw i64 1, %.140
  %i.do = shl i64 16, %.140
  %i.dp = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.do)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.at
  %unroll_iter = and i64 %i.dn, -4
  br label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.phi, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dr, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ], [ %i.ei, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.dq monotonic, align 8
  br label %common.resume

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i: ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ed, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.ds, align 8, !tbaa !371
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dt, align 8, !tbaa !373
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 0, ptr %i.dv, align 8, !tbaa !371
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.dw, align 8, !tbaa !373
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 0, ptr %i.dy, align 8, !tbaa !371
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dz, align 8, !tbaa !373
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store i64 0, ptr %i.eb, align 8, !tbaa !371
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !373
  %i.ed = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !713

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dp, ptr %i.ee release, align 8
  %i.ef = shl i64 2, %.140
  %i.eg = add i64 %i.ef, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.au:                                            ; preds = %bb.as
  %i.eh = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.au
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i10.i:                                   ; preds = %bb.au, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.eo, %.lr.ph.i.i10.i ], [ 0, %bb.au ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !371
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ek, align 8, !tbaa !373
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.06.i.i11.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 0, ptr %i.em, align 8, !tbaa !371
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.en, align 8, !tbaa !373
  %i.eo = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eo, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !713

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.eh, ptr %i.ep release, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store atomic ptr %i.er, ptr %i.eq release, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  store atomic ptr %i.et, ptr %i.es release, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 224
  store atomic ptr %i.ev, ptr %i.eu release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 480
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 992
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 2016
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.eg, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.f
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.fc = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.ax:                                            ; preds = %bb.av
  %14 = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %bb.f, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %common.resume

bb.ay:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 32) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !371
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !131
  store ptr %i.d, ptr %i.c, align 8, !tbaa !716
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !717
  ret ptr %i.a
}

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %0, ptr %i.a, align 8, !tbaa !169
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit unwind label %bb.d ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !169
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2
  %.042 = phi i64 [ %.2.ph.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2 ], [ %i.d, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = and i64 %.042, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %0, i64 noundef %i.i, i1 noundef zeroext false)
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, %bb.a
  %.1.ph = phi i64 [ %.042, %bb.a ], [ %i.cd, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge ] ; 6 uses
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !376
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8 ; 5 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 63 to ptr)
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.critedge.thread, label %.lr.ph150

bb.b:                                             ; preds = %.lr.ph150
  %i.r = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !169
  %i.t = icmp eq ptr %i.n, %i.s
  br i1 %i.t, label %.critedge.thread, label %.lr.ph150, !llvm.loop !718

.lr.ph150:                                        ; preds = %.lr.ph, %bb.b
  %.02290149 = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.u = load ptr, ptr %.02290149, align 8, !tbaa !369 ; 5 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 63 to ptr)
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !718

.critedge:                                        ; preds = %.lr.ph150, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %.023.lcssa = phi ptr [ null, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.02290149, %.lr.ph150 ]
  %.022.lcssa = phi ptr [ %i.l, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %i.u, %.lr.ph150 ] ; 2 uses
  %i.w = icmp eq ptr %.022.lcssa, null
  br i1 %i.w, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.x = load atomic i64, ptr %i.c acquire, align 8 ; 3 uses
  %.not.i26 = icmp eq i64 %.1.ph, %i.x
  br i1 %.not.i26, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = xor i64 %i.x, %.1.ph
  %i.z = and i64 %i.y, %i.b
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %.1.ph, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.012.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ab = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.ab, 0
  %i.ac = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.f, label %bb.g, !llvm.loop !14

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.b                     ; 2 uses
  %i.af = or i64 %i.ae, 1
  %i.ag = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true) ; 2 uses
  %i.ah = xor i64 %i.ag, 63
  %i.ai = lshr exact i64 -9223372036854775808, %i.ag
  %i.aj = and i64 %i.ai, -2
  %i.ak = sub i64 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8
  %i.aq = icmp eq ptr %i.ap, inttoptr (i64 3 to ptr)
  br i1 %i.aq, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph, %.critedge
  %.02373 = phi ptr [ %.023.lcssa, %.critedge ], [ null, %.lr.ph ], [ %.02290149, %bb.b ] ; 2 uses
  %.02267 = phi ptr [ %.022.lcssa, %.critedge ], [ %i.l, %.lr.ph ], [ %i.u, %bb.b ] ; 4 uses
  %i.ar = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  store i8 1, ptr %i.f, align 8, !tbaa !203
  %i.at = load ptr, ptr %2, align 8, !tbaa !202   ; 9 uses
  %i.au = load atomic i64, ptr %i.at monotonic, align 8 ; 3 uses
  %i.av = and i64 %i.au, -4
  %i.aw = icmp eq i64 %i.av, 4
  %i.ax = and i64 %i.au, 2
  %.not13.i = icmp eq i64 %i.ax, 0
  %or.cond14.i = or i1 %i.aw, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.bd, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = or i64 %.0815.i, 3
  %i.az = cmpxchg ptr %i.at, i64 %.0815.i, i64 %i.ay seq_cst seq_cst, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bb = load atomic i64, ptr %i.at monotonic, align 8
  %i.bc = and i64 %i.bb, -4
  %.not217.i = icmp eq i64 %i.bc, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.bd = extractvalue { i64, i1 } %i.az, 0       ; 3 uses
  %i.be = and i64 %i.bd, -4
  %i.bf = icmp eq i64 %i.be, 4
  %i.bg = and i64 %i.bd, 2
  %.not.i39 = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bf, %.not.i39
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.bh = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph19.i
  %i.bi = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.bj, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bj = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !719

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.prol ]
  %i.bk = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.bk, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bl = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.bm = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.i
  %i.bn = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.j:                                             ; preds = %.lr.ph19.i
  %i.bo = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.j, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.bn, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.j ]
  %i.bp = load atomic i64, ptr %i.at monotonic, align 8
  %i.bq = and i64 %i.bp, -4
  %.not2.i = icmp eq i64 %i.bq, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !11

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %3 = atomicrmw sub ptr %i.at, i64 6 seq_cst, align 8 ; 0 uses
  br label %.loopexit

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.h
  %4 = atomicrmw sub ptr %i.at, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, %._crit_edge.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.cb, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.br = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, %bb.n
  %i.bs = load atomic i64, ptr %i.at monotonic, align 8 ; 3 uses
  %i.bt = and i64 %i.bs, -3
  %.not.i.i38 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i38, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.bu = cmpxchg ptr %i.at, i64 %i.bs, i64 1 seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, label %.lr.ph.i.i.preheader.i.i

bb.l:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.bw = and i64 %i.bs, 2
  %.not1.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not1.i.i, label %bb.m, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bx = atomicrmw or ptr %i.at, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.m, %bb.l
  br i1 %i.br, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.n

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.by = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.by, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.k
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.k ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.bz, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bz = add nsw i32 %.01.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.ca = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.cb = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, !llvm.loop !12

bb.n:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.cc = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !12

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.k
  %i.cd = load atomic i64, ptr %i.c acquire, align 8 ; 4 uses
  %.not.i28 = icmp eq i64 %.1.ph, %i.cd
  br i1 %.not.i28, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit, label %bb.o

bb.o:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ce = xor i64 %i.cd, %.1.ph
  %i.cf = and i64 %i.ce, %i.b
  %.not.i.i29 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i29, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = add i64 %.1.ph, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.012.i.i30 = phi i64 [ %i.cg, %bb.p ], [ %i.ci, %bb.q ] ; 2 uses
  %i.ch = and i64 %.012.i.i30, %i.b
  %.not13.i.i31 = icmp eq i64 %i.ch, 0
  %i.ci = shl i64 %.012.i.i30, 1                  ; 2 uses
  br i1 %.not13.i.i31, label %bb.q, label %bb.r, !llvm.loop !14

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %i.ci, -1
  %i.ck = and i64 %i.cj, %i.b                     ; 2 uses
  %i.cl = or i64 %i.ck, 1
  %i.cm = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true) ; 2 uses
  %i.cn = xor i64 %i.cm, 63
  %i.co = lshr exact i64 -9223372036854775808, %i.cm
  %i.cp = and i64 %i.co, -2
  %i.cq = sub i64 %i.ck, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cn
  %i.cs = load atomic ptr, ptr %i.cr acquire, align 8
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load atomic ptr, ptr %i.cu acquire, align 8
  %i.cw = icmp eq ptr %i.cv, inttoptr (i64 3 to ptr)
  br i1 %i.cw, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge: ; preds = %bb.r, %bb.o
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer

.loopexit:                                        ; preds = %.critedge.thread, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread
  %i.cx = icmp eq ptr %.02373, null
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !376
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %.02267, align 8, !tbaa !369
  store atomic ptr %i.da, ptr %i.cz monotonic, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0

bb.t:                                             ; preds = %.loopexit
  %i.db = load ptr, ptr %.02267, align 8, !tbaa !369
  store ptr %i.db, ptr %.02373, align 8, !tbaa !369
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2: ; preds = %bb.r, %bb.g
  %.2.ph.jt2 = phi i64 [ %i.x, %bb.g ], [ %i.cd, %bb.r ]
  %i.dc = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.not.i34.jt2 = icmp eq ptr %i.dc, null
  br i1 %.not.i34.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2, label %bb.u

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0: ; preds = %bb.s, %bb.t
  %5 = atomicrmw sub ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.not.i34.jt0 = icmp eq ptr %i.dd, null
  br i1 %.not.i34.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0, label %bb.v

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1: ; preds = %bb.c, %bb.g, %bb.d
  %i.de = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.not.i34.jt1 = icmp eq ptr %i.de, null
  br i1 %.not.i34.jt1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1, label %bb.w

bb.u:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.df = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.x, label %bb.aa

bb.v:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.dh = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.y, label %bb.ab

bb.w:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.dj = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.z, label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.dl = atomicrmw and ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2

bb.y:                                             ; preds = %bb.v
  %i.dm = atomicrmw and ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0

bb.z:                                             ; preds = %bb.w
  %i.dn = atomicrmw and ptr %i.de, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1

bb.aa:                                            ; preds = %bb.u
  %6 = atomicrmw sub ptr %i.dc, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2

bb.ab:                                            ; preds = %bb.v
  %7 = atomicrmw sub ptr %i.dd, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0

bb.ac:                                            ; preds = %bb.w
  %8 = atomicrmw sub ptr %i.de, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2: ; preds = %bb.aa, %bb.x, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.a

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0: ; preds = %bb.ab, %bb.y, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.do = getelementptr inbounds nuw i8, ptr %.02267, i64 8 ; 4 uses
  br label %.preheader.i.i.outer

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1: ; preds = %bb.ac, %bb.z, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit64

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.ag
  %i.dp = load atomic i64, ptr %i.do monotonic, align 8 ; 3 uses
  %i.dq = and i64 %i.dp, -3
  %.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.i.i
  %i.dr = cmpxchg ptr %i.do, i64 %i.dp, i64 1 seq_cst seq_cst, align 8
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37, label %.lr.ph.i.i.preheader.i.i.i

bb.ae:                                            ; preds = %.preheader.i.i
  %i.dt = and i64 %i.dp, 2
  %.not1.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not1.i.i.i, label %bb.af, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.du = atomicrmw or ptr %i.do, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.af, %bb.ae
  br i1 %i.dz, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i, label %bb.ag

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i
  %i.dv = icmp sgt i32 %.sroa.0.0.i.i.i.ph, 0
  br i1 %i.dv, label %.lr.ph.i.i.preheader.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i, %bb.ad
  %.sroa.0.1811.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i ], [ 1, %bb.ad ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.1811.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %i.dw = add nsw i32 %.01.i.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.dx = icmp samesign ugt i32 %.01.i.i.i.i.i, 1
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i
  %.sroa.0.1810.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i.i ], [ %.sroa.0.1811.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.dy = shl nsw i32 %.sroa.0.1810.i.i.i, 1
  br label %.preheader.i.i.outer, !llvm.loop !12

.preheader.i.i.outer:                             ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0
  %.sroa.0.0.i.i.i.ph = phi i32 [ %i.dy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ 1, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt0 ] ; 4 uses
  %i.dz = icmp slt i32 %.sroa.0.0.i.i.i.ph, 17
  br label %.preheader.i.i

bb.ag:                                            ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i.i
  %i.ea = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %.preheader.i.i, !llvm.loop !12

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37: ; preds = %bb.ad
  %i.eb = atomicrmw and ptr %i.do, i64 -4 seq_cst, align 8 ; 0 uses
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.02267)
  br label %.loopexit64

.loopexit64:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37
  %.3 = phi i1 [ true, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit37 ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt1 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !203
  %i.b = or i64 %2, 1
  %i.c = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 2 uses
  %i.d = xor i64 %i.c, 63
  %i.e = lshr exact i64 -9223372036854775808, %i.c
  %i.f = and i64 %i.e, -2
  %i.g = sub i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !376
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %i.o = icmp eq ptr %i.n, inttoptr (i64 3 to ptr)
  %.pre10 = load ptr, ptr %i.l, align 8, !tbaa !376 ; 5 uses
  br i1 %i.o, label %bb.b, label %.noexc.thread

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i64, ptr %.pre10 monotonic, align 8 ; 2 uses
  %i.q = and i64 %i.p, -3
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %.noexc.thread

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.b
  %i.r = cmpxchg ptr %.pre10, i64 %i.p, i64 1 seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !376 ; 3 uses
  br i1 %i.s, label %bb.c, label %.noexc.thread

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i
  store ptr %.pre10, ptr %0, align 8, !tbaa !202
  store i8 1, ptr %i.a, align 8, !tbaa !203
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  %i.v = icmp eq ptr %i.u, inttoptr (i64 3 to ptr)
  br i1 %i.v, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %1, ptr noundef nonnull %.pre, i64 noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit unwind label %bb.n, !inline_history !720

.noexc.thread:                                    ; preds = %bb.b, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.a
  %i.w = phi ptr [ %.pre10, %bb.b ], [ %.pre, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i ], [ %.pre10, %bb.a ] ; 7 uses
  %i.x = zext i1 %3 to i8
  store i8 %i.x, ptr %i.a, align 8, !tbaa !203
  store ptr %i.w, ptr %0, align 8, !tbaa !202
  br i1 %3, label %.preheader.i.outer, label %.preheader9.i.outer

.preheader.i.outer:                               ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.ai, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %.noexc.thread ] ; 4 uses
  %i.y = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.h
  %i.z = load atomic i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.aa = and i64 %i.z, -3
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.ab = cmpxchg ptr %i.w, i64 %i.z, i64 1 seq_cst seq_cst, align 8
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit, label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %.preheader.i
  %i.ad = and i64 %i.z, 2
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.g, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = atomicrmw or ptr %i.w, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.g, %bb.f
  br i1 %i.y, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.h

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.af = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.af, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.e
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.e ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ag = add nsw i32 %.01.i.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ah = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %.preheader.i.outer, !llvm.loop !12

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.aj = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %.preheader.i, !llvm.loop !12

.preheader9.i:                                    ; preds = %.preheader9.i.outer, %bb.m
  %i.ak = load atomic i64, ptr %i.w monotonic, align 8
  %i.al = and i64 %i.ak, 3
  %.not.i4.i = icmp eq i64 %i.al, 0
  br i1 %.not.i4.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader9.i
  %i.am = atomicrmw add ptr %i.w, i64 4 seq_cst, align 8
  %i.an = and i64 %i.am, 1
  %.not5.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not5.not.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader9.i
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp sgt i32 %.sroa.0.0.i3.i.ph, 0
  br i1 %i.ao, label %.lr.ph.i.i.i7.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.l
  %xtraiter = and i32 %.sroa.0.0.i3.i.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i7.i.prol.loopexit, label %.lr.ph.i.i.i7.i.prol

.lr.ph.i.i.i7.i.prol:                             ; preds = %.lr.ph.i.i.i7.i.preheader, %.lr.ph.i.i.i7.i.prol
  %.01.i.i.i8.i.prol = phi i32 [ %i.ap, %.lr.ph.i.i.i7.i.prol ], [ %.sroa.0.0.i3.i.ph, %.lr.ph.i.i.i7.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i7.i.prol ], [ 0, %.lr.ph.i.i.i7.i.preheader ]
  %i.ap = add nsw i32 %.01.i.i.i8.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i7.i.prol.loopexit, label %.lr.ph.i.i.i7.i.prol, !llvm.loop !721

.lr.ph.i.i.i7.i.prol.loopexit:                    ; preds = %.lr.ph.i.i.i7.i.prol, %.lr.ph.i.i.i7.i.preheader
  %.01.i.i.i8.i.unr = phi i32 [ %.sroa.0.0.i3.i.ph, %.lr.ph.i.i.i7.i.preheader ], [ %i.ap, %.lr.ph.i.i.i7.i.prol ]
  %i.aq = icmp ult i32 %.sroa.0.0.i3.i.ph, 8
  br i1 %i.aq, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i, label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i.prol.loopexit, %.lr.ph.i.i.i7.i
  %.01.i.i.i8.i = phi i32 [ %i.ar, %.lr.ph.i.i.i7.i ], [ %.01.i.i.i8.i.unr, %.lr.ph.i.i.i7.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ar = add nsw i32 %.01.i.i.i8.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.as = icmp sgt i32 %.01.i.i.i8.i, 8
  br i1 %i.as, label %.lr.ph.i.i.i7.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i:  ; preds = %.lr.ph.i.i.i7.i.prol.loopexit, %.lr.ph.i.i.i7.i, %bb.l
  %i.at = shl i32 %.sroa.0.0.i3.i.ph, 1
  br label %.preheader9.i.outer, !llvm.loop !13

.preheader9.i.outer:                              ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i
  %.sroa.0.0.i3.i.ph = phi i32 [ %i.at, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i ], [ 1, %.noexc.thread ] ; 7 uses
  %i.au = icmp slt i32 %.sroa.0.0.i3.i.ph, 17
  br label %.preheader9.i

bb.m:                                             ; preds = %bb.k
  %i.av = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %.preheader9.i, !llvm.loop !13

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit: ; preds = %bb.i, %bb.e, %bb.c, %bb.d
  ret void

bb.n:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %0, align 8, !tbaa !202   ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !202
  %i.ay = load i8, ptr %i.a, align 8, !tbaa !203, !range !125, !noundef !126
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = atomicrmw and ptr %i.ax, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %5 = atomicrmw sub ptr %i.ax, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit: ; preds = %bb.n, %bb.p, %bb.q
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store atomic ptr null, ptr %i.a release, align 8
  %i.b = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.c = lshr i64 9223372036854775807, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = and i64 %i.c, %2
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 noundef %i.d, i1 noundef zeroext false)
  %i.e = lshr i64 -2, %i.b
  %i.f = or i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !376
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 63 to ptr)
  br i1 %i.k, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.f
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !376
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 63 to ptr)
  br i1 %i.p, label %.lr.ph.backedge, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.02544 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.02544.be, %.lr.ph.backedge ] ; 3 uses
  %.02743 = phi ptr [ %i.j, %.lr.ph.lr.ph ], [ %.02743.be, %.lr.ph.backedge ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02743, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.f, %i.s
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %bb.b, label %bb.n

bb.b:                                             ; preds = %.lr.ph
  %i.v = load i8, ptr %i.l, align 8, !tbaa !203, !range !125, !noundef !126
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.l, align 8, !tbaa !203
  %i.x = load ptr, ptr %3, align 8, !tbaa !202    ; 9 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.z = and i64 %i.y, -4
  %i.aa = icmp eq i64 %i.z, 4
  %i.ab = and i64 %i.y, 2
  %.not13.i = icmp eq i64 %i.ab, 0
  %or.cond14.i = or i1 %i.aa, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.ah, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ac = or i64 %.0815.i, 3
  %i.ad = cmpxchg ptr %i.x, i64 %.0815.i, i64 %i.ac seq_cst seq_cst, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.af = load atomic i64, ptr %i.x monotonic, align 8
  %i.ag = and i64 %i.af, -4
  %.not217.i = icmp eq i64 %i.ag, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.ah = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ai = and i64 %i.ah, -4
  %i.aj = icmp eq i64 %i.ai, 4
  %i.ak = and i64 %i.ah, 2
  %.not.i32 = icmp eq i64 %i.ak, 0
  %or.cond.i = or i1 %i.aj, %.not.i32
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.al = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i
  %i.am = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.an, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.an = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !722

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %i.ao = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.ao, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.ap = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.aq = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d
  %i.ar = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.e:                                             ; preds = %.lr.ph19.i
  %i.as = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.e, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ar, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.e ]
  %i.at = load atomic i64, ptr %i.x monotonic, align 8
  %i.au = and i64 %i.at, -4
  %.not2.i = icmp eq i64 %i.au, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !11

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %4 = atomicrmw sub ptr %i.x, i64 6 seq_cst, align 8 ; 0 uses
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.c
  %5 = atomicrmw sub ptr %i.x, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, %._crit_edge.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.bf, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.av = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, %bb.i
  %i.aw = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.ax = and i64 %i.aw, -3
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ay = cmpxchg ptr %i.x, i64 %i.aw, i64 1 seq_cst seq_cst, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.loopexit, label %.lr.ph.i.i.preheader.i.i

bb.g:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ba = and i64 %i.aw, 2
  %.not1.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not1.i.i, label %bb.h, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bb = atomicrmw or ptr %i.x, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.h, %bb.g
  br i1 %i.av, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bc = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.bc, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.f
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.f ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bd = add nsw i32 %.01.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.be = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.bf = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, !llvm.loop !12

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bg = call noundef i32 @sched_yield() #17     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !12

bb.j:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, %bb.b
  %i.bh = load ptr, ptr %.02743, align 8, !tbaa !369 ; 3 uses
  %i.bi = icmp eq ptr %.02544, null
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !376
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store atomic ptr %i.bh, ptr %i.bk monotonic, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.bh, ptr %.02544, align 8, !tbaa !369
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = load atomic ptr, ptr %i.a monotonic, align 8
  store ptr %i.bl, ptr %.02743, align 8, !tbaa !369
  store atomic ptr %.02743, ptr %i.a monotonic, align 8
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %.02743, align 8, !tbaa !369
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.m, %bb.n
  %.229 = phi ptr [ %i.bm, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.02743, %bb.n ], [ %.02544, %bb.m ]
  %i.bn = icmp ugt ptr %.229, inttoptr (i64 63 to ptr)
  br i1 %i.bn, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %.loopexit
  %.02544.be = phi ptr [ %.2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %.loopexit ]
  %.02743.be = phi ptr [ %.229, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ %i.o, %.loopexit ]
  br label %.lr.ph, !llvm.loop !723

._crit_edge:                                      ; preds = %.loopexit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.a
  %i.bo = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %.not.i30 = icmp eq ptr %i.bo, null
  br i1 %.not.i30, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !203, !range !125, !noundef !126
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = atomicrmw and ptr %i.bo, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

bb.q:                                             ; preds = %bb.o
  %6 = atomicrmw sub ptr %i.bo, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31: ; preds = %._crit_edge, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %0, ptr %i.a, align 8, !tbaa !169
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.c, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !337
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !338
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !337
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 20 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !169
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not52 = icmp eq ptr %3, null
  %i.i = zext i1 %4 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.080 = phi i64 [ %.4.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %i.d, %.preheader ] ; 5 uses
  %.044 = phi ptr [ %.3.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %6, %.preheader ] ; 4 uses
  %.039 = phi i64 [ %.241.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !376
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !169
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !369 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !724

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp, !inline_history !725

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = load ptr, ptr %7, align 8, !tbaa !202    ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.av

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %.critedge, label %.lr.ph, !llvm.loop !726

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit, %bb.g
  store i8 1, ptr %i.f, align 8, !tbaa !203
  %i.z = load ptr, ptr %7, align 8, !tbaa !202
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !376
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59

.lr.ph.i57:                                       ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !169
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !369 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !724

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i56 = phi ptr [ %i.ad, %bb.h ], [ %.07.i58, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  %i.am = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.g, !llvm.loop !726

bb.k:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %bb.l, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %7, align 8, !tbaa !202
  %i.ap = atomicrmw add ptr %i.ao, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !203
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.g, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit
  %i.aq = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.aq
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ar = xor i64 %i.aq, %.080
  %i.as = and i64 %i.ar, %i.b
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add i64 %.080, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.012.i.i = phi i64 [ %i.at, %bb.n ], [ %i.av, %bb.o ] ; 2 uses
  %i.au = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.au, 0
  %i.av = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.o, label %bb.p, !llvm.loop !14

bb.p:                                             ; preds = %bb.o
  %i.aw = add i64 %i.av, -1
  %i.ax = and i64 %i.aw, %i.b                     ; 2 uses
  %i.ay = or i64 %i.ax, 1
  %i.az = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true) ; 2 uses
  %i.ba = xor i64 %i.az, 63
  %i.bb = lshr exact i64 -9223372036854775808, %i.az
  %i.bc = and i64 %i.bb, -2
  %i.bd = sub i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ba
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bj = icmp eq ptr %i.bi, inttoptr (i64 3 to ptr)
  br i1 %i.bj, label %bb.q, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.q:                                             ; preds = %bb.m, %bb.p, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !376
  %i.bl = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bm = add i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bo = load atomic ptr, ptr %i.bn monotonic, align 8
  store ptr %i.bo, ptr %.145, align 8, !tbaa !369
  store atomic ptr %.145, ptr %i.bn monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bm, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %.5.ph, 1
  %i.bq = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63                       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.br ; 2 uses
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8
  %.not12.i = icmp eq ptr %i.bt, null
  br i1 %.not12.i, label %bb.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = cmpxchg ptr %i.bs, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bv = extractvalue { ptr, i1 } %i.bu, 1
  %spec.select.i = select i1 %i.bv, i64 %i.br, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.s, %bb.r, %bb.q, %bb.k, %bb.l, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.l ], [ null, %bb.s ], [ %.145, %bb.k ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.q ], [ null, %bb.r ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.l ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.l ], [ %spec.select.i, %bb.s ], [ %.039, %bb.k ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.l ], [ %.145, %bb.s ], [ %.0.lcssa.i56, %bb.k ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.q ], [ %.145, %bb.r ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.t

bb.t:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bx = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = and i64 %i.bx, -3
  %.not.i.i66 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bz = and i64 %i.bx, 3
  %.not.i7.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i7.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.cb = and i64 %i.ca, 1
  %.not5.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %bb.w
  %8 = atomicrmw sub ptr %i.bw, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.y

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.u
  %i.cc = cmpxchg ptr %i.bw, i64 %i.bx, i64 1 seq_cst seq_cst, align 8
  %i.cd = extractvalue { i64, i1 } %i.cc, 1
  br i1 %i.cd, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.u, %bb.v, %bb.x
  call void @llvm.x86.sse2.pause()
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.y
  %.sroa.0.0 = phi i32 [ 2, %bb.y ], [ %i.cr, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.ce = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = and i64 %i.ce, -3
  %.not.i.i70 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cg = and i64 %i.ce, 3
  %.not.i7.i67 = icmp eq i64 %i.cg, 0
  br i1 %.not.i7.i67, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ch = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.ci = and i64 %i.ch, 1
  %.not5.not.i.i68 = icmp eq i64 %i.ci, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %9 = atomicrmw sub ptr %i.bw, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ae

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.aa
  %i.cj = cmpxchg ptr %i.bw, i64 %i.ce, i64 1 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ae

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cl = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.cm, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cm = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !727

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %i.cn = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cn, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.co, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.co = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cp = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !10

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cr = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !728

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !202   ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = atomicrmw and ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %10 = atomicrmw sub ptr %i.cs, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cw = call noundef i32 @sched_yield() #17     ; 0 uses
  %i.cx = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.w, %bb.ac, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !202
  store i8 %i.i, ptr %i.j, align 8, !tbaa !203
  %i.cy = load ptr, ptr %7, align 8, !tbaa !202   ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.cy, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.cz = load ptr, ptr %7, align 8, !tbaa !202   ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.cz, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.ak

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.p, %bb.ai
  %.4.jt2 = phi i64 [ %i.cx, %bb.ai ], [ %i.aq, %bb.p ]
  %.3.jt2 = phi ptr [ %.246, %bb.ai ], [ %.145, %bb.p ]
  %.241.jt2 = phi i64 [ %.140, %bb.ai ], [ %.039, %bb.p ]
  %i.da = load ptr, ptr %7, align 8, !tbaa !202   ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.da, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.al

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.db = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.dd = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.df = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.dh = atomicrmw and ptr %i.cy, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.an:                                            ; preds = %bb.ak
  %i.di = atomicrmw and ptr %i.cz, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ao:                                            ; preds = %bb.al
  %i.dj = atomicrmw and ptr %i.da, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ap:                                            ; preds = %bb.aj
  %11 = atomicrmw sub ptr %i.cy, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.aq:                                            ; preds = %bb.ak
  %12 = atomicrmw sub ptr %i.cz, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ar:                                            ; preds = %bb.al
  %13 = atomicrmw sub ptr %i.da, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dk, align 8, !tbaa !336
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dl, align 8, !tbaa !730
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ar, %bb.ao, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit92
  %i.dm = icmp ugt i64 %.140, 7
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dn = shl nuw i64 1, %.140
  %i.do = shl i64 16, %.140
  %i.dp = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.do)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.at
  %unroll_iter = and i64 %i.dn, -4
  br label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.phi, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dr, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ], [ %i.ei, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.dq monotonic, align 8
  br label %common.resume

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i: ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ed, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.ds, align 8, !tbaa !371
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dt, align 8, !tbaa !373
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 0, ptr %i.dv, align 8, !tbaa !371
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.dw, align 8, !tbaa !373
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 0, ptr %i.dy, align 8, !tbaa !371
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dz, align 8, !tbaa !373
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store i64 0, ptr %i.eb, align 8, !tbaa !371
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !373
  %i.ed = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !729

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dp, ptr %i.ee release, align 8
  %i.ef = shl i64 2, %.140
  %i.eg = add i64 %i.ef, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.au:                                            ; preds = %bb.as
  %i.eh = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.au
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i10.i:                                   ; preds = %bb.au, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.eo, %.lr.ph.i.i10.i ], [ 0, %bb.au ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !371
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ek, align 8, !tbaa !373
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.06.i.i11.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 0, ptr %i.em, align 8, !tbaa !371
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.en, align 8, !tbaa !373
  %i.eo = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eo, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !729

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.eh, ptr %i.ep release, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store atomic ptr %i.er, ptr %i.eq release, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  store atomic ptr %i.et, ptr %i.es release, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 224
  store atomic ptr %i.ev, ptr %i.eu release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 480
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 992
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 2016
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.eg, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.f
  store ptr null, ptr %7, align 8, !tbaa !202
  %i.fc = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.ax:                                            ; preds = %bb.av
  %14 = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %bb.f, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %common.resume

bb.ay:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 32) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !371
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !169
  store ptr %i.d, ptr %i.c, align 8, !tbaa !732
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !733
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !734
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !298  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !298
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !734
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math5TupleILi3EdE3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZNSolsEd.exit.2, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2, %_ZNSolsEd.exit.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.a
  %.pre = load double, ptr %1, align 8, !tbaa !163
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %.pre)
          to label %_ZNSolsEd.exit unwind label %bb.c ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1: ; preds = %_ZNSolsEd.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !163
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.g)
          to label %_ZNSolsEd.exit.1 unwind label %bb.c ; 0 uses

_ZNSolsEd.exit.1:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2: ; preds = %_ZNSolsEd.exit.1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !163
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.k)
          to label %_ZNSolsEd.exit.2 unwind label %bb.c ; 0 uses

_ZNSolsEd.exit.2:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZNSolsEd.exit.2
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !359, !alias.scope !741
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !308, !alias.scope !741
  store i8 0, ptr %i.n, align 8, !tbaa !207, !alias.scope !741
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !378, !noalias !741 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !741 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !379, !noalias !741 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !307, !alias.scope !741 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !207, !alias.scope !741
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !100
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !307 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !207
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdEC2ERKSE_RKf:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 36
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !298
  %i.cu = load i32, ptr %i.ci, align 8, !tbaa !298
  %i.cv = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cu)
  store i32 %i.cv, ptr %i.ci, align 8, !tbaa !298
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 40 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !298
  %i.cy = load i32, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !298
  %i.cz = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.cy)
  store i32 %i.cz, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !298
  %i.da = load i32, ptr %i.cw, align 8, !tbaa !298
  %i.db = add nsw i32 %i.da, 4095
  %i.dc = load <2 x i32>, ptr %i.cj, align 8, !tbaa !298
  %i.dd = add nsw <2 x i32> %i.dc, splat (i32 4095)
  %i.de = load <2 x i32>, ptr %i.ae, align 8, !tbaa !298
  %i.df = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.de, <2 x i32> %i.dd)
  store <2 x i32> %i.df, ptr %i.ae, align 8, !tbaa !298
  %i.dg = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.dh = call i32 @llvm.smax.i32(i32 %i.dg, i32 %i.db)
  store i32 %i.dh, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  br label %.noexc

.noexc:                                           ; preds = %bb.ac, %bb.ae, %bb.ad
  %i.di = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.012.i) #29 ; 2 uses
  %.not10.i = icmp eq ptr %i.di, %i.ch
  br i1 %.not10.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit, label %bb.ab, !llvm.loop !755

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit: ; preds = %.noexc, %bb.aa
  ret void

bb.af:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.as, %bb.g ], [ %i.at, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %i.e) #17
  resume { ptr, i32 } %.pn16

bb.ag:                                            ; preds = %bb.y, %bb.n
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !100
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !207
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

declare noundef i32 @_ZNK7openvdb5v13_08GridBase12getGridClassEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdED2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(300) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.i, ptr %i.a, align 8, !tbaa !131
  %i.m = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.d, !inline_history !132 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #26, !inline_history !132
  unreachable

_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.i, ptr %i.a, align 8, !tbaa !131
  %i.m = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.d, !inline_history !132 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #26, !inline_history !132
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSF_i(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !398
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !131
  %i.i = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.g, align 8, !tbaa !206
  %i.j = load ptr, ptr %3, align 8, !tbaa !202    ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.k = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = atomicrmw and ptr %i.j, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %4 = atomicrmw sub ptr %i.j, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.g, align 8, !tbaa !206
  %i.o = load ptr, ptr %3, align 8, !tbaa !202    ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.p = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw and ptr %i.o, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.h:                                             ; preds = %bb.f
  %5 = atomicrmw sub ptr %i.o, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %bb.m, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.ak, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 9223372034707292159, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !207
  store ptr null, ptr %i.s, align 8, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !129  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.u, align 8, !tbaa !209
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit: ; preds = %bb.i, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = sext i32 %2 to i64                       ; 3 uses
  %i.z = icmp slt i32 %2, 0
  br i1 %i.z, label %bb.k, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #28
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aa = shl nuw nsw i64 %i.y, 2
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc7 unwind label %bb.m    ; 4 uses

.noexc7:                                          ; preds = %bb.l
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !127
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !128
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !98
  %i.ae = getelementptr i8, ptr %i.ab, i64 4      ; 3 uses
  %i.af = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc7
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.af, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc7, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc7 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !399
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 9223372034707292159, ptr %i.aj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx, align 8
  ret void

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.b) #17
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_010ValueErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>::ValueIter", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>::ChildIter", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 270336
  %i.b = load i32, ptr %i.a, align 8, !tbaa !298, !noalias !771 ; 2 uses
  %i.c = add nsw i32 %i.b, 4095
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 270340
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 270344
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !207 ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !298
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %.sroa.4.0.copyload, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %.sroa.5.0.copyload, %i.j
  %or.cond34 = select i1 %or.cond, i1 true, i1 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.m, %i.c
  %or.cond37 = select i1 %or.cond34, i1 true, i1 %i.n
  br i1 %or.cond37, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %.sroa.5.0.copyload, 4095
  %i.p = add nsw i32 %.sroa.4.0.copyload, 4095
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !298
  %i.s = icmp slt i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %.not = icmp slt i32 %i.u, %i.o
  %or.cond41 = select i1 %i.s, i1 true, i1 %.not
  br i1 %or.cond41, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.r

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  %.013.i.i.i = phi ptr [ %i.v, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ], [ %i.ad, %bb.g ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ], [ %i.ae, %bb.g ] ; 5 uses
  %i.w = load i64, ptr %.013.i.i.i, align 8, !tbaa !249, !noalias !772 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginValueOnEv.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !249, !noalias !772 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.1, label %bb.e, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit127

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249, !noalias !772 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.2, label %bb.f, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit124

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !249, !noalias !772 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.3, label %bb.g, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.ae = add nuw nsw i32 %.0712.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.ae, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.c, !llvm.loop !18

end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i, label %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i: ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #17, !inline_history !0
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i

_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i:            ; preds = %bb.e, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.t, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.t, ptr %i.a, align 8, !tbaa !131
  %i.x = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i unwind label %bb.g, !inline_history !132 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #26, !inline_history !132
  unreachable

_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(464) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %0, align 64, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i8, ptr %i.b, align 8, !tbaa !96, !range !125, !noundef !126
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 32, !tbaa !97  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #25, !inline_history !889
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i.i: ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #17, !inline_history !888
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25, !inline_history !889
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.e, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.t, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.t, ptr %i.a, align 8, !tbaa !131
  %i.x = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i.i unwind label %bb.g, !inline_history !890 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #26, !inline_history !890
  unreachable

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i.i
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 512, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !454  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !262
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !455
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !451
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !451
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !261
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSA_4GridINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSB_22LevelSetRayIntersectorISO_NSB_16LinearSearchImplISO_Li0EdEELi2ENSA_4math3RayIdEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !451 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = load ptr, ptr %0, align 64, !tbaa !100
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(464) dereferenceable(464) %0) #17, !inline_history !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !263
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw sub ptr %i.aj, i32 1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(464) %0, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !451 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.d = load i64, ptr %i.c, align 8, !tbaa !263
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(464) dereferenceable(464) %0) #17, !inline_history !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !263
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.q, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(464) %0, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !398
  store ptr %i.b, ptr %0, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !203
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.c, ptr %i.a, align 8, !tbaa !131
  %i.j = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.f ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.h, align 8, !tbaa !206
  %i.k = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i3.i.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.l = load i8, ptr %i.g, align 8, !tbaa !203, !range !125, !noundef !126
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw and ptr %i.k, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %3 = atomicrmw sub ptr %i.k, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.h, align 8, !tbaa !206
  %i.p = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.q = load i8, ptr %i.g, align 8, !tbaa !203, !range !125, !noundef !126
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.i:                                             ; preds = %bb.g
  %4 = atomicrmw sub ptr %i.p, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %bb.o, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.ax, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !227
  store i64 %i.v, ptr %i.t, align 8, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.c, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !399 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !127 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !302

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ai = phi ptr [ null, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !399
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !128
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !227 ; 3 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 4
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !383

bb.k:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.am, i64 %i.aq, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc6
  %i.as = icmp eq i64 %i.aq, 4
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load float, ptr %i.am, align 4, !tbaa !98
  store float %i.at, ptr %i.ai, align 4, !tbaa !98
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 %i.aq
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !399
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !tbaa.struct !445
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.c) #17
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSA_4GridINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSB_22LevelSetRayIntersectorISO_NSB_16LinearSearchImplISO_Li0EdEELi2ENSA_4math3RayIdEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d0::split", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.o = call noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !891 ; 2 uses
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !891 ; 6 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !456
  store ptr %i.q, ptr %i.p, align 8, !tbaa !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.t, ptr %i.s, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.u, align 8, !tbaa !458
  store ptr %i.p, ptr %i.n, align 16, !tbaa !451
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store ptr %i.p, ptr %i.v, align 16, !tbaa !451
  %i.w = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(464) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.w), !inline_history !891
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.x = load i64, ptr %i.a, align 8, !tbaa !124
  %i.y = load i64, ptr %2, align 8, !tbaa !122
  %i.z = load i64, ptr %i.d, align 8, !tbaa !123
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.ac = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !892

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.ac, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.ae, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i8 %i.ae, -1
  store i8 %i.af, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #3
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdEC2ERKSE_RKd:bb.a
bb.ab:                                            ; preds = %.noexc, %.lr.ph.i
  %.sroa.05.012.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %i.de, %.noexc ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !483 ; 2 uses
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(270352) %i.ch, ptr noundef nonnull align 4 dereferenceable(24) %i.z, i1 noundef zeroext false)
          to label %.noexc unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 64
  %i.cj = load i8, ptr %i.ci, align 8, !range !125
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ae, label %.noexc

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load i32, ptr %i.cf, align 8, !tbaa !298
  %i.cm = load i32, ptr %i.z, align 8, !tbaa !298
  %i.cn = call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cm)
  store i32 %i.cn, ptr %i.z, align 8, !tbaa !298
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !298
  %i.cq = load i32, ptr %i.ce, align 4, !tbaa !298
  %i.cr = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  store i32 %i.cr, ptr %i.ce, align 4, !tbaa !298
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 40 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !298
  %i.cu = load i32, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !298
  %i.cv = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cu)
  store i32 %i.cv, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !298
  %i.cw = load i32, ptr %i.cs, align 8, !tbaa !298
  %i.cx = add nsw i32 %i.cw, 4095
  %i.cy = load <2 x i32>, ptr %i.cf, align 8, !tbaa !298
  %i.cz = add nsw <2 x i32> %i.cy, splat (i32 4095)
  %i.da = load <2 x i32>, ptr %i.aa, align 4, !tbaa !298
  %i.db = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.da, <2 x i32> %i.cz)
  store <2 x i32> %i.db, ptr %i.aa, align 4, !tbaa !298
  %i.dc = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !298
  %i.dd = call i32 @llvm.smax.i32(i32 %i.dc, i32 %i.cx)
  store i32 %i.dd, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !298
  br label %.noexc

.noexc:                                           ; preds = %bb.ac, %bb.ae, %bb.ad
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.012.i) #29 ; 2 uses
  %.not10.i = icmp eq ptr %i.de, %i.cd
  br i1 %.not10.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit, label %bb.ab, !llvm.loop !960

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit: ; preds = %.noexc, %bb.aa
  ret void

bb.af:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ao, %bb.g ], [ %i.ap, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %i.e) #17
  resume { ptr, i32 } %.pn16

bb.ag:                                            ; preds = %bb.y, %bb.n
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdED2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !167  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.i, ptr %i.a, align 8, !tbaa !169
  %i.m = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.d, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !167  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.i, ptr %i.a, align 8, !tbaa !169
  %i.m = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.d, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSF_i(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !484
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !169
  %i.i = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.g, align 8, !tbaa !336
  %i.j = load ptr, ptr %3, align 8, !tbaa !202    ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.k = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = atomicrmw and ptr %i.j, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %4 = atomicrmw sub ptr %i.j, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.g, align 8, !tbaa !336
  %i.o = load ptr, ptr %3, align 8, !tbaa !202    ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %3, align 8, !tbaa !202
  %i.p = load i8, ptr %i.f, align 8, !tbaa !203, !range !125, !noundef !126
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw and ptr %i.o, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.h:                                             ; preds = %bb.f
  %5 = atomicrmw sub ptr %i.o, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %bb.m, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.ak, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 9223372034707292159, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !207
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !207
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !207
  store ptr null, ptr %i.s, align 8, !tbaa !337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.u, align 8, !tbaa !338
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit: ; preds = %bb.i, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = sext i32 %2 to i64                       ; 3 uses
  %i.z = icmp slt i32 %2, 0
  br i1 %i.z, label %bb.k, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #28
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aa = shl nuw nsw i64 %i.y, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
          to label %.noexc7 unwind label %bb.m    ; 4 uses

.noexc7:                                          ; preds = %bb.l
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !165
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !166
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !163
  %i.ae = getelementptr i8, ptr %i.ab, i64 8      ; 3 uses
  %i.af = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc7
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.af, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc7, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc7 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !485
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 9223372034707292159, ptr %i.aj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx, align 8
  ret void

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.b) #17
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ValueIter", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 270336
  %i.b = load i32, ptr %i.a, align 8, !tbaa !298, !noalias !976 ; 2 uses
  %i.c = add nsw i32 %i.b, 4095
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 270340
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 270344
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !207 ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !298
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %.sroa.4.0.copyload, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %.sroa.5.0.copyload, %i.j
  %or.cond34 = select i1 %or.cond, i1 true, i1 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.m, %i.c
  %or.cond37 = select i1 %or.cond34, i1 true, i1 %i.n
  br i1 %or.cond37, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %.sroa.5.0.copyload, 4095
  %i.p = add nsw i32 %.sroa.4.0.copyload, 4095
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !298
  %i.s = icmp slt i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %.not = icmp slt i32 %i.u, %i.o
  %or.cond41 = select i1 %i.s, i1 true, i1 %.not
  br i1 %or.cond41, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.r

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  %.013.i.i.i = phi ptr [ %i.v, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ], [ %i.ad, %bb.g ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ], [ %i.ae, %bb.g ] ; 5 uses
  %i.w = load i64, ptr %.013.i.i.i, align 8, !tbaa !249, !noalias !977 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !249, !noalias !977 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.1, label %bb.e, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit127

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !249, !noalias !977 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.2, label %bb.f, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit124

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !249, !noalias !977 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.3, label %bb.g, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.ae = add nuw nsw i32 %.0712.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.ae, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.c, !llvm.loop !18

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit: ; preds = %bb.f
  %i.af = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit124: ; preds = %bb.e
  %i.ag = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit127: ; preds = %bb.d
  %i.ah = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit127, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit124, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.ah, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit127 ], [ %i.ag, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit124 ], [ %i.af, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.c ]
  %.lcssa116 = phi i64 [ %i.y, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit127 ], [ %i.aa, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit124 ], [ %i.ac, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit.split.loop.exit ], [ %i.w, %bb.c ]
  %i.ai = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa116, i1 true)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !487, !alias.scope !977
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.al, ptr %i.am, align 8, !alias.scope !977
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.v, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !977
  %.not3849 = icmp eq i32 %i.al, 32768
  br i1 %.not3849, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginValueOnEv.exit
end_hunk_5
begin_hunk_6_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i, label %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i: ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #17, !inline_history !2
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i

_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i:            ; preds = %bb.e, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.t, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.t, ptr %i.a, align 8, !tbaa !169
  %i.x = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i unwind label %bb.g, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(480) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %0, align 64, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i8, ptr %i.b, align 8, !tbaa !161, !range !125, !noundef !126
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 32, !tbaa !162 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #25, !inline_history !1095
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i.i: ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #17, !inline_history !1094
  br label %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN7openvdb5v13_05tools10BaseShaderEEclEPS4_.exit.i.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25, !inline_history !1095
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.e, %_ZNSt10unique_ptrIKN7openvdb5v13_05tools10BaseShaderESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.t, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.t, ptr %i.a, align 8, !tbaa !169
  %i.x = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i.i unwind label %bb.g, !inline_history !1096 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #26, !inline_history !1096
  unreachable

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i.i.i.i
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 512, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !454  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !262
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !455
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 64, !tbaa !496
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 64, !tbaa !496
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !261
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSA_4GridINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSB_22LevelSetRayIntersectorISO_NSB_16LinearSearchImplISO_Li0EdEELi2ENSA_4math3RayIdEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.x = load ptr, ptr %i.w, align 64, !tbaa !496 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = load ptr, ptr %0, align 64, !tbaa !100
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(480) dereferenceable(480) %0) #17, !inline_history !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !263
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw sub ptr %i.aj, i32 1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(480) %0, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !496 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i64, ptr %i.c, align 8, !tbaa !263
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(480) dereferenceable(480) %0) #17, !inline_history !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !263
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.q, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(480) %0, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !484
  store ptr %i.b, ptr %0, align 8, !tbaa !484
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !203
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.c, ptr %i.a, align 8, !tbaa !169
  %i.j = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.f ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.h, align 8, !tbaa !336
  %i.k = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i3.i.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.l = load i8, ptr %i.g, align 8, !tbaa !203, !range !125, !noundef !126
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw and ptr %i.k, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %3 = atomicrmw sub ptr %i.k, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.h, align 8, !tbaa !336
  %i.p = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !202
  %i.q = load i8, ptr %i.g, align 8, !tbaa !203, !range !125, !noundef !126
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.i:                                             ; preds = %bb.g
  %4 = atomicrmw sub ptr %i.p, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %bb.o, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.ax, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE14attachAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !352
  store i64 %i.v, ptr %i.t, align 8, !tbaa !352
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.c, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !485 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !165 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !302

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ai = phi ptr [ null, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !165
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !485
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !166
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !352 ; 3 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !352
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 8
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !383

bb.k:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.am, i64 %i.aq, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc6
  %i.as = icmp eq i64 %i.aq, 8
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load double, ptr %i.am, align 8, !tbaa !163
  store double %i.at, ptr %i.ai, align 8, !tbaa !163
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 %i.aq
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !485
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !tbaa.struct !445
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.c) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSA_4GridINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSB_22LevelSetRayIntersectorISO_NSB_16LinearSearchImplISO_Li0EdEELi2ENSA_4math3RayIdEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d0::split", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.o = call noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !1097 ; 2 uses
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1097 ; 6 uses
  %i.q = load ptr, ptr %i.n, align 64, !tbaa !456
  store ptr %i.q, ptr %i.p, align 8, !tbaa !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.t, ptr %i.s, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.u, align 8, !tbaa !458
  store ptr %i.p, ptr %i.n, align 64, !tbaa !496
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  store ptr %i.p, ptr %i.v, align 64, !tbaa !496
  %i.w = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(480) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.w), !inline_history !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.x = load i64, ptr %i.a, align 8, !tbaa !124
  %i.y = load i64, ptr %2, align 8, !tbaa !122
  %i.z = load i64, ptr %i.d, align 8, !tbaa !123
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.ac = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1098

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.ac, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.ae, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i8 %i.ae, -1
  store i8 %i.af, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124
  %i.d = load i64, ptr %2, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev:bb.a
  br i1 %i.p, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !221  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(1232) %i.r) #17, !inline_history !1145
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 496) #25
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !129 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !131
  %i.z = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.i, !inline_history !132 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26, !inline_history !132
  unreachable

_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(368) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %0, align 64, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !219, !range !125, !noundef !126
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(1232) %i.h) #17, !inline_history !1146
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 496) #25, !inline_history !1147
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 64, !tbaa !226 ; 4 uses
  %.not.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i
  %i.o = load i8, ptr %i.n, align 8, !tbaa !219, !range !125, !noundef !126
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !221  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(1232) %i.r) #17, !inline_history !1146
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 496) #25, !inline_history !1147
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !129 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !131
  %i.z = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i unwind label %bb.i, !inline_history !1148 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26, !inline_history !1148
  unreachable

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !454  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !262
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !455
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !259
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !261
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !259 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = load ptr, ptr %0, align 64, !tbaa !100
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) #17, !inline_history !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !263
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw sub ptr %i.aj, i32 1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !259 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i64, ptr %i.c, align 8, !tbaa !263
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) #17, !inline_history !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !263
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.q, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1149 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !122 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !122
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !124
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %i.q), !inline_history !1150
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !259
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !262
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !262
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  store i32 2, ptr %i.ak, align 32, !tbaa !260
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 356
  %i.am = load i8, ptr %i.s, align 4, !tbaa !261
  store i8 %i.am, ptr %i.al, align 4, !tbaa !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.ao = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !263
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1151 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !259
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !259
  %i.av = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av), !inline_history !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !124
  %i.ax = load i64, ptr %2, align 8, !tbaa !122
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !123
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1152

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 356
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  %.promoted.i18.pre = load i8, ptr %i.l, align 2, !tbaa !462
  %.pre = load i8, ptr %i.h, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %i.i, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i18.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.t = icmp ult i8 %.promoted.i, 8
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %5, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
end_hunk_7
begin_hunk_8_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev:bb.a
  br i1 %i.p, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !349  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(1232) %i.r) #17, !inline_history !1184
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 496) #25
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !167 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !169
  %i.z = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.i, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(368) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %0, align 64, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !348, !range !125, !noundef !126
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(1232) %i.h) #17, !inline_history !1185
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 496) #25, !inline_history !1186
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 64, !tbaa !351 ; 4 uses
  %.not.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i
  %i.o = load i8, ptr %i.n, align 8, !tbaa !348, !range !125, !noundef !126
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !349  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(1232) %i.r) #17, !inline_history !1185
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 496) #25, !inline_history !1186
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !167 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !169
  %i.z = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i unwind label %bb.i, !inline_history !1187 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26, !inline_history !1187
  unreachable

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !454  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !262
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !455
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !354
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !354
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !261
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !354 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = load ptr, ptr %0, align 64, !tbaa !100
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) #17, !inline_history !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !263
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw sub ptr %i.aj, i32 1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !354 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i64, ptr %i.c, align 8, !tbaa !263
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) #17, !inline_history !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !263
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw sub ptr %i.q, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1188 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !122 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !122
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !124
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %i.q), !inline_history !1189
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !354
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !262
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !262
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  store i32 2, ptr %i.ak, align 32, !tbaa !260
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 356
  %i.am = load i8, ptr %i.s, align 4, !tbaa !261
  store i8 %i.am, ptr %i.al, align 4, !tbaa !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.ao = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !263
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1190 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !354
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !354
  %i.av = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av), !inline_history !1190
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !124
  %i.ax = load i64, ptr %2, align 8, !tbaa !122
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !123
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1191

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 356
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  %.promoted.i18.pre = load i8, ptr %i.l, align 2, !tbaa !462
  %.pre = load i8, ptr %i.h, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %i.i, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i18.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.t = icmp ult i8 %.promoted.i, 8
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %5, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
end_hunk_8
