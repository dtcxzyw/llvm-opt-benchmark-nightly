Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXseC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9StmtRaiseNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size:bb.a
  %.not14.i = icmp eq ptr %i.v, null
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !15960
  call fastcc void @_RINvXsbB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4ExprNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a), !noalias !15960, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15964
  %i.w = load i64, ptr %i.b, align 8, !noalias !15960, !noundef !46
  %i.x = add i64 %i.w, 72
  br label %_RINvXseC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_9StmtRaiseNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB15_7tracker15StandardTrackerEB9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !15960
  br label %_RINvXseC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_9StmtRaiseNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB15_7tracker15StandardTrackerEB9_.exit

_RINvXseC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_9StmtRaiseNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB15_7tracker15StandardTrackerEB9_.exit: ; preds = %bb.e, %bb.f
  %.sroa.015.0.i = phi i64 [ 0, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.4.8.copyload = load ptr, ptr %i.o, align 8, !noalias !15965 ; 2 uses
  %.sroa.613.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.613.8.copyload = load i64, ptr %.sroa.613.8..sroa_idx, align 8, !noalias !15965 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.y = icmp eq i64 %.sroa.613.8.copyload, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXseC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_9StmtRaiseNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB15_7tracker15StandardTrackerEB9_.exit
  %i.z = shl i64 %.sroa.613.8.copyload, 3
  %i.aa = icmp slt i64 %.sroa.613.8.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 16                       ; 2 uses
  %i.ad = add nsw i64 %.sroa.613.8.copyload, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.8.copyload) ]
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.ai = sub nuw nsw i64 -16, %i.ab
  %i.aj = getelementptr inbounds i8, ptr %.sroa.4.8.copyload, i64 %i.ai
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvXseC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_9StmtRaiseNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB15_7tracker15StandardTrackerEB9_.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.ak = add i64 %.sroa.015.0.i, %.sroa.0.0.i
  ret i64 %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXseG_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7StmtTryNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !51, !noundef !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !51, !noundef !46
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load atomic i32, ptr %i.h monotonic, align 8 ; 2 uses
  %.not.i1.i = icmp eq i32 %i.i, 0
  br i1 %.not.i1.i, label %bb.d, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, !prof !47

bb.d:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.e:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !noundef !46
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !noundef !46
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !noundef !46
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.s = load i32, ptr %i.r, align 4, !noundef !46
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15971)
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !15970, !noalias !15971, !nonnull !46, !noundef !46 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %.val1.i, align 8, !noalias !15972, !noundef !46 ; 3 uses
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !15971, !noalias !15970, !nonnull !46, !noundef !46 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.z = load i64, ptr %.val.i, align 8, !noalias !15972, !noundef !46
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %.preheader, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.preheader:                                       ; preds = %bb.g
  %.not4.not = icmp eq i64 %i.x, 0
  br i1 %.not4.not, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i5, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.x
  br i1 %exitcond.not, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.sroa.01.0.i.i5 = phi i64 [ %i.ab, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %.sroa.01.0.i.i5
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %.sroa.01.0.i.i5
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull align 8 %i.ad), !noalias !15972, !inline_history !36
  br i1 %i.ae, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.h

_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_.exit: ; preds = %bb.h, %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !46 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !46
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.i:                                             ; preds = %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !46, !noundef !46
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !46, !noundef !46
  %.not26.not = icmp eq i64 %i.ag, 0
  br i1 %.not26.not, label %._crit_edge, label %.lr.ph8

