Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_:bb.a
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.01.05.i
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.01.05.i
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %i.h), !inline_history !13475 ; 2 uses
  %i.j = add nuw i64 %.sroa.01.05.i, 1            ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.j, %i.b
  %or.cond.not = select i1 %i.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %.lr.ph.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.b = load i64, ptr %.val1, align 8, !noundef !3 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %.val, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.preheader, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.preheader:                                       ; preds = %bb.a
  %.not2.not = icmp eq i64 %i.b, 0
  br i1 %.not2.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.01.0.i3 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.01.0.i3
  %i.g = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %.sroa.01.0.i3
  %i.h = tail call fastcc noundef zeroext i1 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %i.g), !inline_history !17368 ; 2 uses
  %i.i = add nuw i64 %.sroa.01.0.i3, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.b
  %or.cond = select i1 %i.h, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.loopexit, label %.lr.ph

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.loopexit: ; preds = %.lr.ph
  %.sroa.0.0.ph = xor i1 %i.h, true
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.loopexit, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.sroa.0.0.ph, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.loopexit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.b = load i64, ptr %.val1, align 8, !noundef !3 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %.val, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.preheader, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.preheader:                                       ; preds = %bb.a
  %.not2.not = icmp eq i64 %i.b, 0
  br i1 %.not2.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.01.0.i3 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.01.0.i3
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.01.0.i3
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsbP_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7PatternNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %i.g), !inline_history !17369 ; 2 uses
  %i.i = add nuw i64 %.sroa.01.0.i3, 1            ; 2 uses
  %exitcond.not = icmp ne i64 %i.i, %i.b
  %or.cond.not = select i1 %i.h, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.h, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_19ComparableParameterINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_5nodes9ParameterE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.d = load i8, ptr %i.c, align 1, !range !1631, !alias.scope !17370, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !17370, !noundef !3
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !17370
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !align !95, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17373
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %i.i), !noalias !17373, !inline_history !13905
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !17376
  %i.j = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !17376 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvXsx_NtCskLngH8kgpZI_15ruff_python_ast10comparableINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_14ComparableExprEINtNtCs4NRVxsYgnAr_4core7convert4FromRIBP_NtNtB7_9generated4ExprEE4from.exit, !prof !7353

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #61
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #59
          to label %bb.f unwind label %bb.e, !noalias !17373, !inline_history !13905

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !17373, !inline_history !13905
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

_RNvXsx_NtCskLngH8kgpZI_15ruff_python_ast10comparableINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_14ComparableExprEINtNtCs4NRVxsYgnAr_4core7convert4FromRIBP_NtNtB7_9generated4ExprEE4from.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !17373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17373
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvXsx_NtCskLngH8kgpZI_15ruff_python_ast10comparableINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_14ComparableExprEINtNtCs4NRVxsYgnAr_4core7convert4FromRIBP_NtNtB7_9generated4ExprEE4from.exit
  %.sroa.0.0 = phi ptr [ %i.j, %_RNvXsx_NtCskLngH8kgpZI_15ruff_python_ast10comparableINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_14ComparableExprEINtNtCs4NRVxsYgnAr_4core7convert4FromRIBP_NtNtB7_9generated4ExprEE4from.exit ], [ null, %bb.a ]
  %i.n = icmp ugt i8 %i.d, -49
  %.sroa.01.0.i.i = select i1 %i.n, ptr %i.g, ptr %i.b
  %i.o = icmp ult i8 %i.d, -48
  %i.p = zext i8 %i.d to i64
  %i.q = add nsw i64 %i.p, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 16)
  %i.r = and i64 %i.f, 72057594037927935
  %.sroa.0.0.i.i = select i1 %i.o, i64 %spec.store.select.i.i, i64 %i.r
  store ptr %.sroa.01.0.i.i, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %i.t, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i32, ptr %i.a monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load atomic i32, ptr %i.c monotonic, align 8 ; 2 uses
  %.not.i1.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i, label %bb.c, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, !prof !5

bb.c:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !noundef !3
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !noundef !3
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !noundef !3   ; 3 uses
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  %i.t = xor i1 %i.q, %i.s
  br i1 %i.t, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !3 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !3
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.q, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !3
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !3
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i, !prof !5

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i: ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load atomic i32, ptr %i.al monotonic, align 8 ; 2 uses
  %.not.i1.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i1.i.i.i, label %bb.m, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, !prof !5

