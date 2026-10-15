Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_stable_vector_test?download=true
inline.NumInlined: 3504
inline.NumDeleted: 1013
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5boost9container13stable_vectorI5emptyvED2Ev:bb.a
_ZN5boost9container13stable_vectorI5emptyvE5clearEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i.i, ptr %1, align 8, !tbaa !67, !alias.scope !356
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !67, !alias.scope !357
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5boost9container13stable_vectorI5emptyvE5eraseENS0_22stable_vector_iteratorIPS2_Lb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorI5emptyvE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i1, label %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr null, ptr %i.m, align 8, !tbaa !30
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !30
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #23
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit: ; preds = %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i, %bb.d, %_ZN5boost9container13stable_vectorI5emptyvE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !68   ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.w = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.w) #23
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorI5emptyvE5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 2 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 2 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !368
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51, !noalias !368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !368
  br label %_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit

_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !67, !alias.scope !368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !67, !alias.scope !369
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5boost9container13stable_vectorI5emptyvE5eraseENS0_22stable_vector_iteratorIPS2_Lb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !49
  store ptr null, ptr %i.g, align 8, !tbaa !30
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.08.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.i, %.lr.ph.preheader.i.i ]
  %.sroa.0.07.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.k = add i64 %.08.i.i, -1                     ; 2 uses
  %i.l = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !30
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i, i64 noundef 16) #23
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit: ; preds = %.lr.ph.i.i, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost9container13stable_vectorI5emptyvEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator.5", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.h, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !375
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51, !noalias !375
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !375
  br label %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit

_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53, !noalias !376
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.thread.i, label %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i

_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.thread.i: ; preds = %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.critedge.i

_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i: ; preds = %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51, !noalias !376
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49, !noalias !376 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not8.i = icmp eq ptr %i.m, %i.n
  br i1 %.not8.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i, %bb.e
  %i.o = phi ptr [ %i.u, %bb.e ], [ %storemerge.i, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i ] ; 2 uses
  %.sroa.03.09.i = phi ptr [ %i.r, %bb.e ], [ %i.m, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i ] ; 2 uses
  %.not7.i = icmp eq ptr %i.o, %i.g
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.sroa.03.09.i, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.n
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !374

.critedge.i:                                      ; preds = %bb.e, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.thread.i
  %9 = phi ptr [ %i.n, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i ], [ %i.j, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.thread.i ], [ %i.n, %bb.e ] ; 2 uses
  %10 = phi ptr [ %storemerge.i, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i ], [ %storemerge.i, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.thread.i ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.03.0.lcssa.i = phi ptr [ %i.m, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.i ], [ %i.j, %_ZN5boost9container13stable_vectorI5emptyvE5beginEv.exit.thread.i ], [ %i.r, %bb.e ]
  %i.v = icmp eq ptr %10, %i.g
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i, %.critedge.i
  %.sroa.03.0.lcssa.i14 = phi ptr [ %.sroa.03.0.lcssa.i, %.critedge.i ], [ %.sroa.03.09.i, %.lr.ph.i ]
  %11 = phi ptr [ %9, %.critedge.i ], [ %i.n, %.lr.ph.i ]
  store ptr %.sroa.03.0.lcssa.i14, ptr %2, align 8, !tbaa !67
  store ptr %11, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5boost9container13stable_vectorI5emptyvE5eraseENS0_22stable_vector_iteratorIPS2_Lb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN5boost9container13stable_vectorI5emptyvE6assignINS0_22stable_vector_iteratorIPS2_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESA_SA_.exit

bb.g:                                             ; preds = %.critedge.i
  store ptr %9, ptr %5, align 8, !tbaa !67
  store ptr %10, ptr %6, align 8, !tbaa !67
  store ptr %i.g, ptr %7, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5boost9container13stable_vectorI5emptyvE6insertINS0_22stable_vector_iteratorIPS2_Lb1EEEEENS_11move_detail13disable_if_orINS5_IS6_Lb0EEENS8_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENS8_5bool_ILb0EEESI_E4typeES7_SC_SC_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5boost9container13stable_vectorI5emptyvE6assignINS0_22stable_vector_iteratorIPS2_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESA_SA_.exit

_ZN5boost9container13stable_vectorI5emptyvE6assignINS0_22stable_vector_iteratorIPS2_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESA_SA_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container13stable_vectorI5emptyvE6assignINS0_22stable_vector_iteratorIPS2_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESA_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorI5emptyvE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.d = add i64 %i.c, -3
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.e = select i1 %.not.i, i64 0, i64 %i.d
  %i.f = sub i64 0, %i.b
  %.not = icmp eq i64 %i.e, %i.f
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.b ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  store ptr null, ptr %i.k, align 8, !tbaa !30
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.n = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.o = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !30
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #23
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !57
  %.pre = load i64, ptr %i.a, align 8, !tbaa !53
  br label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit: ; preds = %bb.c, %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i
  %i.p = phi i64 [ %.pre, %_ZN5boost9container13stable_vectorI5emptyvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS4_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS2_EEEE.exit.i ], [ %i.b, %bb.c ] ; 5 uses
  %i.q = icmp ult i64 %i.p, 4
  br i1 %i.q, label %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit.thread, label %bb.f

_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit.thread: ; preds = %bb.b, %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !68   ; 2 uses
  %.not.i.i4 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i4, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit.thread
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i, label %.sink.split.i.i, label %.sink.split.sink.split.i.i, !prof !74

.sink.split.sink.split.i.i:                       ; preds = %bb.e
  %i.v = shl i64 %i.t, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.v) #23
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.sink.split.i.i, %bb.e
  store ptr null, ptr %i.r, align 8, !tbaa !51
  store i64 0, ptr %i.s, align 8, !tbaa !73
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit: ; preds = %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit.thread, %.sink.split.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !382
  br label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorI5emptyvE15priv_clear_poolEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ab = icmp ult i64 %i.p, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %i.ac, label %bb.h, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i7, !prof !74

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i7: ; preds = %bb.g
  %i.ad = shl nuw nsw i64 %i.p, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #22 ; 6 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !51  ; 3 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = icmp ne ptr %i.af, null                 ; 2 uses
  %spec.select.i.i.i.i.i.i.i8 = and i1 %i.ai, %i.ah
  br i1 %spec.select.i.i.i.i.i.i.i8, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i.i16, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i9, !prof !58

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i.i16: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i7
  %.idx.i.i.i17 = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 8 %i.af, i64 %.idx.i.i.i17, i1 false)
  br label %.sink.split.sink.split.i.i12

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i9: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i7
  br i1 %i.ai, label %.sink.split.sink.split.i.i12, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit19