bb.j:                                             ; preds = %.lr.ph8
  %i.ao = add nuw i64 %.sroa.01.0.i7, 1           ; 2 uses
  %exitcond10.not = icmp eq i64 %i.ao, %i.ag
  br i1 %exitcond10.not, label %._crit_edge, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.i, %bb.j
  %.sroa.01.0.i7 = phi i64 [ %i.ao, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.sroa.01.0.i7
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %.sroa.01.0.i7
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ap, ptr noundef nonnull align 8 %i.aq), !inline_history !15969
  br i1 %i.ar, label %bb.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = tail call fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
  br i1 %i.au, label %bb.k, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.k:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph, %.lr.ph8, %bb.g, %bb.f, %bb.a, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.e, %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_.exit, %._crit_edge, %bb.k
  %.sroa.0.0 = phi i1 [ %i.ax, %bb.k ], [ false, %._crit_edge ], [ false, %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_.exit ], [ false, %.lr.ph8 ], [ false, %bb.e ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.g ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXseH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7StmtTryNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.10.i43.i.sroa.0 = alloca [16 x i8], align 8 ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.10.i20.i.sroa.0 = alloca [16 x i8], align 8 ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.10.i.i.sroa.0 = alloca [16 x i8], align 8 ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !51, !noalias !16016, !noundef !46
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !53

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre1.i.i.a = load i64, ptr %i.i, align 8, !noalias !16017
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !16017
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !16018 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !16018
  store i8 1, ptr %i.j, align 8, !noalias !16018
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %.pre-phi47 = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.o, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 3 uses
  %i.q = phi i64 [ %.pre1.i.i.a, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.n, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 4 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.i, align 8, !noalias !16017
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i43.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i20.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.sroa.0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val16.i = load ptr, ptr %i.s, align 8, !noalias !16019, !nonnull !46, !noundef !46 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !16020, !noundef !46 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @46, i64 16), i64 16, i1 false), !noalias !16021
  br label %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i

bb.c:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.x = load i64, ptr %.val16.i, align 8, !noalias !16020, !noundef !46 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @46, i64 16), i64 16, i1 false), !noalias !16021
  br i1 %i.y, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.444.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.444.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.10.i.i.sroa.10.0..sroa.444.sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.10.i.i.sroa.12.0..sroa.444.sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.10.i.i.sroa.10.0..sroa.552.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.10.i.i.sroa.12.0..sroa.552.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.d
  %.sroa.10.i.i.sroa.12.0 = phi i64 [ %.pre-phi47, %bb.d ], [ %.sroa.10.i.i.sroa.12.0.copyload22, %.noexc.i.i ]
  %.sroa.10.i.i.sroa.10.0 = phi i64 [ %i.q, %bb.d ], [ %.sroa.10.i.i.sroa.10.0.copyload16, %.noexc.i.i ]
  %.sroa.835.0.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.451.0.copyload.i.i, %.noexc.i.i ]
  %.sroa.632.0.i.i = phi ptr [ @45, %bb.d ], [ %.sroa.050.0.copyload.i.i, %.noexc.i.i ]
  %.sroa.030.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ac, %.noexc.i.i ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ad, %.noexc.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.444.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, i64 16, i1 false), !noalias !16019
  store i64 %.sroa.10.i.i.sroa.10.0, ptr %.sroa.10.i.i.sroa.10.0..sroa.444.sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019
  store i64 %.sroa.10.i.i.sroa.12.0, ptr %.sroa.10.i.i.sroa.12.0..sroa.444.sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019
  %i.aa = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %.sroa.01.0.i.i.i
  store ptr %.sroa.632.0.i.i, ptr %i.h, align 8, !noalias !16023
  store i64 %.sroa.835.0.i.i, ptr %.sroa.444.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16022
  call fastcc void @_RINvXsbw_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4StmtNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.h), !noalias !16020, !inline_history !15992
  %i.ab = load i64, ptr %i.g, align 8, !noalias !16022, !noundef !46
  %.sroa.050.0.copyload.i.i = load ptr, ptr %i.z, align 8, !noalias !16022 ; 2 uses
  %.sroa.451.0.copyload.i.i = load i64, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !16022 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx.i.i, i64 16, i1 false), !noalias !16019
  %.sroa.10.i.i.sroa.10.0.copyload16 = load i64, ptr %.sroa.10.i.i.sroa.10.0..sroa.552.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019 ; 2 uses
  %.sroa.10.i.i.sroa.12.0.copyload22 = load i64, ptr %.sroa.10.i.i.sroa.12.0..sroa.552.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16022
  %i.ac = add i64 %i.ab, %.sroa.030.0.i.i         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16022
  %i.ad = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.x
  br i1 %i.ae, label %bb.e, label %.noexc.i.i

