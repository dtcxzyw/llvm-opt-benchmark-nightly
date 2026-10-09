Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.06?download=true
inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18forward_slice_plan:bb.a
  %i.e = zext nneg i32 %.sroa.4.0.i.i.i to i64    ; 8 uses
  %i.f = trunc nuw i32 %2 to i1                   ; 11 uses
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %3, -1                      ; 2 uses
  %i.h = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i45.i = select i1 %i.g, i64 %i.h, i64 undef
  %.sroa.3.0.i.i = select i1 %i.f, i64 %.sroa.4.0.i.i45.i, i64 0
  %not..i.i = xor i1 %i.f, true
  %narrow.i.i = select i1 %not..i.i, i1 true, i1 %i.g
  %i.i = icmp uge i64 %.sroa.3.0.i.i, %i.e
  %or.cond.i = select i1 %narrow.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i, label %select.unfold, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond.i49.i = icmp ugt i32 %3, -2147483648
  %or.cond44.i = and i1 %or.cond.i49.i, %i.a
  %or.cond55.i = select i1 %i.f, i1 %or.cond44.i, i1 false
  br i1 %or.cond55.i, label %..thread.i_crit_edge, label %.thread203

.thread203:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26150, !noalias !26151, !noundef !24
  %.not.i.i.i.i204 = icmp ne i64 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !26150, !noalias !26151
  br label %bb.k

..thread.i_crit_edge:                             ; preds = %bb.d
  %.pre169 = sub nsw i32 0, %3
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  %or.cond.i47.i = icmp ugt i32 %3, -2147483648
  %or.cond56.i = select i1 %i.f, i1 %or.cond.i47.i, i1 false
  br i1 %or.cond56.i, label %bb.f, label %.thread195

.thread195:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !26150, !noalias !26151, !noundef !24
  %.not.i.i.i.i196.a = icmp ne i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !26150, !noalias !26151
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = sub nsw i32 0, %3                        ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !26152, !noalias !26153, !noundef !24
  %.not.i.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !26152, !noalias !26153
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %i.w, i64 %i.s)
  %i.y = select i1 %.not.i.i, i64 0, i64 %i.x
  %.not41.i = icmp ult i64 %i.y, %i.e
  br i1 %.not41.i, label %.thread.i, label %select.unfold

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.f
  %.pre-phi = phi i32 [ %.pre169, %..thread.i_crit_edge ], [ %i.r, %bb.f ]
  %or.cond.i52.i = icmp ugt i32 %5, -2147483648
  %i.z = sub nsw i32 0, %5
  %i.aa = icmp ule i32 %.pre-phi, %i.z
  %or.cond5.i = select i1 %or.cond.i52.i, i1 %i.aa, i1 false
  br i1 %or.cond5.i, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !26150, !noalias !26151, !noundef !24
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !26150, !noalias !26151 ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread195, %bb.g
  %i.af = phi i64 [ %i.q, %.thread195 ], [ %i.ae, %bb.g ] ; 6 uses
  %.not.i.i.i.i197 = phi i1 [ %.not.i.i.i.i196.a, %.thread195 ], [ %.not.i.i.i.i, %bb.g ] ; 6 uses
  %i.ag = icmp slt i32 %3, 0                      ; 2 uses
  %i.ah = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i11.i.i.i = select i1 %i.ag, i64 undef, i64 %i.ah
  %.sroa.3.0.i.i.i.i = select i1 %i.f, i64 %.sroa.4.0.i.i11.i.i.i, i64 0 ; 4 uses
  %narrow.i.not.i.i.i = select i1 %i.f, i1 %i.ag, i1 false
  br i1 %narrow.i.not.i.i.i, label %.thread136, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ult i64 %.sroa.3.0.i.i.i.i, %i.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = xor i64 %.sroa.3.0.i.i.i.i, -1
  %i.aj = add nsw i64 %i.e, %i.ai
  %.fr.i.i.i = freeze i64 %i.aj                   ; 2 uses
  %i.ak = urem i64 %.fr.i.i.i, %6
  %i.al = add i64 %.fr.i.i.i, %.sroa.3.0.i.i.i.i
  %i.am = sub i64 %i.al, %i.ak
  %i.an = icmp ugt i64 %i.af, %i.am
  %i.ao = select i1 %.not.i.i.i.i197, i1 %i.an, i1 false
  br i1 %i.ao, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %bb.f, %bb.a, %bb.c, %.thread.i, %bb.j
  %.sroa.1350.0 = phi i64 [ %i.e, %bb.j ], [ undef, %.thread.i ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.f ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.3.0.i.i.i.i, %bb.j ], [ undef, %.thread.i ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.f ]
  %.sroa.048.0 = phi i32 [ 4, %bb.j ], [ 3, %.thread.i ], [ 3, %bb.c ], [ 3, %bb.a ], [ 3, %bb.f ]
  %.sroa.15.sroa.5.0.extract.shift = lshr i64 %.sroa.1350.0, 32
  %.sroa.15.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.15.sroa.5.0.extract.shift to i32
  br label %bb.n