.sink.split.sink.split.i.i12:                     ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i.i16, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i9
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #23
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit19

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit19: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i9, %.sink.split.sink.split.i.i12
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !51
  store i64 %i.p, ptr %i.z, align 8, !tbaa !73
  %.not2 = icmp eq ptr %i.ae, %i.y
  br i1 %.not2, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE13shrink_to_fitEv.exit19
  %i.al = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !383
  %.idx = shl nsw i64 %i.al, 3                    ; 2 uses
  %i.am = add nsw i64 %.idx, -16                  ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 %i.am
  %.not2.i.i = icmp eq i64 %i.am, 0
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ao = add i64 %.idx, -24                      ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %i.ar = phi ptr [ %i.at, %.lr.ph.i.i.prol ], [ %i.ae, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !381

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.unr = phi ptr [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.at, %.lr.ph.i.i.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.av = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEED2Ev:bb.a
_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i.i, ptr %1, align 8, !tbaa !109, !alias.scope !909
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !109, !alias.scope !910
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !102    ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i1, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr null, ptr %i.m, align 8, !tbaa !30
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !30
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #23
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !102
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, %bb.d, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.w = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.w) #23
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvED2Ev.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 2 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 2 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !921
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97, !noalias !921
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !921
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !109, !alias.scope !921
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !109, !alias.scope !922
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !102    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !49
  store ptr null, ptr %i.g, align 8, !tbaa !30
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.08.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.i, %.lr.ph.preheader.i.i ]
  %.sroa.0.07.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.k = add i64 %.08.i.i, -1                     ; 2 uses
  %i.l = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !30
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i, i64 noundef 16) #23
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit: ; preds = %.lr.ph.i.i, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.h, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !928
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97, !noalias !928
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !928
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !99, !noalias !929
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.thread.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.thread.i: ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.critedge.i

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i: ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97, !noalias !929
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49, !noalias !929 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not8.i = icmp eq ptr %i.m, %i.n
  br i1 %.not8.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i, %bb.e
  %i.o = phi ptr [ %i.x, %bb.e ], [ %storemerge.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i ] ; 3 uses
  %.sroa.03.09.i = phi ptr [ %i.u, %bb.e ], [ %i.m, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i ] ; 3 uses
  %.not7.i = icmp eq ptr %i.o, %i.g
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !112
  store i32 %i.r, ptr %i.q, align 4, !tbaa !112
  %i.s = load ptr, ptr %.sroa.03.09.i, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !927