bb.e:                                             ; preds = %.noexc.i.i
  %i.af = add i64 %i.ac, 16
  %.pre.i.i8 = load i64, ptr %i.t, align 8, !noalias !16020
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.i.i.sroa.12.1 = phi i64 [ %.pre-phi47, %bb.c ], [ %.sroa.10.i.i.sroa.12.0.copyload22, %bb.e ]
  %.sroa.10.i.i.sroa.10.1 = phi i64 [ %i.q, %bb.c ], [ %.sroa.10.i.i.sroa.10.0.copyload16, %bb.e ]
  %i.ag = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i8, %bb.e ]
  %.sroa.618.0.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.451.0.copyload.i.i, %bb.e ]
  %.sroa.515.0.i.i = phi ptr [ @45, %bb.c ], [ %.sroa.050.0.copyload.i.i, %bb.e ]
  %.sroa.013.0.i.i = phi i64 [ 16, %bb.c ], [ %i.af, %bb.e ]
  %i.ah = mul i64 %i.ag, 88
  %i.ai = add i64 %.sroa.013.0.i.i, %i.ah
  br label %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i

_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i: ; preds = %bb.f, %bb.b
  %.sroa.10.i.i.sroa.12.2 = phi i64 [ %.pre-phi47, %bb.b ], [ %.sroa.10.i.i.sroa.12.1, %bb.f ] ; 2 uses
  %.sroa.10.i.i.sroa.10.2 = phi i64 [ %i.q, %bb.b ], [ %.sroa.10.i.i.sroa.10.1, %bb.f ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ 0, %bb.b ], [ %.sroa.618.0.i.i, %bb.f ] ; 2 uses
  %.sroa.576.0.i = phi ptr [ @45, %bb.b ], [ %.sroa.515.0.i.i, %bb.f ] ; 2 uses
  %.sroa.075.0.i = phi i64 [ 0, %bb.b ], [ %i.ai, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16024)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !16024, !noalias !16025, !nonnull !46, !noundef !46
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !16024, !noalias !16025, !noundef !46 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.638.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.633.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.734.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.10.i.i.sroa.10.0..sroa.638.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.10.i.i.sroa.12.0..sroa.638.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.10.i.i.sroa.10.0..sroa.734.8..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.10.i.i.sroa.12.0..sroa.734.8..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.10.i.i.sroa.12.3 = phi i64 [ %.sroa.10.i.i.sroa.12.2, %bb.g ], [ %.sroa.10.i.i.sroa.12.0.copyload24, %bb.h ]
  %.sroa.10.i.i.sroa.10.3 = phi i64 [ %.sroa.10.i.i.sroa.10.2, %bb.g ], [ %.sroa.10.i.i.sroa.10.0.copyload18, %bb.h ]
  %.sroa.022.0.i.i = phi i64 [ 0, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %.sroa.624.0.i.i = phi ptr [ %.sroa.576.0.i, %bb.g ], [ %.sroa.432.8.copyload.i.i, %bb.h ]
  %.sroa.827.0.i.i = phi i64 [ %.sroa.8.0.i, %bb.g ], [ %.sroa.633.8.copyload.i.i, %bb.h ]
  %.sroa.01.0.i.i18.i = phi i64 [ 0, %bb.g ], [ %i.at, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.638.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, i64 16, i1 false), !noalias !16019
  store i64 %.sroa.10.i.i.sroa.10.3, ptr %.sroa.10.i.i.sroa.10.0..sroa.638.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019
  store i64 %.sroa.10.i.i.sroa.12.3, ptr %.sroa.10.i.i.sroa.12.0..sroa.638.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.sroa.01.0.i.i18.i ; 2 uses
  store i64 %.sroa.022.0.i.i, ptr %i.f, align 8, !noalias !16026
  store ptr %.sroa.624.0.i.i, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !16026
  store i64 %.sroa.827.0.i.i, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !16026
  store ptr %i.aq, ptr %i.ao, align 8, !noalias !16026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16027
  call fastcc void @_RINvXs6t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_26ExceptHandlerExceptHandlerNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1j_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull readonly align 8 %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sroa.436.0..sroa_idx.i.i), !noalias !16028, !inline_history !16002
  %i.ar = load i64, ptr %i.e, align 8, !noalias !16029, !noundef !46
  %i.as = add i64 %i.ar, %.sroa.022.0.i.i         ; 2 uses
  %.sroa.432.8.copyload.i.i = load ptr, ptr %i.ap, align 8, !noalias !16030 ; 2 uses
  %.sroa.633.8.copyload.i.i = load i64, ptr %.sroa.633.8..sroa_idx.i.i, align 8, !noalias !16030 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.734.8..sroa_idx.i.i, i64 16, i1 false), !noalias !16019
  %.sroa.10.i.i.sroa.10.0.copyload18 = load i64, ptr %.sroa.10.i.i.sroa.10.0..sroa.734.8..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019 ; 2 uses
  %.sroa.10.i.i.sroa.12.0.copyload24 = load i64, ptr %.sroa.10.i.i.sroa.12.0..sroa.734.8..sroa_idx.i.i.sroa_idx, align 8, !noalias !16019 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16026
  %i.at = add nuw i64 %.sroa.01.0.i.i18.i, 1      ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.am
  br i1 %i.au, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i, label %bb.h

