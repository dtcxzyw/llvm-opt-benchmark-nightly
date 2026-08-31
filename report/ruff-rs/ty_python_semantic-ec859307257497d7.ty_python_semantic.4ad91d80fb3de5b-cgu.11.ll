Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.11?download=true
inline.NumInlined: 8904
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvXsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_19NominalInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.az = load i32, ptr %i.aw, align 4, !range !557, !alias.scope !20607, !noalias !20606, !noundef !3
  %i.ba = icmp eq i32 %i.ay, %i.az
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !range !557, !alias.scope !20606, !noalias !20607, !noundef !3
  %i.be = load i32, ptr %i.bb, align 4, !range !557, !alias.scope !20607, !noalias !20606, !noundef !3
  %i.bf = icmp eq i32 %i.bd, %i.be
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !range !557, !alias.scope !20606, !noalias !20607, !noundef !3
  %i.bj = load i32, ptr %i.bg, align 4, !range !557, !alias.scope !20607, !noalias !20606, !noundef !3
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !range !557, !alias.scope !20599, !noalias !20600, !noundef !3
  %i.bo = load i32, ptr %i.bl, align 4, !range !557, !alias.scope !20600, !noalias !20599, !noundef !3
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !range !557, !alias.scope !20592, !noalias !20593, !noundef !3
  %i.bt = load i32, ptr %i.bq, align 4, !range !557, !alias.scope !20593, !noalias !20592, !noundef !3
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !range !557, !alias.scope !20582, !noalias !20585, !noundef !3
  %i.by = load i32, ptr %i.bv, align 4, !range !557, !alias.scope !20585, !noalias !20582, !noundef !3
  %i.bz = icmp eq i32 %i.bx, %i.by
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.bz, %bb.x ], [ true, %bb.b ], [ false, %bb.c ], [ %i.bu, %bb.w ], [ false, %bb.d ], [ false, %bb.f ], [ %i.bp, %bb.v ], [ false, %bb.g ], [ false, %bb.i ], [ %i.aq, %bb.q ], [ false, %bb.j ], [ %i.av, %bb.r ], [ false, %bb.l ], [ %i.ba, %bb.s ], [ false, %bb.m ], [ %i.bf, %bb.t ], [ false, %bb.n ], [ %i.bk, %bb.u ], [ false, %bb.o ], [ false, %bb.p ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !noundef !3
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !3
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.x = xor i1 %i.q, true
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !3
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !noundef !3
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ai, ptr noundef nonnull align 4 %i.aj)
  br i1 %i.ak, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ar = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.aq, i64 %i.am)
  %i.as = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.as, label %bb.l, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i8, ptr %i.at, align 4, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aw = load i8, ptr %i.av, align 4, !noundef !3
  %i.ax = icmp eq i8 %i.au, %i.aw
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !3, !noundef !3
  %i.bc = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.t)
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bc, %bb.m ], [ false, %bb.d ], [ false, %bb.f ], [ %i.ax, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20611)
  %i.n = load i64, ptr %0, align 8, !range !2569, !alias.scope !20608, !noalias !20611, !noundef !3 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !2569, !alias.scope !20611, !noalias !20608, !noundef !3
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !20608, !noalias !20611, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !alias.scope !20608, !noalias !20611 ; 2 uses
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !20611, !noalias !20608, !noundef !3 ; 2 uses
  %i.t = icmp ne ptr %.val.i, null                ; 2 uses
  %i.u = icmp eq ptr %.val3.i, null               ; 3 uses
  %not..i.i = xor i1 %i.u, true
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !20611, !noalias !20608
  %i.w = icmp eq i64 %.val2.i, %.val4.i           ; 2 uses
  br i1 %i.t, label %3, label %bb.h

3:                                                ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i)
  br i1 %i.w, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.u)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !20613
  %i.x = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !20608, !noalias !20611, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !20611, !noalias !20608, !noundef !3
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !20608, !noalias !20611, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !20611, !noalias !20608, !noundef !3
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !20608, !noalias !20611, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !20611, !noalias !20608, !noundef !3
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %3, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %i.w, %bb.h ], [ false, %3 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !343, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !343, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = icmp eq i32 %i.m, %i.o
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !range !343, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !343, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g)
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !noundef !3
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t)
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val = load i8, ptr %i.ac, align 1, !range !2425, !noundef !3
  %.val1 = load i8, ptr %i.ad, align 1, !range !2425, !noundef !3
  %i.ae = icmp eq i8 %.val, %.val1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.a, %bb.b, %bb.c, %bb.e, %bb.g
  %.sroa.0.0 = phi i1 [ %i.ae, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !noundef !3
  %i.e = load i32, ptr %1, align 8, !noundef !3
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !475, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !align !475, !noundef !3 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.k, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.k

.split:                                           ; preds = %bb.e
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.o)
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !align !475, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !align !475, !noundef !3 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.k, label %.split8

bb.i:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.k

.split8:                                          ; preds = %bb.h
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u)
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split8, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !align !475, !noundef !3 ; 2 uses
  %.not6 = icmp eq ptr %i.y, null                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !align !475, !noundef !3 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.ab
  %.mux = and i1 %.not6, %i.ab
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.split8, %.split, %bb.c, %bb.f, %bb.i, %bb.a, %bb.b, %bb.e, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.l ], [ false, %bb.c ], [ false, %.split8 ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ], [ %.mux, %bb.j ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa)
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core12ChildrenIterNCNvB1X_16attribute_scopes0ENCB2H_s_0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceNtNtB1X_5scope11FileScopeIdEIB1s_NtB1X_15DescendantsIterNCNCB2H_s_00EEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.pre = load i32, ptr %0, align 8, !range !46, !alias.scope !20614
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
end_hunk_0
