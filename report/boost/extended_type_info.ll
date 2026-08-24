Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/extended_type_info?download=true
inline.NumInlined: 129
inline.NumDeleted: 76
begin_hunk_0_@_ZN5boost13serialization18extended_type_info4findEPKc:bb.a
_ZNKSt8multisetIPKN5boost13serialization18extended_type_infoENS1_6detail11key_compareESaIS4_EE4findERKS4_.exit.thread: ; preds = %_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE18get_const_instanceEv.exit, %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i.i, %_ZNKSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i, %_ZNKSt8multisetIPKN5boost13serialization18extended_type_infoENS1_6detail11key_compareESaIS4_EE4findERKS4_.exit
  %.0 = phi ptr [ %i.p, %_ZNKSt8multisetIPKN5boost13serialization18extended_type_infoENS1_6detail11key_compareESaIS4_EE4findERKS4_.exit ], [ null, %_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE18get_const_instanceEv.exit ], [ null, %_ZNKSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRKS4_.exit.i.i ], [ null, %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i.i ]
  ret ptr %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5boost13serialization18extended_type_infoD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(24) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost13serialization18extended_type_infoC2EjPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 24)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost13serialization18extended_type_infoE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !8
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5boost13serialization18extended_type_infoD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5boost13serialization18extended_type_infoltERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.c, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5boost13serialization18extended_type_infoeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #7 section ".text.startup" comdat($_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE10m_instanceE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE10m_instanceE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE10m_instanceE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEv.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t) #16
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 8), align 8, !tbaa !13
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 16), align 8, !tbaa !19
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 24), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 32), align 8, !tbaa !21
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, i64 40), align 8, !tbaa !22
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13serialization6detail17singleton_wrapperISt8multisetIPKNS0_18extended_type_infoENS1_11key_compareESaIS6_EEED2Ev, ptr nonnull @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t) #16
  br label %_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEv.exit

_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  store ptr @_ZZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEvE1t, ptr @_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE10m_instanceE, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost13serialization9singletonISt8multisetIPKNS0_18extended_type_infoENS0_6detail11key_compareESaIS5_EEE12get_instanceEv.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost13serialization6detail17singleton_wrapperISt8multisetIPKNS0_18extended_type_infoENS1_11key_compareESaIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr @_ZZN5boost13serialization6detail17singleton_wrapperISt8multisetIPKNS0_18extended_type_infoENS1_11key_compareESaIS6_EEE16get_is_destroyedEvE17is_destroyed_flag, align 1, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8multisetIPKN5boost13serialization18extended_type_infoENS1_6detail11key_compareESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZNSt8multisetIPKN5boost13serialization18extended_type_infoENS1_6detail11key_compareESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE15_M_insert_equalIS4_EESt17_Rb_tree_iteratorIS4_EOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.079.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %.not10.i = icmp eq ptr %.079.i, null
  %.pre.i11 = load ptr, ptr %1, align 8, !tbaa !23 ; 3 uses
  br i1 %.not10.i, label %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.pre.i11, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.0711.i = phi ptr [ %.079.i, %.lr.ph.i ], [ %.07.i, %bb.d ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0711.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = icmp eq ptr %.pre.i11, %i.e              ; 2 uses
  br i1 %i.f, label %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.thread.i, label %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i

_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i: ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.i) #17
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.thread.i

_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.thread.i: ; preds = %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i, %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.thread.i, %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i
  %.sink.i = phi i64 [ 24, %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.thread.i ], [ 16, %_ZNK5boost13serialization6detail11key_compareclEPKNS0_18extended_type_infoES5_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0711.i, i64 %.sink.i
  %.07.i = load ptr, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.07.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE23_M_get_insert_equal_posERKS4_.exit, label %bb.b, !llvm.loop !42

_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE23_M_get_insert_equal_posERKS4_.exit: ; preds = %bb.d
  %i.n = icmp eq ptr %.0711.i, %i.b               ; 2 uses
  %brmerge = or i1 %i.n, %i.f
  br i1 %brmerge, label %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE23_M_get_insert_equal_posERKS4_.exit
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.q) #17
  %i.t = icmp slt i32 %i.s, 0
  br label %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit

_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit: ; preds = %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE23_M_get_insert_equal_posERKS4_.exit, %bb.a, %bb.e, %bb.f
  %.0.lcssa.i12 = phi ptr [ %.0711.i, %bb.e ], [ %.0711.i, %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE23_M_get_insert_equal_posERKS4_.exit ], [ %i.b, %bb.a ], [ %.0711.i, %bb.f ]
  %i.u = phi i1 [ false, %bb.e ], [ %i.n, %_ZNSt8_Rb_treeIPKN5boost13serialization18extended_type_infoES4_St9_IdentityIS4_ENS1_6detail11key_compareESaIS4_EE23_M_get_insert_equal_posERKS4_.exit ], [ true, %bb.a ], [ %i.t, %bb.f ]
  %i.v = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %.pre.i11, ptr %i.w, align 8, !tbaa !23
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %.0.lcssa.i12, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !22
  ret ptr %i.v
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSN5boost13serialization18extended_type_infoE", !5, i64 8, !10, i64 16}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSSt15_Rb_tree_header", !15, i64 0, !18, i64 32}
!15 = !{!"_ZTSSt18_Rb_tree_node_base", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!16 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!14, !17, i64 8}
!20 = !{!14, !17, i64 16}
!21 = !{!14, !17, i64 24}
!22 = !{!14, !18, i64 32}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN5boost13serialization18extended_type_infoE", !11, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{!17, !17, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !7, i64 0}
!34 = !{!9, !5, i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt8multisetIPKN5boost13serialization18extended_type_infoENS1_6detail11key_compareESaIS4_EE", !11, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"bool", !6, i64 0}
!39 = !{!15, !17, i64 24}
!40 = !{!15, !17, i64 16}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
end_hunk_0
