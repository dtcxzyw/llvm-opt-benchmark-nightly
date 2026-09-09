Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.10?download=true
inline.NumInlined: 9275
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1h_4TypeB2u_NtNtB1h_8relation12TypeRelationNtB2L_17TypeVarEvaluationEENCNvMs8_B1f_INtB1f_13CycleDetectorB2J_B2t_NtNtB1h_11constraints13ConstraintSetKj1_E11begin_visits0_0E0B1j_:bb.a
  br i1 %i.ab, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.g:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %.split12.i.i.a, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.h:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.split10.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.i:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %.split13.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split.i.i:                                       ; preds = %bb.b
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.f), !noalias !10142
  br i1 %i.aw, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split12.i.i.a:                                   ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !range !21, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.ba = load i32, ptr %i.ax, align 4, !range !21, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split10.i.i:                                     ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !range !21, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.bf = load i32, ptr %i.bc, align 4, !range !21, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split13.i.i:                                     ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !range !21, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.bk = load i32, ptr %i.bh, align 4, !range !21, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !range !21, !alias.scope !10147, !noalias !10148, !noundef !10
  %i.bp = load i32, ptr %i.bm, align 4, !range !21, !alias.scope !10149, !noalias !10150, !noundef !10
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.j:                                             ; preds = %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split13.i.i, %.split10.i.i, %.split12.i.i.a, %.split.i.i, %.split11.i.i.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10158)
  %i.bt = load i32, ptr %i.br, align 4, !range !58, !alias.scope !10159, !noalias !10160, !noundef !10 ; 2 uses
  %i.bu = add nsw i32 %i.bt, -37
  %i.bv = icmp samesign ugt i32 %i.bt, 36
  %narrow.i4.i.i = select i1 %i.bv, i32 %i.bu, i32 5 ; 2 uses
  %i.bw = load i32, ptr %i.bs, align 4, !range !58, !alias.scope !10161, !noalias !10162, !noundef !10 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -37
  %i.by = icmp samesign ugt i32 %i.bw, 36
  %narrow2.i5.i.i = select i1 %i.by, i32 %i.bx, i32 5
  %i.bz = icmp eq i32 %narrow.i4.i.i, %narrow2.i5.i.i
  br i1 %i.bz, label %bb.k, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.k:                                             ; preds = %bb.j
  switch i32 %narrow.i4.i.i, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
    i32 5, label %.split15.i.i.a
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10164)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cd = load i8, ptr %i.cc, align 4, !range !15, !alias.scope !10165, !noalias !10166, !noundef !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.cf = load i8, ptr %i.ce, align 4, !range !15, !alias.scope !10167, !noalias !10168, !noundef !10
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.n, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !alias.scope !10165, !noalias !10166, !noundef !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !10167, !noalias !10168, !noundef !10
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %.split17.i.i.a, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split17.i.i.a:                                   ; preds = %bb.n
  %i.cm = load i32, ptr %i.ca, align 4, !range !21, !alias.scope !10165, !noalias !10166, !noundef !10
  %i.cn = load i32, ptr %i.cb, align 4, !range !21, !alias.scope !10167, !noalias !10168, !noundef !10
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.s, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.o:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cq = load i32, ptr %i.cp, align 4, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cs = load i32, ptr %i.cr, align 4, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.p:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cx = load i32, ptr %i.cw, align 4, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %.split18.i.i.a, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.q:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.da = load i32, ptr %i.cz, align 4, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dc = load i32, ptr %i.db, align 4, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %.split16.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.r:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dh = load i32, ptr %i.dg, align 4, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %.split19.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split15.i.i.a:                                   ; preds = %bb.k
  %i.dj = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.br, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bs), !noalias !10142
  br i1 %i.dj, label %bb.s, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split18.i.i.a:                                   ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !range !21, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.dn = load i32, ptr %i.dk, align 4, !range !21, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.s, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split16.i.i:                                     ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.dr = load i32, ptr %i.dq, align 4, !range !21, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.ds = load i32, ptr %i.dp, align 4, !range !21, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %bb.s, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

.split19.i.i:                                     ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !range !21, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.dx = load i32, ptr %i.du, align 4, !range !21, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.s, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.i.i: ; preds = %bb.o
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !range !21, !alias.scope !10159, !noalias !10160, !noundef !10
  %i.ec = load i32, ptr %i.dz, align 4, !range !21, !alias.scope !10161, !noalias !10162, !noundef !10
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.s, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.s:                                             ; preds = %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.i.i, %.split19.i.i, %.split16.i.i, %.split18.i.i.a, %.split15.i.i.a, %.split17.i.i.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i.i = load i8, ptr %i.ee, align 4, !range !28, !alias.scope !10143, !noalias !10169, !noundef !10 ; 4 uses
  %.val1.i.i = load i8, ptr %i.ef, align 4, !range !28, !alias.scope !10144, !noalias !10170, !noundef !10 ; 4 uses
  %i.eg = icmp ne i8 %.val.i.i, 4
  tail call void @llvm.assume(i1 %i.eg)
  %.inv.i.i.i = icmp samesign ugt i8 %.val.i.i, 1 ; 2 uses
  %2 = icmp ne i8 %.val1.i.i, 4
  tail call void @llvm.assume(i1 %2)
  %.inv2.i.i.i = icmp samesign ult i8 %.val1.i.i, 2
  %3 = select i1 %.inv.i.i.i, i8 %.val.i.i, i8 4
  %4 = select i1 %.inv2.i.i.i, i8 4, i8 %.val1.i.i
  %5 = icmp eq i8 %3, %4
  %6 = icmp eq i8 %.val.i.i, %.val1.i.i
  %spec.select.i.i.i = or i1 %.inv.i.i.i, %6
  %.sroa.0.0.i.i.i = and i1 %spec.select.i.i.i, %5
  br i1 %.sroa.0.0.i.i.i, label %bb.t, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  %.val2.i.i = load i8, ptr %i.eh, align 1, !range !15, !alias.scope !10143, !noalias !10169, !noundef !10
  %.val3.i.i = load i8, ptr %i.ei, align 1, !range !15, !alias.scope !10144, !noalias !10170, !noundef !10
  %i.ej = icmp eq i8 %.val2.i.i, %.val3.i.i
  br label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit

_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtB9_8relation12TypeRelationTNtB9_4TypeB1L_B1g_NtB1i_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetKj1_E11begin_visits0_0Bb_.exit: ; preds = %bb.a, %bb.d, %bb.e, %.split11.i.i.a, %bb.f, %bb.g, %bb.h, %bb.i, %.split.i.i, %.split12.i.i.a, %.split10.i.i, %.split13.i.i, %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.j, %bb.m, %bb.n, %.split17.i.i.a, %bb.o, %bb.p, %bb.q, %bb.r, %.split15.i.i.a, %.split18.i.i.a, %.split16.i.i, %.split19.i.i, %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.i.i, %bb.s, %bb.t
  %.sroa.0.0.i.i = phi i1 [ %i.ej, %bb.t ], [ false, %bb.s ], [ false, %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.i.i ], [ false, %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %.split19.i.i ], [ false, %.split.i.i ], [ false, %.split10.i.i ], [ false, %.split11.i.i.a ], [ false, %.split12.i.i.a ], [ false, %.split13.i.i ], [ false, %bb.e ], [ false, %.split15.i.i.a ], [ false, %.split16.i.i ], [ false, %.split17.i.i.a ], [ false, %.split18.i.i.a ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.r ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.m ], [ false, %bb.n ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1h_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB2u_EENCNvMs8_B1f_INtB1f_13CycleDetectorB2F_B2t_INtNtBe_6option6OptionB2u_EKj1_E11begin_visits0_0E0B1j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10188)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10188
  store ptr %1, ptr %i.a, align 8, !noalias !10188
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load <2 x ptr>, ptr %0, align 8, !alias.scope !10188
  store <2 x ptr> %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10188
  %i.d = call noundef nonnull align 4 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic12TypeIdentityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorBQ_EE15get_or_try_initNCINvB2_11get_or_initNCNCNvMs8_BS_INtBS_13CycleDetectorB1U_TNtBU_4TypeB1U_B42_EINtNtB7_6option6OptionB42_EKj1_E11begin_visits0_00E0zEBW_(ptr noundef nonnull align 4 %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !10188 ; 26 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10188
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10188, !nonnull !10, !align !12, !noundef !10 ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10192)
  %i.g = load i32, ptr %i.d, align 4, !range !58, !alias.scope !10193, !noalias !10194, !noundef !10 ; 2 uses
  %i.h = add nsw i32 %i.g, -37
  %i.i = icmp samesign ugt i32 %i.g, 36
  %narrow.i.i.i = select i1 %i.i, i32 %i.h, i32 5 ; 2 uses
  %i.j = load i32, ptr %i.f, align 4, !range !58, !alias.scope !10195, !noalias !10196, !noundef !10 ; 2 uses
  %i.k = add nsw i32 %i.j, -37
  %i.l = icmp samesign ugt i32 %i.j, 36
  %narrow2.i.i.i = select i1 %i.l, i32 %i.k, i32 5
  %i.m = icmp eq i32 %narrow.i.i.i, %narrow2.i.i.i
  br i1 %i.m, label %bb.b, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow.i.i.i, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %.split.i.i
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10198)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.q = load i8, ptr %i.p, align 4, !range !15, !alias.scope !10199, !noalias !10200, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.s = load i8, ptr %i.r, align 4, !range !15, !alias.scope !10201, !noalias !10202, !noundef !10
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !10199, !noalias !10200, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !10201, !noalias !10202, !noundef !10
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %.split8.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

.split8.i.i:                                      ; preds = %bb.e
  %i.z = load i32, ptr %i.n, align 4, !range !21, !alias.scope !10199, !noalias !10200, !noundef !10
  %i.aa = load i32, ptr %i.o, align 4, !range !21, !alias.scope !10201, !noalias !10202, !noundef !10
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.g:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %.split9.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.h:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.split7.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.i:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %.split10.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

.split.i.i:                                       ; preds = %bb.b
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.f), !noalias !10188
  br i1 %i.aw, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

.split9.i.i:                                      ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !range !21, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.ba = load i32, ptr %i.ax, align 4, !range !21, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

.split7.i.i:                                      ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !range !21, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.bf = load i32, ptr %i.bc, align 4, !range !21, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