bb.k:                                             ; preds = %.thread203, %bb.g, %bb.j, %bb.i
  %i.ap = phi i64 [ %i.ae, %bb.g ], [ %i.af, %bb.j ], [ %i.af, %bb.i ], [ %i.m, %.thread203 ] ; 7 uses
  %.not.i.i.i.i198 = phi i1 [ %.not.i.i.i.i, %bb.g ], [ %.not.i.i.i.i197, %bb.j ], [ %.not.i.i.i.i197, %bb.i ], [ %.not.i.i.i.i204, %.thread203 ] ; 7 uses
  %or.cond.i.i.i.i4 = icmp ugt i32 %3, -2147483648
  %or.cond149 = select i1 %i.f, i1 %or.cond.i.i.i.i4, i1 false
  br i1 %or.cond149, label %bb.l, label %bb.o

.thread136:                                       ; preds = %bb.h
  %.sink9.i.i.i.i134 = select i1 %.not.i.i.i.i197, i64 %i.af, i64 0
  %or.cond.i.i.i.i4138.not = icmp eq i32 %3, -2147483648
  %i.aq = sub nsw i32 0, %3
  %i.ar = zext nneg i32 %i.aq to i64
  br i1 %or.cond.i.i.i.i4138.not, label %.thread144, label %.thread140

bb.l:                                             ; preds = %bb.k
  %.sink9.i.i.i.i = select i1 %.not.i.i.i.i198, i64 %i.ap, i64 0 ; 2 uses
  %i.as = sub nsw i32 0, %3
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  br i1 %i.a, label %.thread140, label %bb.m

.thread140:                                       ; preds = %.thread136, %bb.l
  %i.au = phi i64 [ %i.ap, %bb.l ], [ %i.af, %.thread136 ] ; 2 uses
  %.not.i.i.i.i201 = phi i1 [ %.not.i.i.i.i198, %bb.l ], [ %.not.i.i.i.i197, %.thread136 ] ; 2 uses
  %.sink9.i.i.i.i135139143 = phi i64 [ %.sink9.i.i.i.i, %bb.l ], [ %.sink9.i.i.i.i134, %.thread136 ]
  %i.av = phi i64 [ %i.at, %bb.l ], [ %i.ar, %.thread136 ]
  %or.cond.i20.i.i.i = icmp ugt i32 %5, -2147483648
  %i.aw = sub nsw i32 0, %5
  %i.ax = zext nneg i32 %i.aw to i64
  br i1 %or.cond.i20.i.i.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread140, %bb.l
  %i.ay = phi i64 [ %i.au, %.thread140 ], [ %i.ap, %bb.l ]
  %.not.i.i.i.i200 = phi i1 [ %.not.i.i.i.i201, %.thread140 ], [ %.not.i.i.i.i198, %bb.l ]
  %.sink9.i.i.i.i135139142 = phi i64 [ %.sink9.i.i.i.i135139143, %.thread140 ], [ %.sink9.i.i.i.i, %bb.l ]
  %i.az = phi i64 [ %i.av, %.thread140 ], [ %i.at, %bb.l ] ; 3 uses
  %.sroa.611.0.i.i.i = phi i64 [ %i.ax, %.thread140 ], [ 0, %bb.l ] ; 2 uses
  %.not.i.i.i5 = icmp samesign uge i64 %.sroa.611.0.i.i.i, %i.az
  %.not19.i.i.i = icmp ult i64 %.sink9.i.i.i.i135139142, %i.az
  %or.cond = select i1 %.not.i.i.i5, i1 true, i1 %.not19.i.i.i
  br i1 %or.cond, label %.thread205, label %bb.n