.critedge.i:                                      ; preds = %bb.e, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.thread.i
  %9 = phi ptr [ %i.n, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i ], [ %i.j, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.thread.i ], [ %i.n, %bb.e ] ; 2 uses
  %10 = phi ptr [ %storemerge.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i ], [ %storemerge.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.thread.i ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.03.0.lcssa.i = phi ptr [ %i.m, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.i ], [ %i.j, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit.thread.i ], [ %i.u, %bb.e ]
  %i.y = icmp eq ptr %10, %i.g
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i, %.critedge.i
  %.sroa.03.0.lcssa.i14 = phi ptr [ %.sroa.03.0.lcssa.i, %.critedge.i ], [ %.sroa.03.09.i, %.lr.ph.i ]
  %11 = phi ptr [ %9, %.critedge.i ], [ %i.n, %.lr.ph.i ]
  store ptr %.sroa.03.0.lcssa.i14, ptr %2, align 8, !tbaa !109
  store ptr %11, ptr %3, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit

bb.g:                                             ; preds = %.critedge.i
  store ptr %9, ptr %5, align 8, !tbaa !109
  store ptr %10, ptr %6, align 8, !tbaa !109
  store ptr %i.g, ptr %7, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail13disable_if_orINS8_IS9_Lb0EEENSB_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSB_5bool_ILb0EEESL_E4typeESA_SF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !102    ; 3 uses
  %i.d = add i64 %i.c, -3
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.e = select i1 %.not.i, i64 0, i64 %i.d
  %i.f = sub i64 0, %i.b
  %.not = icmp eq i64 %i.e, %i.f
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.b ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  store ptr null, ptr %i.k, align 8, !tbaa !30
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.n = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.o = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !30
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #23
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !102
  %.pre = load i64, ptr %i.a, align 8, !tbaa !99
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit: ; preds = %bb.c, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i
  %i.p = phi i64 [ %.pre, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS7_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i ], [ %i.b, %bb.c ]
  %i.q = icmp ult i64 %i.p, 4
  br i1 %i.q, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit.thread, label %bb.e

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit.thread: ; preds = %bb.b, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !tbaa !99
  tail call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !935
  br label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit

bb.e:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  tail call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !97   ; 4 uses
  %.not2 = icmp eq ptr %i.v, %i.u
  br i1 %.not2, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !936
  %.idx = shl nsw i64 %i.w, 3                     ; 2 uses
  %i.x = add nsw i64 %.idx, -16                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %.not2.i.i = icmp eq i64 %i.x, 0
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.z = add i64 %.idx, -24                       ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !934

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.unr = phi ptr [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.prol ]
  %i.af = icmp ult i64 %i.z, 56
  br i1 %i.af, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ag = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  store ptr %i.am, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  store ptr %i.as, ptr %i.at, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49
  store ptr %i.au, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %.not.i.i4.7 = icmp eq ptr %i.aw, %i.y
  br i1 %.not.i.i4.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.f, %bb.e, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_clear_poolEv.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE16priv_move_assignEOS6_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE16priv_move_assignEOS6_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !955
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv.exit
end_hunk_1
begin_hunk_2_@_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEED2Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !33
  %i.q = load i64, ptr %0, align 8, !tbaa !125    ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr %i.m, ptr %i.p, align 8, !tbaa !33
  store ptr %i.r, ptr %i.o, align 8, !tbaa !30
  store ptr null, ptr %i.m, align 8, !tbaa !30
  store i64 %i.q, ptr %1, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN5boost9container14node_allocatorINS0_20stable_vector_detail4nodeIPNS0_4test24movable_and_copyable_intEEELm256ELm2EE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS9_27basic_multiallocation_chainIPvEES7_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit: ; preds = %bb.g, %bb.d, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !131
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.v)
          to label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 2 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 2 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122, !noalias !1467
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120, !noalias !1467
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !1467
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !109, !alias.scope !1467
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !109, !alias.scope !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::dtl::transform_multiallocation_chain.17", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  %i.k = load i64, ptr %0, align 8, !tbaa !125    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !49
  store ptr %i.g, ptr %i.j, align 8, !tbaa !33
  store ptr %i.l, ptr %i.i, align 8, !tbaa !30
  store ptr null, ptr %i.g, align 8, !tbaa !30
  store i64 %i.k, ptr %1, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @_ZN5boost9container14node_allocatorINS0_20stable_vector_detail4nodeIPNS0_4test24movable_and_copyable_intEEELm256ELm2EE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS9_27basic_multiallocation_chainIPvEES7_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.h, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122, !noalias !1474
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120, !noalias !1474
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !1474
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !122, !noalias !1475
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.thread.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.thread.i: ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.critedge.i

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i: ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !120, !noalias !1475
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49, !noalias !1475 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not8.i = icmp eq ptr %i.m, %i.n
  br i1 %.not8.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i, %bb.e
  %i.o = phi ptr [ %i.x, %bb.e ], [ %storemerge.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i ] ; 3 uses
  %.sroa.03.09.i = phi ptr [ %i.u, %bb.e ], [ %i.m, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i ] ; 3 uses
  %.not7.i = icmp eq ptr %i.o, %i.g
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !112
  store i32 %i.r, ptr %i.q, align 4, !tbaa !112
  %i.s = load ptr, ptr %.sroa.03.09.i, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1473