_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i: ; preds = %bb.h, %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i
  %.sroa.10.i.i.sroa.12.4 = phi i64 [ %.sroa.10.i.i.sroa.12.2, %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i ], [ %.sroa.10.i.i.sroa.12.0.copyload24, %bb.h ] ; 3 uses
  %.sroa.10.i.i.sroa.10.4 = phi i64 [ %.sroa.10.i.i.sroa.10.2, %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i ], [ %.sroa.10.i.i.sroa.10.0.copyload18, %bb.h ] ; 3 uses
  %.sroa.613.0.i.i = phi i64 [ %.sroa.8.0.i, %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i ], [ %.sroa.633.8.copyload.i.i, %bb.h ] ; 3 uses
  %.sroa.510.0.i.i = phi ptr [ %.sroa.576.0.i, %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i ], [ %.sroa.432.8.copyload.i.i, %bb.h ] ; 3 uses
  %.sroa.08.0.i.i = phi i64 [ 0, %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit.i ], [ %i.as, %bb.h ]
  %i.av = load i64, ptr %0, align 8, !range !52, !alias.scope !16024, !noalias !16025, !noundef !46
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15.i = load ptr, ptr %i.aw, align 8, !noalias !16019, !nonnull !46, !noundef !46 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !16031, !noundef !46 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i20.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, i64 16, i1 false), !noalias !16019
  br label %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_.exit42.i

bb.j:                                             ; preds = %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  %i.bb = load i64, ptr %.val15.i, align 8, !noalias !16031, !noundef !46 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i20.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, i64 16, i1 false), !noalias !16019
  br i1 %i.bc, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.444.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.444.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.451.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.552.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.i20.i.sroa.8.0..sroa.444.sroa.5.0..sroa_idx.i26.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.10.i20.i.sroa.10.0..sroa.444.sroa.5.0..sroa_idx.i26.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.10.i20.i.sroa.8.0..sroa.552.0..sroa_idx.i28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.10.i20.i.sroa.10.0..sroa.552.0..sroa_idx.i28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %.noexc.i29.i

