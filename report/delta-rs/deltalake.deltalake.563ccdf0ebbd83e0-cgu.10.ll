inline.NumInlined: 6560
inline.NumDeleted: 2964
begin_hunk_0_@_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EINtNtNtNtB19_11collections9vec_deque4iter4IterB14_EECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.9.sroa.5.0 = phi ptr [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.9.sroa.5.1, %bb.d ] ; 3 uses
  %.sroa.9.sroa.0.0 = phi ptr [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.9.sroa.0.1, %bb.d ] ; 3 uses
  %i.b = icmp eq ptr %.sroa.0.sroa.0.0, %.sroa.0.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %.sroa.9.sroa.0.0, %.sroa.9.sroa.5.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.sroa.7.1 = phi ptr [ %.sroa.9.sroa.5.0, %bb.c ], [ %.sroa.0.sroa.7.0, %bb.b ]
  %.sroa.9.sroa.5.1 = phi ptr [ %.sroa.0.sroa.7.0, %bb.c ], [ %.sroa.9.sroa.5.0, %bb.b ]
  %.sroa.9.sroa.0.1 = phi ptr [ %.sroa.0.sroa.0.0, %bb.c ], [ %.sroa.9.sroa.0.0, %bb.b ]
  %.sink6.i = phi ptr [ %.sroa.9.sroa.0.0, %bb.c ], [ %.sroa.0.sroa.0.0, %bb.b ] ; 3 uses
  %.not = icmp eq ptr %.sink6.i, null
  br i1 %.not, label %_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB5_4IterTNtNtBb_6string6StringB19_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB15_EINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB15_EINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @140) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ERINtNtB18_3vec3VecjEINtNtCs2HSpDNxY7OE_9hashbrown3map4IterB13_B2Z_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.810.0.copyload = load i64, ptr %.sroa.810.0..sroa_idx, align 8, !alias.scope !98 ; 2 uses
  %i.c = icmp eq i64 %.sroa.810.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.69.0.copyload = load i16, ptr %.sroa.69.0..sroa_idx, align 8, !alias.scope !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !98
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8, !alias.scope !98
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.022 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.08.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.021 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.107.020 = phi i64 [ %i.p, %.loopexit ], [ %.sroa.810.0.copyload, %.lr.ph.preheader ]
  %.sroa.86.019 = phi i16 [ %i.m, %.loopexit ], [ %.sroa.69.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.not9.i.i = icmp eq i16 %.sroa.86.019, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.d = phi ptr [ %i.i, %.lr.ph.i.i ], [ %.sroa.6.021, %.lr.ph ] ; 2 uses
  %i.e = phi ptr [ %i.h, %.lr.ph.i.i ], [ %.sroa.0.022, %.lr.ph ]
  %i.f = load <16 x i8>, ptr %i.d, align 16, !noalias !102
  %i.g = icmp sgt <16 x i8> %i.f, splat (i8 -1)
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -640 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.g to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.6.1 = phi ptr [ %.sroa.6.021, %.lr.ph ], [ %i.i, %.lr.ph.i.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %i.h, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.86.019, %.lr.ph ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.j = add i16 %.lcssa.i.i, -1
  %i.k = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = and i16 %i.j, %.lcssa.i.i
  %i.n = sub nsw i64 0, %i.l
  %i.o = getelementptr inbounds [40 x i8], ptr %.sroa.0.1, i64 %i.n ; 2 uses
  %i.p = add i64 %.sroa.107.020, -1               ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -40
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.q, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8
  %i.s = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @143) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ERjINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterB13_jEECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.010, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq ptr %i.d, %2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtB17_11collections5btree3map4IterB13_B13_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringB13_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringB13_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B13_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B1G_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterB13_B1G_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.010, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq ptr %i.d, %2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B1G_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @144) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1A_13RawDeltaTable21get_active_partitionss7_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callTB1n_INtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCINvMsj_NtB4k_3vecINtB53_3VecB3P_E14extend_trustedBN_E0E0EB1A_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !6974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i

bb.af:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !6992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6995
  call void @llvm.experimental.noalias.scope.decl(metadata !6997)
  call void @llvm.experimental.noalias.scope.decl(metadata !7000)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7002
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ba)
          to label %.noexc8.i.i.i.i unwind label %bb.f, !noalias !6956

