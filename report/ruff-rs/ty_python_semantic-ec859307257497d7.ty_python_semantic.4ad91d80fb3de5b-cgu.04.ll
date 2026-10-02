Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_:bb.a

bb.n:                                             ; preds = %bb.l
  br i1 %i.ah, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %bb.o

.split17.i.i:                                     ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_18OwnedConstraintSetNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
  br i1 %i.ak, label %bb.o, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.o:                                             ; preds = %.split17.i.i, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val13.i.i = load ptr, ptr %i.al, align 8, !alias.scope !28477, !noalias !28478, !nonnull !12, !noundef !12 ; 8 uses
  %.val14.i.i = load ptr, ptr %i.am, align 8, !alias.scope !28478, !noalias !28477, !nonnull !12, !noundef !12 ; 8 uses
  %i.an = icmp eq ptr %.val13.i.i, %.val14.i.i
  br i1 %i.an, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28479), !noalias !28480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28481), !noalias !28480
  %i.ao = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !28479, !noalias !28482, !noundef !12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !28481, !noalias !28483, !noundef !12
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.q, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !28481, !noalias !28483, !nonnull !12, !noundef !12
  %i.aw = load ptr, ptr %i.at, align 8, !alias.scope !28479, !noalias !28482, !nonnull !12, !noundef !12
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, i64 noundef %i.ap), !noalias !28484
  br i1 %i.ax, label %bb.r, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28485), !noalias !28480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28486), !noalias !28480
  %i.ba = load i32, ptr %i.ay, align 8, !range !34, !alias.scope !28487, !noalias !28488, !noundef !12 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 8, !range !34, !alias.scope !28489, !noalias !28490, !noundef !12
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.s, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.s:                                             ; preds = %bb.r
  switch i32 %i.ba, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit [
    i32 3, label %bb.t
    i32 4, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !28487, !noalias !28488, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !alias.scope !28489, !noalias !28490, !noundef !12
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !28487, !noalias !28488, !noundef !12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 40
  %i.bl = icmp ne i32 %i.bj, 0                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !28489, !noalias !28490, !noundef !12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40
  %i.bp = icmp ne i32 %i.bn, 0                    ; 2 uses
  %i.bq = xor i1 %i.bl, %i.bp
  br i1 %i.bq, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i.i.i = and i1 %i.bl, %i.bp
  br i1 %or.cond.i.i.i.i, label %.split, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit

.split:                                           ; preds = %bb.v
  %i.br = load i32, ptr %i.bk, align 8, !alias.scope !28487, !noalias !28488, !noundef !12
  %i.bs = load i32, ptr %i.bo, align 8, !alias.scope !28489, !noalias !28490, !noundef !12
  %i.bt = icmp eq i32 %i.br, %i.bs
  %i.bu = icmp eq i32 %i.bj, %i.bn
  %spec.select.i.i.i.i = and i1 %i.bu, %i.bt
  br i1 %spec.select.i.i.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 36
  %i.bw = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !range !20, !alias.scope !28487, !noalias !28488, !noundef !12
  %i.by = load i32, ptr %i.bv, align 4, !range !20, !alias.scope !28489, !noalias !28490, !noundef !12
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.v, %bb.s, %bb.o, %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cc = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ca, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cb)
  br i1 %i.cc, label %bb.b, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.m, %bb.j, %bb.h, %bb.f, %bb.c, %bb.n, %bb.k, %bb.g, %bb.d, %.split.i.i, %.split17.i.i, %.split, %bb.q, %bb.p, %bb.r, %bb.u, %bb.t, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.q ], [ false, %.split ], [ false, %.split17.i.i ], [ false, %.split.i.i ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.m ], [ false, %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1Z_10definition10DefinitionEB1T_EINtB7_6FnOnceTRTB1T_B1S_EB3Y_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #12 {
bb.a:
  %.val = load i32, ptr %1, align 4, !range !20, !noundef !12
  %.val1 = load i32, ptr %2, align 4, !range !20, !noundef !12
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val, i32 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareTjRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20CallSignatureDetailsEjEINtB7_6FnOnceTRTjB1S_EB3u_EE9call_onceB21_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !12
  %.val1 = load i64, ptr %2, align 8, !noundef !12
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareTjllETllEEINtB7_6FnOnceTRTB1X_B1S_EB2g_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 8
  %.val = load i32, ptr %1, align 8, !noundef !12
  %i.b = load <2 x i32>, ptr %2, align 8
  %.val2 = load i32, ptr %2, align 8, !noundef !12
  %i.c = icmp eq i32 %.val, %.val2
  %i.d = tail call <2 x i8> @llvm.scmp.v2i8.v2i32(<2 x i32> %i.a, <2 x i32> %i.b) ; 2 uses
  %i.e = extractelement <2 x i8> %i.d, i64 0
  %i.f = extractelement <2 x i8> %i.d, i64 1
  %.sroa.0.0.i.i.i = select i1 %i.c, i8 %i.f, i8 %i.e
  ret i8 %.sroa.0.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtBW_10Parameters15from_parameterss0_0INtB7_6FnOnceTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEE9call_onceB10_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !align !13, !noundef !12
  %i.a = tail call noundef zeroext i1 @_RNvMs1Y_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ParameterWithDefault39uses_pep_484_positional_only_convention(ptr noundef nonnull align 8 %.val)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3V_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7FStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noundef !12
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4, !noundef !12
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.k, ptr noundef nonnull align 4 %i.l)
  br i1 %i.m, label %bb.d, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28508)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !28507, !noalias !28508, !noundef !12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !28508, !noalias !28507, !noundef !12
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !28508, !noalias !28507, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !28507, !noalias !28508, !nonnull !12, !noundef !12
  %.not4.not = icmp eq i64 %i.o, 0
  br i1 %.not4.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.y, %bb.x, %.split, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.w = add nuw i64 %.sroa.01.0.i.i5, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.sroa.01.0.i.i5 = phi i64 [ %i.w, %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ 0, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %.sroa.01.0.i.i5 ; 15 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %.sroa.01.0.i.i5 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !79, !noalias !28509, !noundef !12
  %i.ab = icmp eq i8 %i.aa, 0                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 60 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !range !79, !noalias !28509, !noundef !12
  %i.ae = icmp eq i8 %i.ad, 0                     ; 3 uses
  %i.af = xor i1 %i.ab, %i.ae
  br i1 %i.af, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.ab, label %bb.g, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.ae), !noalias !28509
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !28509, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !28509, !noundef !12
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.am = load i32, ptr %i.al, align 4, !noalias !28509, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !noalias !28509, !noundef !12
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.as = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.aq, ptr noundef nonnull align 4 %i.ar), !noalias !28509, !inline_history !28494
  br i1 %i.as, label %bb.j, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !28509, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !28509, !noundef !12
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.split, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