bb.m:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.n, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.o, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.r, i64 %i.ap)
  %i.at = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.at, label %bb.p, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load i8, ptr %i.au, align 4, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load i8, ptr %i.aw, align 4, !noundef !3
  %i.ay = icmp eq i8 %i.av, %i.ax
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !3, !noundef !3
  %i.bd = icmp eq i64 %i.v, 0
  br i1 %i.bd, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

bb.r:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i
  %i.be = add nuw i64 %.sroa.01.08.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.v
  br i1 %exitcond.not.i.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.01.08.i.i = phi i64 [ %i.be, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %.sroa.01.08.i.i ; 6 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.sroa.01.08.i.i ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !3
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.s, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !3
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.t, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bs = load atomic i32, ptr %i.br monotonic, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i.i, !prof !5

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 8 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.v, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, !prof !5

bb.v:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i.i.i.i.i
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.w, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noundef !3
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.x, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.bg, align 8, !nonnull !3, !noundef !3
  %i.cc = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %i.cb, i64 %i.bx)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.cf = load i8, ptr %i.ce, align 4, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.ch = load i8, ptr %i.cg, align 4, !noundef !3
  %.not.i.i1 = icmp eq i8 %i.cf, %i.ch
  br i1 %.not.i.i1, label %bb.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i, %bb.x, %bb.w, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.s, %.lr.ph.i.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.d
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.h ], [ %i.ay, %bb.p ], [ false, %bb.n ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.i ], [ false, %bb.o ], [ true, %bb.q ], [ false, %bb.s ], [ false, %bb.x ], [ false, %.lr.ph.i.i ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i ], [ false, %bb.w ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit.i.i ], [ true, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXshc_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !80, !noalias !17379, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !91

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17388
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !17389 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17389
  store i8 1, ptr %i.b, align 8, !noalias !17389
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.i = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.f, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !17388
  %i.k = load ptr, ptr %0, align 8, !noalias !17392, !noundef !3
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17399)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !17399, !noalias !17402, !nonnull !3, !noundef !3 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !17399, !noalias !17402, !noundef !3 ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.q, 4
  br i1 %i.s, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.q, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.af, %.preheader.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i ]
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i.i.i
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !17405, !noundef !3
  %i.v = add i64 %.val10.i.i.i.i, %.sroa.011.0.i.i.i.i
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %.val10.i.i.i.i.1 = load i64, ptr %i.x, align 8, !noalias !17405, !noundef !3
  %i.y = add i64 %.val10.i.i.i.i.1, %i.v
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 72
  %.val10.i.i.i.i.2 = load i64, ptr %i.aa, align 8, !noalias !17405, !noundef !3
  %i.ab = add i64 %.val10.i.i.i.i.2, %i.y
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 104
  %.val10.i.i.i.i.3 = load i64, ptr %i.ad, align 8, !noalias !17405, !noundef !3
  %i.ae = add i64 %.val10.i.i.i.i.3, %i.ab        ; 3 uses
  %i.af = add nuw i64 %.sroa.01.0.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.sroa.011.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ae, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.01.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.af, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.sroa.011.0.i.i.i.i.epil = phi i64 [ %i.ai, %.preheader.i.i.i.epil ], [ %.sroa.011.0.i.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ]
  %.sroa.01.0.i.i.i.i.epil = phi i64 [ %i.aj, %.preheader.i.i.i.epil ], [ %.sroa.01.0.i.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i.i.i.epil
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val10.i.i.i.i.epil = load i64, ptr %i.ah, align 8, !noalias !17405, !noundef !3
  %i.ai = add i64 %.val10.i.i.i.i.epil, %.sroa.011.0.i.i.i.i.epil ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !17409

_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i: ; preds = %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.b
  %.sroa.08.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i.loopexit.unr-lcssa ], [ %i.ai, %.preheader.i.i.i.epil ]
  %i.ak = load i64, ptr %i.m, align 8, !range !86, !alias.scope !17399, !noalias !17402, !noundef !3
  %i.al = shl i64 %i.ak, 5
  %i.am = add i64 %i.al, %.sroa.08.0.i.i.i
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

