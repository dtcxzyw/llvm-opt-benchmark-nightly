Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.11?download=true
inline.NumInlined: 8904
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_5chain5ChainINtNtNtBe_7sources4once4OnceNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEINtNtBc_10filter_map9FilterMapNtB2Y_15DescendantsIterNCNCNvB2Y_16attribute_scopess_00EEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvB3P_19filter_map_try_foldB2U_TNtNtB2Y_7use_def30BindingWithConstraintsIteratorB2U_EuB5c_NCNvCsoTR8nlGN3X_18ty_python_semantic21attribute_assignments0NCINvNvB1j_3any5checkB6r_NCNvNtNtNtNtNtB7s_5types5infer7builder14post_inference12static_class19has_binding_in_init0E0E0E0B7s_:bb.a
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !14522 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val5.i.i.i.i = load i32, ptr %i.s, align 8, !noalias !14522 ; 2 uses
  switch i32 %.val.i.i.i, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.f
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 9, label %bb.g
    i32 10, label %bb.g
    i32 11, label %bb.g
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i.i, %bb.i
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %.not1.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %i.t = icmp eq i32 %i.o, %.val5.i.i.i.i
  br i1 %i.t, label %_RNCNCNvCs2O29vuvTAEJ_14ty_python_core16attribute_scopess_00CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48
  %i.v = load i64, ptr %i.u, align 8, !noalias !14522, !noundef !119 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.sroa.03.06.i.i.i.i.i = phi i32 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.k ]
  %i.x = add i32 %.sroa.03.06.i.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !14522, !nonnull !119, !noundef !119
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !range !153, !noalias !14522, !noundef !119
  switch i32 %i.ac, label %default.unreachable [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %.backedge.i.i.i
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 6, label %.backedge.i.i.i
    i32 7, label %.backedge.i.i.i
    i32 8, label %bb.k
    i32 9, label %bb.k
    i32 10, label %bb.k
    i32 11, label %bb.k
  ]

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #40, !noalias !14522
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !14522, !noundef !119 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  %i.af = icmp eq i32 %i.ae, %.val5.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.af
  br i1 %or.cond.i.i.i.i.i, label %_RNCNCNvCs2O29vuvTAEJ_14ty_python_core16attribute_scopess_00CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %bb.h