.split:                                           ; preds = %bb.j
  %i.ay = load ptr, ptr %i.y, align 8, !noalias !28509, !nonnull !12, !noundef !12
  %i.az = load ptr, ptr %i.x, align 8, !noalias !28509, !nonnull !12, !noundef !12
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.az, ptr nonnull %i.ay, i64 %i.au), !noalias !28509, !inline_history !28494
  %i.ba = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ba, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  %2 = xor i1 %i.ae, true
  tail call void @llvm.assume(i1 %2), !noalias !28509
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !noalias !28509, !noundef !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !noalias !28509, !noundef !12
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.k:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !28509, !noundef !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !28509, !noundef !12
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.bn = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bl, ptr noundef nonnull align 4 %i.bm), !noalias !28509, !inline_history !28495
  br i1 %i.bn, label %bb.m, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !28509, !nonnull !12, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !28509, !nonnull !12, !noundef !12
  %i.bs = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bp, ptr noundef nonnull align 8 %i.br), !noalias !28509, !inline_history !28495
  br i1 %i.bs, label %bb.n, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %i.bu = load i8, ptr %i.bt, align 1, !range !81, !noalias !28509, !noundef !12
  %.not.i = icmp eq i8 %i.bu, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  %i.bw = load i8, ptr %i.bv, align 1, !range !81, !noalias !28509, !noundef !12
  %i.bx = icmp eq i8 %i.bw, -1                    ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bx, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %i.bx, label %bb.s, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28510), !noalias !28509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28511), !noalias !28509
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !alias.scope !28510, !noalias !28512, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !alias.scope !28511, !noalias !28513, !noundef !12
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.r, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !alias.scope !28510, !noalias !28512, !noundef !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !28511, !noalias !28513, !noundef !12
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.r
  %i.ci = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y), !noalias !28509, !inline_history !28495
  br i1 %i.ci, label %bb.s, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.s:                                             ; preds = %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.p
  %.val.i = load i8, ptr %i.z, align 4, !range !82, !noalias !28509, !noundef !12
  %.val5.i = load i8, ptr %i.ac, align 4, !range !82, !noalias !28509, !noundef !12
  %i.cj = icmp eq i8 %.val.i, %.val5.i
  br i1 %i.cj, label %bb.t, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !28509, !align !13, !noundef !12 ; 6 uses
  %.not3.i = icmp eq ptr %i.cl, null              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !28509, !align !13, !noundef !12 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  %brmerge.i = or i1 %.not3.i, %i.co
  br i1 %brmerge.i, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.split9

