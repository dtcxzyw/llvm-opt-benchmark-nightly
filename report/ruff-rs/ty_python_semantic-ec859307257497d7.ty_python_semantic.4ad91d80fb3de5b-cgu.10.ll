Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.10?download=true
inline.NumInlined: 9275
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB9_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1O_:bb.a
  %.not.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.thread2.i, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.thread2.i: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18589)
  %i.ab = load i8, ptr %i.z, align 8, !range !18591, !alias.scope !18592, !noalias !18593, !noundef !3 ; 4 uses
  %.not.i.i.i = icmp eq i8 %i.ab, -1
  %i.ac = load i8, ptr %i.aa, align 8, !range !18591, !alias.scope !18593, !noalias !18592, !noundef !3 ; 3 uses
  %i.ad = icmp eq i8 %i.ac, -1
  %brmerge.i.i.i = or i1 %.not.i.i.i, %i.ad
  br i1 %brmerge.i.i.i, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18597)
  %i.ae = icmp eq i8 %i.ab, %i.ac
  br i1 %i.ae, label %bb.d, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %.split30
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 5, label %bb.h
    i8 4, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %.split33, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

.split33:                                         ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

.split30:                                         ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.aq = load i8, ptr %i.ap, align 1, !range !52, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.as = load i8, ptr %i.ar, align 1, !range !52, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.at = icmp eq i8 %i.aq, %i.as
  br i1 %i.at, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %.split32, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

.split32:                                         ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !range !70, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.bc = load i32, ptr %i.az, align 4, !range !70, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %.split31, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

.split31:                                         ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !range !70, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.bm = load i32, ptr %i.bj, align 4, !range !70, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %.split, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