.noexc.i29.i:                                     ; preds = %.noexc.i29.i, %bb.k
  %.sroa.10.i20.i.sroa.10.0 = phi i64 [ %.sroa.10.i.i.sroa.12.4, %bb.k ], [ %.sroa.10.i20.i.sroa.10.0.copyload32, %.noexc.i29.i ]
  %.sroa.10.i20.i.sroa.8.0 = phi i64 [ %.sroa.10.i.i.sroa.10.4, %bb.k ], [ %.sroa.10.i20.i.sroa.8.0.copyload28, %.noexc.i29.i ]
  %.sroa.835.0.i30.i = phi i64 [ %.sroa.613.0.i.i, %bb.k ], [ %.sroa.451.0.copyload.i35.i, %.noexc.i29.i ]
  %.sroa.632.0.i31.i = phi ptr [ %.sroa.510.0.i.i, %bb.k ], [ %.sroa.050.0.copyload.i34.i, %.noexc.i29.i ]
  %.sroa.030.0.i32.i = phi i64 [ 0, %bb.k ], [ %i.bg, %.noexc.i29.i ]
  %.sroa.01.0.i.i33.i = phi i64 [ 0, %bb.k ], [ %i.bh, %.noexc.i29.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.444.sroa.5.0..sroa_idx.i26.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i20.i.sroa.0, i64 16, i1 false), !noalias !16019
  store i64 %.sroa.10.i20.i.sroa.8.0, ptr %.sroa.10.i20.i.sroa.8.0..sroa.444.sroa.5.0..sroa_idx.i26.i.sroa_idx, align 8, !noalias !16019
  store i64 %.sroa.10.i20.i.sroa.10.0, ptr %.sroa.10.i20.i.sroa.10.0..sroa.444.sroa.5.0..sroa_idx.i26.i.sroa_idx, align 8, !noalias !16019
  %i.be = getelementptr inbounds nuw [88 x i8], ptr %i.ba, i64 %.sroa.01.0.i.i33.i
  store ptr %.sroa.632.0.i31.i, ptr %i.d, align 8, !noalias !16033
  store i64 %.sroa.835.0.i30.i, ptr %.sroa.444.sroa.4.0..sroa_idx.i25.i, align 8, !noalias !16033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16032
  call fastcc void @_RINvXsbw_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4StmtNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d), !noalias !16031, !inline_history !15992
  %i.bf = load i64, ptr %i.c, align 8, !noalias !16032, !noundef !46
  %.sroa.050.0.copyload.i34.i = load ptr, ptr %i.bd, align 8, !noalias !16032 ; 2 uses
  %.sroa.451.0.copyload.i35.i = load i64, ptr %.sroa.451.0..sroa_idx.i27.i, align 8, !noalias !16032 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i20.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx.i28.i, i64 16, i1 false), !noalias !16019
  %.sroa.10.i20.i.sroa.8.0.copyload28 = load i64, ptr %.sroa.10.i20.i.sroa.8.0..sroa.552.0..sroa_idx.i28.i.sroa_idx, align 8, !noalias !16019 ; 2 uses
  %.sroa.10.i20.i.sroa.10.0.copyload32 = load i64, ptr %.sroa.10.i20.i.sroa.10.0..sroa.552.0..sroa_idx.i28.i.sroa_idx, align 8, !noalias !16019 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16032
  %i.bg = add i64 %i.bf, %.sroa.030.0.i32.i       ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsen_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6StmtIfNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size:bb.a
  %i.bu = icmp eq i64 %.sroa.613.0.i.i, 0
  br i1 %i.bu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXsen_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_6StmtIfNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB12_7tracker15StandardTrackerEB9_.exit
  %i.bv = shl i64 %.sroa.613.0.i.i, 3
  %i.bw = icmp slt i64 %.sroa.613.0.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.bw)
  %i.bx = and i64 %i.bv, -16                      ; 2 uses
  %i.by = add i64 %i.bx, 16                       ; 2 uses
  %i.bz = add nsw i64 %.sroa.613.0.i.i, 17
  %i.ca = add i64 %i.bz, %i.by                    ; 4 uses
  %i.cb = icmp uge i64 %i.ca, %i.by
  %i.cc = icmp ult i64 %i.ca, 9223372036854775793
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.i.i) ]
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.ce = sub nuw nsw i64 -16, %i.bx
  %i.cf = getelementptr inbounds i8, ptr %.sroa.510.0.i.i, i64 %i.ce
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 16) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvXsen_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_6StmtIfNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB12_7tracker15StandardTrackerEB9_.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.cg = add i64 %i.w, 72
  %i.ch = add i64 %i.cg, %.sroa.027.0.i
  %i.ci = add i64 %i.ch, %.sroa.08.0.i.i
  %i.cj = mul i64 %i.bt, 96
  %i.ck = add i64 %i.ci, %i.cj
  ret i64 %i.ck
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXser_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8StmtWithNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !range !51, !noundef !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i8, ptr %i.c, align 4, !range !51, !noundef !46
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load atomic i32, ptr %i.h monotonic, align 8 ; 2 uses
  %.not.i1.i = icmp eq i32 %i.i, 0
  br i1 %.not.i1.i, label %bb.d, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, !prof !47

bb.d:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.e:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !noundef !46
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !noundef !46
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !noundef !46
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !noundef !46
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !46 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !46
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !46, !noundef !46
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !46, !noundef !46
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