_RNCNCNvCs2O29vuvTAEJ_14ty_python_core16attribute_scopess_00CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %bb.k, %bb.g
  %.not.i.i.i.i = icmp eq i32 %.not1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_RNCNCNvCs2O29vuvTAEJ_14ty_python_core16attribute_scopess_00CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.ag = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdTNtNtB1R_7use_def30BindingWithConstraintsIteratorB1N_EuINtNtB9_12control_flow11ControlFlowuENCNvCsoTR8nlGN3X_18ty_python_semantic21attribute_assignments0NCINvNvNtNtNtBX_6traits8iterator8Iterator3any5checkB2E_NCNvNtNtNtNtNtB4c_5types5infer7builder14post_inference12static_class19has_binding_in_init0E0E0INtB7_5FnMutTuB1N_EE8call_mutB4c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %.not1.i.i.i.i.i)
  br i1 %i.ag, label %.sink.split.i, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.i, %bb.i, %bb.i, %.split.i.i.i, %_RNCNCNvCs2O29vuvTAEJ_14ty_python_core16attribute_scopess_00CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.ah = call { i32, ptr } @_RNvXs8_Cs2O29vuvTAEJ_14ty_python_coreNtB5_15DescendantsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0      ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.not.i.i.i, label %.sink.split.i, label %.lr.ph.i.i.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEINtNtB7_10filter_map9FilterMapNtB1w_15DescendantsIterNCNCNvB1w_16attribute_scopess_00EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2n_19filter_map_try_foldB1s_TNtNtB1w_7use_def30BindingWithConstraintsIteratorB1s_EuINtNtNtBb_3ops12control_flow11ControlFlowuENCNvCsoTR8nlGN3X_18ty_python_semantic21attribute_assignments0NCINvNvB3J_3any5checkB50_NCNvNtNtNtNtNtB6E_5types5infer7builder14post_inference12static_class19has_binding_in_init0E0E0B5T_EB6E_.exit: ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENtNtNtBa_6traits8iterator8Iterator8try_folduQQNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldBS_TNtNtBW_7use_def30BindingWithConstraintsIteratorBS_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvCsoTR8nlGN3X_18ty_python_semantic21attribute_assignments0NCINvNvB1K_3any5checkB3p_NCNvNtNtNtNtNtB51_5types5infer7builder14post_inference12static_class19has_binding_in_init0E0E0B4g_EB51_.exit.i, %bb.c, %.sink.split.i
  %.sroa.0.0.i = phi i1 [ true, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENtNtNtBa_6traits8iterator8Iterator8try_folduQQNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldBS_TNtNtBW_7use_def30BindingWithConstraintsIteratorBS_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvCsoTR8nlGN3X_18ty_python_semantic21attribute_assignments0NCINvNvB1K_3any5checkB3p_NCNvNtNtNtNtNtB51_5types5infer7builder14post_inference12static_class19has_binding_in_init0E0E0B4g_EB51_.exit.i ], [ false, %bb.c ], [ %.sroa.0.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #13 personality ptr @rust_eh_personality !guid !14552 {
_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 3 uses
  %i.f = alloca [36 x i8], align 4                ; 7 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 4                ; 4 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [16 x i8], align 4                ; 5 uses
  %i.m = alloca [56 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 4                ; 6 uses
  %i.o = alloca [12 x i8], align 4                ; 7 uses
  %i.p = alloca [16 x i8], align 4                ; 4 uses
  %i.q = alloca [36 x i8], align 4                ; 7 uses
  %.sroa.741 = alloca [12 x i8], align 4          ; 5 uses
  %i.r = alloca [16 x i8], align 4                ; 4 uses
  %i.s = alloca [36 x i8], align 4                ; 8 uses
  %i.t = alloca [12 x i8], align 4                ; 5 uses
  %i.u = alloca [16 x i8], align 4                ; 4 uses
  %i.v = alloca [36 x i8], align 4                ; 7 uses
  %i.w = alloca [16 x i8], align 4                ; 2 uses
  %i.x = alloca [36 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = load ptr, ptr %1, align 8, !nonnull !119, !align !129, !noundef !119 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !119, !noundef !119 ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !119, !align !138, !noundef !119 ; 17 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !119, !align !138, !noundef !119
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.ah = load i8, ptr %i.ag, align 1, !range !133, !alias.scope !14553, !noundef !119 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !14553, !noundef !119
  %i.ak = and i64 %i.aj, 72057594037927935
  %i.al = icmp ult i8 %i.ah, -48
  %i.am = zext i8 %i.ah to i64
  %i.an = add nsw i64 %i.am, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 16)
  %.sroa.0.0.i = select i1 %i.al, i64 %spec.store.select.i, i64 %i.ak ; 5 uses
  %i.ao = icmp ugt i8 %i.ah, -49
  %i.ap = load ptr, ptr %2, align 8, !alias.scope !14553
  %.sroa.01.0.i = select i1 %i.ao, ptr %i.ap, ptr %2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.x, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aq = load i32, ptr %i.x, align 4, !range !144, !alias.scope !14554, !noundef !119
  %i.ar = icmp eq i32 %i.aq, -1                   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.sroa.0.0.copyload27 = load i32, ptr %i.as, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6.sroa.0.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx28, align 4
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx28.sroa_idx, align 4
  %.sroa.6.sroa.4.0 = select i1 %i.ar, i64 undef, i64 %.sroa.6.sroa.4.0.copyload
  %.sroa.6.sroa.0.0 = select i1 %i.ar, i32 undef, i32 %.sroa.6.sroa.0.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !119, !align !129, !noundef !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.v, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.u, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.029.0.copyload = load i32, ptr %i.v, align 4
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.sroa.4.sroa.3.0.copyload = load i32, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4.sroa.4.0.copyload = load i32, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.4.sroa.5.0.copyload = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.av = icmp eq i32 %.sroa.029.0.copyload, -1   ; 3 uses
  %.sroa.971.2 = select i1 %i.av, i64 undef, i64 %.sroa.4.sroa.5.0.copyload ; 4 uses
  %.sroa.863.2 = select i1 %i.av, i32 undef, i32 %.sroa.4.sroa.4.0.copyload ; 4 uses
  %.sroa.058.2 = select i1 %i.av, i32 -1, i32 %.sroa.4.sroa.3.0.copyload ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !119, !align !129, !noundef !119 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !range !139, !noundef !119
  %.not = icmp eq i32 %i.ay, -2
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type8instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.t)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.s, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !14555)
  %i.az = load i32, ptr %i.s, align 4, !range !144, !alias.scope !14556, !noundef !119
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit20

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit20: ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.sroa.030.0.copyload32 = load i32, ptr %i.bb, align 4, !alias.scope !14557 ; 4 uses
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.8.sroa.0.0.copyload37 = load i32, ptr %.sroa.8.0..sroa_idx34, align 4, !alias.scope !14557 ; 2 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx34.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.8.sroa.6.0.copyload38 = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx34.sroa_idx, align 4, !alias.scope !14557
  %.not3 = icmp eq i32 %.sroa.030.0.copyload32, -1
  br i1 %.not3, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit, label %3