.noexc8.i.i.i.i:                                  ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7002
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv)
          to label %bb.ai unwind label %bb.ah, !noalias !7003, !inline_history !7004

bb.ag:                                            ; preds = %bb.aj, %bb.ah
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.by, %bb.aj ], [ %i.bw, %bb.ah ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %.body.i.i.i.i unwind label %bb.ak, !noalias !7003, !inline_history !7004

bb.ah:                                            ; preds = %.noexc8.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %.noexc8.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7002
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
          to label %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.aj, !noalias !7003, !inline_history !7004

bb.aj:                                            ; preds = %bb.ai
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.b) #51
          to label %bb.ag unwind label %bb.ak, !noalias !7003, !inline_history !7004

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !7003, !inline_history !7004
  unreachable

_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.cb = load i8, ptr %i.ca, align 8, !range !86, !alias.scope !7005, !noalias !7003, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !7006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !7006
  store i8 %i.cb, ptr %i.ah, align 8, !alias.scope !6997, !noalias !7006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6995
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc)
          to label %_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i unwind label %bb.al, !noalias !7007

bb.al:                                            ; preds = %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.e) #51
          to label %.body.i.i.i.i unwind label %bb.am, !noalias !7007

bb.am:                                            ; preds = %bb.al
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !7007
  unreachable

_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !7008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 88, i1 false), !noalias !6974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i

bb.an:                                            ; preds = %.body.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6956
  unreachable

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.thread.i.i.i: ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.noexc18.i unwind label %bb.c, !noalias !6945

.noexc18.i:                                       ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6948
  br label %bb.as

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i: ; preds = %_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.0.0.copyload4.pr.i.i.i = load i64, ptr %i.o, align 16, !noalias !7009
  br label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i: ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i, %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.w, %bb.u, %bb.p
  %.sroa.0.0.copyload4.i.i.i = phi i64 [ %.sroa.0.0.copyload4.pr.i.i.i, %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i ], [ -9223372036854775793, %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ -9223372036854775802, %bb.p ], [ -9223372036854775797, %bb.u ], [ -9223372036854775794, %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ -9223372036854775795, %bb.w ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.am, i64 88, i1 false), !noalias !7009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6960
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.noexc19.i unwind label %bb.c, !noalias !6945

.noexc19.i:                                       ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6948
  %.not3.i.i.i = icmp eq i64 %.sroa.0.0.copyload4.i.i.i, -9223372036854775792
  br i1 %.not3.i.i.i, label %bb.as, label %bb.ap

bb.ao:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6948
  br label %bb.as

bb.ap:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i.i, i64 88, i1 false), !noalias !6948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6948
  store i64 %.sroa.0.0.copyload4.i.i.i, ptr %i.p, align 16, !noalias !6948
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.p)
          to label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_00s_0Bb_.exit.i.i.i unwind label %bb.aq, !noalias !6948

bb.aq:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.p) #51
          to label %bb.at unwind label %bb.ar, !noalias !7010

bb.ar:                                            ; preds = %bb.aq
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !7010
  unreachable

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_00s_0Bb_.exit.i.i.i: ; preds = %bb.ap
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.p)
          to label %.noexc20.i unwind label %bb.c, !noalias !6945

.noexc20.i:                                       ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_00s_0Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6948
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.q, align 8, !noalias !6948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !7013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6948
  br label %bb.as

