Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/null_iterators_test?download=true
inline.NumInlined: 1047
inline.NumDeleted: 544
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z15check_plus_zeroIN5boost9container13stable_vectorIivEEEvRKSt26random_access_iterator_tag:bb.a
bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit5, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i8 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i8, label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit

_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit: ; preds = %bb.k, %bb.j, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit7
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit, !prof !9

bb.l:                                             ; preds = %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i10 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i10, label %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit: ; preds = %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit, !prof !9

bb.n:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i12 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i12, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container22stable_vector_iteratorIPiLb1EEEEvT_.exit, %bb.n, %bb.o
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit, !prof !9

bb.p:                                             ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i14 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i14, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb1EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container22stable_vector_iteratorIPiLb0EEEEEEvT_.exit, %bb.p, %bb.q
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.7", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.7", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !74
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN5boost9container13stable_vectorIivE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21, !noalias !74
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !74
  br label %_ZN5boost9container13stable_vectorIivE5clearEv.exit

_ZN5boost9container13stable_vectorIivE5clearEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i.i, ptr %1, align 8, !tbaa !25, !alias.scope !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !25, !alias.scope !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN5boost9container13stable_vectorIivE5eraseENS0_22stable_vector_iteratorIPiLb1EEES5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorIivE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i1, label %_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !23
  store ptr null, ptr %i.m, align 8, !tbaa !32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !32
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #15
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !71

_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !29
  br label %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit: ; preds = %_ZN5boost9container13stable_vectorIivE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS3_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE.exit.i, %bb.d, %_ZN5boost9container13stable_vectorIivE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.w) #15
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorIivE15priv_clear_poolEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIivE5eraseENS0_22stable_vector_iteratorIPiLb1EEES5_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::stable_vector_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca ptr, align 8                  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !93 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21, !noalias !93
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !93
  br label %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit

_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %2, align 8, !tbaa !25
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = load ptr, ptr %storemerge.i.i, align 8, !tbaa !94
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = sub nsw i64 %i.r, %i.m                   ; 7 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  store ptr null, ptr %.sroa.3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21, !noalias !95 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.l ; 8 uses
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %.031.prol = phi i64 [ %i.x, %.prol.preheader ], [ %i.s, %bb.d ]
  %.sroa.016.030.prol = phi ptr [ %i.y, %.prol.preheader ], [ %i.v, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.z, %.prol.preheader ], [ %.sroa.3, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  %i.x = add i64 %.031.prol, -1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.030.prol, i64 8 ; 2 uses
  %i.z = load ptr, ptr %.sroa.016.030.prol, align 8, !tbaa !23 ; 5 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !32
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !32
  store ptr %i.z, ptr %i.w, align 8, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !84

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.lcssa.unr = phi ptr [ poison, %bb.d ], [ %i.z, %.prol.preheader ]
  %.031.unr = phi i64 [ %i.s, %bb.d ], [ %i.x, %.prol.preheader ]
  %.sroa.016.030.unr = phi ptr [ %i.v, %bb.d ], [ %i.y, %.prol.preheader ]
  %.unr = phi ptr [ %.sroa.3, %bb.d ], [ %i.z, %.prol.preheader ]
  %4 = sub nsw i64 %i.m, %i.r
  %5 = icmp ugt i64 %4, -4
  br i1 %5, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.031 = phi i64 [ %i.al, %.new ], [ %.031.unr, %.prol.loopexit ]
  %.sroa.016.030 = phi ptr [ %i.am, %.new ], [ %.sroa.016.030.unr, %.prol.loopexit ] ; 5 uses
  %i.ab = phi ptr [ %i.an, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 8
  %i.ad = load ptr, ptr %.sroa.016.030, align 8, !tbaa !23 ; 4 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !32
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 16
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 4 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !32
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 24
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !23 ; 4 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !32
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !32
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !32
  %i.al = add i64 %.031, -4                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 32
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 4 uses
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !32
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !32
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !32
  %.not11.3 = icmp eq i64 %i.al, 0
  br i1 %.not11.3, label %.unr-lcssa, label %.new, !llvm.loop !85

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.an, %.new ]
  %.idx = shl nsw i64 %i.s, 3                     ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.v, i64 %.idx
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.b ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 -8     ; 2 uses
  %i.at = load i64, ptr %1, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i, label %bb.e

bb.e:                                             ; preds = %.unr-lcssa
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !23
  %.sroa.3.0..sroa.3.8.37 = load ptr, ptr %.sroa.3, align 8, !tbaa !32
  store ptr %i.av, ptr %.sroa.3, align 8, !tbaa !32
  store ptr %.sroa.3.0..sroa.3.8.37, ptr %i.au, align 8, !tbaa !32
  %i.aw = add i64 %i.s, %i.at
  br label %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i

_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i: ; preds = %.unr-lcssa, %bb.e
  %i.ax = phi i64 [ %i.aw, %bb.e ], [ %i.s, %.unr-lcssa ]
  store i64 %i.ax, ptr %1, align 8, !tbaa !29
  %.sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.3.0..sroa.3.8., null
  %spec.select = select i1 %.not.i.i.i.i.i, ptr null, ptr %.lcssa, !prof !97
  store ptr %.sroa.3.0..sroa.3.8., ptr %i.ar, align 8, !tbaa !23
  store ptr %spec.select, ptr %i.as, align 8, !tbaa !23
  %.idx25 = shl nuw nsw i64 %i.b, 3               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx25
  %i.az = add i64 %.idx, %i.l                     ; 2 uses
  %.not26 = icmp eq i64 %i.az, %.idx25
  %i.ba = ptrtoint ptr %i.ay to i64
  br i1 %.not26, label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, label %bb.f, !prof !97

bb.f:                                             ; preds = %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i
  %gepdiff = sub i64 %.idx25, %i.az               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.ap, i64 %gepdiff, i1 false), !noalias !98
  %i.bb = getelementptr inbounds i8, ptr %i.v, i64 %gepdiff
  %.pre.i12 = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !98
  br label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i

_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i: ; preds = %bb.f, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i
  %i.bc = phi i64 [ %.pre.i12, %bb.f ], [ %i.b, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i ]
  %.0.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %i.v, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i ]
  %i.bd = ptrtoint ptr %.0.i.i.i to i64
  %i.be = sub i64 %i.ba, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = sub i64 %i.bc, %i.bf                    ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !99, !noalias !98
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !21, !noalias !100
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.v, %i.bj
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, %.lr.ph.i.i
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.v, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i ] ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.bj
  br i1 %.not.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !92

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit: ; preds = %.lr.ph.i.i, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.pre = load ptr, ptr %3, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  %i.bn = phi ptr [ %.pre, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit ], [ %i.n, %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit ]
  store ptr %i.bn, ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15check_plus_zeroIN5boost9container13static_vectorIiLm1EvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, !prof !9

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i1, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, !prof !9

bb.f:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i3 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i3, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i5 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, %bb.h, %bb.i
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i7 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i7, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit: ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, %bb.j, %bb.k
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, !prof !9

bb.l:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit
end_hunk_0