bb.b:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit, %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !119, !align !138, !noundef !119
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !range !155, !noundef !119
  %.not4 = icmp eq i32 %i.bf, -1
  br i1 %.not4, label %.thread116, label %bb.g

3:                                                ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit20
  %4 = icmp ne i32 %.sroa.030.0.copyload32, 17
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i32 %.sroa.030.0.copyload32, 4
  br i1 %5, label %bb.c, label %.thread

bb.c:                                             ; preds = %3
  switch i32 %.sroa.8.sroa.0.0.copyload37, label %.thread [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit
    i32 5, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type10is_unknown.exit: ; preds = %bb.a, %bb.c, %bb.c, %bb.c, %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.b

.thread:                                          ; preds = %3, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.d

.thread116:                                       ; preds = %bb.l, %bb.n, %bb.o, %bb.p, %bb.m, %bb.b, %bb.j
  %.sroa.971.0 = phi i64 [ %.sroa.971.2, %bb.b ], [ %.sroa.971.2, %bb.j ], [ %.sroa.971.2, %bb.l ], [ %.sroa.971.0.copyload73, %bb.n ], [ undef, %bb.p ], [ %.sroa.752.sroa.4.1, %bb.o ], [ %.sroa.6.sroa.4.0, %bb.m ]
  %.sroa.863.0 = phi i32 [ %.sroa.863.2, %bb.b ], [ %.sroa.863.2, %bb.j ], [ %.sroa.863.2, %bb.l ], [ %.sroa.863.0.copyload65, %bb.n ], [ 1, %bb.p ], [ %.sroa.752.sroa.0.1, %bb.o ], [ %.sroa.6.sroa.0.0, %bb.m ]
  %.sroa.058.0 = phi i32 [ %.sroa.058.2, %bb.b ], [ %.sroa.058.2, %bb.j ], [ %.sroa.058.2, %bb.l ], [ %.sroa.058.0.copyload59, %bb.n ], [ 4, %bb.p ], [ %.sroa.048.0.copyload51, %bb.o ], [ %.sroa.0.0.copyload27, %bb.m ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !119, !noundef !119
  %.val12 = load i8, ptr %i.bh, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !14558)
  %.not.i = icmp eq i32 %.sroa.058.0, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %.thread116
  %.sroa.058.0112 = phi i32 [ %.sroa.030.0.copyload32, %.thread ], [ %.sroa.058.0, %.thread116 ]
  %.sroa.863.0111 = phi i32 [ %.sroa.8.sroa.0.0.copyload37, %.thread ], [ %.sroa.863.0, %.thread116 ]
  %.sroa.971.0110 = phi i64 [ %.sroa.8.sroa.6.0.copyload38, %.thread ], [ %.sroa.971.0, %.thread116 ]
  store i32 %.sroa.058.0112, ptr %0, align 4, !alias.scope !14559
  %.sroa.863.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.863.0111, ptr %.sroa.863.0..sroa_idx68, align 4, !alias.scope !14559
  %.sroa.971.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.971.0110, ptr %.sroa.971.0..sroa_idx76, align 4, !alias.scope !14559
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7or_elseNCNCNvMs8_NtBK_6narrowNtB1N_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0EBM_.exit

bb.e:                                             ; preds = %.thread116
  %i.bi = trunc nuw i8 %.val12 to i1
  br i1 %i.bi, label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0Bd_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !14560
  br label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0Bd_.exit.i

_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0Bd_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 4, %bb.f ], [ -1, %bb.e ]
  store i32 %.sink.i.i, ptr %0, align 4, !alias.scope !14560
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7or_elseNCNCNvMs8_NtBK_6narrowNtB1N_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7or_elseNCNCNvMs8_NtBK_6narrowNtB1N_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0EBM_.exit: ; preds = %bb.d, %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s1_0Bd_.exit.i
  ret void

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.be, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.be, i64 12, i1 false)
  %i.bj = call { i32, i32 } @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral15generic_context(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.i, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bk = extractvalue { i32, i32 } %i.bj, 0      ; 2 uses
  %.not5 = icmp eq i32 %i.bk, 0
  br i1 %.not5, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = extractvalue { i32, i32 } %i.bj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14561
  %i.bm = call { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext23identity_specialization(i32 noundef range(i32 1, 0) %i.bk, i32 noundef %i.bl, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac), !noalias !14561 ; 2 uses
  %i.bn = extractvalue { i32, i32 } %i.bm, 0      ; 2 uses
  %i.bo = extractvalue { i32, i32 } %i.bm, 1
  %i.bp = icmp ne i32 %i.bn, 0
  call void @llvm.assume(i1 %i.bp)
  call void @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral15instance_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, i32 noundef %i.bn, i32 %i.bo, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !14562)
  %i.bq = load i32, ptr %i.f, align 4, !range !144, !alias.scope !14563, !noalias !14561, !noundef !119
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit.thread, label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit

_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14561
  br label %bb.j

_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit: ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.039.0.copyload40 = load i32, ptr %i.bs, align 4, !alias.scope !14564, !noalias !14565 ; 2 uses
  %.sroa.741.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.741, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.741.0..sroa_idx42, i64 12, i1 false), !alias.scope !14564, !noalias !14565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14561
  %.not6 = icmp eq i32 %.sroa.039.0.copyload40, -1
  br i1 %.not6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.493.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.741, i64 12, i1 false)
  store i32 %.sroa.039.0.copyload40, ptr %i.l, align 4
  %i.bt = call noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type11has_typevar(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af), !noalias !14566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.bt, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit25, label %bb.j