bb.as:                                            ; preds = %.noexc20.i, %bb.ao, %.noexc19.i, %.noexc18.i
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc20.i ], [ -9223372036854775808, %bb.ao ], [ -9223372036854775808, %.noexc19.i ], [ -9223372036854775808, %.noexc18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 4 uses
  store ptr %.val16.i, ptr %i.ci, align 8, !noalias !7014
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.val17.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7014
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !7014
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !7013
  %i.cj = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.ck = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.ac
  br i1 %i.cl, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_TBQ_INtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEuNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3v_13RawDeltaTable21get_active_partitionss7_00NCINvNvBT_8for_each4callB2g_NCINvMsj_NtB2K_3vecINtB5h_3VecB2g_E14extend_trustedINtB1J_3MapBF_B3l_EE0E0E0EB3v_.exit, label %bb.d

bb.at:                                            ; preds = %bb.aq, %.body.i.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.c ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.cg, %bb.aq ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !6945
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_TBQ_INtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEuNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3v_13RawDeltaTable21get_active_partitionss7_00NCINvNvBT_8for_each4callB2g_NCINvMsj_NtB2K_3vecINtB5h_3VecB2g_E14extend_trustedINtB1J_3MapBF_B3l_EE0E0E0EB3v_.exit: ; preds = %bb.as, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.cj, %bb.as ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6945
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !7022
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !7022
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7025, !noalias !7028, !nonnull !4, !noundef !4
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !7025, !noalias !7028
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !7025, !noalias !7028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7029
  store ptr %i.g, ptr %i.a, align 8, !noalias !7033
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBW_13RawDeltaTable21get_active_partitionss3_0INtB7_5FnMutTRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7029
  br i1 %i.j, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !7040
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !7040
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7043, !noalias !7046, !nonnull !4, !noundef !4
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !7043, !noalias !7046
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !7043, !noalias !7046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7047
  store ptr %i.g, ptr %i.a, align 8, !noalias !7051
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBW_13RawDeltaTable21get_active_partitionss5_0INtB7_5FnMutTRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7047
  br i1 %i.j, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !7055, !noundef !4 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !7058, !noundef !4
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !7058, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !7061
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !7055, !noundef !4 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !7058, !noundef !4
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !7058, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !7061
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !7055, !noundef !4 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !7058, !noundef !4
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !7058, !noundef !4
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !7061
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7055
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB1A_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callTINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB2U_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvMsj_NtB2U_3vecINtB7g_3VecB4z_E14extend_trustedBN_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.01.i.i = alloca [56 x i8], align 8       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !90, !noundef !4 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !90, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.c, %i.e
  br i1 %i.j, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjTINtNtBb_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEuNCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5d_9TableScan7try_newNtNtB3O_6string6StringE00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtB3O_3vecINtB7t_3VecB2d_E14extend_trustedINtB1I_3MapBF_B52_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink18.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink18.i.sroa.gep3.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink15.i.sroa.gep4.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.be, %bb.x ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bf, %bb.x ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.01.0.i
  %.val16.i = load i64, ptr %i.u, align 8, !noalias !7066 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7077)
  %i.v = load i64, ptr %i.g, align 8, !range !128, !alias.scope !7077, !noalias !7079, !noundef !4 ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !alias.scope !7077, !noalias !7079, !nonnull !4, !noundef !4 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !7077, !noalias !7079, !noundef !4 ; 3 uses
  %i.y = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !noalias !7080
  %i.z = icmp slt i64 %i.y, 0                     ; 3 uses
  switch i64 %i.v, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.o, %bb.h
  %.sink18.i.sroa.phi.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i, %bb.o ], [ %.sink18.i.sroa.gep3.i.i.i, %bb.h ]
  %.sink16.i.i.i.i = phi ptr [ %i.ae, %bb.o ], [ %i.w, %bb.h ]
  %.sink15.i.sroa.phi.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i, %bb.o ], [ %.sink15.i.sroa.gep4.i.i.i, %bb.h ]
  %.sink13.i.i.i.i = phi i64 [ %i.af, %bb.o ], [ %i.x, %bb.h ]
  %.sink12.ph.i.i.i.i = phi i64 [ 40, %bb.o ], [ 24, %bb.h ]
  %.sink10.ph.i.i.i.i = phi ptr [ %i.ai, %bb.o ], [ %i.aa, %bb.h ]
  %.sink9.ph.i.i.i.i = phi i64 [ 48, %bb.o ], [ 32, %bb.h ]
  %.sink7.ph.i.i.i.i = phi i64 [ %i.aj, %bb.o ], [ %i.ab, %bb.h ]
  store ptr %.sink16.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i, align 8, !alias.scope !7074, !noalias !7081
  store i64 %.sink13.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i, align 8, !alias.scope !7074, !noalias !7081
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.q, align 8, !alias.scope !7077, !noalias !7079, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = load i64, ptr %i.r, align 8, !alias.scope !7077, !noalias !7079, !noundef !4
  %i.ac = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !7080
end_hunk_1