.split9:                                          ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !noalias !28509, !noundef !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !noalias !28509, !noundef !12
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.u, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.u:                                             ; preds = %.split9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !noalias !28509, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !28509, !noundef !12
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.v, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.db = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.cz, ptr noundef nonnull align 4 %i.da), !noalias !28509, !inline_history !28499
  br i1 %i.db, label %bb.w, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28514), !noalias !28509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28515), !noalias !28509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28516), !noalias !28509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28517), !noalias !28509
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !28518, !noalias !28519, !noundef !12 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !28520, !noalias !28521, !noundef !12
  %i.dg = icmp eq i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.x, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !28520, !noalias !28521, !nonnull !12, !noundef !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !28518, !noalias !28519, !nonnull !12, !noundef !12
  %.not1.not.i = icmp eq i64 %i.dd, 0
  br i1 %.not1.not.i, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.dl = add nuw i64 %.sroa.01.0.i2.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dl, %i.dd
  br i1 %exitcond.not.i, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %bb.y
  %.sroa.01.0.i2.i = phi i64 [ %i.dl, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dk, i64 %.sroa.01.0.i2.i
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.di, i64 %.sroa.01.0.i2.i
  %i.do = tail call fastcc noundef zeroext i1 @_RNvXsbK_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dm, ptr noundef nonnull align 8 %i.dn), !noalias !28522, !inline_history !28506
  br i1 %i.do, label %bb.y, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.t
  %.mux.i = and i1 %.not3.i, %i.co
  br i1 %.mux.i, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.e
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i8, ptr %i.dp, align 4, !noundef !12
  %.val1 = load i8, ptr %i.dq, align 4, !noundef !12
  %i.dr = icmp eq i8 %.val, %.val1
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.w, %.split9, %bb.v, %bb.u, %bb.r, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.m, %bb.p, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.l, %bb.o, %bb.s, %bb.q, %bb.k, %bb.j, %bb.g, %bb.i, %bb.h, %.lr.ph, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split, %.lr.ph.i, %bb.d, %bb.b, %bb.a, %bb.c, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0 = phi i1 [ %i.dr, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %.lr.ph.i ], [ false, %.split ], [ false, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.l ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit ], [ false, %bb.p ], [ false, %bb.m ], [ false, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.v ], [ false, %.split9 ], [ false, %bb.w ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXs3_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create(ptr noalias noundef nonnull align 8 dereferenceable(1368) %0, ptr noalias noundef nonnull align 4 captures(address) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !noundef !12  ; 2 uses
  %i.d = invoke noundef i32 @_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef nonnull align 8 dereferenceable(1368) %0, i32 noundef %i.c, i32 noundef %3)
          to label %bb.f unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @527, ptr noundef nonnull inttoptr (i64 193 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @528) #64
          to label %bb.j unwind label %bb.d

.thread:                                          ; preds = %bb.i, %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.thread, %bb.g, %bb.f, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %lpad.phi3 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.d ]
  %i.f = shl nuw nsw i64 %2, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.f, i64 noundef 4) #65
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(1368) %0, i32 noundef %i.c)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !12, !nonnull !12
  %i.l = invoke noundef nonnull align 8 ptr %i.k(ptr noundef nonnull %i.g)
          to label %bb.h unwind label %.thread    ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXsg3_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprDictNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.v, ptr noundef nonnull align 8 %i.w)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXsg8_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprSetNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXsgd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ab, ptr noundef nonnull align 8 %i.ac)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXsgi_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprSetCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ae, ptr noundef nonnull align 8 %i.af)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXsgn_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprDictCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull align 8 %i.ai)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.al)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvXsgx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprAwaitNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.an, ptr noundef nonnull align 8 %i.ao)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = tail call fastcc noundef zeroext i1 @_RNvXsgC_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprYieldNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.ar)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = tail call fastcc noundef zeroext i1 @_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.au)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = tail call fastcc noundef zeroext i1 @_RNvXsgM_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aw, ptr noundef nonnull align 8 %i.ax)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = tail call fastcc noundef zeroext i1 @_RNvXsgR_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.az, ptr noundef nonnull align 8 %i.ba)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXsgW_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprFStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bc, ptr noundef nonnull align 8 %i.bd)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvXsh1_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bf, ptr noundef nonnull align 8 %i.bg)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = tail call fastcc noundef zeroext i1 @_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bi, ptr noundef nonnull align 8 %i.bj)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = tail call fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bl, ptr noundef nonnull align 8 %i.bm)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bo, ptr noundef nonnull align 8 %i.bp)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.br, ptr noundef nonnull align 4 %i.bs)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bu, ptr noundef nonnull align 4 %i.bv)
  br i1 %i.bw, label %bb.aa, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !noundef !12
  %i.ca = load i32, ptr %i.bx, align 4, !noundef !12
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.ab, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !12
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cj = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ch, ptr noundef nonnull align 4 %i.ci)
  br i1 %i.cj, label %bb.ad, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !noundef !12
  %i.cn = load i32, ptr %i.ck, align 4, !noundef !12
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.ae, label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !noundef !12
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !noundef !12
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = tail call fastcc noundef zeroext i1 @_RNvXshD_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprAttributeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.cu, ptr noundef nonnull align 8 %i.cv)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = tail call fastcc noundef zeroext i1 @_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.cx, ptr noundef nonnull align 8 %i.cy)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = tail call fastcc noundef zeroext i1 @_RNvXshN_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprStarredNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.da, ptr noundef nonnull align 8 %i.db)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.b
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = tail call fastcc noundef zeroext i1 @_RNvXshS_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dd, ptr noundef nonnull align 8 %i.de)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = tail call fastcc noundef zeroext i1 @_RNvXshX_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprListNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dg, ptr noundef nonnull align 8 %i.dh)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dj, ptr noundef nonnull align 8 %i.dk)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.b
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = tail call fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dm, ptr noundef nonnull align 8 %i.dn)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = tail call fastcc noundef zeroext i1 @_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.dp, ptr noundef nonnull align 8 %i.dq)
  br label %_RNvXshr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_15ExprNoneLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsbK_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !79, !noundef !12
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !range !79, !noundef !12
  %i.f = icmp eq i8 %i.e, 0                       ; 3 uses
  %i.g = xor i1 %i.c, %i.f
  br i1 %i.g, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.h