bb.n:                                             ; preds = %bb.m, %select.unfold
  %.sroa.15.sroa.5.0 = phi i32 [ %.sroa.15.sroa.5.0.extract.trunc, %select.unfold ], [ 0, %bb.m ]
  %.sroa.15.sroa.0.0.in = phi i64 [ %.sroa.1350.0, %select.unfold ], [ %.sroa.611.0.i.i.i, %bb.m ]
  %.sroa.18.sroa.0.0 = phi i32 [ 0, %select.unfold ], [ 1, %bb.m ]
  %.sroa.13.0 = phi i64 [ %.sroa.11.0, %select.unfold ], [ %i.az, %bb.m ]
  %.sroa.040.0 = phi i32 [ %.sroa.048.0, %select.unfold ], [ 4, %bb.m ]
  %.sroa.15.sroa.0.0 = trunc i64 %.sroa.15.sroa.0.0.in to i32
  %.sroa.10.sroa.0.0 = trunc i64 %6 to i32
  %.sroa.10.sroa.5.0.in = lshr i64 %6, 32
  %.sroa.10.sroa.5.0 = trunc nuw i64 %.sroa.10.sroa.5.0.in to i32
  br label %bb.an

bb.o:                                             ; preds = %bb.k
  %i.ba = icmp eq i64 %6, 1
  br i1 %i.ba, label %bb.p, label %bb.q

.thread205:                                       ; preds = %bb.m
  %i.bb = icmp eq i64 %6, 1
  br i1 %i.bb, label %bb.p, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

.thread144:                                       ; preds = %.thread136
  %i.bc = icmp eq i64 %6, 1
  br i1 %i.bc, label %._crit_edge.i.i.i.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

.thread:                                          ; preds = %.thread140
  %i.bd = icmp eq i64 %6, 1
  br i1 %i.bd, label %._crit_edge.i.i.i.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.p:                                             ; preds = %.thread205, %bb.o
  %.not.i.i.i.i199208 = phi i1 [ %.not.i.i.i.i200, %.thread205 ], [ %.not.i.i.i.i198, %bb.o ] ; 3 uses
  %i.be = phi i64 [ %i.ay, %.thread205 ], [ %i.ap, %bb.o ] ; 3 uses
  %.not165.i.i.i = icmp eq i32 %4, 0
  br i1 %.not165.i.i.i, label %bb.r, label %._crit_edge.i.i.i