.critedge.i:                                      ; preds = %bb.e, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.thread.i
  %9 = phi ptr [ %i.n, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i ], [ %i.j, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.thread.i ], [ %i.n, %bb.e ] ; 2 uses
  %10 = phi ptr [ %storemerge.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i ], [ %storemerge.i, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.thread.i ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.03.0.lcssa.i = phi ptr [ %i.m, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i ], [ %i.j, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.thread.i ], [ %i.u, %bb.e ]
  %i.y = icmp eq ptr %10, %i.g
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i, %.critedge.i
  %.sroa.03.0.lcssa.i14 = phi ptr [ %.sroa.03.0.lcssa.i, %.critedge.i ], [ %.sroa.03.09.i, %.lr.ph.i ]
  %11 = phi ptr [ %9, %.critedge.i ], [ %i.n, %.lr.ph.i ]
  store ptr %.sroa.03.0.lcssa.i14, ptr %2, align 8, !tbaa !109
  store ptr %11, ptr %3, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit

bb.g:                                             ; preds = %.critedge.i
  store ptr %9, ptr %5, align 8, !tbaa !109
  store ptr %10, ptr %6, align 8, !tbaa !109
  store ptr %i.g, ptr %7, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6insertINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail13disable_if_orINS8_IS9_Lb0EEENSB_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSB_5bool_ILb0EEESL_E4typeESA_SF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6assignINS0_22stable_vector_iteratorIPS3_Lb1EEEEENS_11move_detail22disable_if_convertibleIT_mvE4typeESD_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::dtl::transform_multiallocation_chain.17", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122  ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.d = add i64 %i.c, -3
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.e = select i1 %.not.i, i64 0, i64 %i.d
  %i.f = sub i64 0, %i.b
  %.not = icmp eq i64 %i.e, %i.f
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.b ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !33
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !49
  store ptr %i.k, ptr %i.n, align 8, !tbaa !33
  store ptr %i.o, ptr %i.m, align 8, !tbaa !30
  store ptr null, ptr %i.k, align 8, !tbaa !30
  store i64 %i.c, ptr %1, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_ZN5boost9container14node_allocatorINS0_20stable_vector_detail4nodeIPNS0_4test24movable_and_copyable_intEEELm256ELm2EE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS9_27basic_multiallocation_chainIPvEES7_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %.pre = load i64, ptr %i.a, align 8, !tbaa !122
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit: ; preds = %bb.c, %bb.f
  %i.p = phi i64 [ %.pre, %bb.f ], [ %i.b, %bb.c ]
  %i.q = icmp ult i64 %i.p, 4
  br i1 %i.q, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit.thread, label %bb.g

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit.thread: ; preds = %bb.b, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !tbaa !122
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj2EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !1481
  br label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit

bb.g:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj2EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #23
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !120  ; 4 uses
  %.not2 = icmp eq ptr %i.v, %i.u
  br i1 %.not2, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.a, align 8, !tbaa !122, !noalias !1482
  %.idx = shl nsw i64 %i.w, 3                     ; 2 uses
  %i.x = add nsw i64 %.idx, -16                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %.not2.i.i = icmp eq i64 %i.x, 0
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.z = add i64 %.idx, -24                       ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1480

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.unr = phi ptr [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.prol ]
  %i.af = icmp ult i64 %i.z, 56
  br i1 %i.af, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ag = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  store ptr %i.am, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  store ptr %i.as, ptr %i.at, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49
  store ptr %i.au, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %.not.i.i4.7 = icmp eq ptr %i.aw, %i.y
  br i1 %.not.i.i4.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.h, %bb.g, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15priv_clear_poolEv.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE16priv_move_assignEOS6_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE16priv_move_assignEOS6_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.23", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator.22", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122, !noalias !1501
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_2