_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.o, %bb.p, %bb.s, %bb.q, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ %i.ab, %bb.g ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ %i.bq, %bb.s ], [ false, %bb.i ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.n ], [ false, %bb.k ], [ %.mux, %bb.r ], [ false, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !noundef !12
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !noundef !12
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.r, ptr noundef nonnull align 4 %i.s)
  br i1 %i.t, label %bb.f, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !12
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.aa = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.aa, ptr nonnull %i.z, i64 %i.v)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %2 = xor i1 %i.f, true
  tail call void @llvm.assume(i1 %2)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !noundef !12
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !12
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.am, ptr noundef nonnull align 4 %i.an), !inline_history !29102
  br i1 %i.ao, label %bb.k, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !12, !noundef !12
  %i.at = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.as), !inline_history !29102
  br i1 %i.at, label %bb.l, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.av = load i8, ptr %i.au, align 1, !range !81, !noundef !12
  %.not.i = icmp eq i8 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.ax = load i8, ptr %i.aw, align 1, !range !81, !noundef !12
  %i.ay = icmp eq i8 %i.ax, -1                    ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ay, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ay, label %bb.q, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29107)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !alias.scope !29106, !noalias !29107, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !29107, !noalias !29106, !noundef !12
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !29106, !noalias !29107, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !29107, !noalias !29106, !noundef !12
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.p
  %i.bj = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  br i1 %i.bj, label %bb.q, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.n
  %.val.i = load i8, ptr %i.a, align 4, !range !82, !noundef !12
  %.val5.i = load i8, ptr %i.d, align 4, !range !82, !noundef !12
  %i.bk = icmp eq i8 %.val.i, %.val5.i
  br i1 %i.bk, label %bb.r, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !align !13, !noundef !12 ; 2 uses
  %.not3.i = icmp eq ptr %i.bm, null              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !align !13, !noundef !12 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  %brmerge = or i1 %.not3.i, %i.bp
  %.mux = and i1 %.not3.i, %i.bp
  br i1 %brmerge, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bm, ptr noundef nonnull align 8 %i.bo), !inline_history !29102
  br label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_32InterpolatedStringLiteralElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsbP_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7PatternNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !noundef !12 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !49, !noundef !12 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775804
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.h
    i64 2, label %bb.l
    i64 3, label %bb.q
    i64 4, label %bb.x
    i64 5, label %bb.ac
    i64 6, label %bb.ak
    i64 7, label %bb.as
  ]