.split10.i.i:                                     ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !range !21, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.bk = load i32, ptr %i.bh, align 4, !range !21, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !range !21, !alias.scope !10193, !noalias !10194, !noundef !10
  %i.bp = load i32, ptr %i.bm, align 4, !range !21, !alias.scope !10195, !noalias !10196, !noundef !10
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.j:                                             ; preds = %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB5_12TypeIdentityNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split10.i.i, %.split7.i.i, %.split9.i.i, %.split.i.i, %.split8.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i = load i8, ptr %i.br, align 4, !range !59, !alias.scope !10189, !noalias !10203, !noundef !10
  %.val1.i.i = load i8, ptr %i.bs, align 4, !range !59, !alias.scope !10190, !noalias !10204, !noundef !10
  %i.bt = icmp eq i8 %.val.i.i, %.val1.i.i
  br i1 %i.bt, label %bb.k, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10206)
  %i.bw = load i32, ptr %i.bu, align 4, !range !58, !alias.scope !10207, !noalias !10208, !noundef !10 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -37
  %i.by = icmp samesign ugt i32 %i.bw, 36
  %narrow.i2.i.i = select i1 %i.by, i32 %i.bx, i32 5 ; 2 uses
  %i.bz = load i32, ptr %i.bv, align 4, !range !58, !alias.scope !10209, !noalias !10210, !noundef !10 ; 2 uses
  %i.ca = add nsw i32 %i.bz, -37
  %i.cb = icmp samesign ugt i32 %i.bz, 36
  %narrow2.i3.i.i = select i1 %i.cb, i32 %i.ca, i32 5
  %i.cc = icmp eq i32 %narrow.i2.i.i, %narrow2.i3.i.i
  br i1 %i.cc, label %bb.l, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.l:                                             ; preds = %bb.k
  switch i32 %narrow.i2.i.i, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10212)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cg = load i8, ptr %i.cf, align 4, !range !15, !alias.scope !10213, !noalias !10214, !noundef !10
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ci = load i8, ptr %i.ch, align 4, !range !15, !alias.scope !10215, !noalias !10216, !noundef !10
  %i.cj = icmp eq i8 %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !alias.scope !10213, !noalias !10214, !noundef !10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !alias.scope !10215, !noalias !10216, !noundef !10
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.p, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB9_4TypeB1g_B25_EINtNtCs4NRVxsYgnAr_4core6option6OptionB25_EKj1_E11begin_visits0_0Bb_.exit

bb.p:                                             ; preds = %bb.o
  %i.cp = load i32, ptr %i.cd, align 4, !range !21, !alias.scope !10213, !noalias !10214, !noundef !10
  %i.cq = load i32, ptr %i.ce, align 4, !range !21, !alias.scope !10215, !noalias !10216, !noundef !10
end_hunk_0
begin_hunk_1_@_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation10IsDisjointTNtB7_4TypeB1H_ENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_:bb.a
  store i32 %.sroa.017.0, ptr %.sroa.470.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.619, i64 28, i1 false)
  %i.du = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !12372, !noalias !12373, !noundef !10
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %.sroa.01.0.i, align 8, !alias.scope !12372, !noalias !12373
  %i.dw = load i64, ptr %i.bo, align 8, !noundef !10
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.bo, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dy, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false)
  store i32 2, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %select.unfold81, %bb.z, %.loopexit95, %bb.x
  ret void

bb.z:                                             ; preds = %.split.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  store i32 0, ptr %0, align 8
  store i64 %i.bp, ptr %i.bo, align 8
  br label %bb.y

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit97, %.loopexit.split-lp98
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ], [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ea = load i64, ptr %i.bo, align 8, !noundef !10
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr %i.bo, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.aa, %bb.j
  %.pn32 = phi { ptr, i32 } [ %.pn.ph, %bb.aa ], [ %lpad.phi107, %bb.j ], [ %i.dg, %bb.u ]
  resume { ptr, i32 } %.pn32
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation10IsDisjointTNtB7_4TypeB1H_ENtNtB7_11constraints13ConstraintSetKj1_E12finish_visitB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [96 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !12381, !noalias !12382, !noundef !10
  %i.l = icmp ugt i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sink8.i = select i1 %i.l, ptr %i.m, ptr %i.j  ; 2 uses
  %i.n = load i64, ptr %.sink8.i, align 8, !noundef !10 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.n, -1
  store i64 %i.p, ptr %.sink8.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store i64 0, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !10
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #58
  unreachable

bb.g:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.af, %bb.n ]
  %i.u = load i64, ptr %i.q, align 8, !noundef !10
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.q, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.e
  store i64 -1, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false), !noalias !12384
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !noalias !12385
  %.sroa.0.0.copyload.i = load i32, ptr %i.w, align 8, !alias.scope !12383, !noalias !12386 ; 4 uses
  store i32 37, ptr %i.w, align 8, !alias.scope !12383, !noalias !12386
  %i.y = icmp ne i32 %.sroa.0.0.copyload.i, 39
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add i32 %.sroa.0.0.copyload.i, -37
  %i.aa = icmp ugt i32 %.sroa.0.0.copyload.i, 36
  %narrow.i = select i1 %i.aa, i32 %i.z, i32 2
  switch i32 %narrow.i, label %bb.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ], !prof !66

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !12387
  store i32 38, ptr %i.f, align 8, !noalias !12387
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !noalias !12386
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !12387
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12387
  store i32 %.sroa.0.0.copyload.i, ptr %i.e, align 8, !noalias !12387
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.5.0..sroa_idx.i, i64 52, i1 false), !noalias !12386
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, i64 40, i1 false), !noalias !12386
  invoke fastcc void @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_18CycleDetectorCacheTNtB7_4TypeB1k_ENtNtB7_11constraints13ConstraintSetE5spillB9_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %i.e, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12387
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12387
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !12386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false), !noalias !12384
  invoke void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBO_ENtNtBQ_11constraints13ConstraintSetNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBS_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3)
          to label %bb.o unwind label %bb.n, !noalias !12385

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBQ_ENtNtBS_11constraints13ConstraintSetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body unwind label %bb.p, !noalias !12387

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12387
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !12387
  store i32 40, ptr %i.f, align 8, !noalias !12387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12387
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !12387
  unreachable