bb.j:                                             ; preds = %bb.g, %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit.thread, %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_00Bd_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741)
  br label %.thread116

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit25: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral22unknown_specialization(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type8instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.q, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bu = load i32, ptr %i.q, align 4, !range !144, !alias.scope !14567, !noundef !119
  %i.bv = icmp eq i32 %i.bu, -1                   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.048.0.copyload51 = load i32, ptr %i.bw, align 4 ; 2 uses
  %.sroa.752.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.752.sroa.0.0.copyload82 = load i32, ptr %.sroa.752.0..sroa_idx54, align 4
  %.sroa.752.sroa.4.0..sroa.752.0..sroa_idx54.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.sroa.752.sroa.4.0.copyload84 = load i64, ptr %.sroa.752.sroa.4.0..sroa.752.0..sroa_idx54.sroa_idx, align 4
  %.sroa.752.sroa.4.1 = select i1 %i.bv, i64 undef, i64 %.sroa.752.sroa.4.0.copyload84 ; 2 uses
  %.sroa.752.sroa.0.1 = select i1 %i.bv, i32 undef, i32 %.sroa.752.sroa.0.0.copyload82 ; 2 uses
  %.sroa.048.1 = select i1 %i.bv, i32 -1, i32 %.sroa.048.0.copyload51 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13nominal_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.o, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.w, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af)
  %i.bx = load i32, ptr %i.o, align 4, !range !139, !noundef !119
  %.not7 = icmp eq i32 %i.bx, -2
  br i1 %.not7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14568
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.o, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.by = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType27is_subtype_of_class_literal(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c), !noalias !14568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14568
  br i1 %i.by, label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit.thread, label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit

_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14568
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac)
  %i.bz = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType27is_subtype_of_class_literal(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.k, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b), !noalias !14569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit25, %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not8 = icmp eq i32 %.sroa.048.1, -1
  br i1 %.not8, label %.thread116, label %bb.n