_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph21, %bb.aq, %bb.v, %bb.aw, %bb.p, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %.split, %bb.aj, %bb.ai, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.as ], [ %.mux39, %bb.aq ], [ false, %bb.z ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i ], [ false, %.split ], [ %i.ac, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ %i.au, %bb.k ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.aw ], [ %i.cw, %bb.w ], [ false, %bb.s ], [ true, %bb.p ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.q ], [ %i.dp, %bb.ab ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.aa ], [ %.mux.i, %bb.af ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.ac ], [ %i.fq, %bb.aj ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i ], [ false, %bb.ai ], [ %i.gs, %bb.ar ], [ false, %bb.am ], [ %.mux, %bb.v ], [ false, %bb.ao ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ap ], [ %i.bt, %.lr.ph21 ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.at ], [ %i.hr, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.n, ptr noundef nonnull align 4 %i.o)
  br i1 %i.p, label %bb.e, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !noundef !12
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !noundef !12
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.ab = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull align 8 %i.ab)
  br label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ad, ptr noundef nonnull align 4 %i.ae)
  br i1 %i.af, label %bb.i, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !12
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.j, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !noundef !12
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !range !43, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load i8, ptr %i.as, align 4, !range !43, !noundef !12
  %i.au = icmp eq i8 %i.ar, %i.at
  br label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.av, ptr noundef nonnull align 4 %i.aw), !inline_history !29108
  br i1 %i.ax, label %bb.m, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !noundef !12
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %_RNvXsih_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17PatternMatchValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5place18PlaceAndQualifiersENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBI_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBI_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !26, !alias.scope !29692, !noundef !12
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i1 } @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker9NoTrackerEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext true)
  %i.c = extractvalue { i64, i1 } %i.b, 0
  br label %_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1u_.exit

_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1u_.exit: ; preds = %bb.a, %bb.b
  %.merged.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_form15TypedDictModuleENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12DisjointBaseENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class17CodeGeneratorKindENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums12EnumMetadataENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(184) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides12VariableKindENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBK_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal16InheritanceCycleENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBM_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBW_6option6OptionQIB1B_INtNtBW_4cell7RefCellIB1B_NtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i8, ptr %i.b, align 8, !range !43, !noundef !12
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %_RNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00CsoTR8nlGN3X_18ty_python_semantic.exit
    i8 2, label %bb.c
  ], !prof !29693

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtB1g_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE10initializeCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.a)
  br label %_RNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00CsoTR8nlGN3X_18ty_python_semantic.exit

bb.c:                                             ; preds = %bb.a
  br label %_RNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00CsoTR8nlGN3X_18ty_python_semantic.exit