bb.q:                                             ; preds = %bb.o, %.noexc, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !12386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ai = load i64, ptr %i.q, align 8, !noundef !10
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(36) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.066 = alloca [32 x i8], align 4          ; 3 uses
  %.sroa.619 = alloca [32 x i8], align 4          ; 2 uses
  %i.c = alloca [36 x i8], align 4                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 13 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775807
  br i1 %i.g, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #58
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit: ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.f, 1
  store i64 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12458)
  %i.j = load i32, ptr %i.i, align 8, !range !44, !alias.scope !12457, !noalias !12458, !noundef !10 ; 3 uses
  %i.k = icmp ne i32 %i.j, 39
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i32 %i.j, -37
  %i.m = icmp samesign ugt i32 %i.j, 36
  %narrow.i = select i1 %i.m, i32 %i.l, i32 2
  switch i32 %narrow.i, label %bb.c [
    i32 0, label %select.unfold77
    i32 1, label %bb.d
    i32 2, label %.lr.ph.i.i
    i32 3, label %bb.k
  ]

bb.c:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit
  unreachable

bb.d:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12460)
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4)
  br i1 %i.o, label %bb.e, label %select.unfold77

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q)
  br i1 %i.r, label %bb.f, label %select.unfold77

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i.i = load i8, ptr %i.s, align 8, !range !28, !alias.scope !12461, !noalias !12462, !noundef !10 ; 4 uses
  %.val1.i.i = load i8, ptr %i.t, align 4, !range !28, !alias.scope !12462, !noalias !12461, !noundef !10 ; 4 uses
  %i.u = icmp ne i8 %.val.i.i, 4
  tail call void @llvm.assume(i1 %i.u)
  %.inv.i.i.i = icmp samesign ugt i8 %.val.i.i, 1 ; 2 uses
  %5 = icmp ne i8 %.val1.i.i, 4
  tail call void @llvm.assume(i1 %5)
  %.inv2.i.i.i = icmp samesign ult i8 %.val1.i.i, 2
  %6 = select i1 %.inv.i.i.i, i8 %.val.i.i, i8 4
  %7 = select i1 %.inv2.i.i.i, i8 4, i8 %.val1.i.i
  %8 = icmp eq i8 %6, %7
  %9 = icmp eq i8 %.val.i.i, %.val1.i.i
  %spec.select.i.i.i = or i1 %.inv.i.i.i, %9
  %.sroa.0.0.i.i.i = and i1 %spec.select.i.i.i, %8
  br i1 %.sroa.0.0.i.i.i, label %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i, label %select.unfold77

_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 33
  %.val2.i.i = load i8, ptr %i.v, align 1, !range !15, !alias.scope !12461, !noalias !12462, !noundef !10
  %.val3.i.i = load i8, ptr %i.w, align 1, !range !15, !alias.scope !12462, !noalias !12461, !noundef !10
  %i.x = icmp eq i8 %.val2.i.i, %.val3.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  br i1 %i.x, label %select.unfold, label %select.unfold77

.lr.ph.i.i:                                       ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 33
  %.val1.i.i.i.i = load i8, ptr %i.aa, align 4, !range !28, !alias.scope !12458, !noalias !12457 ; 5 uses
  %i.ac = icmp ne i8 %.val1.i.i.i.i, 4            ; 2 uses
  %.inv2.i.i.i.i.i = icmp samesign ult i8 %.val1.i.i.i.i, 2
  %narrow1.i.i.i.i.i = select i1 %.inv2.i.i.i.i.i, i8 4, i8 %.val1.i.i.i.i ; 2 uses
  %.val3.i.i.i.i = load i8, ptr %i.ab, align 1, !range !15, !alias.scope !12458, !noalias !12457 ; 2 uses
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4), !noalias !12463
  br i1 %i.ad, label %bb.g, label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ae, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z), !noalias !12463
  br i1 %i.af, label %bb.h, label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val.i.i.i.i = load i8, ptr %i.ag, align 8, !range !28, !alias.scope !12464, !noalias !12465, !noundef !10 ; 4 uses
  %i.ah = icmp ne i8 %.val.i.i.i.i, 4
  tail call void @llvm.assume(i1 %i.ah)
  %.inv.i.i.i.i.i = icmp samesign ugt i8 %.val.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.assume(i1 %i.ac)
  %narrow.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i8 %.val.i.i.i.i, i8 4
  %10 = icmp eq i8 %narrow.i.i.i.i.i, %narrow1.i.i.i.i.i
  %11 = icmp eq i8 %.val.i.i.i.i, %.val1.i.i.i.i
  %spec.select.i.i.i.i.i = or i1 %.inv.i.i.i.i.i, %11
  %.sroa.0.0.i.i.i.i.i = and i1 %spec.select.i.i.i.i.i, %10
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 145
  %.val2.i.i.i.i = load i8, ptr %12, align 1, !range !15, !alias.scope !12457, !noalias !12458
  %i.ai = icmp eq i8 %.val2.i.i.i.i, %.val3.i.i.i.i
  %or.cond.i = select i1 %.sroa.0.0.i.i.i.i.i, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.thread.split.loop.exit.i.i, label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i