bb.m:                                             ; preds = %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit.thread, %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms2_0s0_0Bd_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not9124 = icmp eq i32 %.sroa.0.0.copyload27, -1
  %.not9 = select i1 %i.ar, i1 true, i1 %.not9124
  br i1 %.not9, label %bb.o, label %.thread116

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !14570)
  call void @llvm.experimental.noalias.scope.decl(metadata !14571)
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %.sroa.048.1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !14572
  %.sroa.490.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 %.sroa.752.sroa.0.1, ptr %.sroa.490.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx, align 4, !alias.scope !14572
  %.sroa.591.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.752.sroa.4.1, ptr %.sroa.591.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !alias.scope !14572
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 %.sroa.058.2, ptr %i.ca, align 8, !alias.scope !14573
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 %.sroa.863.2, ptr %.sroa.498.0..sroa_idx, align 4, !alias.scope !14573
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %.sroa.971.2, ptr %.sroa.599.0..sroa_idx, align 8, !alias.scope !14573
  store i64 1, ptr %i.m, align 8, !alias.scope !14574
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14574
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !14574
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1F_6option8IntoIterNtB8_4TypeEINtNtNtB1F_5array4iter8IntoIterB2N_Kj1_EEB2N_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ac, ptr noundef nonnull align 4 %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.058.0.copyload59 = load i32, ptr %i.n, align 4
  %.sroa.863.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.863.0.copyload65 = load i32, ptr %.sroa.863.0..sroa_idx64, align 4
  %.sroa.971.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.971.0.copyload73 = load i64, ptr %.sroa.971.0..sroa_idx72, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.thread116

bb.o:                                             ; preds = %bb.m
  %.not10 = icmp eq i32 %.sroa.048.1, -1
  br i1 %.not10, label %bb.p, label %.thread116

bb.p:                                             ; preds = %bb.o
  br label %.thread116
}
end_hunk_0
begin_hunk_1_@_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic30report_invalid_exception_cause:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val12 = load ptr, ptr %i.k, align 8, !nonnull !119, !align !129, !noundef !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %0, align 8, !nonnull !119, !noundef !119
  %.val9 = load ptr, ptr %i.i, align 8, !nonnull !119, !align !138, !noundef !119
  %i.l = invoke noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17is_notimplemented(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val9)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull %.val10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val11, ptr noundef nonnull align 4 %.val12)
          to label %bb.g unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.d, ptr noundef nonnull @848, ptr noundef nonnull inttoptr (i64 99 to ptr))
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_19LintDiagnosticGuard30set_primary_annotation_messageReEBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 35)
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c, ptr noundef nonnull @847, ptr noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit13 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.n)
          to label %.thread unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit13: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit13
  %i.p = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.o unwind label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.s, %bb.n, %bb.l, %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.c) #43
          to label %.thread unwind label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #43
          to label %.thread unwind label %bb.j

bb.m:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #43
          to label %.thread unwind label %bb.j

bb.o:                                             ; preds = %bb.i
  %i.u = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @849, i64 noundef 97)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 %i.u)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  ret void

.thread:                                          ; preds = %bb.h, %bb.k, %bb.l, %bb.n, %bb.s
  %.pn716 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %lpad.thr_comm.split-lp, %bb.s ], [ %i.t, %bb.n ], [ %i.r, %bb.k ], [ %i.s, %bb.l ]
  resume { ptr, i32 } %.pn716

bb.s:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.h) #43
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic30report_overridden_final_method(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %5, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %6, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %7, ptr noalias noundef nonnull readonly align 4 captures(address) %8, i64 noundef range(i64 0, 1152921504606846976) %9) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16009 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 4                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 4                 ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 4                 ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [8 x i8], align 4                ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 4               ; 6 uses
  %i.ag = alloca [80 x i8], align 8               ; 10 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [80 x i8], align 8               ; 13 uses
  %i.am = alloca [80 x i8], align 8               ; 4 uses
  %i.an = alloca [12 x i8], align 4               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [80 x i8], align 8               ; 4 uses
  %i.au = alloca [48 x i8], align 8               ; 18 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 17 uses
  %i.ax = alloca [16 x i8], align 4               ; 4 uses
  %i.ay = alloca [80 x i8], align 8               ; 6 uses
  %i.az = alloca [80 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 4               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 11 uses
  store ptr %1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %2, ptr %i.bc, align 8
  %.val111 = load ptr, ptr %0, align 8, !nonnull !119, !noundef !119 ; 28 uses
  %i.bd = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val112 = load ptr, ptr %i.bd, align 8, !nonnull !119, !align !138, !noundef !119 ; 28 uses
  %i.be = tail call noundef nonnull align 8 ptr @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core10definition1__NtB8_10Definition4kindDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112)
  %i.bf = load i32, ptr %i.be, align 8, !range !141, !noundef !119
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.bh = load i32, ptr %5, align 4, !range !145, !noundef !119 ; 2 uses
  %i.bi = icmp ne i32 %i.bh, 17
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i32 %i.bh, 22
  br i1 %i.bj, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !range !142, !noundef !119
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType6getterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ba, i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112)
  %i.bo = load i32, ptr %i.ba, align 4, !range !128, !noundef !119 ; 3 uses
  %.not = icmp eq i32 %i.bo, -1
  br i1 %.not, label %.sink.split, label %10