.split:                                           ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !range !70, !alias.scope !18599, !noalias !18600, !noundef !3
  %i.bw = load i32, ptr %i.bt, align 4, !range !70, !alias.scope !18600, !noalias !18599, !noundef !3
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.thread2.i
  %i.by = and i8 %i.ac, %i.ab
  %.mux.i.i.i = icmp eq i8 %i.by, -1
  br i1 %.mux.i.i.i, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread: ; preds = %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i, %.lr.ph, %bb.h, %bb.c, %bb.e, %bb.f, %bb.g, %.split, %.split30, %.split31, %.split32, %.split33, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split33 ], [ false, %.split32 ], [ false, %.split31 ], [ false, %.split30 ], [ false, %.split ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.h ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ false, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit ], [ true, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9 ]
  ret i1 %.lcssa

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread9: ; preds = %.split33, %.split32, %.split31, %.split30, %.split, %bb.d, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit
  %i.bz = add nuw i64 %.sroa.01.012, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEENtNtB7_3cmp9PartialEq2neB1I_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1q_(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #34 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.06 ; 5 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.06 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18619)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.f = load i8, ptr %i.e, align 1, !range !4249, !alias.scope !18621, !noalias !18624, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !18621, !noalias !18624, !noundef !3
  %i.i = and i64 %i.h, 72057594037927935
  %i.j = icmp ult i8 %i.f, -48
  %i.k = zext i8 %i.f to i64
  %i.l = add nsw i64 %i.k, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.j, i64 %spec.store.select.i.i.i.i.i, i64 %i.i ; 2 uses
  %i.m = icmp ugt i8 %i.f, -49
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !18621, !noalias !18624
  %.sroa.01.0.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %i.c ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.p = load i8, ptr %i.o, align 1, !range !4249, !alias.scope !18625, !noalias !18628, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !18625, !noalias !18628, !noundef !3
  %i.s = and i64 %i.r, 72057594037927935
  %i.t = icmp ult i8 %i.p, -48
  %i.u = zext i8 %i.p to i64
  %i.v = add nsw i64 %i.u, -192
  %spec.store.select.i4.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 16)
  %.sroa.0.0.i5.i.i.i.i = select i1 %i.t, i64 %spec.store.select.i4.i.i.i.i, i64 %i.s
  %i.w = icmp ugt i8 %i.p, -49
  %i.x = load ptr, ptr %i.d, align 8, !alias.scope !18625, !noalias !18628
  %.sroa.01.0.i6.i.i.i.i = select i1 %i.w, ptr %i.x, ptr %i.d ; 2 uses
  %i.y = icmp eq i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i5.i.i.i.i
  br i1 %i.y, label %bb.c, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp eq ptr %.sroa.01.0.i.i.i.i.i, %.sroa.01.0.i6.i.i.i.i
  br i1 %i.z, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i)
  %.not.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit.thread

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit: ; preds = %bb.c, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.aa, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ab)
  br i1 %i.ac, label %bb.b, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit.thread

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ false, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2neB1k_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind17CallErrorPriorityNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2C_EE9call_onceBZ_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #3 {
bb.a:
  %.val = load i8, ptr %1, align 1, !range !3967, !noundef !3
  %.val1 = load i8, ptr %2, align 1, !range !3967, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val, i8 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !3
  %.val1 = load i64, ptr %2, align 8, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvXs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportIdINtNtNtCs4NRVxsYgnAr_4core3ops5arith3AddjE3add(i32 noundef range(i32 1, 0) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = zext i32 %i.a to i64
  %i.c = add i64 %1, %i.b                         ; 2 uses
  %i.d = icmp ult i64 %i.c, 4294967295
  br i1 %i.d, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportId10from_usize.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #58
  unreachable

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportId10from_usize.exit: ; preds = %bb.a
  %i.e = trunc nuw i64 %i.c to i32
  %i.f = add nuw i32 %i.e, 1
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_10ConstraintNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @375) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.f, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.g, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18637
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = load i32, ptr %0, align 4, !range !215, !alias.scope !18639, !noalias !18640, !noundef !3
  %.not.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !18643
  %.pre.i.i = load i64, ptr %i.b, align 8, !noalias !18644
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !18644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !18645
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %.pre.i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !range !215, !alias.scope !18639, !noalias !18640, !noundef !3
  %.not3.i.i = icmp eq i32 %i.l, -1
  br i1 %.not3.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h), !noalias !18646
  %.pre4.i.i = load i64, ptr %i.a, align 8, !noalias !18637
  br label %_RINvXs2a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_10ConstraintNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1k_7tracker15StandardTrackerEBb_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !18637
  br label %_RINvXs2a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_10ConstraintNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1k_7tracker15StandardTrackerEBb_.exit

_RINvXs2a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_10ConstraintNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1k_7tracker15StandardTrackerEBb_.exit: ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ 0, %bb.f ], [ %.pre4.i.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = add i64 %i.n, %i.j                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18637
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !18629, !noalias !18647
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !18647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.p
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_16ConstraintBoundsNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @375) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.f, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.g, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = load i32, ptr %0, align 4, !range !215, !alias.scope !18651, !noalias !18653, !noundef !3
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !18648
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !18655
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !18655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !18656
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %.pre.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !range !215, !alias.scope !18651, !noalias !18653, !noundef !3
  %.not3.i = icmp eq i32 %i.l, -1
  br i1 %.not3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h), !noalias !18653
  %.pre4.i = load i64, ptr %i.a, align 8, !noalias !18655
  br label %_RINvXs2k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_16ConstraintBoundsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1q_7tracker15StandardTrackerEBb_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !18655
  br label %_RINvXs2k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_16ConstraintBoundsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1q_7tracker15StandardTrackerEBb_.exit