_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.ptr.1.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4), !noalias !12463
  br i1 %i.aj, label %bb.i, label %select.unfold77

bb.i:                                             ; preds = %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.al = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ak, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z), !noalias !12463
  br i1 %i.al, label %bb.j, label %select.unfold77

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val.i.i.i.1.i = load i8, ptr %i.am, align 8, !range !28, !alias.scope !12464, !noalias !12465, !noundef !10 ; 4 uses
  %i.an = icmp ne i8 %.val.i.i.i.1.i, 4
  tail call void @llvm.assume(i1 %i.an)
  %.inv.i.i.i.i.1.i = icmp samesign ugt i8 %.val.i.i.i.1.i, 1 ; 2 uses
  tail call void @llvm.assume(i1 %i.ac)
  %narrow.i.i.i.i.1.i = select i1 %.inv.i.i.i.i.1.i, i8 %.val.i.i.i.1.i, i8 4
  %13 = icmp eq i8 %narrow.i.i.i.i.1.i, %narrow1.i.i.i.i.i
  %14 = icmp eq i8 %.val.i.i.i.1.i, %.val1.i.i.i.i
  %spec.select.i.i.i.i.1.i = or i1 %.inv.i.i.i.i.1.i, %14
  %.sroa.0.0.i.i.i.i.1.i = and i1 %spec.select.i.i.i.i.1.i, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 201
  %.val2.i.i.i.1.i = load i8, ptr %15, align 1, !range !15, !alias.scope !12457, !noalias !12458
  %i.ao = icmp eq i8 %.val2.i.i.i.1.i, %.val3.i.i.i.i
  %or.cond18.i = select i1 %.sroa.0.0.i.i.i.i.1.i, i1 %i.ao, i1 false
  br i1 %or.cond18.i, label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.thread.split.loop.exit.i.i, label %select.unfold77

_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.thread.split.loop.exit.i.i: ; preds = %bb.j, %bb.h
  %i.ap = phi i64 [ 112, %bb.h ], [ 168, %bb.j ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  br label %select.unfold

bb.k:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12466, !noalias !12467, !noundef !10
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %select.unfold77, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aw = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1A_NtNtB1C_8relation12TypeRelationNtB2s_17TypeVarEvaluationEEB1E_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4)
          to label %.noexc unwind label %.loopexit.split-lp102 ; 2 uses

.noexc:                                           ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12469)
  %i.ay = lshr i64 %i.aw, 57
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !12470, !noalias !12471, !noundef !10 ; 2 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !alias.scope !12470, !noalias !12471, !nonnull !10, !noundef !10 ; 2 uses
  %i.bd = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.noexc
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bv, %bb.o ]
  %.pn.i.i.i.i = phi i64 [ %i.aw, %.noexc ], [ %i.bw, %bb.o ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bb ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !12472 ; 2 uses
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.be
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.n
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bu, %bb.n ], [ %i.bh, %bb.m ] ; 3 uses
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.01.0.i.i.i.i, %i.bj
  %i.bl = and i64 %i.bk, %i.bb
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [56 x i8], ptr %i.bc, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -56
  %i.bp = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBr_NtNtBt_8relation12TypeRelationNtB1i_17TypeVarEvaluationEINtB2_10EquivalentBq_E10equivalentBv_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bo)
          to label %.noexc44 unwind label %.loopexit101

.noexc44:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.bp, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBR_NtNtBT_8relation12TypeRelationNtB1I_17TypeVarEvaluationENtNtBT_11constraints13ConstraintSetEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2A_E0EBV_.exit.i.i, label %bb.n, !prof !16

._crit_edge.i.i.i:                                ; preds = %bb.n, %bb.m
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.o, label %select.unfold77.loopexit, !prof !20

bb.n:                                             ; preds = %.noexc44
  %i.bt = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i.i.i, %i.bv
  br label %bb.m

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBR_NtNtBT_8relation12TypeRelationNtB1I_17TypeVarEvaluationENtNtBT_11constraints13ConstraintSetEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2A_E0EBV_.exit.i.i: ; preds = %.noexc44
  %i.bx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.pre = load i64, ptr %i.e, align 8
  %i.by = add i64 %.pre, -1
  br label %select.unfold

.loopexit101:                                     ; preds = %.lr.ph.i.i.i
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp102:                            ; preds = %bb.l
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp102, %.loopexit101
  %lpad.phi105 = phi { ptr, i32 } [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ]
  %i.bz = load i64, ptr %i.e, align 8, !noundef !10
  %i.ca = add i64 %i.bz, -1
  store i64 %i.ca, ptr %i.e, align 8
  br label %bb.al

select.unfold77.loopexit:                         ; preds = %._crit_edge.i.i.i
  %.pre114 = load i64, ptr %i.e, align 8
  %i.cb = add i64 %.pre114, -1
  br label %select.unfold77