10:                                               ; preds = %bb.c
  %11 = icmp ne i32 %i.bo, 17
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i32 %i.bo, 7
  br i1 %12, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !range !142, !noundef !119
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !noundef !119
  %i.bt = tail call { i32, i32 } @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType10definition(i32 noundef %i.bq, i32 noundef %i.bs, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112) ; 2 uses
  %i.bu = extractvalue { i32, i32 } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { i32, i32 } %i.bt, 1      ; 2 uses
  %i.bw = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition5scope(i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val112) ; 2 uses
  %i.bx = extractvalue { i32, i32 } %i.bw, 1
  %i.by = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition5scope(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val112) ; 2 uses
  %i.bz = extractvalue { i32, i32 } %i.by, 1
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.cb = extractvalue { i32, i32 } %i.by, 0      ; 2 uses
  %i.cc = extractvalue { i32, i32 } %i.bw, 0      ; 2 uses
  %i.cd = icmp ne i32 %i.cc, 0
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp ne i32 %i.cb, 0
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i32 %i.cc, %i.cb                ; 2 uses
  %spec.select = select i1 %i.cf, i32 %i.bv, i32 %4
  %spec.select226 = select i1 %i.cf, i32 %i.bu, i32 %3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c, %10
  %.sroa.6.0.ph = phi i32 [ %spec.select, %bb.e ], [ %4, %bb.c ], [ %4, %10 ], [ %4, %bb.d ]
  %.sroa.0.0.ph = phi i32 [ %spec.select226, %bb.e ], [ %3, %bb.c ], [ %3, %10 ], [ %3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.sroa.6.0 = phi i32 [ %4, %bb.a ], [ %4, %bb.b ], [ %.sroa.6.0.ph, %.sink.split ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %3, %bb.a ], [ %3, %bb.b ], [ %.sroa.0.0.ph, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.cg = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val117 = load ptr, ptr %i.cg, align 8, !nonnull !119, !align !138, !noundef !119
  call void @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition11focus_range(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ax, i32 noundef %.sroa.0.0, i32 noundef %.sroa.6.0, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val117)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintNtNtCs56aZGHL6Dc6_7ruff_db5files9FileRangeEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ay, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic24OVERRIDE_OF_FINAL_METHOD, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.ch = load i64, ptr %i.ay, align 8, !range !121, !noundef !119
  %.not96 = icmp eq i64 %i.ch, -2
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %i.ay, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType4name(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.g, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112)
          to label %bb.i unwind label %.thread176 ; 4 uses

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.ep

.thread176:                                       ; preds = %bb.g, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, %bb.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread180
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread163

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType4name(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.f, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112)
          to label %bb.j unwind label %.thread176 ; 4 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !16010)
  call void @llvm.experimental.noalias.scope.decl(metadata !16011)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 15
  %i.cl = load i8, ptr %i.ck, align 1, !range !133, !alias.scope !16012, !noundef !119 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !16012, !noundef !119
  %i.co = and i64 %i.cn, 72057594037927935
  %i.cp = icmp ult i8 %i.cl, -48
  %i.cq = zext i8 %i.cl to i64
  %i.cr = add nsw i64 %i.cq, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 16)
  %.sroa.0.0.i.i = select i1 %i.cp, i64 %spec.store.select.i.i, i64 %i.co ; 2 uses
  %i.cs = icmp ugt i8 %i.cl, -49
  %i.ct = load ptr, ptr %i.ci, align 8, !alias.scope !16012
  %.sroa.01.0.i.i = select i1 %i.cs, ptr %i.ct, ptr %i.ci ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 15
  %i.cv = load i8, ptr %i.cu, align 1, !range !133, !alias.scope !16013, !noundef !119 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !16013, !noundef !119
  %i.cy = and i64 %i.cx, 72057594037927935
  %i.cz = icmp ult i8 %i.cv, -48
  %i.da = zext i8 %i.cv to i64
  %i.db = add nsw i64 %i.da, -192
  %spec.store.select.i4.i = call i64 @llvm.umin.i64(i64 %i.db, i64 16)
  %.sroa.0.0.i5.i = select i1 %i.cz, i64 %spec.store.select.i4.i, i64 %i.cy
  %i.dc = icmp ugt i8 %i.cv, -49
  %i.dd = load ptr, ptr %i.cj, align 8, !alias.scope !16013
  %.sroa.01.0.i6.i = select i1 %i.dc, ptr %i.dd, ptr %i.cj ; 2 uses
  %i.de = icmp eq i64 %.sroa.0.0.i.i, %.sroa.0.0.i5.i
  br i1 %i.de, label %bb.k, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread180

