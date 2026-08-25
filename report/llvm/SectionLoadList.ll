Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SectionLoadList?download=true
inline.NumInlined: 1066
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12lldb_private15SectionLoadListC2ERKS0_:bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !29
  store ptr %i.a, ptr %i.c, align 8, !tbaa !8
  store ptr %i.a, ptr %i.d, align 8, !tbaa !15
  store i64 0, ptr %i.e, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i
  %i.s = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i, label %bb.f, !llvm.loop !31

_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i
  %.0.i.i7.i.i.i = phi ptr [ %i.s, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %.not.i.i8.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i8.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i, label %bb.g, !llvm.loop !34

_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i, ptr %i.d, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30
  store i64 %i.y, ptr %i.e, align 8, !tbaa !30
  store ptr %i.s, ptr %i.b, align 8, !tbaa !21
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !35
  %.pre6.i.i = load ptr, ptr %2, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i
  %i.z = phi ptr [ %.pre6.i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i ], [ %i.j, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i ]
  %i.aa = phi ptr [ %.pre.i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i ], [ %0, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i ]
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E8copyFromERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_ZN4llvm8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEaSERKSA_.exit

_ZN4llvm8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEaSERKSA_.exit: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.h
  %i.ac = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15SectionLoadListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::shared_ptr<lldb_private::Section>>, std::_Select1st<std::pair<const unsigned long, std::shared_ptr<lldb_private::Section>>>, std::less<unsigned long>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @_ZSt4lockISt15recursive_mutexS0_JEEvRT_RT0_DpRT1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN4llvm8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEaSERKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.c, %bb.b
  %.sink.i.i.i = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %i.e, align 8, !tbaa !25
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !8
  store ptr %i.l, ptr %i.f, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i
  %i.q = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i, label %bb.e, !llvm.loop !31

_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i: ; preds = %bb.e
  store ptr %.0.i.i.i.i.i, ptr %i.m, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i
  %.0.i.i7.i.i.i = phi ptr [ %i.q, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %.not.i.i8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i8.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i, label %bb.f, !llvm.loop !34

_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i: ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i, ptr %i.f, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30
  store i64 %i.w, ptr %i.n, align 8, !tbaa !30
  store ptr %i.q, ptr %i.c, align 8, !tbaa !21
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %.pre6.i.i = load ptr, ptr %2, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i
  %i.x = phi ptr [ %.pre6.i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i ], [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i ]
  %i.y = phi ptr [ %.pre.i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ERKSC_RT0_.exit.i.i ], [ %0, %_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE20_Reuse_or_alloc_nodeC2ERSC_.exit.i.i ]
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E8copyFromERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_ZN4llvm8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEaSERKSA_.exit

_ZN4llvm8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEaSERKSA_.exit: ; preds = %bb.a, %bb.g
  %i.ab = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #16 ; 0 uses
  %i.ac = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4lockISt15recursive_mutexS0_JEEvRT_RT0_DpRT1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca [2 x %"class.std::unique_lock"], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %0, ptr %2, align 16, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.b, align 16, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.258, %bb.j ]    ; 4 uses
  %i.d = zext nneg i32 %.0 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt15recursive_mutexE4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #17
  unreachable

_ZNSt11unique_lockISt15recursive_mutexE4lockEv.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !40
  %i.i = xor i32 %.0, 1                           ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 2 uses
  %.not.i28 = icmp eq ptr %i.l, null
  br i1 %.not.i28, label %split, label %bb.f

split:                                            ; preds = %_ZNSt11unique_lockISt15recursive_mutexE4lockEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #17
  unreachable

bb.f:                                             ; preds = %_ZNSt11unique_lockISt15recursive_mutexE4lockEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !40, !range !41, !noundef !42
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %split47, label %_ZNSt11unique_lockISt15recursive_mutexE8try_lockEv.exit

split47:                                          ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #17
  unreachable

_ZNSt11unique_lockISt15recursive_mutexE8try_lockEv.exit: ; preds = %bb.f
  %i.p = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #16
  %.not.i.i29 = icmp eq i32 %i.p, 0               ; 2 uses
  %i.q = zext i1 %.not.i.i29 to i8
  store i8 %i.q, ptr %i.m, align 8, !tbaa !40
  br i1 %.not.i.i29, label %bb.j, label %.preheader32

.preheader32:                                     ; preds = %_ZNSt11unique_lockISt15recursive_mutexE8try_lockEv.exit
  %i.r = zext nneg i32 %.0 to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.promoted = load i8, ptr %i.t, align 8, !tbaa !40
  %i.u = trunc nuw i8 %.promoted to i1
  br i1 %i.u, label %bb.g, label %split48

split48:                                          ; preds = %.preheader32
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #17
  unreachable

bb.g:                                             ; preds = %.preheader32
  %i.v = load ptr, ptr %i.s, align 16, !tbaa !36  ; 2 uses
  %.not.i30 = icmp eq ptr %i.v, null
  br i1 %.not.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #16 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.lcssa39 = phi i8 [ 1, %bb.g ], [ 0, %bb.h ]
  store i8 %.lcssa39, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11unique_lockISt15recursive_mutexE8try_lockEv.exit, %bb.i
  %.258 = phi i32 [ %i.i, %bb.i ], [ %.0, %_ZNSt11unique_lockISt15recursive_mutexE8try_lockEv.exit ] ; 2 uses
  %i.x = zext nneg i32 %.258 to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !40, !range !41, !noundef !42
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNSt11unique_lockISt15recursive_mutexED2Ev.exit.1, label %bb.b, !llvm.loop !43

_ZNSt11unique_lockISt15recursive_mutexED2Ev.exit.1: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private15SectionLoadList7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #17
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp eq i64 %i.d, 0
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 0 uses
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15SectionLoadList5ClearEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #17
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN12lldb_private7SectionEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.m = shl i32 %i.k, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48   ; 3 uses
  %i.p = icmp ult i32 %i.m, %i.o
  %i.q = icmp ugt i32 %i.o, 64
  %or.cond.i = and i1 %i.p, %i.q
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E5clearEv.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = zext i32 %i.o to i64
  %i.u = add nuw nsw i64 %i.t, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.w, i1 false)
  store i32 0, ptr %i.j, align 8, !tbaa !44
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E5clearEv.exit: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.d, %bb.e
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private15SectionLoadList21GetSectionLoadAddressERKSt10shared_ptrINS_7SectionEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #17
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !55, !noalias !56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49, !noalias !56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48, !noalias !56 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65, !noalias !66
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !67

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.af, %bb.e ], [ %i.s, %bb.d ]
  %.01117.i.i.i = phi i32 [ %i.ae, %bb.e ], [ %i.r, %bb.d ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68, !noalias !66
  %i.ac = icmp eq ptr %i.e, %i.ab
  br i1 %i.ac, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit.loopexit, label %bb.e, !prof !69

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = add nuw i32 %.01117.i.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !65, !noalias !66
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !70

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.am = zext i32 %i.j to i64                    ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.j to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit.loopexit ], [ %i.am, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.aa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit.loopexit ], [ %i.an, %.loopexit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pre-phi
  %.not8 = icmp eq ptr %.lcssa.sink.i.i, %i.ao
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN12lldb_private7SectionEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
end_hunk_0