select.unfold77:                                  ; preds = %select.unfold77.loopexit, %bb.e, %bb.k, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit, %bb.d, %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i, %bb.f, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i, %bb.j, %bb.i
  %16 = phi i64 [ %i.cb, %select.unfold77.loopexit ], [ %i.f, %bb.e ], [ %i.f, %bb.k ], [ %i.f, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtBO_4TypeB1V_NtNtBO_8relation12TypeRelationNtB2b_17TypeVarEvaluationENtNtBO_11constraints13ConstraintSetEE6borrowBQ_.exit ], [ %i.f, %bb.d ], [ %i.f, %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i ], [ %i.f, %bb.f ], [ %i.f, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.i.i ], [ %i.f, %bb.j ], [ %i.f, %bb.i ]
  store i64 %16, ptr %i.e, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !10 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 9223372036854775807
  br i1 %i.ce, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1o_4TypeB2B_NtNtB1o_8relation12TypeRelationNtB2S_17TypeVarEvaluationEEj1_EE6borrowB1q_.exit, label %bb.q, !prof !16

bb.q:                                             ; preds = %select.unfold77
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #58
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1o_4TypeB2B_NtNtB1o_8relation12TypeRelationNtB2S_17TypeVarEvaluationEEj1_EE6borrowB1q_.exit: ; preds = %select.unfold77
  %i.cf = add nuw nsw i64 %i.cd, 1
  store i64 %i.cf, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !12473, !noundef !10 ; 3 uses
  %i.ci = icmp ugt i64 %i.ch, 1                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  br i1 %i.ci, label %bb.r, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit

bb.r:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1o_4TypeB2B_NtNtB1o_8relation12TypeRelationNtB2S_17TypeVarEvaluationEEj1_EE6borrowB1q_.exit
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !12473, !nonnull !10, !noundef !10
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !12473, !noundef !10
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit

select.unfold:                                    ; preds = %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBR_NtNtBT_8relation12TypeRelationNtB1I_17TypeVarEvaluationENtNtBT_11constraints13ConstraintSetEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2A_E0EBV_.exit.i.i, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.thread.split.loop.exit.i.i
  %i.cn = phi i64 [ %i.by, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBR_NtNtBT_8relation12TypeRelationNtB1I_17TypeVarEvaluationENtNtBT_11constraints13ConstraintSetEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2A_E0EBV_.exit.i.i ], [ %i.f, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.thread.split.loop.exit.i.i ], [ %i.f, %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.bx, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBR_NtNtBT_8relation12TypeRelationNtB1I_17TypeVarEvaluationENtNtBT_11constraints13ConstraintSetEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2A_E0EBV_.exit.i.i ], [ %i.ar, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB7_18CycleDetectorCacheTNtB9_4TypeB1m_NtNtB9_8relation12TypeRelationNtB1C_17TypeVarEvaluationENtNtB9_11constraints13ConstraintSetE3get0Bb_.exit.thread.split.loop.exit.i.i ], [ %i.y, %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.0.i, i64 16, i1 false)
  store i32 0, ptr %0, align 8
  store i64 %i.cn, ptr %i.e, align 8
  br label %bb.ai

.loopexit95:                                      ; preds = %.lr.ph
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp96:                             ; preds = %bb.y
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit: ; preds = %bb.r, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1o_4TypeB2B_NtNtB1o_8relation12TypeRelationNtB2S_17TypeVarEvaluationEEj1_EE6borrowB1q_.exit
  %.sink10.i = phi ptr [ %i.ck, %bb.r ], [ %i.cj, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1o_4TypeB2B_NtNtB1o_8relation12TypeRelationNtB2S_17TypeVarEvaluationEEj1_EE6borrowB1q_.exit ] ; 2 uses
  %.sink9.i = phi i64 [ %i.cm, %bb.r ], [ %i.ch, %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1o_4TypeB2B_NtNtB1o_8relation12TypeRelationNtB2S_17TypeVarEvaluationEEj1_EE6borrowB1q_.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %.sink9.i, 72
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink10.i, i64 %.idx
  %.not.i = icmp eq i64 %.sink9.i, 0
  br i1 %.not.i, label %.loopexit100, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val1.i.i.i = load i8, ptr %i.cr, align 4, !range !28, !alias.scope !12474, !noalias !12475 ; 4 uses
  %i.cs = icmp ne i8 %.val1.i.i.i, 4
  %.inv2.i.i.i.i = icmp samesign ult i8 %.val1.i.i.i, 2
  %narrow1.i.i.i.i = select i1 %.inv2.i.i.i.i, i8 4, i8 %.val1.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 33
  %.val3.i.i.i = load i8, ptr %i.ct, align 1, !range !15, !alias.scope !12474, !noalias !12475
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.cu = phi ptr [ %.sink10.i, %.lr.ph.i ], [ %i.cv, %.backedge.i ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72 ; 2 uses
  %i.cw = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.cu, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4), !noalias !12475
  br i1 %i.cw, label %bb.t, label %.backedge.i

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cx, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cq), !noalias !12475
  br i1 %i.cy, label %bb.u, label %.backedge.i

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %.val.i.i.i = load i8, ptr %i.cz, align 1, !range !28, !alias.scope !12476, !noalias !12477, !noundef !10 ; 4 uses
  %i.da = icmp ne i8 %.val.i.i.i, 4
  tail call void @llvm.assume(i1 %i.da)
  %.inv.i.i.i.i = icmp samesign ugt i8 %.val.i.i.i, 1 ; 2 uses
  tail call void @llvm.assume(i1 %i.cs)
  %narrow.i.i.i.i = select i1 %.inv.i.i.i.i, i8 %.val.i.i.i, i8 4
  %i.db = icmp eq i8 %narrow.i.i.i.i, %narrow1.i.i.i.i
  %i.dc = icmp eq i8 %.val.i.i.i, %.val1.i.i.i
  %spec.select.i.i.i.i = or i1 %.inv.i.i.i.i, %i.dc
  %.sroa.0.0.i.i.i.i = and i1 %spec.select.i.i.i.i, %i.db
  br i1 %.sroa.0.0.i.i.i.i, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 33
  %.val2.i.i.i = load i8, ptr %i.dd, align 1, !range !15, !alias.scope !12476, !noalias !12477, !noundef !10
  %i.de = icmp eq i8 %.val2.i.i.i, %.val3.i.i.i
  br i1 %i.de, label %bb.aj, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %bb.u, %bb.t, %bb.s
  %.not6.i = icmp eq ptr %i.cv, %i.cp
  br i1 %.not6.i, label %.loopexit100, label %bb.s