bb.i:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, %.split.i
  %i.ae = add nuw i64 %.sroa.01.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.v
  br i1 %exitcond.not.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.sroa.01.08.i = phi i64 [ %i.ae, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ac, i64 %.sroa.01.08.i ; 5 uses
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %.sroa.01.08.i ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !noundef !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ak = load i32, ptr %i.aj, align 8, !noundef !46
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.j:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  %i.an = load i32, ptr %i.am, align 4, !noundef !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !46
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.as = load atomic i32, ptr %i.ar monotonic, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i, !prof !47

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.au = load atomic i32, ptr %i.at monotonic, align 8 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i1.i.i.i.i, label %bb.m, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.n, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.n:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.af, ptr noundef nonnull align 8 %i.ag)
  br i1 %i.aw, label %bb.o, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !align !54, !noundef !46 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null           ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !align !54, !noundef !46 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  %brmerge.i.i.i = or i1 %.not.i.i.i, %i.bb
  br i1 %brmerge.i.i.i, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.o
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ay, ptr noundef nonnull align 8 %i.ba)
  br i1 %i.bc, label %bb.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i: ; preds = %bb.o
  %.mux.i.i.i = and i1 %.not.i.i.i, %i.bb
  br i1 %.mux.i.i.i, label %bb.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %bb.i, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i, %bb.j, %bb.n, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.lr.ph.i, %.split.i, %bb.f, %bb.a, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.e, %bb.g, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit
  %.sroa.0.0 = phi i1 [ %i.bf, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit ], [ false, %bb.g ], [ false, %bb.e ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.f ], [ false, %.split.i ], [ false, %.lr.ph.i ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i ], [ false, %bb.n ], [ false, %bb.j ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXses_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8StmtWithNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.10.i.i.sroa.0 = alloca [16 x i8], align 8 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.6.i.sroa.8.i.i.sroa.0 = alloca [16 x i8], align 8 ; 6 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !51, !noalias !16367, !noundef !46
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !53

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre1.i.i.a = load i64, ptr %i.g, align 8, !noalias !16368
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !16368
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.k = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !16369 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !16369
  store i8 1, ptr %i.h, align 8, !noalias !16369
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %.pre-phi27 = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.m, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 2 uses
  %i.o = phi i64 [ %.pre1.i.i.a, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.l, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 3 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !noalias !16368
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.8.i.i.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @46, i64 16), i64 16, i1 false), !noalias !16370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16371)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !16371, !noalias !16372, !nonnull !46, !noundef !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !16371, !noalias !16372, !noundef !46 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i, label %bb.b

bb.b:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.6.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.i.sroa.6.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.i.sroa.8.i.i.sroa.7.0..sroa.6.i.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.6.i.sroa.8.i.i.sroa.8.0..sroa.6.i.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.6.i.sroa.8.i.i.sroa.7.0..sroa.6.i.sroa.8.0..sroa_idx21.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.6.i.sroa.8.i.i.sroa.8.0..sroa.6.i.sroa.8.0..sroa_idx21.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i, %bb.b
  %.sroa.6.i.sroa.8.i.i.sroa.8.0 = phi i64 [ %.pre-phi27, %bb.b ], [ %.sroa.6.i.sroa.8.i.i.sroa.8.0.copyload16, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.6.i.sroa.8.i.i.sroa.7.0 = phi i64 [ %i.o, %bb.b ], [ %.sroa.6.i.sroa.8.i.i.sroa.7.0.copyload12, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.6.i.sroa.0.0.i.i = phi ptr [ @45, %bb.b ], [ %.sroa.6.i.sroa.0.0.copyload18.i.i, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.6.i.sroa.6.0.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.6.i.sroa.6.0.copyload20.i.i, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.010.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16373
  store ptr %.sroa.6.i.sroa.0.0.i.i, ptr %i.f, align 8, !noalias !16374
  store i64 %.sroa.6.i.sroa.6.0.i.i, ptr %.sroa.6.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !16374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.i.i.sroa.0, i64 16, i1 false), !noalias !16375
  store i64 %.sroa.6.i.sroa.8.i.i.sroa.7.0, ptr %.sroa.6.i.sroa.8.i.i.sroa.7.0..sroa.6.i.sroa.8.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16375
  store i64 %.sroa.6.i.sroa.8.i.i.sroa.8.0, ptr %.sroa.6.i.sroa.8.i.i.sroa.8.0..sroa.6.i.sroa.8.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16375
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %.sroa.01.0.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16373
  call fastcc void @_RINvXsbB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4ExprNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f), !noalias !16376, !inline_history !16354
  %i.y = load i64, ptr %i.e, align 8, !noalias !16377, !noundef !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !16377, !align !54, !noundef !46 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !16377
  call fastcc void @_RINvXsbB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4ExprNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull align 8 %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c), !noalias !16373, !inline_history !16359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16378
  %i.ab = load i64, ptr %i.d, align 8, !noalias !16373, !noundef !46
  %i.ac = add i64 %i.ab, 72
  br label %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !16373
  br label %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i