bb.q:                                             ; preds = %bb.o
  br i1 %i.f, label %bb.ae, label %bb.af

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.p
  %i.bf = icmp slt i32 %3, 0                      ; 2 uses
  %i.bg = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i.i.i.i8 = select i1 %i.bf, i64 undef, i64 %i.bg
  %spec.select = select i1 %i.f, i64 %.sroa.4.0.i.i.i.i.i8, i64 0
  %i.bh = select i1 %i.f, i1 %i.bf, i1 false
  br label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %._crit_edge.i.i.i, %.thread, %.thread144
  %narrow.i.not.i.i.i10 = phi i1 [ %i.bh, %._crit_edge.i.i.i ], [ true, %.thread ], [ true, %.thread144 ] ; 2 uses
  %.not.i.i.i.i202216 = phi i1 [ %.not.i.i.i.i199208, %._crit_edge.i.i.i ], [ %.not.i.i.i.i201, %.thread ], [ %.not.i.i.i.i197, %.thread144 ] ; 4 uses
  %i.bi = phi i64 [ %i.be, %._crit_edge.i.i.i ], [ %i.au, %.thread ], [ %i.af, %.thread144 ] ; 4 uses
  %i.bj = phi i64 [ %spec.select, %._crit_edge.i.i.i ], [ undef, %.thread ], [ undef, %.thread144 ] ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !26154, !noalias !26155 ; 12 uses
  %.not166.i.i.i = icmp ugt i64 %i.bj, %i.bl      ; 3 uses
  %or.cond.i.i.i = select i1 %narrow.i.not.i.i.i10, i1 true, i1 %.not166.i.i.i
  %or.cond.not.i.i.i = xor i1 %or.cond.i.i.i, true
  %i.bm = icmp slt i32 %5, 0                      ; 2 uses
  %i.bn = and i1 %i.a, %or.cond.not.i.i.i
  %or.cond398.i.i.i = select i1 %i.bn, i1 %i.bm, i1 false
  br i1 %or.cond398.i.i.i, label %bb.t, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i

bb.r:                                             ; preds = %bb.p
  %..i.i.i = select i1 %i.f, i32 %3, i32 0        ; 5 uses
  %i.bo = icmp sgt i32 %..i.i.i, -1
  br i1 %i.bo, label %bb.s, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bp = zext nneg i32 %..i.i.i to i64           ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !26154, !noalias !26155, !noundef !24 ; 5 uses
  %.not167.i.i.i = icmp ult i64 %i.br, %i.bp
  br i1 %.not167.i.i.i, label %bb.ac, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i, %bb.u, %bb.t, %._crit_edge.i.i.i.thread
  br i1 %narrow.i.not.i.i.i10, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i, label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i.i.thread
  %or.cond.i.not.i.i.i.i = icmp eq i32 %5, -2147483648
  %i.bs = sub nsw i32 0, %5
  %i.bt = zext nneg i32 %i.bs to i64              ; 3 uses
  br i1 %or.cond.i.not.i.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sink9.i.i.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.bi, i64 0
  %i.bu = sub i64 %.sink9.i.i.i.i.i, %i.bl        ; 3 uses
  %.not.i.i.i.i12 = icmp ult i64 %i.bu, %i.bt
  br i1 %.not.i.i.i.i12, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i: ; preds = %bb.u
  %i.bv = sub nuw i64 %i.bu, %i.bt                ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 2147483648
  br i1 %i.bw, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i
  %i.bx = trunc nuw nsw i64 %i.bv to i32
  %i.by = icmp ult i64 %i.bj, %i.bl               ; 2 uses
  %i.bz = icmp ult i64 %i.bj, 2147483648          ; 2 uses
  %i.ca = trunc nuw nsw i64 %i.bj to i32
  %.sroa.05.0.i.i.i.i.i.i = zext i1 %i.bz to i32
  %i.cb = and i1 %i.bz, %i.by
  %.sroa.4331.0.i.i.i = select i1 %i.cb, i32 %i.ca, i32 undef
  %.sink.i.i.i.i.i = select i1 %i.by, i32 %.sroa.05.0.i.i.i.i.i.i, i32 2
  %.not395.i.i.i = icmp eq i64 %i.bu, %i.bt       ; 2 uses
  %.sroa.6338.0.i.i.i = select i1 %.not395.i.i.i, i32 undef, i32 %i.bx
  %.sink.i.i184.i.i.i = select i1 %.not395.i.i.i, i32 2, i32 0
  br label %bb.an