bb.k:                                             ; preds = %bb.j
  %i.df = icmp eq ptr %.sroa.01.0.i.i, %.sroa.01.0.i6.i
  br i1 %i.df, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit: ; preds = %bb.k
  %bcmp.i = call i32 @bcmp(ptr %.sroa.01.0.i.i, ptr %.sroa.01.0.i6.i, i64 %.sroa.0.0.i.i)
  %i.dg = icmp eq i32 %bcmp.i, 0
  br i1 %i.dg, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread180

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread180: ; preds = %bb.j, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit
  %i.dh = invoke noundef nonnull align 8 ptr @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType4name(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %6, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112)
          to label %bb.l unwind label %.thread176

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread: ; preds = %bb.k, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType14qualified_name(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.av, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %6, ptr noundef nonnull %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val112)
          to label %bb.r unwind label %.thread176

bb.l:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16014
  store i64 0, ptr %i.e, align 8, !noalias !16014
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !16014
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !16014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16014
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1610612768, ptr %i.di, align 8, !noalias !16014
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !16014
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !16014
  store ptr %i.e, ptr %i.d, align 8, !noalias !16014
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @266, ptr %i.dj, align 8, !noalias !16014
  %i.dk = invoke noundef zeroext i1 @_RNvXsi_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.m, !noalias !16015

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %.thread163 unwind label %bb.p, !noalias !16015

bb.n:                                             ; preds = %bb.l
  br i1 %i.dk, label %bb.o, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !127

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1105, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1107) #40
          to label %.noexc.i unwind label %bb.m, !noalias !16015

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41, !noalias !16015
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !16016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16014
  br label %bb.q

bb.q:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.aw, ptr %i.as, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.bb, ptr %i.dn, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.427.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.at, ptr noundef nonnull @850, ptr noundef nonnull %i.as)
          to label %bb.z unwind label %bb.y

bb.r:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16017
  store i64 0, ptr %i.c, align 8, !noalias !16017
  %.sroa.42.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i118, align 8, !noalias !16017
  %.sroa.53.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i119, align 8, !noalias !16017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16017
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.do, align 8, !noalias !16017
  %.sroa.4.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i120, align 4, !noalias !16017
  %.sroa.5.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i121, align 2, !noalias !16017
  store ptr %i.c, ptr %i.b, align 8, !noalias !16017
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @266, ptr %i.dp, align 8, !noalias !16017
  %i.dq = invoke noundef zeroext i1 @_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_18QualifiedClassNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !16018

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %.thread163 unwind label %bb.v, !noalias !16018

bb.t:                                             ; preds = %bb.r
  br i1 %i.dq, label %bb.u, label %bb.w, !prof !127

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1105, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1107) #40
          to label %.noexc.i122 unwind label %bb.s, !noalias !16018

.noexc.i122:                                      ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41, !noalias !16018
  unreachable

bb.w:                                             ; preds = %bb.t
end_hunk_1