_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16373
  %i.ad = add i64 %i.y, %.sroa.010.0.i.i.i
  %i.ae = add i64 %i.ad, %.sroa.0.0.i.i.i.i.i     ; 2 uses
  %.sroa.6.i.sroa.0.0.copyload18.i.i = load ptr, ptr %i.w, align 8, !noalias !16374 ; 2 uses
  %.sroa.6.i.sroa.6.0.copyload20.i.i = load i64, ptr %.sroa.6.i.sroa.6.0..sroa_idx19.i.i, align 8, !noalias !16374 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.0..sroa_idx21.i.i, i64 16, i1 false), !noalias !16375
  %.sroa.6.i.sroa.8.i.i.sroa.7.0.copyload12 = load i64, ptr %.sroa.6.i.sroa.8.i.i.sroa.7.0..sroa.6.i.sroa.8.0..sroa_idx21.i.i.sroa_idx, align 8, !noalias !16375 ; 2 uses
  %.sroa.6.i.sroa.8.i.i.sroa.8.0.copyload16 = load i64, ptr %.sroa.6.i.sroa.8.i.i.sroa.8.0..sroa.6.i.sroa.8.0..sroa_idx21.i.i.sroa_idx, align 8, !noalias !16375 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16374
  %i.af = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.t
  br i1 %i.ag, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i, label %bb.c

_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i: ; preds = %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %.sroa.6.i.sroa.8.i.i.sroa.8.1 = phi i64 [ %.pre-phi27, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %.sroa.6.i.sroa.8.i.i.sroa.8.0.copyload16, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.6.i.sroa.8.i.i.sroa.7.1 = phi i64 [ %i.o, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %.sroa.6.i.sroa.8.i.i.sroa.7.0.copyload12, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %.sroa.7.0.i.i = phi i64 [ 0, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %.sroa.6.i.sroa.6.0.copyload20.i.i, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ] ; 3 uses
  %.sroa.59.0.i.i = phi ptr [ @45, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %.sroa.6.i.sroa.0.0.copyload18.i.i, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ] ; 3 uses
  %.sroa.08.0.i.i = phi i64 [ 0, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.ae, %_RNCINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBc_7GetSize26get_heap_size_with_trackerNtNtBc_7tracker15StandardTrackerE0B1t_.exit.i.i.i ]
  %i.ah = load i64, ptr %0, align 8, !range !52, !alias.scope !16371, !noalias !16372, !noundef !46
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.ai, align 8, !noalias !16375, !nonnull !46, !noundef !46 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !16379, !noundef !46 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvXses_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_8StmtWithNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB14_7tracker15StandardTrackerEB9_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.an = load i64, ptr %.val.i, align 8, !noalias !16379, !noundef !46 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.i.i.sroa.0, i64 16, i1 false), !noalias !16375
  br i1 %i.ao, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.444.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.444.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.i.i.sroa.7.0..sroa.444.sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.i.i.sroa.7.0..sroa.552.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aq = insertelement <2 x i64> poison, i64 %.sroa.6.i.sroa.8.i.i.sroa.7.1, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %.sroa.6.i.sroa.8.i.i.sroa.8.1, i64 1
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.g
  %.sroa.835.0.i.i = phi i64 [ %.sroa.7.0.i.i, %bb.g ], [ %.sroa.451.0.copyload.i.i, %.noexc.i.i ]
  %.sroa.632.0.i.i = phi ptr [ %.sroa.59.0.i.i, %bb.g ], [ %.sroa.050.0.copyload.i.i, %.noexc.i.i ]
  %.sroa.030.0.i.i = phi i64 [ 0, %bb.g ], [ %i.aw, %.noexc.i.i ]
  %.sroa.01.0.i.i14.i = phi i64 [ 0, %bb.g ], [ %i.ax, %.noexc.i.i ] ; 2 uses
  %i.as = phi <2 x i64> [ %i.ar, %bb.g ], [ %i.av, %.noexc.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.444.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, i64 16, i1 false), !noalias !16375
  %i.at = getelementptr inbounds nuw [88 x i8], ptr %i.am, i64 %.sroa.01.0.i.i14.i
  store ptr %.sroa.632.0.i.i, ptr %i.b, align 8, !noalias !16381
  store i64 %.sroa.835.0.i.i, ptr %.sroa.444.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16380
  store <2 x i64> %i.as, ptr %.sroa.10.i.i.sroa.7.0..sroa.444.sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16375
  call fastcc void @_RINvXsbw_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4StmtNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b), !noalias !16379, !inline_history !16366
  %i.au = load i64, ptr %i.a, align 8, !noalias !16380, !noundef !46
  %.sroa.050.0.copyload.i.i = load ptr, ptr %i.ap, align 8, !noalias !16380 ; 2 uses
  %.sroa.451.0.copyload.i.i = load i64, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !16380 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx.i.i, i64 16, i1 false), !noalias !16375
  %i.av = load <2 x i64>, ptr %.sroa.10.i.i.sroa.7.0..sroa.552.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !16375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16380
  %i.aw = add i64 %i.au, %.sroa.030.0.i.i         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16380
  %i.ax = add nuw i64 %.sroa.01.0.i.i14.i, 1      ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.an
  br i1 %i.ay, label %bb.h, label %.noexc.i.i