_RNCNKNvCsdNa9EhS036s_17ruff_memory_usage7TRACKER00CsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.c ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCs45bxiIjzMqg_5salsa6attach8ATTACHED0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBV_6option6OptionQIB1A_NtB8_8AttachedEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #41 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs45bxiIjzMqg_5salsa6attach8ATTACHED0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noalias !29698, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsoTR8nlGN3X_18ty_python_semantic.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #42 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @583, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !41, !noundef !12
  %i.b = icmp ne i64 %i.a, -1                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !41, !noundef !12
  %i.d = icmp eq i64 %i.c, -1                     ; 3 uses
  %not..i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noundef !12
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4, !noundef !12
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.p, ptr noundef nonnull align 4 %i.q), !inline_history !29699
  br i1 %i.r, label %bb.f, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29708)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !29707, !noalias !29708, !noundef !12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !29708, !noalias !29707, !noundef !12
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !29708, !noalias !29707, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !29707, !noalias !29708, !nonnull !12, !noundef !12
  %.not7.not = icmp eq i64 %i.t, 0
  br i1 %.not7.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

bb.h:                                             ; preds = %.split15, %.split, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.ab = add nuw i64 %.sroa.01.0.i.i8, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i.i8 = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %.sroa.01.0.i.i8 ; 15 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %.sroa.01.0.i.i8 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 60 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !range !79, !noalias !29709, !noundef !12
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 60 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4, !range !79, !noalias !29709, !noundef !12
  %i.aj = icmp eq i8 %i.ai, 0                     ; 3 uses
  %i.ak = xor i1 %i.ag, %i.aj
  br i1 %i.ak, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.ag, label %bb.j, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.am = load i32, ptr %i.al, align 8, !noalias !29709, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !noalias !29709, !noundef !12
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !29709, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.at = load i32, ptr %i.as, align 4, !noalias !29709, !noundef !12
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.l, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ax = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.av, ptr noundef nonnull align 4 %i.aw), !noalias !29709
  br i1 %i.ax, label %bb.m, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !29709, !noundef !12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !29709, !noundef !12
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %.split, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.m
  %i.bd = load ptr, ptr %i.ad, align 8, !noalias !29709, !nonnull !12, !noundef !12
  %i.be = load ptr, ptr %i.ac, align 8, !noalias !29709, !nonnull !12, !noundef !12
  %bcmp.i4 = tail call i32 @bcmp(ptr nonnull %i.be, ptr nonnull %i.bd, i64 %i.az), !noalias !29709
  %i.bf = icmp eq i32 %bcmp.i4, 0
  br i1 %i.bf, label %bb.h, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.i
  %2 = xor i1 %i.aj, true
  tail call void @llvm.assume(i1 %2)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !noalias !29709, !noundef !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !noalias !29709, !noundef !12
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !29709, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !29709, !noundef !12
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bs = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bq, ptr noundef nonnull align 4 %i.br), !noalias !29709, !inline_history !29703
  br i1 %i.bs, label %bb.p, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !29709, !nonnull !12, !noundef !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !29709, !nonnull !12, !noundef !12
  %i.bx = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bu, ptr noundef nonnull align 8 %i.bw), !noalias !29709, !inline_history !29703
  br i1 %i.bx, label %bb.q, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 23
  %i.bz = load i8, ptr %i.by, align 1, !range !81, !noalias !29709, !noundef !12
  %.not.i = icmp eq i8 %i.bz, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 23
  %i.cb = load i8, ptr %i.ca, align 1, !range !81, !noalias !29709, !noundef !12
  %i.cc = icmp eq i8 %i.cb, -1                    ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.cc, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.cc, label %bb.v, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29710), !noalias !29709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29711), !noalias !29709
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !29710, !noalias !29712, !noundef !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !29711, !noalias !29713, !noundef !12
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.u, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !alias.scope !29710, !noalias !29712, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !alias.scope !29711, !noalias !29713, !noundef !12
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.u
  %i.cn = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !29709, !inline_history !29703
  br i1 %i.cn, label %bb.v, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.s
  %.val.i13 = load i8, ptr %i.ae, align 4, !range !82, !noalias !29709, !noundef !12
  %.val5.i = load i8, ptr %i.ah, align 4, !range !82, !noalias !29709, !noundef !12
  %i.co = icmp eq i8 %.val.i13, %.val5.i
  br i1 %i.co, label %bb.w, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !29709, !align !13, !noundef !12 ; 2 uses
  %.not3.i = icmp eq ptr %i.cq, null              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !29709, !align !13, !noundef !12 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null                 ; 2 uses
  %brmerge.i = or i1 %.not3.i, %i.ct
  br i1 %brmerge.i, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.split15