_RINvXs2k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_16ConstraintBoundsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1q_7tracker15StandardTrackerEBb_.exit: ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ 0, %bb.f ], [ %.pre4.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = add i64 %i.n, %i.j                       ; 2 uses
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !18648, !noalias !18657
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !18657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.p
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2t_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_10UpperBoundNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @375) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.e, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.f, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvXs_NtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtBb_7GetSize26get_heap_size_with_trackerNtNtBb_7tracker15StandardTrackerEB1F_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !18658
  %i.h = load i64, ptr %i.a, align 8, !noalias !18661, !noundef !3 ; 2 uses
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !18658, !noalias !18664
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !18664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor22visit_bound_super_typeBc_
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor22visit_bound_super_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor25visit_method_wrapper_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_typeNtB4_23GenericContextCollectorNtNtBa_7visitor11TypeVisitor19visit_callable_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor24visit_generic_alias_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor25visit_known_instance_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor22visit_subclass_of_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor27visit_nominal_instance_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor28visit_property_instance_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor17visit_typeis_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor20visit_typeguard_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor19visit_typeform_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor25visit_bound_type_var_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor28visit_protocol_instance_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor21visit_typed_dict_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor21visit_type_alias_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorNtNtBa_7visitor11TypeVisitor27visit_newtype_instance_typeBc_(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_7typevar15TypeVarInstanceEEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_7typevar20BoundTypeVarInstanceEEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorbEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNtB4_6cyclic26DefinitionReferenceVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNtB4_7display22AmbiguousNameCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_22AmbiguousNameCollectorNtNtB7_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvMs7_NtB4_11constraintsNtB1e_20ConstraintSetStorage33intern_mentioned_typevars_in_type23InternMentionedTypevarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvMs_NtB4_8genericsNtB1d_14GenericContext18inferable_typevars15CollectTypeVarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB7_14GenericContext18inferable_typevarsNtB2_15CollectTypeVarsNtNtB9_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvMs_NtB4_8genericsNtB1d_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB9_14GenericContext29remove_callable_only_typevarsNtB4_20FindTypeVarLocationsNtNtBb_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvMsp_NtNtB4_5class14static_literalNtB1e_18StaticClassLiteral28typevars_referenced_in_bases15CollectTypeVarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB8_18StaticClassLiteral28typevars_referenced_in_basesNtB2_15CollectTypeVarsNtNtBc_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvNtB4_7typevar46max_typevar_freshness_matching_generic_context26MatchingFreshnessCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar46max_typevar_freshness_matching_generic_contextNtB4_26MatchingFreshnessCollectorNtNtB8_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvNtB4_7visitor23non_any_dynamic_content21DynamicContentVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind29inferable_typevar_occurrencesNtB2_23InferableTypeVarVisitorNtNtB8_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind34generic_contexts_mentioned_in_typeNtB4_23GenericContextCollectorNtNtBa_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvNvNtB4_11constraints33max_constructor_and_typevar_depth38max_constructor_and_typevar_depth_impl16TypeDepthVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple15walk_tuple_typeNtNvNvXs0_NvNtB4_8instances_1__NtB1g_47non_recursive_protocol_interface_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_23ProtocolReferenceFinderEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_7typevar15TypeVarInstanceEEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_7typevar15TypeVarInstanceEEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_7typevar20BoundTypeVarInstanceEEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_7typevar20BoundTypeVarInstanceEEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorbEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationINtNvNtB4_7visitor18any_over_type_impl18AnyOverTypeVisitorbEEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNtB4_7display22AmbiguousNameCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNtB4_7display22AmbiguousNameCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvMs7_NtB4_11constraintsNtB1w_20ConstraintSetStorage33intern_mentioned_typevars_in_type23InternMentionedTypevarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvMs7_NtB4_11constraintsNtB1l_20ConstraintSetStorage33intern_mentioned_typevars_in_type23InternMentionedTypevarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvMs_NtB4_8genericsNtB1v_14GenericContext18inferable_typevars15CollectTypeVarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvMs_B2_NtB2_14GenericContext18inferable_typevars15CollectTypeVarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvMs_NtB4_8genericsNtB1v_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvMs_B2_NtB2_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvMsp_NtNtB4_5class14static_literalNtB1w_18StaticClassLiteral28typevars_referenced_in_bases15CollectTypeVarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvMsp_NtNtB4_5class14static_literalNtB1l_18StaticClassLiteral28typevars_referenced_in_bases15CollectTypeVarsEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvNtB4_7typevar46max_typevar_freshness_matching_generic_context26MatchingFreshnessCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNtB4_7typevar46max_typevar_freshness_matching_generic_context26MatchingFreshnessCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvNvNtB4_11constraints33max_constructor_and_typevar_depth38max_constructor_and_typevar_depth_impl16TypeDepthVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNvNtB4_11constraints33max_constructor_and_typevar_depth38max_constructor_and_typevar_depth_impl16TypeDepthVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class23walk_protocol_interfaceNtNvNvXs0_NvNtB4_8instances_1__NtB1y_47non_recursive_protocol_interface_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_23ProtocolReferenceFinderEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNvXs0_NvNtB4_8instances_1__NtB1n_47non_recursive_protocol_interface_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_23ProtocolReferenceFinderEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #48

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i8 noundef range(i8 0, 108), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral16own_class_member(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(address) dereferenceable(36), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, i32 noundef, i32, i32 noundef, i32, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #44

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance14synthetic_self(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1w_7sources4once4OnceNtB6_9ParameterEINtNtB1u_3map3MapIB31_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB8_5class5FieldENCNvMsp_NtB4P_14static_literalNtB5f_18StaticClassLiteral22own_synthesized_members4_0ENCINvNtB4P_11named_tuple34synthesize_namedtuple_class_memberB3h_Es2_0EEEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB4_4Type22function_like_callable(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type11empty_tuple(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB1p_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB5_5class5FieldENCNvMsp_NtB3K_14static_literalNtB4a_18StaticClassLiteral22own_synthesized_members4_0ENCINvNtB3K_11named_tuple34synthesize_namedtuple_class_memberB2c_Es1_0EBT_EB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB1p_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB5_5class5FieldENCNvMsp_NtB3K_14static_literalNtB4a_18StaticClassLiteral22own_synthesized_members4_0ENCINvNtB3K_11named_tuple34synthesize_namedtuple_class_memberB2c_Es0_0EBT_EB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14GenericContext22from_typevar_instancesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1J_7flatten7FlatMapINtNtB1N_6option4IterBV_EINtNtB1J_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB7_7typevar20BoundTypeVarIdentityNtB4t_20BoundTypeVarInstanceEENCINvNtNtB7_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB1J_3map3MapINtB3K_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5D_5FieldENCNvMsp_NtB5D_14static_literalNtB88_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB1L_7sources4once4OnceB52_EEEB9_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtNtB5_7typevar20BoundTypeVarInstanceEB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1w_7sources4once4OnceNtB6_9ParameterEINtNtB1u_3map3MapIB31_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB8_5class5FieldENCNvMsp_NtB4P_14static_literalNtB5f_18StaticClassLiteral22own_synthesized_members4_0ENCINvNtB4P_11named_tuple34synthesize_namedtuple_class_memberB3h_Es_0EEEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1w_7sources4once4OnceNtB6_9ParameterEINtNtB1u_3map3MapINtNtB1u_6cloned6ClonedINtNtNtB1y_5slice4iter4IterNtNtNtB8_5class11named_tuple15NamedTupleFieldEENCINvB47_34synthesize_namedtuple_class_memberB3h_Es2_0EEEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterNtNtNtB5_5class11named_tuple15NamedTupleFieldEENCINvB32_34synthesize_namedtuple_class_memberB2c_Es1_0EBT_EB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterNtNtNtB5_5class11named_tuple15NamedTupleFieldEENCINvB32_34synthesize_namedtuple_class_memberB2c_Es0_0EBT_EB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14GenericContext22from_typevar_instancesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1J_7flatten7FlatMapINtNtB1N_6option4IterBV_EINtNtB1J_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB7_7typevar20BoundTypeVarIdentityNtB4t_20BoundTypeVarInstanceEENCINvNtNtB7_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB1J_6cloned6ClonedINtNtNtB1N_5slice4iter4IterNtB5B_15NamedTupleFieldEEE0EINtNtNtB1L_7sources4once4OnceB52_EEEB9_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1w_7sources4once4OnceNtB6_9ParameterEINtNtB1u_3map3MapINtNtB1u_6cloned6ClonedINtNtNtB1y_5slice4iter4IterNtNtNtB8_5class11named_tuple15NamedTupleFieldEENCINvB47_34synthesize_namedtuple_class_memberB3h_Es_0EEEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintss4_1__52is_possibly_constraint_set_assignable_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB10_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintss4_1__52is_possibly_constraint_set_assignable_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB10_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances0_1__49non_recursive_protocol_constraints_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB10_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances0_1__49non_recursive_protocol_constraints_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB10_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances_1__47non_recursive_protocol_interface_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB10_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances_1__47non_recursive_protocol_interface_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB10_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB12_20ProtocolInstanceType23is_equivalent_to_object1__44is_equivalent_to_object_inner_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB16_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB12_20ProtocolInstanceType23is_equivalent_to_object1__44is_equivalent_to_object_inner_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB16_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB12_24DynamicNamedTupleLiteral3mro1__19mro__Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB18_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB12_24DynamicNamedTupleLiteral3mro1__19mro__Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB18_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB12_24DynamicNamedTupleLiteral4spec1__28deferred_spec_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB18_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB12_24DynamicNamedTupleLiteral4spec1__28deferred_spec_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB18_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB14_4Type35assignable_solutions_with_inferable1__40assignable_solutions_impl_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsB16_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB14_4Type35assignable_solutions_with_inferable1__40assignable_solutions_impl_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageB16_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsb80QtQtK5z0_6bitvec5field5checkjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Lsb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsb80QtQtK5z0_6bitvec5field16maybe_shift_leftjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker15StandardTrackerEB9_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker9NoTrackerEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtBY_7tracker15StandardTrackerEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtBb_7GetSize26get_heap_size_with_trackerNtNtBb_7tracker15StandardTrackerEB1F_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs_NtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtBb_7GetSize26get_heap_size_with_trackerQNtNtBb_7tracker15StandardTrackerEB1F_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBP_SNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1y_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBP_SNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1y_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs5_NtCs33Yq3JqQgDT_9get_size27trackerNtB6_15StandardTrackerNtB6_14GetSizeTracker5trackNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(48), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBU_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXNtCs33Yq3JqQgDT_9get_size27trackerQNtB3_15StandardTrackerNtB3_14GetSizeTracker5trackNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerQNtNtBU_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs5_NtCs33Yq3JqQgDT_9get_size27trackerNtB6_15StandardTrackerNtB6_14GetSizeTracker5trackNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(48), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBY_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXNtCs33Yq3JqQgDT_9get_size27trackerQNtB3_15StandardTrackerNtB3_14GetSizeTracker5trackNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerQNtNtBY_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs5_NtCs33Yq3JqQgDT_9get_size27trackerNtB6_15StandardTrackerNtB6_14GetSizeTracker5trackNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(48), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB17_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXNtCs33Yq3JqQgDT_9get_size27trackerQNtB3_15StandardTrackerNtB3_14GetSizeTracker5trackNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerQNtNtB17_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs5_NtCs33Yq3JqQgDT_9get_size27trackerNtB6_15StandardTrackerNtB6_14GetSizeTracker5trackNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEB1x_(ptr noalias noundef align 8 dereferenceable(48), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1g_7tracker15StandardTrackerEB9_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1g_7tracker9NoTrackerEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXNtCs33Yq3JqQgDT_9get_size27trackerQNtB3_15StandardTrackerNtB3_14GetSizeTracker5trackNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEB1v_(ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs5_NtCs33Yq3JqQgDT_9get_size27trackerNtB6_15StandardTrackerNtB6_14GetSizeTracker5trackNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerEB1x_(ptr noalias noundef align 8 dereferenceable(48), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXNtCs33Yq3JqQgDT_9get_size27trackerQNtB3_15StandardTrackerNtB3_14GetSizeTracker5trackNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerEB1v_(ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1w_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1w_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0
end_hunk_1
