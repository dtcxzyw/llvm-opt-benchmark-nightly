Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMorph?download=true
inline.NumInlined: 30422
inline.NumDeleted: 8287
loop-unroll.NumCompletelyUnrolled: 293
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 900
begin_hunk_0_@_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE:bb.a

bb.e:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !453 ; 2 uses
  %i.bn = shl i32 %i.a, 3
  %i.bo = and i32 %i.bn, 31744
  %i.bp = lshr i32 %i.ba, 2
  %i.bq = and i32 %i.bp, 992
  %i.br = or disjoint i32 %i.bq, %i.bo            ; 2 uses
  %i.bs = lshr i32 %i.bg, 7
  %i.bt = and i32 %i.bs, 31
  %i.bu = or disjoint i32 %i.bt, %i.br            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 262144
  %i.bw = lshr i32 %i.br, 6
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !266
  %i.ca = and i32 %i.bu, 63
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.bz, %i.cc
  %.not.i.i = icmp eq i64 %i.cd, 0
  %i.ce = zext nneg i32 %i.bu to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ce ; 3 uses
  br i1 %.not.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm0ELm4EEET0_SM_SQ_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !219
  %i.ch = and i32 %i.ba, -128
  %i.ci = and i32 %i.bg, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.ch to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ac to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ad, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !219
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !451
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !219
  %i.cl = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ck, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm0ELm4EEET0_SM_SQ_.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread, %bb.d, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !443
  %i.co = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(68) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm0ELm4EEET0_SM_SQ_.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm0ELm4EEET0_SM_SQ_.exit: ; preds = %bb.f, %bb.e, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit
  %.1.i = phi ptr [ %i.ab, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit ], [ %i.au, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit ], [ %i.co, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit ], [ %i.cf, %bb.e ], [ %i.cl, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !429  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %0, ptr %i.a, align 8, !tbaa !435
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit unwind label %bb.d ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !219
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx, align 4, !tbaa !219
  %.06.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx, align 8, !tbaa !219
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !441
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !443
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !429  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %0, ptr %i.a, align 8, !tbaa !435
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.c, !inline_history !468 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !468
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !429
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !219
  %.06.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i, align 4, !tbaa !219
  %.06.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !441
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !429
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 20 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !435
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !477
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !435
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !435
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !483 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !2012

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp, !inline_history !2013

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
  %i.w = load ptr, ptr %7, align 8, !tbaa !432    ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.av

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %bb.h, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  %8 = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %.critedge, label %.lr.ph, !llvm.loop !2014

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit, %bb.g
  store i8 1, ptr %i.f, align 8, !tbaa !433
  %i.z = load ptr, ptr %7, align 8, !tbaa !432
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !477
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %bb.g

.lr.ph.i57:                                       ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !435
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !435
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !483 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !2012

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.j, %bb.i
  %.0.lcssa.i56 = phi ptr [ %.07.i58, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  br i1 %i.al, label %bb.k, label %bb.g, !llvm.loop !2014

bb.k:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  %10 = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb.l, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %7, align 8, !tbaa !432
  %i.an = atomicrmw add ptr %i.am, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !433
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.g, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit
  %i.ao = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.ao
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ap = xor i64 %i.ao, %.080
  %i.aq = and i64 %i.ap, %i.b
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %.080, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.012.i.i = phi i64 [ %i.ar, %bb.n ], [ %i.at, %bb.o ] ; 2 uses
  %i.as = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.as, 0
  %i.at = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.o, label %bb.p, !llvm.loop !14

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.at, -1
  %i.av = and i64 %i.au, %i.b                     ; 2 uses
  %i.aw = or i64 %i.av, 1
  %i.ax = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = xor i64 %i.ax, 63
  %i.az = lshr exact i64 -9223372036854775808, %i.ax
  %i.ba = and i64 %i.az, -2
  %i.bb = sub i64 %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ay
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8
  %i.bh = icmp eq ptr %i.bg, inttoptr (i64 3 to ptr)
  br i1 %i.bh, label %bb.q, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.q:                                             ; preds = %bb.m, %bb.p, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !477
  %i.bj = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bk = add i64 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bm = load atomic ptr, ptr %i.bl monotonic, align 8
  store ptr %i.bm, ptr %.145, align 8, !tbaa !483
  store atomic ptr %.145, ptr %i.bl monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bk, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = add i64 %.5.ph, 1
  %i.bo = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63                       ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bp ; 2 uses
  %i.br = load atomic ptr, ptr %i.bq acquire, align 8
  %.not12.i = icmp eq ptr %i.br, null
  br i1 %.not12.i, label %bb.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = cmpxchg ptr %i.bq, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bt = extractvalue { ptr, i1 } %i.bs, 1
  %spec.select.i = select i1 %i.bt, i64 %i.bp, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.s, %bb.r, %bb.q, %bb.k, %bb.l, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.l ], [ null, %bb.s ], [ %.145, %bb.k ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.q ], [ null, %bb.r ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.l ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.l ], [ %spec.select.i, %bb.s ], [ %.039, %bb.k ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.l ], [ %.145, %bb.s ], [ %.0.lcssa.i56, %bb.k ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.q ], [ %.145, %bb.r ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.t

bb.t:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bv = load atomic i64, ptr %i.bu monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = and i64 %i.bv, -3
  %.not.i.i66 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bx = and i64 %i.bv, 3
  %.not.i7.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.by = atomicrmw add ptr %i.bu, i64 4 seq_cst, align 8
  %i.bz = and i64 %i.by, 1
  %.not5.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = atomicrmw sub ptr %i.bu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.y

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.u
  %i.cb = cmpxchg ptr %i.bu, i64 %i.bv, i64 1 seq_cst seq_cst, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.u, %bb.v, %bb.x
  call void @llvm.x86.sse2.pause()
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.y
  %.sroa.0.0 = phi i32 [ 2, %bb.y ], [ %i.cr, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.cd = load atomic i64, ptr %i.bu monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = and i64 %i.cd, -3
  %.not.i.i70 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cf = and i64 %i.cd, 3
  %.not.i7.i67 = icmp eq i64 %i.cf, 0
  br i1 %.not.i7.i67, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cg = atomicrmw add ptr %i.bu, i64 4 seq_cst, align 8
  %i.ch = and i64 %i.cg, 1
  %.not5.not.i.i68 = icmp eq i64 %i.ch, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = atomicrmw sub ptr %i.bu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ae

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.aa
  %i.cj = cmpxchg ptr %i.bu, i64 %i.cd, i64 1 seq_cst seq_cst, align 8
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2015

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
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cr = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !2016

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !432   ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !432
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = atomicrmw and ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE:bb.a

bb.e:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1210 ; 2 uses
  %i.bn = shl i32 %i.a, 3
  %i.bo = and i32 %i.bn, 31744
  %i.bp = lshr i32 %i.ba, 2
  %i.bq = and i32 %i.bp, 992
  %i.br = or disjoint i32 %i.bq, %i.bo            ; 2 uses
  %i.bs = lshr i32 %i.bg, 7
  %i.bt = and i32 %i.bs, 31
  %i.bu = or disjoint i32 %i.bt, %i.br            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 262144
  %i.bw = lshr i32 %i.br, 6
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !266
  %i.ca = and i32 %i.bu, 63
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.bz, %i.cc
  %.not.i.i = icmp eq i64 %i.cd, 0
  %i.ce = zext nneg i32 %i.bu to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ce ; 3 uses
  br i1 %.not.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm0ELm4EEET0_SM_SQ_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !219
  %i.ch = and i32 %i.ba, -128
  %i.ci = and i32 %i.bg, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.ch to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ac to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ad, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !219
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !1208
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !219
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ck, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm0ELm4EEET0_SM_SQ_.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread, %bb.d, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1205
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm0ELm4EEET0_SM_SQ_.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm0ELm4EEET0_SM_SQ_.exit: ; preds = %bb.f, %bb.e, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit
  %.1.i = phi ptr [ %i.ab, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit ], [ %i.au, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit ], [ %i.co, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit ], [ %i.cf, %bb.e ], [ %i.cl, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1195 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %0, ptr %i.a, align 8, !tbaa !1197
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit unwind label %bb.d ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !219
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx, align 4, !tbaa !219
  %.06.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx, align 8, !tbaa !219
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !1203
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1195 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !1205
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1195 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %0, ptr %i.a, align 8, !tbaa !1197
  %i.e = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.c, !inline_history !1216 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !1216
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE5clearEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !1195
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372034707292159, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !219
  %.06.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i, align 4, !tbaa !219
  %.06.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !1203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !1195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 20 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1197
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !1224
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !1197
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1197
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !483 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !4675

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp, !inline_history !4676

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
  %i.w = load ptr, ptr %7, align 8, !tbaa !432    ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.av

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %bb.h, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  %8 = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %.critedge, label %.lr.ph, !llvm.loop !4677

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit, %bb.g
  store i8 1, ptr %i.f, align 8, !tbaa !433
  %i.z = load ptr, ptr %7, align 8, !tbaa !432
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1224
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %bb.g

.lr.ph.i57:                                       ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !1197
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1197
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !483 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !4675

_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.j, %bb.i
  %.0.lcssa.i56 = phi ptr [ %.07.i58, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  br i1 %i.al, label %bb.k, label %bb.g, !llvm.loop !4677

bb.k:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit59
  %10 = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb.l, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %7, align 8, !tbaa !432
  %i.an = atomicrmw add ptr %i.am, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !433
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.g, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE20allocate_node_helperISI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEESU_RKT_S13_T0_St17integral_constantIbLb1EE.exit
  %i.ao = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.ao
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ap = xor i64 %i.ao, %.080
  %i.aq = and i64 %i.ap, %i.b
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %.080, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.012.i.i = phi i64 [ %i.ar, %bb.n ], [ %i.at, %bb.o ] ; 2 uses
  %i.as = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.as, 0
  %i.at = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.o, label %bb.p, !llvm.loop !105

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.at, -1
  %i.av = and i64 %i.au, %i.b                     ; 2 uses
  %i.aw = or i64 %i.av, 1
  %i.ax = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = xor i64 %i.ax, 63
  %i.az = lshr exact i64 -9223372036854775808, %i.ax
  %i.ba = and i64 %i.az, -2
  %i.bb = sub i64 %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ay
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8
  %i.bh = icmp eq ptr %i.bg, inttoptr (i64 3 to ptr)
  br i1 %i.bh, label %bb.q, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.q:                                             ; preds = %bb.m, %bb.p, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !1224
  %i.bj = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bk = add i64 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bm = load atomic ptr, ptr %i.bl monotonic, align 8
  store ptr %i.bm, ptr %.145, align 8, !tbaa !483
  store atomic ptr %.145, ptr %i.bl monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bk, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = add i64 %.5.ph, 1
  %i.bo = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63                       ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bp ; 2 uses
  %i.br = load atomic ptr, ptr %i.bq acquire, align 8
  %.not12.i = icmp eq ptr %i.br, null
  br i1 %.not12.i, label %bb.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = cmpxchg ptr %i.bq, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bt = extractvalue { ptr, i1 } %i.bs, 1
  %spec.select.i = select i1 %i.bt, i64 %i.bp, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.s, %bb.r, %bb.q, %bb.k, %bb.l, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.l ], [ null, %bb.s ], [ %.145, %bb.k ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.q ], [ null, %bb.r ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.l ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.l ], [ %spec.select.i, %bb.s ], [ %.039, %bb.k ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.l ], [ %.145, %bb.s ], [ %.0.lcssa.i56, %bb.k ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13search_bucketISI_EEPNSR_4nodeERKT_PNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.q ], [ %.145, %bb.r ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.t

bb.t:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bv = load atomic i64, ptr %i.bu monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = and i64 %i.bv, -3
  %.not.i.i66 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bx = and i64 %i.bv, 3
  %.not.i7.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.by = atomicrmw add ptr %i.bu, i64 4 seq_cst, align 8
  %i.bz = and i64 %i.by, 1
  %.not5.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = atomicrmw sub ptr %i.bu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.y

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.u
  %i.cb = cmpxchg ptr %i.bu, i64 %i.bv, i64 1 seq_cst seq_cst, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.u, %bb.v, %bb.x
  call void @llvm.x86.sse2.pause()
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.y
  %.sroa.0.0 = phi i32 [ 2, %bb.y ], [ %i.cr, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.cd = load atomic i64, ptr %i.bu monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = and i64 %i.cd, -3
  %.not.i.i70 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cf = and i64 %i.cd, 3
  %.not.i7.i67 = icmp eq i64 %i.cf, 0
  br i1 %.not.i7.i67, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cg = atomicrmw add ptr %i.bu, i64 4 seq_cst, align 8
  %i.ch = and i64 %i.cg, 1
  %.not5.not.i.i68 = icmp eq i64 %i.ch, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = atomicrmw sub ptr %i.bu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ae

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.aa
  %i.cj = cmpxchg ptr %i.bu, i64 %i.cd, i64 1 seq_cst seq_cst, align 8
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4678

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
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cr = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !4679

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !432   ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !432
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !433, !range !222, !noundef !223
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = atomicrmw and ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

end_hunk_1