bb.v:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i
  %.sroa.4.0.i.i.i.i = select i1 %or.cond.i.i, i64 %i.e, i64 undef ; 2 uses
  %i.cc = icmp ugt i64 %.sroa.4.0.i.i.i.i, %i.bl
  %or.cond172.i.i.i = select i1 %or.cond.i.i, i1 %i.cc, i1 false
  br i1 %or.cond172.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = and i1 %.not166.i.i.i, %i.a
  %or.cond399.i.i.i = select i1 %i.cd, i1 %i.bm, i1 false
  br i1 %or.cond399.i.i.i, label %bb.y, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.ce = sub nuw nsw i64 %.sroa.4.0.i.i.i.i, %i.bl
  %.sink9.i7.i.i.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.bi, i64 0
  %i.cf = sub i64 %.sink9.i7.i.i.i.i.i, %i.bl
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ce) ; 2 uses
  br i1 %.not166.i.i.i, label %bb.an, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i: ; preds = %bb.x
  %i.cg = icmp ult i64 %i.bj, %i.bl               ; 2 uses
  %i.ch = icmp ult i64 %i.bj, 2147483648          ; 2 uses
  %i.ci = trunc nuw nsw i64 %i.bj to i32
  %.sroa.05.0.i.i.i.i.i.i.i = zext i1 %i.ch to i32
  %i.cj = and i1 %i.ch, %i.cg
  %.sroa.4.0.i191.i.i.i = select i1 %i.cj, i32 %i.ci, i32 undef
  %.sink.i.i.i.i.i.i = select i1 %i.cg, i32 %.sroa.05.0.i.i.i.i.i.i.i, i32 2
  br label %bb.an

bb.y:                                             ; preds = %bb.w
  %or.cond.i.not.i197.i.i.i = icmp eq i32 %5, -2147483648
  %i.ck = sub nsw i32 0, %5
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  br i1 %or.cond.i.not.i197.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sink9.i.i199.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.bi, i64 0
  %i.cm = sub i64 %.sink9.i.i199.i.i.i, %i.bl     ; 2 uses
  %.not.i200.i.i.i = icmp ult i64 %i.cm, %i.cl
  br i1 %.not.i200.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i: ; preds = %bb.z
  %i.cn = sub nuw i64 %i.cm, %i.cl                ; 4 uses
  %i.co = icmp ult i64 %i.cn, 2147483648
  br i1 %i.co, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i
  %i.cp = trunc nuw nsw i64 %i.cn to i32
  %i.cq = sub nuw nsw i64 %i.bj, %i.bl            ; 2 uses
  %.sroa.0.0.i.i214.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cq) ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn               ; 3 uses
  %i.cs = trunc nuw nsw i64 %.sroa.0.0.i.i214.i.i.i to i32
  %.sroa.7.0.i216.i.i.i = select i1 %i.cr, i32 %i.cp, i32 undef
  %.sroa.527.0.i.i.i.i = select i1 %i.cr, i32 %i.cs, i32 undef
  %.sroa.026.0.i.i.i.i = select i1 %i.cr, i32 1, i32 2
  br label %bb.an

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i
  %or.cond.i.not.i227.i.i.i = icmp eq i32 %3, -2147483648
  %i.ct = sub nsw i32 0, %3
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  br i1 %or.cond.i.not.i227.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i
  %.sink9.i.i229.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.bi, i64 0
  %i.cv = sub i64 %.sink9.i.i229.i.i.i, %i.bl     ; 3 uses
  %.not.i230.i.i.i = icmp ult i64 %i.cv, %i.cu
  br i1 %.not.i230.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i: ; preds = %bb.aa
  %i.cw = sub nuw i64 %i.cv, %i.cu                ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 2147483648
  %i.cy = icmp ult i64 %i.bl, %i.e
  %i.cz = and i1 %i.cx, %or.cond.i.i
  %or.cond221 = select i1 %i.cz, i1 %i.cy, i1 false
  br i1 %or.cond221, label %bb.ab, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ab:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i
  %i.da = sub nuw nsw i64 %i.e, %i.bl
  %.sroa.0.0.i240.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.da) ; 2 uses
  %i.db = icmp samesign ugt i64 %.sroa.0.0.i240.i.i.i, %i.cw
  br i1 %i.db, label %bb.an, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ac:                                            ; preds = %bb.s
  %.sink9.i.i.i.i.i.i = select i1 %.not.i.i.i.i199208, i64 %i.be, i64 0
  %i.dc = sub i64 %.sink9.i.i.i.i.i.i, %i.br      ; 4 uses
  %i.dd = sub nuw nsw i64 %i.bp, %i.br            ; 2 uses
  %.sroa.0.0.i.i251.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd) ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  br i1 %i.de, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.df = trunc nuw nsw i64 %.sroa.0.0.i.i251.i.i.i to i32
  %i.dg = icmp ult i64 %i.dc, 2147483648          ; 2 uses
  %i.dh = trunc nuw nsw i64 %i.dc to i32
  %.sroa.67.0.i.i.i.i.i.i.i = select i1 %i.dg, i32 %i.dh, i32 undef
  %.sroa.06.0.i.i.i.i266.i.i.i = zext i1 %i.dg to i32
  br label %bb.an

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i: ; preds = %bb.s
  %i.di = icmp ugt i64 %i.br, %i.bp
  %spec.select.i.i.i = select i1 %i.di, i32 1, i32 2
  %.sink9.i.i276.i.i.i = select i1 %.not.i.i.i.i199208, i64 %i.be, i64 0
  %.not396.i.i.i = icmp eq i64 %.sink9.i.i276.i.i.i, %i.br
  %.sink.i.i278.i.i.i = select i1 %.not396.i.i.i, i32 2, i32 0
  br label %bb.an