.loopexit100:                                     ; preds = %.backedge.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit100
  %i.df = load ptr, ptr %i.cj, align 8, !noalias !12478, !nonnull !10, !noundef !10
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !12478, !noundef !10
  br label %bb.w

bb.w:                                             ; preds = %.loopexit100, %bb.v
  %.sink10.i46 = phi ptr [ %i.df, %bb.v ], [ %i.cj, %.loopexit100 ] ; 3 uses
  %.sink9.i47 = phi i64 [ %i.dh, %bb.v ], [ %i.ch, %.loopexit100 ] ; 2 uses
  %.idx138 = mul nuw nsw i64 %.sink9.i47, 72
  %i.di = getelementptr inbounds nuw i8, ptr %.sink10.i46, i64 %.idx138 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %.sink10.i46, ptr %i.dj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.di, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %2, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %3, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12480)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dl = icmp eq i64 %.sink9.i47, 0
  br i1 %i.dl, label %.thread84, label %.lr.ph

bb.x:                                             ; preds = %.noexc50
  %i.dm = icmp eq ptr %i.do, %i.di
  br i1 %i.dm, label %.thread84, label %.lr.ph

.thread84:                                        ; preds = %bb.x, %bb.w
  store i64 1, ptr %i.d, align 8, !alias.scope !12479, !noalias !12480
  store ptr null, ptr %i.dk, align 8, !alias.scope !12479, !noalias !12480
  br label %bb.ac

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %i.dn = phi ptr [ %i.do, %bb.x ], [ %.sink10.i46, %bb.w ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 5 uses
  store ptr %i.do, ptr %i.dj, align 8, !alias.scope !12481, !noalias !12482
  %i.dp = invoke noundef zeroext i1 @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationTNtB6_4TypeBV_NtB4_12TypeRelationNtB4_17TypeVarEvaluationENtNtB6_6cyclic11HasIdentity18may_share_identity(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.dn)
          to label %.noexc50 unwind label %.loopexit95

.noexc50:                                         ; preds = %.lr.ph
  br i1 %i.dp, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.noexc50
  store ptr %i.dn, ptr %i.dk, align 8, !alias.scope !12479, !noalias !12480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationTNtB6_4TypeBV_NtB4_12TypeRelationNtB4_17TypeVarEvaluationENtNtB6_6cyclic11HasIdentity11to_identity(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %4, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
          to label %bb.aa unwind label %.loopexit.split-lp96

bb.z:                                             ; preds = %.noexc54
  call void @llvm.experimental.noalias.scope.decl(metadata !12483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12484
  store ptr %.sroa.5.0..sroa_idx, ptr %i.a, align 8, !noalias !12484
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !12485
  call void @llvm.experimental.noalias.scope.decl(metadata !12486)
  %.not.i.i.i = icmp eq ptr %i.do, %i.di
  br i1 %.not.i.i.i, label %.loopexit125, label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %bb.z, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1b_4TypeB2o_NtNtB1b_8relation12TypeRelationNtB2F_17TypeVarEvaluationEEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B19_INtB19_13CycleDetectorB2D_B2n_NtNtB1b_11constraints13ConstraintSetKj1_E11begin_visits_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB4j_s0_0E0E0B1d_.exit.backedge.i.i.i
  %i.dr = phi ptr [ %i.ds, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1b_4TypeB2o_NtNtB1b_8relation12TypeRelationNtB2F_17TypeVarEvaluationEEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B19_INtB19_13CycleDetectorB2D_B2n_NtNtB1b_11constraints13ConstraintSetKj1_E11begin_visits_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB4j_s0_0E0E0B1d_.exit.backedge.i.i.i ], [ %i.do, %bb.z ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72 ; 3 uses
  store ptr %i.ds, ptr %i.dj, align 8, !alias.scope !12487, !noalias !12488
  %i.dt = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12489, !noalias !12490, !nonnull !10, !align !12, !noundef !10
  %i.du = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !12489, !noalias !12490, !nonnull !10, !noundef !10
  %i.dv = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !12489, !noalias !12490, !nonnull !10, !align !11, !noundef !10
  %i.dw = invoke noundef zeroext i1 @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationTNtB6_4TypeBV_NtB4_12TypeRelationNtB4_17TypeVarEvaluationENtNtB6_6cyclic11HasIdentity18may_share_identity(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.dt, ptr noundef nonnull %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.dv, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.dr)
          to label %.noexc52 unwind label %.loopexit

.noexc52:                                         ; preds = %.lr.ph.i.i.i51
  br i1 %i.dw, label %.split.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1b_4TypeB2o_NtNtB1b_8relation12TypeRelationNtB2F_17TypeVarEvaluationEEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B19_INtB19_13CycleDetectorB2D_B2n_NtNtB1b_11constraints13ConstraintSetKj1_E11begin_visits_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB4j_s0_0E0E0B1d_.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.noexc52
  %i.dx = invoke fastcc noundef zeroext i1 @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1h_4TypeB2u_NtNtB1h_8relation12TypeRelationNtB2L_17TypeVarEvaluationEENCNvMs8_B1f_INtB1f_13CycleDetectorB2J_B2t_NtNtB1h_11constraints13ConstraintSetKj1_E11begin_visits0_0E0B1j_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 4 %i.dr)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %.split.i.i.i
  br i1 %i.dx, label %bb.ab, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1b_4TypeB2o_NtNtB1b_8relation12TypeRelationNtB2F_17TypeVarEvaluationEEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B19_INtB19_13CycleDetectorB2D_B2n_NtNtB1b_11constraints13ConstraintSetKj1_E11begin_visits_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB4j_s0_0E0E0B1d_.exit.backedge.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1b_4TypeB2o_NtNtB1b_8relation12TypeRelationNtB2F_17TypeVarEvaluationEEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B19_INtB19_13CycleDetectorB2D_B2n_NtNtB1b_11constraints13ConstraintSetKj1_E11begin_visits_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB4j_s0_0E0E0B1d_.exit.backedge.i.i.i: ; preds = %.noexc53, %.noexc52
  %.not13.i.i.i = icmp eq ptr %i.ds, %i.di
  br i1 %.not13.i.i.i, label %.loopexit125, label %.lr.ph.i.i.i51

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12491)
  store i64 0, ptr %i.d, align 8, !alias.scope !12491, !noalias !12492
  %i.dy = invoke fastcc noundef zeroext i1 @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1h_4TypeB2u_NtNtB1h_8relation12TypeRelationNtB2L_17TypeVarEvaluationEENCNvMs8_B1f_INtB1f_13CycleDetectorB2J_B2t_NtNtB1h_11constraints13ConstraintSetKj1_E11begin_visits0_0E0B1j_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 %i.dn)
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.aa
  br i1 %i.dy, label %.thread87, label %bb.z

.loopexit:                                        ; preds = %.lr.ph.i.i.i51, %.split.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ab:                                            ; preds = %.noexc53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12484
  br label %.thread87

.loopexit125:                                     ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1b_4TypeB2o_NtNtB1b_8relation12TypeRelationNtB2F_17TypeVarEvaluationEEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B19_INtB19_13CycleDetectorB2D_B2n_NtNtB1b_11constraints13ConstraintSetKj1_E11begin_visits_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB4j_s0_0E0E0B1d_.exit.backedge.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.027.0.copyload = load i32, ptr %i.c, align 4
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.619, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.428.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

.thread87:                                        ; preds = %.noexc54, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.dz, ptr noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ea = load i64, ptr %i.cc, align 8, !noundef !10
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr %i.cc, align 8
  br label %bb.ai

bb.ac:                                            ; preds = %.loopexit125, %.thread84
  %.sroa.017.0 = phi i32 [ %.sroa.027.0.copyload, %.loopexit125 ], [ -1, %.thread84 ]
  %i.ec = load i64, ptr %i.cc, align 8, !noundef !10
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  store i64 %i.ed, ptr %i.cc, align 8
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.af, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #58
  unreachable

bb.ae:                                            ; preds = %bb.ag
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load i64, ptr %i.cc, align 8, !noundef !10
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.cc, align 8
  br label %bb.al

bb.af:                                            ; preds = %bb.ac
  store i64 -1, ptr %i.cc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.066, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.066.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.066, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.066.16..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.ei, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i = load i8, ptr %i.ej, align 4, !range !28, !alias.scope !12493, !noalias !12494, !noundef !10
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 33
  %.val2.i = load i8, ptr %i.ek, align 1, !range !15, !alias.scope !12493, !noalias !12494, !noundef !10
  %i.el = load i64, ptr %i.cg, align 8, !alias.scope !12495, !noalias !12496, !noundef !10 ; 2 uses
  %i.em = icmp ugt i64 %i.el, 1                   ; 2 uses
  %i.en = load ptr, ptr %i.cj, align 8, !alias.scope !12495, !noalias !12496, !nonnull !10
  %.sink9.i.i = select i1 %i.em, ptr %i.en, ptr %i.cj
  %.sink8.idx.i.i = select i1 %i.em, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sink8.idx.i.i ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.eo = load i64, ptr %.sink8.i.i, align 8, !alias.scope !12497, !noalias !12498, !noundef !10 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %.sink.i.i
  br i1 %i.ep, label %bb.ag, label %bb.ah, !prof !20

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E21reserve_one_uncheckedBP_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.cg)
          to label %.noexc56 unwind label %bb.ae

.noexc56:                                         ; preds = %bb.ag
  %i.eq = load ptr, ptr %i.cj, align 8, !alias.scope !12497, !noalias !12498, !nonnull !10, !noundef !10
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.pre.i = load i64, ptr %i.er, align 8, !alias.scope !12497, !noalias !12498
end_hunk_1