bb.c:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %.val4.i.i = load i64, ptr %i.m, align 8, !noalias !17392, !noundef !3
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.c, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i
  %.sroa.0.0.i = phi i64 [ %i.am, %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit.i.i ], [ %.val4.i.i, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i32, ptr %i.a monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load atomic i32, ptr %i.c monotonic, align 8 ; 2 uses
  %.not.i1.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i, label %bb.c, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, !prof !5

bb.c:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noundef !3
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4, !noundef !3
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17413)
  %i.p = load i64, ptr %0, align 8, !range !1361, !alias.scope !17410, !noalias !17413, !noundef !3 ; 2 uses
  %i.q = load i64, ptr %1, align 8, !range !1361, !alias.scope !17413, !noalias !17410, !noundef !3
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !17410, !noalias !17413, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.u, align 8, !alias.scope !17410, !noalias !17413 ; 2 uses
  %.val3.i = load ptr, ptr %i.t, align 8, !alias.scope !17413, !noalias !17410, !noundef !3 ; 3 uses
  %i.v = icmp ne ptr %.val.i, null                ; 2 uses
  %i.w = icmp eq ptr %.val3.i, null               ; 2 uses
  %i.x = xor i1 %i.v, %i.w
  br i1 %i.x, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !17413, !noalias !17410
  %i.y = icmp eq i64 %.val2.i, %.val4.i           ; 2 uses
  br i1 %i.v, label %3, label %bb.j

3:                                                ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  br i1 %i.y, label %bb.k, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.w)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !17415
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.g
  %i.aa = load double, ptr %i.s, align 8, !alias.scope !17410, !noalias !17413, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !alias.scope !17413, !noalias !17410, !noundef !3
  %i.ad = fcmp oeq double %i.aa, %i.ac
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.g
  %i.ae = load double, ptr %i.s, align 8, !alias.scope !17410, !noalias !17413, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load double, ptr %i.af, align 8, !alias.scope !17413, !noalias !17410, !noundef !3
  %i.ah = fcmp oeq double %i.ae, %i.ag
  br i1 %i.ah, label %bb.n, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !17410, !noalias !17413, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load double, ptr %i.ak, align 8, !alias.scope !17413, !noalias !17410, !noundef !3
  %i.am = fcmp oeq double %i.aj, %i.al
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %3, %bb.h, %bb.f, %bb.e, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.d
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.m ], [ %i.ad, %bb.l ], [ %i.am, %bb.n ], [ false, %bb.f ], [ %i.z, %bb.k ], [ false, %bb.h ], [ %i.y, %bb.j ], [ false, %3 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXshh_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !80, !noalias !17416, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !91

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17425
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !17426 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17426
  store i8 1, ptr %i.b, align 8, !noalias !17426
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i
  %i.i = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.f, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !17425
  %i.k = load i64, ptr %0, align 8, !range !1361, !alias.scope !17429, !noalias !17432, !noundef !3
  %i.l = icmp eq i64 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17429, !noalias !17432
  %.not.i.i = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17429, !noalias !17432
  %i.q = select i1 %i.l, i1 %.not.i.i, i1 false
  %.sroa.09.0.sink.i.i = select i1 %i.q, i64 %i.p, i64 0
  ret i64 %.sroa.09.0.sink.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 4 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !80, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !80, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i: ; preds = %bb.b
  %i.g = load atomic i32, ptr %1 monotonic, align 4 ; 2 uses
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %bb.d, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, !prof !5

bb.d:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.g
  %.sroa.0.0 = phi i1 [ %i.r, %bb.g ], [ false, %bb.a ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4, !noundef !3
  %i.r = icmp eq i32 %i.o, %i.q
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXshn_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readnone align 4 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !80, !noalias !17438, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !91

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17447
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !17448 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17448
  store i8 1, ptr %i.b, align 8, !noalias !17448
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i
  %i.i = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.f, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !17447
  ret i64 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 4 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %.not.i1.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i, label %bb.c, label %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, !prof !5

bb.c:                                             ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit.i
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.f = load i32, ptr %0, align 4, !noundef !3
  %i.g = load i32, ptr %1, align 4, !noundef !3
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.f
  %.sroa.0.0 = phi i1 [ %i.m, %bb.f ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsht_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readnone align 4 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !80, !noalias !17451, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !91

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17460
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !17461 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17461
  store i8 1, ptr %i.b, align 8, !noalias !17461
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i
  %i.i = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.f, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !17460
  ret i64 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_19ExprEllipsisLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 4 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
end_hunk_0