bb.ae:                                            ; preds = %bb.q
  %i.dj = icmp sgt i32 %3, -1
  br i1 %i.dj, label %bb.ag, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.af:                                            ; preds = %bb.ag, %bb.q
  %.sroa.689.0.i.i.i = phi i64 [ %i.dk, %bb.ag ], [ 0, %bb.q ] ; 4 uses
  %.sroa.085.0.i.i.i = phi i1 [ %.not.i284.i.i.i, %bb.ag ], [ true, %bb.q ] ; 2 uses
  br i1 %i.a, label %bb.ah, label %._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i

._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i: ; preds = %bb.af
  %.pre168 = select i1 %.not.i.i.i.i198, i64 %i.ap, i64 0
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dk = zext nneg i32 %3 to i64                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val176.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !26154, !noalias !26155, !noundef !24
  %.not.i284.i.i.i = icmp uge i64 %.val176.i.i.i, %i.dk
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.dm = icmp sgt i32 %5, -1
  br i1 %i.dm, label %bb.am, label %bb.ai

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i: ; preds = %bb.am, %._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i
  %.sink9.i319.i.i.i.pre-phi = phi i64 [ %.sink9.i309.i.i.i, %bb.am ], [ %.pre168, %._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !26154, !noalias !26155 ; 2 uses
  %i.do = icmp ult i64 %.sroa.689.0.i.i.i, %.val.i.i.i
  %i.dp = trunc nuw nsw i64 %.sroa.689.0.i.i.i to i32
  %i.dq = select i1 %.sroa.085.0.i.i.i, i1 %i.do, i1 false ; 2 uses
  %.sroa.8369.1.i.i.i = select i1 %i.dq, i32 %i.dp, i32 undef
  %.sroa.0368.1.i.i.i = select i1 %i.dq, i32 1, i32 2
  %i.dr = sub i64 %.sink9.i319.i.i.i.pre-phi, %.val.i.i.i
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %or.cond.i.not.i288.i.i.i = icmp eq i32 %5, -2147483648
  %i.ds = sub nsw i32 0, %5
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  br i1 %or.cond.i.not.i288.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sink9.i.i290.i.i.i = select i1 %.not.i.i.i.i198, i64 %i.ap, i64 0
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !26156, !noalias !26155, !noundef !24 ; 2 uses
  %i.dw = sub i64 %.sink9.i.i290.i.i.i, %i.dv     ; 2 uses
  %.not.i291.i.i.i = icmp ult i64 %i.dw, %i.dt
  br i1 %.not.i291.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i: ; preds = %bb.aj
  %i.dx = sub nuw i64 %i.dw, %i.dt                ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 2147483648
  br i1 %i.dy, label %bb.ak, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ak:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i
  br i1 %.sroa.085.0.i.i.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dz = icmp ult i64 %.sroa.689.0.i.i.i, %i.dv  ; 2 uses
  %i.ea = trunc nuw nsw i64 %.sroa.689.0.i.i.i to i32
  %spec.select390.i.i.i = select i1 %i.dz, i32 %i.ea, i32 undef
  %spec.select391.i.i.i = select i1 %i.dz, i32 1, i32 2
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.eb = zext nneg i32 %5 to i64
  %.sink9.i309.i.i.i = select i1 %.not.i.i.i.i198, i64 %i.ap, i64 0 ; 2 uses
  %.not.i.i.i7 = icmp ult i64 %.sink9.i309.i.i.i, %i.eb
  br i1 %.not.i.i.i7, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread: ; preds = %.thread205, %.thread144, %bb.ab, %bb.w, %bb.ai, %bb.ae, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i, %bb.aa, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i, %bb.z, %bb.y, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i, %bb.aj, %bb.am, %.thread
  store i32 6, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.ab, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i, %bb.n, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i, %bb.x, %bb.ad, %bb.ac, %bb.al, %bb.ak, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i
  %.sroa.10.sroa.5.0113 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ %.sroa.10.sroa.5.0, %bb.n ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ undef, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.55.0 = phi i64 [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.al ], [ undef, %bb.n ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 0, %bb.ad ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 0, %bb.ak ], [ %i.cw, %bb.ab ]
  %.sroa.62.0 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.x ], [ %.sroa.0.0.i.i251.i.i.i, %bb.ac ], [ %i.dx, %bb.al ], [ undef, %bb.n ], [ %.sroa.0.0.i.i214.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.0.0.i.i251.i.i.i, %bb.ad ], [ %i.dr, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ %i.dx, %bb.ak ], [ %.sroa.0.0.i240.i.i.i, %bb.ab ]
  %.sroa.67.0 = phi i8 [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 1, %bb.x ], [ 1, %bb.ac ], [ 1, %bb.al ], [ undef, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ad ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 1, %bb.ak ], [ 0, %bb.ab ]
  %.sroa.47.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ undef, %bb.n ], [ %.sroa.7.0.i216.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sroa.6338.0.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.67.0.i.i.i.i.i.i.i, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.43.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ %.sroa.18.sroa.0.0, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.06.0.i.i.i.i266.i.i.i, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.41.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ %.sroa.15.sroa.5.0, %bb.n ], [ %.sroa.527.0.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %i.df, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.34.0 = phi i32 [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %.sink.i.i278.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 2, %bb.x ], [ 2, %bb.ac ], [ 2, %bb.al ], [ %.sroa.15.sroa.0.0, %bb.n ], [ %.sroa.026.0.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sink.i.i184.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ad ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 2, %bb.ak ], [ 2, %bb.ab ]
  %.sroa.2820.0 = phi i64 [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 1, %bb.x ], [ 1, %bb.ac ], [ %6, %bb.al ], [ %.sroa.13.0, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ad ], [ %6, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ %6, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.22.0 = phi i32 [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.al ], [ %.sroa.10.sroa.0.0, %bb.n ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 0, %bb.ad ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 0, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.17.0 = phi i32 [ %.sroa.4.0.i191.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %..i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ %..i.i.i, %bb.ac ], [ %spec.select390.i.i.i, %bb.al ], [ undef, %bb.n ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sroa.4331.0.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %..i.i.i, %bb.ad ], [ %.sroa.8369.1.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.0.0 = phi i32 [ %.sink.i.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %spec.select.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 2, %bb.x ], [ 2, %bb.ac ], [ %spec.select391.i.i.i, %bb.al ], [ %.sroa.040.0, %bb.n ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sink.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 2, %bb.ad ], [ %.sroa.0368.1.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 2, %bb.ak ], [ 2, %bb.ab ]
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.10.sroa.5.0113, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.2820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2820.0, ptr %.sroa.2820.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.34.0, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.41.0, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.43.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.47.0, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.55.0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.62.0, ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.67.0, ptr %.sroa.67.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE25type_at_negative_distance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = icmp eq i64 %5, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26170, !noalias !26171, !noundef !24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26172, !noalias !26173, !noundef !24
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26172, !noalias !26173
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.h ; 3 uses
  %i.i = sub i64 %.sink9.i.i, %i.d                ; 2 uses
  %i.j = icmp ugt i64 %5, %.sink9.i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ugt i64 %5, %i.i
  br i1 %.not, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, label %bb.e

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = sub i64 %.sink9.i.i, %5
  %.sroa.018.0.copyload = load i32, ptr %1, align 8, !alias.scope !26174 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.519.0.copyload = load i32, ptr %.sroa.519.0..sroa_idx, align 4, !alias.scope !26174
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8, !alias.scope !26174
  %i.q = icmp eq i32 %.sroa.018.0.copyload, -1    ; 3 uses
  %.sroa.615.0 = select i1 %i.q, i64 undef, i64 %.sroa.620.0.copyload
  %.sroa.512.0 = select i1 %i.q, i32 5, i32 %.sroa.519.0.copyload
  %.sroa.010.0 = select i1 %i.q, i32 18, i32 %.sroa.018.0.copyload
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26176)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.r, align 8, !alias.scope !26177, !noalias !26176
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.o, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !26177, !noalias !26176
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !26177, !noalias !26176
  store i32 %.sroa.010.0, ptr %i.a, align 8, !alias.scope !26178, !noalias !26175
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.512.0, ptr %.sroa.431.0..sroa_idx, align 4, !alias.scope !26178, !noalias !26175
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.615.0, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !26178, !noalias !26175
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1P_4skip4SkipINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB8_4TypeEEEINtNtNtB1R_7sources4once4OnceB3J_EEB3J_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = sub nuw i64 %i.i, %5                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.h, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE25type_at_nonnegative_index(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26203, !noalias !26204, !noundef !24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26205, !noalias !26206, !noundef !24
  %.not.i.i = icmp ne i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26205, !noalias !26206
  %i.i = icmp ugt i64 %i.h, %5
  %i.j = select i1 %.not.i.i, i1 %i.i, i1 false
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26207)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206), !noalias !26208 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1
  %i.n = icmp ult i64 %5, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i64 %5, 1
  %i.p = sub i64 %i.o, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26210
  %.sroa.08.0.copyload.i.i.i = load i32, ptr %1, align 8, !alias.scope !26211, !noalias !26212 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.59.0.copyload.i.i.i = load i32, ptr %.sroa.59.0..sroa_idx.i.i.i, align 4, !alias.scope !26211, !noalias !26212
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.610.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !26211, !noalias !26212
  %i.q = icmp eq i32 %.sroa.08.0.copyload.i.i.i, -1 ; 3 uses
  %.sroa.6.0.i.i.i = select i1 %i.q, i64 undef, i64 %.sroa.610.0.copyload.i.i.i
  %.sroa.5.0.i.i.i = select i1 %i.q, i32 5, i32 %.sroa.59.0.copyload.i.i.i
  %.sroa.0.0.i.i.i = select i1 %i.q, i32 18, i32 %.sroa.08.0.copyload.i.i.i
  %i.r = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207), !noalias !26212 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
end_hunk_0