.split15:                                         ; preds = %bb.w
  %i.cu = tail call fastcc noundef zeroext i1 @_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull align 8 %i.cs), !noalias !29709, !inline_history !29703
  br i1 %i.cu, label %bb.h, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.w
  %.mux.i = and i1 %.not3.i, %i.ct
  br i1 %.mux.i, label %bb.h, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.h, %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val.i = load i8, ptr %i.cv, align 4, !noundef !12
  %.val1.i = load i8, ptr %i.cw, align 4, !noundef !12
  %i.cx = icmp eq i8 %.val.i, %.val1.i
  br label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load i32, ptr %i.da, align 8, !noundef !12
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !noundef !12
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.y, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.di = load i32, ptr %i.dh, align 4, !noundef !12
  %i.dj = icmp eq i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.z, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.dk, ptr noundef nonnull align 4 %i.dl)
  br i1 %i.dm, label %bb.aa, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !12 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !12
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.ab, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.cz, align 8, !nonnull !12, !noundef !12
  %i.dt = load ptr, ptr %i.cy, align 8, !nonnull !12, !noundef !12
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.dt, ptr nonnull %i.ds, i64 %i.do)
  %i.du = icmp eq i32 %bcmp.i, 0
  br i1 %i.du, label %bb.ac, label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dw = load i8, ptr %i.dv, align 4, !noundef !12
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dy = load i8, ptr %i.dx, align 4, !noundef !12
  %i.dz = icmp eq i8 %i.dw, %i.dy
  br label %_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3h_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.u, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.p, %bb.s, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.o, %bb.r, %bb.v, %bb.t, %bb.n, %.split15, %bb.m, %bb.j, %bb.l, %bb.k, %.lr.ph, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split, %bb.f, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ %i.cx, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit ], [ false, %bb.y ], [ false, %bb.e ], [ false, %bb.c ], [ %i.dz, %bb.ac ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.ab ], [ false, %bb.f ], [ false, %.split ], [ false, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.m ], [ false, %.split15 ], [ false, %bb.n ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.o ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ false, %bb.s ], [ false, %bb.p ], [ false, %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.u ]
  %i.ea = xor i1 %.sroa.0.0.shrunk.i, true
  ret i1 %i.ea
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 4) i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags10closer_lenCsoTR8nlGN3X_18ty_python_semantic(i8 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = and i8 %0, 64
  %.not = icmp eq i8 %i.a, 0
  %i.b = and i8 %0, 2
  %.not.i.i.not.i = icmp eq i8 %i.b, 0
  %..i = select i1 %.not.i.i.not.i, i32 1, i32 3
  %.sroa.0.0 = select i1 %.not, i32 %..i, i32 0
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i32 1, 5) i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags10opener_lenCsoTR8nlGN3X_18ty_python_semantic(i8 noundef %0) unnamed_addr #4 {
_RNvXsW_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlagsNtB5_11StringFlags6prefix.exit:
  %i.a = and i8 %0, 28
  %i.b = icmp ne i8 %i.a, 0
  %.sroa.0.0.i = zext i1 %i.b to i32
  %i.c = and i8 %0, 2
  %.not.i.i.not.i = icmp eq i8 %i.c, 0
  %..i1 = select i1 %.not.i.i.not.i, i32 1, i32 3
  %i.d = add nuw nsw i32 %..i1, %.sroa.0.0.i
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsoTR8nlGN3X_18ty_python_semantic(i8 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = and i8 %0, 2
  %.not.i = icmp eq i8 %i.a, 0                    ; 2 uses
  %.not.i2 = trunc i8 %0 to i1                    ; 2 uses
  %. = select i1 %.not.i2, ptr @587, ptr @586
  %.1 = select i1 %.not.i2, ptr @585, ptr @584
  %.sroa.5.0 = select i1 %.not.i, i64 1, i64 3
  %.sroa.0.0 = select i1 %.not.i, ptr %., ptr %.1
  %i.b = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i32, ptr %i.c, align 8, !noundef !12
  %i.e = icmp eq i32 %i.b, %i.d
end_hunk_2