bb.h:                                             ; preds = %.noexc.i.i
  %i.az = add i64 %i.aw, 16
  %.pre.i.i8 = load i64, ptr %i.aj, align 8, !noalias !16379
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ba = phi i64 [ %.pre.i.i8, %bb.h ], [ %i.ak, %bb.f ]
  %.sroa.618.0.i.i = phi i64 [ %.sroa.451.0.copyload.i.i, %bb.h ], [ %.sroa.7.0.i.i, %bb.f ]
  %.sroa.515.0.i.i = phi ptr [ %.sroa.050.0.copyload.i.i, %bb.h ], [ %.sroa.59.0.i.i, %bb.f ]
  %.sroa.013.0.i.i = phi i64 [ %i.az, %bb.h ], [ 16, %bb.f ]
  %i.bb = mul i64 %i.ba, 88
  %i.bc = add i64 %.sroa.013.0.i.i, %i.bb
  br label %_RINvXses_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_8StmtWithNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB14_7tracker15StandardTrackerEB9_.exit

_RINvXses_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_8StmtWithNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB14_7tracker15StandardTrackerEB9_.exit: ; preds = %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i, %bb.i
  %.sroa.027.0.i = phi i64 [ %i.bc, %bb.i ], [ 0, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i ]
  %.sroa.528.0.i = phi ptr [ %.sroa.515.0.i.i, %bb.i ], [ %.sroa.59.0.i.i, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i ] ; 2 uses
  %.sroa.829.0.i = phi i64 [ %.sroa.618.0.i.i, %bb.i ], [ %.sroa.7.0.i.i, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.8.i.i.sroa.0)
  %i.bd = icmp eq i64 %.sroa.829.0.i, 0
  br i1 %i.bd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXses_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_8StmtWithNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB14_7tracker15StandardTrackerEB9_.exit
  %i.be = shl i64 %.sroa.829.0.i, 3
  %i.bf = icmp slt i64 %.sroa.829.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.bf)
  %i.bg = and i64 %i.be, -16                      ; 2 uses
  %i.bh = add i64 %i.bg, 16                       ; 2 uses
  %i.bi = add nsw i64 %.sroa.829.0.i, 17
  %i.bj = add i64 %i.bi, %i.bh                    ; 4 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  %i.bl = icmp ult i64 %i.bj, 9223372036854775793
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.528.0.i) ]
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.bn = sub nuw nsw i64 -16, %i.bg
  %i.bo = getelementptr inbounds i8, ptr %.sroa.528.0.i, i64 %i.bn
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 16) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvXses_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_8StmtWithNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB14_7tracker15StandardTrackerEB9_.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.bp = mul i64 %i.ah, 96
  %i.bq = add i64 %i.bp, %.sroa.08.0.i.i
  %i.br = add i64 %i.bq, %.sroa.027.0.i
  ret i64 %i.br
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsex_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9StmtMatchNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !51, !noalias !16410, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
end_hunk_1
