Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.04?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_:bb.a
.split10.i.i.i.i.i.a:                             ; preds = %bb.t
  %i.de = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i
  br i1 %i.de, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.u:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12118)
  %i.dh = load i32, ptr %i.df, align 8, !range !43, !alias.scope !12119, !noalias !12120, !noundef !5 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 8, !range !43, !alias.scope !12120, !noalias !12119, !noundef !5
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.v, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.v:                                             ; preds = %bb.u
  switch i32 %i.dh, label %default.unreachable [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %.split8.i38.i.i.i.i.i.i.i
    i32 4, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.dl = load i32, ptr %i.dk, align 8, !alias.scope !12119, !noalias !12120, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !alias.scope !12120, !noalias !12119, !noundef !5
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %.split.i41.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !alias.scope !12119, !noalias !12120, !noundef !5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !alias.scope !12120, !noalias !12119, !noundef !5
  %i.dt = icmp eq i32 %i.dq, %i.ds
  br i1 %i.dt, label %.split9.i40.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.y:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !12119, !noalias !12120, !nonnull !5, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !12120, !noalias !12119, !nonnull !5, !noundef !5
  %i.dy = icmp eq ptr %i.dv, %i.dx
  br i1 %i.dy, label %.split7.i39.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i38.i.i.i.i.i.i.i:                        ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !12119, !noalias !12120, !nonnull !5, !noundef !5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !12120, !noalias !12119, !nonnull !5, !noundef !5
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %bb.aa, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.z:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !alias.scope !12119, !noalias !12120, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !alias.scope !12120, !noalias !12119, !noundef !5
  %i.ei = icmp eq i32 %i.ef, %i.eh
  br i1 %i.ei, label %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i32.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i41.i.i.i.i.i.i.i:                         ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !12119, !noalias !12120, !nonnull !5, !noundef !5
  %i.em = load ptr, ptr %i.ej, align 8, !alias.scope !12120, !noalias !12119, !nonnull !5, !noundef !5
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.aa, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i40.i.i.i.i.i.i.i:                        ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !12119, !noalias !12120, !nonnull !5, !noundef !5
  %i.er = load ptr, ptr %i.eo, align 8, !alias.scope !12120, !noalias !12119, !nonnull !5, !noundef !5
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %bb.aa, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split7.i39.i.i.i.i.i.i.i:                        ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !12119, !noalias !12120, !nonnull !5, !noundef !5
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !12120, !noalias !12119, !nonnull !5, !noundef !5
  %i.ex = icmp eq ptr %i.eu, %i.ew
  br i1 %i.ex, label %bb.aa, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i32.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !range !60, !alias.scope !12119, !noalias !12120, !noundef !5
  %i.fb = load i32, ptr %i.ey, align 4, !range !60, !alias.scope !12120, !noalias !12119, !noundef !5
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.aa, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.aa:                                            ; preds = %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i32.i.i.i.i.i.i.i, %.split7.i39.i.i.i.i.i.i.i, %.split9.i40.i.i.i.i.i.i.i, %.split.i41.i.i.i.i.i.i.i, %.split8.i38.i.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.fe = load i32, ptr %i.fd, align 8, !range !38, !alias.scope !12121, !noalias !12122, !noundef !5 ; 4 uses
  %.not.i33.i.i.i.i.i.i.i = icmp eq i32 %i.fe, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.fg = load i32, ptr %i.ff, align 8, !range !38, !alias.scope !12122, !noalias !12121, !noundef !5 ; 3 uses
  %i.fh = icmp eq i32 %i.fg, -1
  %brmerge.i34.i.i.i.i.i.i.i = or i1 %.not.i33.i.i.i.i.i.i.i, %i.fh
  br i1 %brmerge.i34.i.i.i.i.i.i.i, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %.val2.i36.i.i.i.i.i.i.i = load i32, ptr %i.fi, align 4, !alias.scope !12121, !noalias !12122 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %.val4.i37.i.i.i.i.i.i.i = load i32, ptr %i.fj, align 4, !alias.scope !12122, !noalias !12121 ; 3 uses
  %i.fk = icmp eq i32 %i.fe, %i.fg
  br i1 %i.fk, label %bb.ac, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.fe, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i [
    i32 0, label %.split96.i.i.i.i.i.i.i
    i32 1, label %.split97.i.i.i.i.i.i.i
    i32 2, label %.split.i.i.i.i.i.i.i
  ]

.split96.i.i.i.i.i.i.i:                           ; preds = %bb.ac
  %i.fl = icmp eq i32 %.val2.i36.i.i.i.i.i.i.i, %.val4.i37.i.i.i.i.i.i.i
  br i1 %i.fl, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split97.i.i.i.i.i.i.i:                           ; preds = %bb.ac
  %i.fm = icmp eq i32 %.val2.i36.i.i.i.i.i.i.i, %.val4.i37.i.i.i.i.i.i.i
  br i1 %i.fm, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i.i.i.i.i.i.i:                             ; preds = %bb.ac
  %i.fn = icmp eq i32 %.val2.i36.i.i.i.i.i.i.i, %.val4.i37.i.i.i.i.i.i.i
  br i1 %i.fn, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.fo = and i32 %i.fg, %i.fe
  %.mux.i35.i.i.i.i.i.i.i = icmp eq i32 %i.fo, -1
  br i1 %.mux.i35.i.i.i.i.i.i.i, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ad:                                            ; preds = %bb.j
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val21.i.i.i.i.i.i.i = load i8, ptr %i.fp, align 8, !range !33, !alias.scope !12123, !noalias !12124, !noundef !5 ; 3 uses
  %.val22.i.i.i.i.i.i.i = load i8, ptr %i.fq, align 8, !range !33, !alias.scope !12124, !noalias !12123, !noundef !5 ; 3 uses
  %i.fr = add nsw i8 %.val21.i.i.i.i.i.i.i, -3
  %i.fs = icmp samesign ugt i8 %.val21.i.i.i.i.i.i.i, 2
  %narrow.i.i.i.i.i.i.i.i = select i1 %i.fs, i8 %i.fr, i8 2 ; 2 uses
  %i.ft = add nsw i8 %.val22.i.i.i.i.i.i.i, -3
  %i.fu = icmp samesign ugt i8 %.val22.i.i.i.i.i.i.i, 2
  %narrow1.i.i.i.i.i.i.i.i = select i1 %i.fu, i8 %i.ft, i8 2
  %i.fv = icmp eq i8 %narrow.i.i.i.i.i.i.i.i, %narrow1.i.i.i.i.i.i.i.i
  br i1 %i.fv, label %_RNvXs1M_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_10BorrowKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXs1M_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_10BorrowKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.fw = icmp ne i8 %narrow.i.i.i.i.i.i.i.i, 2
  %i.fx = icmp eq i8 %.val21.i.i.i.i.i.i.i, %.val22.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = or i1 %i.fx, %i.fw
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.split11.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i.i.i.i.i.a:                              ; preds = %bb.j
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val17.i.i.i.i.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !12123, !noalias !12124
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val18.i.i.i.i.i.i.i = load i32, ptr %i.ga, align 8, !alias.scope !12123, !noalias !12124, !noundef !5
  %.val19.i.i.i.i.i.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !12124, !noalias !12123
  %i.gb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val20.i.i.i.i.i.i.i = load i32, ptr %i.gb, align 8, !alias.scope !12124, !noalias !12123, !noundef !5
  %i.gc = icmp eq i32 %.val18.i.i.i.i.i.i.i, %.val20.i.i.i.i.i.i.i
  %i.gd = icmp eq ptr %.val17.i.i.i.i.i.i.i, %.val19.i.i.i.i.i.i.i
  %.sroa.0.0.i44.i.i.i.i.i.i.i = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %.sroa.0.0.i44.i.i.i.i.i.i.i, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ae:                                            ; preds = %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.gf = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.val23.i.i.i.i.i.i.i = load i8, ptr %i.ge, align 8, !range !61, !alias.scope !12123, !noalias !12124, !noundef !5 ; 7 uses
  %.val24.i.i.i.i.i.i.i = load i8, ptr %i.gg, align 8, !range !61, !alias.scope !12124, !noalias !12123, !noundef !5 ; 7 uses
  %i.gi = icmp ne i8 %.val23.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = add nsw i8 %.val23.i.i.i.i.i.i.i, -8
  %i.gk = icmp samesign ugt i8 %.val23.i.i.i.i.i.i.i, 7
  %narrow.i45.i.i.i.i.i.i.i = select i1 %i.gk, i8 %i.gj, i8 3 ; 2 uses
  %i.gl = icmp ne i8 %.val24.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = add nsw i8 %.val24.i.i.i.i.i.i.i, -8
  %i.gn = icmp samesign ugt i8 %.val24.i.i.i.i.i.i.i, 7
  %narrow2.i.i.i.i.i.i.i.i = select i1 %i.gn, i8 %i.gm, i8 3
  %i.go = icmp eq i8 %narrow.i45.i.i.i.i.i.i.i, %narrow2.i.i.i.i.i.i.i.i
  br i1 %i.go, label %bb.af, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.gp = icmp eq i8 %narrow.i45.i.i.i.i.i.i.i, 3
  br i1 %i.gp, label %bb.ag, label %_RNvXs2j_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_8CastKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gq = icmp ne i8 %.val23.i.i.i.i.i.i.i, 4
  tail call void @llvm.assume(i1 %i.gq)
  %3 = add nsw i8 %.val23.i.i.i.i.i.i.i, -2
  %.inv.i.i.i.i.i.i.i.i = icmp samesign ult i8 %.val23.i.i.i.i.i.i.i, 2
  %narrow3.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, i8 2, i8 %3 ; 2 uses
  %i.gr = icmp ne i8 %.val24.i.i.i.i.i.i.i, 4
  tail call void @llvm.assume(i1 %i.gr)
  %4 = add nsw i8 %.val24.i.i.i.i.i.i.i, -2
  %.inv5.i.i.i.i.i.i.i.i = icmp samesign ult i8 %.val24.i.i.i.i.i.i.i, 2
  %narrow4.i.i.i.i.i.i.i.i = select i1 %.inv5.i.i.i.i.i.i.i.i, i8 2, i8 %4
  %5 = icmp eq i8 %narrow3.i.i.i.i.i.i.i.i, %narrow4.i.i.i.i.i.i.i.i
  br i1 %5, label %bb.ah, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %6 = icmp eq i8 %narrow3.i.i.i.i.i.i.i.i, 2
  %7 = xor i8 %.val24.i.i.i.i.i.i.i, %.val23.i.i.i.i.i.i.i
  %8 = trunc i8 %7 to i1
  %or.cond.not.i.i.i.i.i.i.i = and i1 %6, %8
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %_RNvXs2j_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_8CastKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.j
  %i.gs = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.gt = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.gs, align 8, !range !46, !alias.scope !12123, !noalias !12124, !noundef !5
  %.val4.i.i.i.i.i.i.i = load i8, ptr %i.gu, align 8, !range !46, !alias.scope !12124, !noalias !12123, !noundef !5
  %i.gw = icmp eq i8 %.val.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i
  br i1 %i.gw, label %bb.bg, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.aj:                                            ; preds = %bb.j
  %i.gx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.val25.i.i.i.i.i.i.i = load i8, ptr %i.gx, align 8, !range !13, !alias.scope !12123, !noalias !12124, !noundef !5
  %.val26.i.i.i.i.i.i.i = load i8, ptr %i.gy, align 8, !range !13, !alias.scope !12124, !noalias !12123, !noundef !5
  %i.gz = icmp eq i8 %.val25.i.i.i.i.i.i.i, %.val26.i.i.i.i.i.i.i
  br i1 %i.gz, label %bb.bx, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i.i.i.i.i:                                 ; preds = %bb.j
  %i.ha = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val13.i.i.i.i.i.i.i = load ptr, ptr %i.ha, align 8, !alias.scope !12123, !noalias !12124
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val14.i.i.i.i.i.i.i = load i32, ptr %i.hc, align 8, !alias.scope !12123, !noalias !12124, !noundef !5
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.hb, align 8, !alias.scope !12124, !noalias !12123
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val16.i.i.i.i.i.i.i = load i32, ptr %i.hd, align 8, !alias.scope !12124, !noalias !12123, !noundef !5
  %i.he = icmp eq i32 %.val14.i.i.i.i.i.i.i, %.val16.i.i.i.i.i.i.i
  %i.hf = icmp eq ptr %.val13.i.i.i.i.i.i.i, %.val15.i.i.i.i.i.i.i
  %.sroa.0.0.i47.i.i.i.i.i.i.i = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %.sroa.0.0.i47.i.i.i.i.i.i.i, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ak:                                            ; preds = %bb.j
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12126)
  %i.hi = load i32, ptr %i.hg, align 8, !range !43, !alias.scope !12127, !noalias !12128, !noundef !5 ; 2 uses
  %i.hj = load i32, ptr %i.hh, align 8, !range !43, !alias.scope !12128, !noalias !12127, !noundef !5
  %i.hk = icmp eq i32 %i.hi, %i.hj
  br i1 %i.hk, label %bb.al, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.al:                                            ; preds = %bb.ak
  switch i32 %i.hi, label %default.unreachable [
    i32 0, label %.split104.i.i.i.i.i.i.i
    i32 1, label %_RNvXs1r_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13AggregateKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i
    i32 2, label %bb.am
    i32 3, label %bb.ar
    i32 4, label %.split106.i.i.i.i.i.i.i.a
  ]

.split104.i.i.i.i.i.i.i:                          ; preds = %bb.al
  %i.hl = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !12127, !noalias !12128, !nonnull !5, !noundef !5
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !12128, !noalias !12127, !nonnull !5, !noundef !5
  %i.hp = icmp eq ptr %i.hm, %i.ho
  br i1 %i.hp, label %bb.cg, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.hq = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12130)
  %i.hs = load i32, ptr %i.hq, align 4, !range !56, !alias.scope !12131, !noalias !12132, !noundef !5 ; 2 uses
  %i.ht = load i32, ptr %i.hr, align 4, !range !56, !alias.scope !12132, !noalias !12131, !noundef !5
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %bb.an, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.hw = load i32, ptr %i.hv, align 4, !alias.scope !12131, !noalias !12132, !noundef !5
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.hy = load i32, ptr %i.hx, align 4, !alias.scope !12132, !noalias !12131, !noundef !5
  %i.hz = icmp eq i32 %i.hw, %i.hy                ; 3 uses
  switch i32 %i.hs, label %default.unreachable [
    i32 0, label %bb.ao
    i32 1, label %bb.ap
    i32 2, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %i.hz, label %.split.i51.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ap:                                            ; preds = %bb.an
  br i1 %i.hz, label %.split6.i.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.aq:                                            ; preds = %bb.an
  br i1 %i.hz, label %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i51.i.i.i.i.i.i.i:                         ; preds = %bb.ao
  %i.ia = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ib = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ic = load i32, ptr %i.ib, align 8, !range !60, !alias.scope !12131, !noalias !12132, !noundef !5
  %i.id = load i32, ptr %i.ia, align 8, !range !60, !alias.scope !12132, !noalias !12131, !noundef !5
  %i.ie = icmp eq i32 %i.ic, %i.id
  br i1 %i.ie, label %.split107.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split6.i.i.i.i.i.i.i.i:                          ; preds = %bb.ap
  %i.if = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !range !60, !alias.scope !12131, !noalias !12132, !noundef !5
  %i.ii = load i32, ptr %i.if, align 8, !range !60, !alias.scope !12132, !noalias !12131, !noundef !5
  %i.ij = icmp eq i32 %i.ih, %i.ii
  br i1 %i.ij, label %.split107.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.ik = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.im = load i32, ptr %i.il, align 8, !range !60, !alias.scope !12131, !noalias !12132, !noundef !5
  %i.in = load i32, ptr %i.ik, align 8, !range !60, !alias.scope !12132, !noalias !12131, !noundef !5
  %i.io = icmp eq i32 %i.im, %i.in
  br i1 %i.io, label %.split107.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ar:                                            ; preds = %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.iq = load i32, ptr %i.ip, align 8, !alias.scope !12127, !noalias !12128, !noundef !5
  %i.ir = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.is = load i32, ptr %i.ir, align 8, !alias.scope !12128, !noalias !12127, !noundef !5
  %i.it = icmp eq i32 %i.iq, %i.is
  br i1 %i.it, label %bb.as, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split106.i.i.i.i.i.i.i.a:                        ; preds = %bb.al
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !12127, !noalias !12128, !nonnull !5, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !12128, !noalias !12127, !nonnull !5, !noundef !5
  %i.iy = icmp eq ptr %i.iv, %i.ix
  br i1 %i.iy, label %bb.cg, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split107.i.i.i.i.i.i.i:                          ; preds = %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i, %.split6.i.i.i.i.i.i.i.i, %.split.i51.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !12127, !noalias !12128, !nonnull !5, !noundef !5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !12128, !noalias !12127, !nonnull !5, !noundef !5
  %i.jd = icmp eq ptr %i.ja, %i.jc
  br i1 %i.jd, label %bb.cg, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.jg = load i32, ptr %i.jf, align 4, !range !60, !alias.scope !12127, !noalias !12128, !noundef !5
  %i.jh = load i32, ptr %i.je, align 4, !range !60, !alias.scope !12128, !noalias !12127, !noundef !5
  %i.ji = icmp eq i32 %i.jg, %i.jh
  br i1 %i.ji, label %bb.at, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.jj = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.jk = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12134)
  %i.jl = load i32, ptr %i.jj, align 4, !range !56, !alias.scope !12135, !noalias !12136, !noundef !5 ; 2 uses
  %i.jm = load i32, ptr %i.jk, align 4, !range !56, !alias.scope !12136, !noalias !12135, !noundef !5
  %i.jn = icmp eq i32 %i.jl, %i.jm
  br i1 %i.jn, label %bb.au, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.jo = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.jp = load i32, ptr %i.jo, align 4, !alias.scope !12135, !noalias !12136, !noundef !5
  %i.jq = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.jr = load i32, ptr %i.jq, align 4, !alias.scope !12136, !noalias !12135, !noundef !5
  %i.js = icmp eq i32 %i.jp, %i.jr                ; 3 uses
  switch i32 %i.jl, label %default.unreachable [
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  br i1 %i.js, label %.split8.i50.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.aw:                                            ; preds = %bb.au
  br i1 %i.js, label %.split9.i49.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ax:                                            ; preds = %bb.au
  br i1 %i.js, label %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i50.i.i.i.i.i.i.i:                        ; preds = %bb.av
  %i.jt = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.jv = load i32, ptr %i.ju, align 8, !range !60, !alias.scope !12135, !noalias !12136, !noundef !5
  %i.jw = load i32, ptr %i.jt, align 8, !range !60, !alias.scope !12136, !noalias !12135, !noundef !5
  %i.jx = icmp eq i32 %i.jv, %i.jw
  br i1 %i.jx, label %.split105.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i49.i.i.i.i.i.i.i:                        ; preds = %bb.aw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ka = load i32, ptr %i.jz, align 8, !range !60, !alias.scope !12135, !noalias !12136, !noundef !5
  %i.kb = load i32, ptr %i.jy, align 8, !range !60, !alias.scope !12136, !noalias !12135, !noundef !5
  %i.kc = icmp eq i32 %i.ka, %i.kb
  br i1 %i.kc, label %.split105.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.kd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.kf = load i32, ptr %i.ke, align 8, !range !60, !alias.scope !12135, !noalias !12136, !noundef !5
  %i.kg = load i32, ptr %i.kd, align 8, !range !60, !alias.scope !12136, !noalias !12135, !noundef !5
  %i.kh = icmp eq i32 %i.kf, %i.kg
  br i1 %i.kh, label %.split105.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split105.i.i.i.i.i.i.i:                          ; preds = %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i.i.i.i.i.i, %.split9.i49.i.i.i.i.i.i.i, %.split8.i50.i.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.kj = load i32, ptr %i.ki, align 8, !alias.scope !12127, !noalias !12128, !noundef !5
  %i.kk = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.kl = load i32, ptr %i.kk, align 8, !alias.scope !12128, !noalias !12127, !noundef !5
  %i.km = icmp eq i32 %i.kj, %i.kl
  br i1 %i.km, label %bb.cg, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXs1r_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13AggregateKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.kn = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !12127, !noalias !12128, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !12128, !noalias !12127, !nonnull !5, !noundef !5
  %i.kr = icmp eq ptr %i.ko, %i.kq
  br i1 %i.kr, label %bb.cg, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split16.i.i.i.i.i:                               ; preds = %bb.j
  %i.ks = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ks, align 8, !alias.scope !12123, !noalias !12124
  %i.ku = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val10.i.i.i.i.i.i.i = load i32, ptr %i.ku, align 8, !alias.scope !12123, !noalias !12124, !noundef !5
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.kt, align 8, !alias.scope !12124, !noalias !12123
  %i.kv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val12.i.i.i.i.i.i.i = load i32, ptr %i.kv, align 8, !alias.scope !12124, !noalias !12123, !noundef !5
  %i.kw = icmp eq i32 %.val10.i.i.i.i.i.i.i, %.val12.i.i.i.i.i.i.i
  %i.kx = icmp eq ptr %.val9.i.i.i.i.i.i.i, %.val11.i.i.i.i.i.i.i
  %.sroa.0.0.i52.i.i.i.i.i.i.i = select i1 %i.kw, i1 %i.kx, i1 false
  br i1 %.sroa.0.0.i52.i.i.i.i.i.i.i, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i: ; preds = %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i, %.split97.i.i.i.i.i.i.i, %.split96.i.i.i.i.i.i.i, %bb.ac
  %i.ky = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val27.i.i.i.i.i.i.i = load ptr, ptr %i.kz, align 8, !alias.scope !12123, !noalias !12124, !nonnull !5, !noundef !5
  %.val28.i.i.i.i.i.i.i = load ptr, ptr %i.ky, align 8, !alias.scope !12124, !noalias !12123, !nonnull !5, !noundef !5
  %i.la = icmp eq ptr %.val27.i.i.i.i.i.i.i, %.val28.i.i.i.i.i.i.i
  br i1 %i.la, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split11.i.i.i.i.i:                               ; preds = %_RNvXs1M_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_10BorrowKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.lc, align 8, !alias.scope !12123, !noalias !12124
  %i.ld = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val6.i.i.i.i.i.i.i = load i32, ptr %i.ld, align 8, !alias.scope !12123, !noalias !12124, !noundef !5
  %.val7.i.i.i.i.i.i.i = load ptr, ptr %i.lb, align 8, !alias.scope !12124, !noalias !12123
  %i.le = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val8.i.i.i.i.i.i.i = load i32, ptr %i.le, align 8, !alias.scope !12124, !noalias !12123, !noundef !5
  %i.lf = icmp eq i32 %.val6.i.i.i.i.i.i.i, %.val8.i.i.i.i.i.i.i
  %i.lg = icmp eq ptr %.val5.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i
  %.sroa.0.0.i53.i.i.i.i.i.i.i = select i1 %i.lf, i1 %i.lg, i1 false
  br i1 %.sroa.0.0.i53.i.i.i.i.i.i.i, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXs2j_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_8CastKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af
  %i.lh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12140)
  %i.lj = load i32, ptr %i.li, align 8, !range !43, !alias.scope !12141, !noalias !12142, !noundef !5 ; 2 uses
  %i.lk = load i32, ptr %i.lh, align 8, !range !43, !alias.scope !12142, !noalias !12141, !noundef !5
  %i.ll = icmp eq i32 %i.lj, %i.lk
  br i1 %i.ll, label %bb.ay, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ay:                                            ; preds = %_RNvXs2j_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_8CastKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i.i.i.i.i
  switch i32 %i.lj, label %default.unreachable [
    i32 0, label %bb.az
    i32 1, label %bb.ba
    i32 2, label %bb.bb
    i32 3, label %.split8.i61.i.i.i.i.i.i.i
    i32 4, label %bb.bc
  ]

bb.az:                                            ; preds = %bb.ay
  %i.lm = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ln = load i32, ptr %i.lm, align 8, !alias.scope !12141, !noalias !12142, !noundef !5
  %i.lo = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.lp = load i32, ptr %i.lo, align 8, !alias.scope !12142, !noalias !12141, !noundef !5
  %i.lq = icmp eq i32 %i.ln, %i.lp
  br i1 %i.lq, label %.split.i64.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ba:                                            ; preds = %bb.ay
  %i.lr = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ls = load i32, ptr %i.lr, align 8, !alias.scope !12141, !noalias !12142, !noundef !5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.lu = load i32, ptr %i.lt, align 8, !alias.scope !12142, !noalias !12141, !noundef !5
  %i.lv = icmp eq i32 %i.ls, %i.lu
  br i1 %i.lv, label %.split9.i63.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bb:                                            ; preds = %bb.ay
  %i.lw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !12141, !noalias !12142, !nonnull !5, !noundef !5
  %i.ly = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !12142, !noalias !12141, !nonnull !5, !noundef !5
  %i.ma = icmp eq ptr %i.lx, %i.lz
  br i1 %i.ma, label %.split7.i62.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i61.i.i.i.i.i.i.i:                        ; preds = %bb.ay
  %i.mb = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !12141, !noalias !12142, !nonnull !5, !noundef !5
  %i.md = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !alias.scope !12142, !noalias !12141, !nonnull !5, !noundef !5
  %i.mf = icmp eq ptr %i.mc, %i.me
  br i1 %i.mf, label %bb.bd, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bc:                                            ; preds = %bb.ay
  %i.mg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.mh = load i32, ptr %i.mg, align 8, !alias.scope !12141, !noalias !12142, !noundef !5
  %i.mi = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.mj = load i32, ptr %i.mi, align 8, !alias.scope !12142, !noalias !12141, !noundef !5
  %i.mk = icmp eq i32 %i.mh, %i.mj
  br i1 %i.mk, label %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i55.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i64.i.i.i.i.i.i.i:                         ; preds = %bb.az
  %i.ml = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !alias.scope !12141, !noalias !12142, !nonnull !5, !noundef !5
  %i.mo = load ptr, ptr %i.ml, align 8, !alias.scope !12142, !noalias !12141, !nonnull !5, !noundef !5
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %bb.bd, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i63.i.i.i.i.i.i.i:                        ; preds = %bb.ba
  %i.mq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !12141, !noalias !12142, !nonnull !5, !noundef !5
  %i.mt = load ptr, ptr %i.mq, align 8, !alias.scope !12142, !noalias !12141, !nonnull !5, !noundef !5
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %bb.bd, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split7.i62.i.i.i.i.i.i.i:                        ; preds = %bb.bb
  %i.mv = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !12141, !noalias !12142, !nonnull !5, !noundef !5
  %i.mx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !12142, !noalias !12141, !nonnull !5, !noundef !5
  %i.mz = icmp eq ptr %i.mw, %i.my
  br i1 %i.mz, label %bb.bd, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i55.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.na = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.nb = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.nc = load i32, ptr %i.nb, align 4, !range !60, !alias.scope !12141, !noalias !12142, !noundef !5
  %i.nd = load i32, ptr %i.na, align 4, !range !60, !alias.scope !12142, !noalias !12141, !noundef !5
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %bb.bd, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bd:                                            ; preds = %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i55.i.i.i.i.i.i.i, %.split7.i62.i.i.i.i.i.i.i, %.split9.i63.i.i.i.i.i.i.i, %.split.i64.i.i.i.i.i.i.i, %.split8.i61.i.i.i.i.i.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ng = load i32, ptr %i.nf, align 8, !range !38, !alias.scope !12143, !noalias !12144, !noundef !5 ; 4 uses
  %.not.i56.i.i.i.i.i.i.i = icmp eq i32 %i.ng, -1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ni = load i32, ptr %i.nh, align 8, !range !38, !alias.scope !12144, !noalias !12143, !noundef !5 ; 3 uses
  %i.nj = icmp eq i32 %i.ni, -1
  %brmerge.i57.i.i.i.i.i.i.i = or i1 %.not.i56.i.i.i.i.i.i.i, %i.nj
  br i1 %brmerge.i57.i.i.i.i.i.i.i, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nk = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %.val2.i59.i.i.i.i.i.i.i = load i32, ptr %i.nk, align 4, !alias.scope !12143, !noalias !12144 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %.val4.i60.i.i.i.i.i.i.i = load i32, ptr %i.nl, align 4, !alias.scope !12144, !noalias !12143 ; 3 uses
  %i.nm = icmp eq i32 %i.ng, %i.ni
  br i1 %i.nm, label %bb.bf, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bf:                                            ; preds = %bb.be
  switch i32 %i.ng, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i [
    i32 0, label %.split112.i.i.i.i.i.i.i.a
    i32 1, label %.split113.i.i.i.i.i.i.i
    i32 2, label %.split111.i.i.i.i.i.i.i
  ]

.split112.i.i.i.i.i.i.i.a:                        ; preds = %bb.bf
  %i.nn = icmp eq i32 %.val2.i59.i.i.i.i.i.i.i, %.val4.i60.i.i.i.i.i.i.i
  br i1 %i.nn, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split113.i.i.i.i.i.i.i:                          ; preds = %bb.bf
  %i.no = icmp eq i32 %.val2.i59.i.i.i.i.i.i.i, %.val4.i60.i.i.i.i.i.i.i
  br i1 %i.no, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split111.i.i.i.i.i.i.i:                          ; preds = %bb.bf
  %i.np = icmp eq i32 %.val2.i59.i.i.i.i.i.i.i, %.val4.i60.i.i.i.i.i.i.i
  br i1 %i.np, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.nq = and i32 %i.ni, %i.ng
  %.mux.i58.i.i.i.i.i.i.i = icmp eq i32 %i.nq, -1
  br i1 %.mux.i58.i.i.i.i.i.i.i, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i: ; preds = %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.i.i.i.i.i.i.i, %.split111.i.i.i.i.i.i.i, %.split113.i.i.i.i.i.i.i, %.split112.i.i.i.i.i.i.i.a, %bb.bf
  %.val29.i.i.i.i.i.i.i = load ptr, ptr %i.gf, align 8, !alias.scope !12123, !noalias !12124, !nonnull !5, !noundef !5
  %.val30.i.i.i.i.i.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !12124, !noalias !12123, !nonnull !5, !noundef !5
  %i.nr = icmp eq ptr %.val29.i.i.i.i.i.i.i, %.val30.i.i.i.i.i.i.i
  br i1 %i.nr, label %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bg:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12148)
  %i.ns = icmp eq i32 %i.x, %i.ac
  br i1 %i.ns, label %bb.bh, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bh:                                            ; preds = %bb.bg
  switch i32 %i.x, label %default.unreachable.i78.i.i.i.i.i.i.i [
    i32 0, label %bb.bi
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %.split8.i74.i.i.i.i.i.i.i
    i32 4, label %bb.bl
  ]

default.unreachable.i78.i.i.i.i.i.i.i:            ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.nt = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.nu = load i32, ptr %i.nt, align 8, !alias.scope !12149, !noalias !12150, !noundef !5
  %i.nv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.nw = load i32, ptr %i.nv, align 8, !alias.scope !12150, !noalias !12149, !noundef !5
  %i.nx = icmp eq i32 %i.nu, %i.nw
  br i1 %i.nx, label %.split.i77.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bj:                                            ; preds = %bb.bh
  %i.ny = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.nz = load i32, ptr %i.ny, align 8, !alias.scope !12149, !noalias !12150, !noundef !5
  %i.oa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ob = load i32, ptr %i.oa, align 8, !alias.scope !12150, !noalias !12149, !noundef !5
  %i.oc = icmp eq i32 %i.nz, %i.ob
  br i1 %i.oc, label %.split9.i76.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bk:                                            ; preds = %bb.bh
  %i.od = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !12149, !noalias !12150, !nonnull !5, !noundef !5
  %i.of = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !alias.scope !12150, !noalias !12149, !nonnull !5, !noundef !5
  %i.oh = icmp eq ptr %i.oe, %i.og
  br i1 %i.oh, label %.split7.i75.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i74.i.i.i.i.i.i.i:                        ; preds = %bb.bh
  %i.oi = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !alias.scope !12149, !noalias !12150, !nonnull !5, !noundef !5
  %i.ok = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !12150, !noalias !12149, !nonnull !5, !noundef !5
  %i.om = icmp eq ptr %i.oj, %i.ol
  br i1 %i.om, label %bb.bm, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bl:                                            ; preds = %bb.bh
  %i.on = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.oo = load i32, ptr %i.on, align 8, !alias.scope !12149, !noalias !12150, !noundef !5
  %i.op = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.oq = load i32, ptr %i.op, align 8, !alias.scope !12150, !noalias !12149, !noundef !5
  %i.or = icmp eq i32 %i.oo, %i.oq
  br i1 %i.or, label %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i68.i.i.i.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_:bb.a
  %i.aex = icmp eq i32 %i.aeu, %i.aew
  br i1 %i.aex, label %.split9.i14.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.dy:                                            ; preds = %bb.dv
  %i.aey = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aez = load ptr, ptr %i.aey, align 8, !alias.scope !12189, !noalias !12190, !nonnull !5, !noundef !5
  %i.afa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.afb = load ptr, ptr %i.afa, align 8, !alias.scope !12190, !noalias !12189, !nonnull !5, !noundef !5
  %i.afc = icmp eq ptr %i.aez, %i.afb
  br i1 %i.afc, label %.split7.i13.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i12.i.i.i.i:                              ; preds = %bb.dv
  %i.afd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.afe = load ptr, ptr %i.afd, align 8, !alias.scope !12189, !noalias !12190, !nonnull !5, !noundef !5
  %i.aff = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.afg = load ptr, ptr %i.aff, align 8, !alias.scope !12190, !noalias !12189, !nonnull !5, !noundef !5
  %i.afh = icmp eq ptr %i.afe, %i.afg
  br i1 %i.afh, label %bb.ea, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.dz:                                            ; preds = %bb.dv
  %i.afi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.afj = load i32, ptr %i.afi, align 8, !alias.scope !12189, !noalias !12190, !noundef !5
  %i.afk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.afl = load i32, ptr %i.afk, align 8, !alias.scope !12190, !noalias !12189, !noundef !5
  %i.afm = icmp eq i32 %i.afj, %i.afl
  br i1 %i.afm, label %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i6.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i15.i.i.i.i:                               ; preds = %bb.dw
  %i.afn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.afo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.afp = load ptr, ptr %i.afo, align 8, !alias.scope !12189, !noalias !12190, !nonnull !5, !noundef !5
  %i.afq = load ptr, ptr %i.afn, align 8, !alias.scope !12190, !noalias !12189, !nonnull !5, !noundef !5
  %i.afr = icmp eq ptr %i.afp, %i.afq
  br i1 %i.afr, label %bb.ea, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i14.i.i.i.i:                              ; preds = %bb.dx
  %i.afs = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aft = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.afu = load ptr, ptr %i.aft, align 8, !alias.scope !12189, !noalias !12190, !nonnull !5, !noundef !5
  %i.afv = load ptr, ptr %i.afs, align 8, !alias.scope !12190, !noalias !12189, !nonnull !5, !noundef !5
  %i.afw = icmp eq ptr %i.afu, %i.afv
  br i1 %i.afw, label %bb.ea, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split7.i13.i.i.i.i:                              ; preds = %bb.dy
  %i.afx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.afy = load ptr, ptr %i.afx, align 16, !alias.scope !12189, !noalias !12190, !nonnull !5, !noundef !5
  %i.afz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aga = load ptr, ptr %i.afz, align 16, !alias.scope !12190, !noalias !12189, !nonnull !5, !noundef !5
  %i.agb = icmp eq ptr %i.afy, %i.aga
  br i1 %i.agb, label %bb.ea, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i6.i.i.i.i: ; preds = %bb.dz
  %i.agc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.agd = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.age = load i32, ptr %i.agd, align 4, !range !60, !alias.scope !12189, !noalias !12190, !noundef !5
  %i.agf = load i32, ptr %i.agc, align 4, !range !60, !alias.scope !12190, !noalias !12189, !noundef !5
  %i.agg = icmp eq i32 %i.age, %i.agf
  br i1 %i.agg, label %bb.ea, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ea:                                            ; preds = %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i6.i.i.i.i, %.split7.i13.i.i.i.i, %.split9.i14.i.i.i.i, %.split.i15.i.i.i.i, %.split8.i12.i.i.i.i
  %i.agh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.agi = load i32, ptr %i.agh, align 8, !range !38, !alias.scope !12191, !noalias !12192, !noundef !5 ; 4 uses
  %.not.i7.i.i.i.i = icmp eq i32 %i.agi, -1
  %i.agj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.agk = load i32, ptr %i.agj, align 8, !range !38, !alias.scope !12192, !noalias !12191, !noundef !5 ; 3 uses
  %i.agl = icmp eq i32 %i.agk, -1
  %brmerge.i8.i.i.i.i = or i1 %.not.i7.i.i.i.i, %i.agl
  br i1 %brmerge.i8.i.i.i.i, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.agm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.val2.i10.i.i.i.i = load i32, ptr %i.agm, align 4, !alias.scope !12191, !noalias !12192 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.val4.i11.i.i.i.i = load i32, ptr %i.agn, align 4, !alias.scope !12192, !noalias !12191 ; 3 uses
  %i.ago = icmp eq i32 %i.agi, %i.agk
  br i1 %i.ago, label %bb.ec, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ec:                                            ; preds = %bb.eb
  switch i32 %i.agi, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i [
    i32 0, label %.split28.i.i.i.i
    i32 1, label %.split29.i.i.i.i
    i32 2, label %.split27.i.i.i.i
  ]

.split28.i.i.i.i:                                 ; preds = %bb.ec
  %i.agp = icmp eq i32 %.val2.i10.i.i.i.i, %.val4.i11.i.i.i.i
  br i1 %i.agp, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split29.i.i.i.i:                                 ; preds = %bb.ec
  %i.agq = icmp eq i32 %.val2.i10.i.i.i.i, %.val4.i11.i.i.i.i
  br i1 %i.agq, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split27.i.i.i.i:                                 ; preds = %bb.ec
  %i.agr = icmp eq i32 %.val2.i10.i.i.i.i, %.val4.i11.i.i.i.i
  br i1 %i.agr, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.i.i.i.i: ; preds = %bb.ea
  %i.ags = and i32 %i.agk, %i.agi
  %.mux.i9.i.i.i.i = icmp eq i32 %i.ags, -1
  br i1 %.mux.i9.i.i.i.i, label %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i: ; preds = %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.i.i.i.i, %.split27.i.i.i.i, %.split29.i.i.i.i, %.split28.i.i.i.i, %bb.ec
  %i.agt = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.agu = load i32, ptr %i.agt, align 16, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.agv = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.agw = load i32, ptr %i.agv, align 16, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.agx = icmp eq i32 %i.agu, %i.agw
  br i1 %i.agx, label %bb.ed, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ed:                                            ; preds = %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i
  %i.agy = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.agz = load i32, ptr %i.agy, align 8, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.aha = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ahb = load i32, ptr %i.aha, align 8, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.ahc = icmp eq i32 %i.agz, %i.ahb
  br i1 %i.ahc, label %bb.ee, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ee:                                            ; preds = %bb.ed
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ahf = load ptr, ptr %i.ahe, align 16, !alias.scope !12175, !noalias !12176, !nonnull !5, !noundef !5
  %i.ahg = load ptr, ptr %i.ahd, align 16, !alias.scope !12176, !noalias !12175, !nonnull !5, !noundef !5
  %i.ahh = icmp eq ptr %i.ahf, %i.ahg
  br i1 %i.ahh, label %bb.ef, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ef:                                            ; preds = %bb.ee
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ahj = load i32, ptr %i.ahi, align 8, !range !8, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ahl = trunc nuw i32 %i.ahj to i1
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ahn = load i32, ptr %i.ahm, align 8, !range !8, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.aho = trunc nuw i32 %i.ahn to i1             ; 2 uses
  br i1 %i.ahl, label %bb.eg, label %.split188

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.aho, label %.split176, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split188:                                        ; preds = %bb.ef
  br i1 %i.aho, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12

.split176:                                        ; preds = %bb.eg
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ahq = load i32, ptr %i.ahk, align 4, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.ahr = load i32, ptr %i.ahp, align 4, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.ahs = icmp eq i32 %i.ahq, %i.ahr
  br i1 %i.ahs, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.eh:                                            ; preds = %bb.cj
  %i.aht = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ahu = load i32, ptr %i.aht, align 4, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ahw = load i32, ptr %i.ahv, align 4, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.ahx = icmp eq i32 %i.ahu, %i.ahw
  br i1 %i.ahx, label %.split185, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split185:                                        ; preds = %bb.eh
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ahz = load i32, ptr %i.ahy, align 8, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.aia = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aib = load i32, ptr %i.aia, align 8, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.aic = icmp eq i32 %i.ahz, %i.aib
  br i1 %i.aic, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ei:                                            ; preds = %bb.cj
  %i.aid = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aie = load i32, ptr %i.aid, align 4, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.aif = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aig = load i32, ptr %i.aif, align 4, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.aih = icmp eq i32 %i.aie, %i.aig
  br i1 %i.aih, label %bb.ej, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ej:                                            ; preds = %bb.ei
  %i.aii = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aij = load i32, ptr %i.aii, align 4, !range !8, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.aik = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ail = trunc nuw i32 %i.aij to i1
  %i.aim = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ain = load i32, ptr %i.aim, align 4, !range !8, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.aio = trunc nuw i32 %i.ain to i1             ; 2 uses
  br i1 %i.ail, label %bb.ek, label %.split186

bb.ek:                                            ; preds = %bb.ej
  br i1 %i.aio, label %.split179, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split186:                                        ; preds = %bb.ej
  br i1 %i.aio, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12

.split179:                                        ; preds = %bb.ek
  %i.aip = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aiq = load i32, ptr %i.aik, align 8, !alias.scope !12175, !noalias !12176, !noundef !5
  %i.air = load i32, ptr %i.aip, align 8, !alias.scope !12176, !noalias !12175, !noundef !5
  %i.ais = icmp eq i32 %i.aiq, %i.air
  br i1 %i.ais, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir9StatementINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.i.i
  %i.ait = and i32 %i.wc, %i.wa
  %.mux.i.i = icmp eq i32 %i.ait, -1
  br i1 %.mux.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %bb.ch, %.split9.i14.i.i.i.i, %bb.b, %.lr.ph, %.split7.i.i.i, %_RNvXs2P_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i6.i.i.i.i, %.split.i.i.i, %_RNvXs2P_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.cu, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread19.i.i.i.i, %bb.cz, %bb.cx, %bb.dd, %bb.dp, %bb.do, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.i.i.i.i, %bb.dt, %bb.eg, %bb.ei, %bb.eh, %bb.dy, %bb.dx, %bb.dw, %bb.du, %bb.eb, %.split8.i12.i.i.i.i, %.split7.i13.i.i.i.i, %.split.i15.i.i.i.i, %bb.dz, %bb.ct, %bb.cv, %bb.cy, %bb.db, %bb.da, %bb.de, %bb.dl, %bb.di, %bb.dg, %bb.dm, %bb.dj, %bb.dh, %bb.df, %bb.dr, %bb.dq, %bb.ed, %bb.ee, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i, %bb.ek, %.split29.i.i.i.i, %.split.i.i.i.i, %.split21.i.i.i.i, %.split22.i.i.i.i, %.split23.i.i.i.i, %bb.co, %.split27.i.i.i.i, %.split28.i.i.i.i, %.split9.i.i.i4.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i, %bb.cp, %.split.i.i.i5.i.i, %.split7.i.i.i.i.i, %.split8.i.i.i.i.i, %bb.cr, %bb.ck, %bb.cm, %bb.cn, %.split175, %.split176, %.split177.a, %.split178.a, %.split179, %.split180.a, %.split181.a, %.split182, %.split183.a, %.split184, %.split185, %.split186, %.split187.a, %.split188, %.split189.a, %bb.bs, %bb.br, %bb.bq, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit79.thread115.i.i.i.i.i.i.i, %bb.bv, %.split8.i, %.split7.i, %.split.i, %bb.bt, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, %.split9.i, %.split10, %.split9, %.split, %.lr.ph.i.i.i, %bb.h, %bb.i, %bb.l, %bb.n, %bb.o, %bb.p, %.split8.i.i.i.i.i.i.i.i, %bb.q, %.split.i.i.i.i.i.i.i.i, %.split9.i.i.i.i.i.i.i.i, %.split7.i.i.i.i.i.i.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i, %bb.s, %.split13.i.i.i.i.i.a, %.split12.i.i.i.i.i.a, %.split10.i.i.i.i.i.a, %bb.u, %bb.w, %bb.x, %bb.y, %.split8.i38.i.i.i.i.i.i.i, %bb.z, %.split.i41.i.i.i.i.i.i.i, %.split9.i40.i.i.i.i.i.i.i, %.split7.i39.i.i.i.i.i.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i32.i.i.i.i.i.i.i, %bb.ab, %.split96.i.i.i.i.i.i.i, %.split97.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.i.i.i.i.i.i.i, %bb.ad, %_RNvXs1M_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_10BorrowKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i, %.split9.i.i.i.i.i.a, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %.split.i.i.i.i.i, %bb.ak, %.split104.i.i.i.i.i.i.i, %bb.am, %bb.ao, %bb.ap, %bb.aq, %.split.i51.i.i.i.i.i.i.i, %.split6.i.i.i.i.i.i.i.i, %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i, %bb.ar, %.split106.i.i.i.i.i.i.i.a, %.split107.i.i.i.i.i.i.i, %bb.as, %bb.at, %bb.av, %bb.aw, %bb.ax, %.split8.i50.i.i.i.i.i.i.i, %.split9.i49.i.i.i.i.i.i.i, %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i.i.i.i.i.i, %.split105.i.i.i.i.i.i.i, %_RNvXs1r_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13AggregateKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i, %.split16.i.i.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i, %.split11.i.i.i.i.i, %_RNvXs2j_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_8CastKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i.i.i.i.i, %bb.az, %bb.ba, %bb.bb, %.split8.i61.i.i.i.i.i.i.i, %bb.bc, %.split.i64.i.i.i.i.i.i.i, %.split9.i63.i.i.i.i.i.i.i, %.split7.i62.i.i.i.i.i.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i55.i.i.i.i.i.i.i, %bb.be, %.split112.i.i.i.i.i.i.i.a, %.split113.i.i.i.i.i.i.i, %.split111.i.i.i.i.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.i.i.i.i.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i, %bb.bg, %bb.bi, %bb.bj, %bb.bk, %.split8.i74.i.i.i.i.i.i.i, %bb.bl, %.split.i77.i.i.i.i.i.i.i, %.split9.i76.i.i.i.i.i.i.i, %.split7.i75.i.i.i.i.i.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i68.i.i.i.i.i.i.i, %bb.bn, %.split118.i.i.i.i.i.i.i.a, %.split119.i.i.i.i.i.i.i, %.split117.i.i.i.i.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit79.i.i.i.i.i.i.i, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.bx, %bb.bz, %bb.ca, %bb.cb, %.split8.i87.i.i.i.i.i.i.i, %bb.cc, %.split.i90.i.i.i.i.i.i.i, %.split9.i89.i.i.i.i.i.i.i, %.split7.i88.i.i.i.i.i.i.i, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i81.i.i.i.i.i.i.i, %bb.ce, %.split17.i.i.i.i.i.a, %.split15.i.i.i.i.i, %.split18.i.i.i.i.i.a, %bb.cg, %.split14.i.i.i.i.i, %.split22.i.i.i.i.i, %.split21.i.i.i.i.i, %.split20.i.i.i.i.i, %.split19.i.i.i.i.i, %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i, %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i, %bb.a
  %i.aiu = phi i1 [ true, %bb.a ], [ false, %bb.bs ], [ false, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i ], [ false, %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread7.i.i.i.i.i ], [ false, %_RNvXs2t_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13StatementKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i ], [ false, %.split19.i.i.i.i.i ], [ false, %.split20.i.i.i.i.i ], [ false, %.split21.i.i.i.i.i ], [ false, %.split22.i.i.i.i.i ], [ false, %.split14.i.i.i.i.i ], [ false, %bb.cg ], [ false, %.split18.i.i.i.i.i.a ], [ false, %.split15.i.i.i.i.i ], [ false, %.split17.i.i.i.i.i.a ], [ false, %bb.ce ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i81.i.i.i.i.i.i.i ], [ false, %.split7.i88.i.i.i.i.i.i.i ], [ false, %.split9.i89.i.i.i.i.i.i.i ], [ false, %.split.i90.i.i.i.i.i.i.i ], [ false, %bb.cc ], [ false, %.split8.i87.i.i.i.i.i.i.i ], [ false, %bb.cb ], [ false, %bb.ca ], [ false, %bb.bz ], [ false, %bb.bx ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit79.i.i.i.i.i.i.i ], [ false, %.split117.i.i.i.i.i.i.i ], [ false, %.split119.i.i.i.i.i.i.i ], [ false, %.split118.i.i.i.i.i.i.i.a ], [ false, %bb.bn ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i68.i.i.i.i.i.i.i ], [ false, %.split7.i75.i.i.i.i.i.i.i ], [ false, %.split9.i76.i.i.i.i.i.i.i ], [ false, %.split.i77.i.i.i.i.i.i.i ], [ false, %bb.bl ], [ false, %.split8.i74.i.i.i.i.i.i.i ], [ false, %bb.bk ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.bg ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.thread109.i.i.i.i.i.i.i ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit66.i.i.i.i.i.i.i ], [ false, %.split111.i.i.i.i.i.i.i ], [ false, %.split113.i.i.i.i.i.i.i ], [ false, %.split112.i.i.i.i.i.i.i.a ], [ false, %bb.be ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i55.i.i.i.i.i.i.i ], [ false, %.split7.i62.i.i.i.i.i.i.i ], [ false, %.split9.i63.i.i.i.i.i.i.i ], [ false, %.split.i64.i.i.i.i.i.i.i ], [ false, %bb.bc ], [ false, %.split8.i61.i.i.i.i.i.i.i ], [ false, %bb.bb ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %_RNvXs2j_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_8CastKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i.i.i.i.i ], [ false, %.split11.i.i.i.i.i ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.thread94.i.i.i.i.i.i.i ], [ false, %.split16.i.i.i.i.i ], [ false, %_RNvXs1r_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_13AggregateKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i ], [ false, %.split105.i.i.i.i.i.i.i ], [ false, %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i.i.i.i.i.i ], [ false, %.split9.i49.i.i.i.i.i.i.i ], [ false, %.split8.i50.i.i.i.i.i.i.i ], [ false, %bb.ax ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.at ], [ false, %bb.as ], [ false, %.split107.i.i.i.i.i.i.i ], [ false, %.split106.i.i.i.i.i.i.i.a ], [ false, %bb.ar ], [ false, %_RNvXs9M_CsileJQcQObtj_7hir_defNtB6_9VariantIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i ], [ false, %.split6.i.i.i.i.i.i.i.i ], [ false, %.split.i51.i.i.i.i.i.i.i ], [ false, %bb.aq ], [ false, %bb.ap ], [ false, %bb.ao ], [ false, %bb.am ], [ false, %.split104.i.i.i.i.i.i.i ], [ false, %bb.ak ], [ false, %.split.i.i.i.i.i ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %.split9.i.i.i.i.i.a ], [ false, %_RNvXs1M_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_10BorrowKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i ], [ false, %bb.ad ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit43.i.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i.i ], [ false, %.split97.i.i.i.i.i.i.i ], [ false, %.split96.i.i.i.i.i.i.i ], [ false, %bb.ab ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i32.i.i.i.i.i.i.i ], [ false, %.split7.i39.i.i.i.i.i.i.i ], [ false, %.split9.i40.i.i.i.i.i.i.i ], [ false, %.split.i41.i.i.i.i.i.i.i ], [ false, %bb.z ], [ false, %.split8.i38.i.i.i.i.i.i.i ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.u ], [ false, %.split10.i.i.i.i.i.a ], [ false, %.split12.i.i.i.i.i.a ], [ false, %.split13.i.i.i.i.i.a ], [ false, %bb.s ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i ], [ false, %.split7.i.i.i.i.i.i.i.i ], [ false, %.split9.i.i.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i.i.i ], [ false, %bb.q ], [ false, %.split8.i.i.i.i.i.i.i.i ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.h ], [ false, %.lr.ph.i.i.i ], [ false, %.split ], [ false, %.split9 ], [ false, %.split10 ], [ false, %.split9.i ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.bt ], [ false, %.split.i ], [ false, %.split7.i ], [ false, %.split8.i ], [ false, %bb.bv ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit79.thread115.i.i.i.i.i.i.i ], [ false, %bb.bq ], [ false, %bb.br ], [ false, %bb.dg ], [ false, %bb.dm ], [ false, %bb.dj ], [ false, %bb.dh ], [ false, %bb.df ], [ false, %bb.dr ], [ false, %bb.dq ], [ false, %bb.ed ], [ false, %bb.ee ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.thread25.i.i.i.i ], [ false, %bb.ek ], [ false, %.split29.i.i.i.i ], [ false, %.split.i.i.i.i ], [ false, %.split21.i.i.i.i ], [ false, %.split22.i.i.i.i ], [ false, %.split23.i.i.i.i ], [ false, %bb.co ], [ false, %.split27.i.i.i.i ], [ false, %.split28.i.i.i.i ], [ false, %.split9.i.i.i4.i.i ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i ], [ false, %bb.cp ], [ false, %.split.i.i.i5.i.i ], [ false, %.split7.i.i.i.i.i ], [ false, %.split8.i.i.i.i.i ], [ false, %bb.cr ], [ false, %bb.ck ], [ false, %bb.cm ], [ false, %bb.cn ], [ true, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12 ], [ false, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ false, %bb.ch ], [ false, %.split9.i14.i.i.i.i ], [ false, %bb.b ], [ false, %.lr.ph ], [ false, %.split189.a ], [ false, %.split188 ], [ false, %.split187.a ], [ false, %.split186 ], [ false, %.split185 ], [ false, %.split184 ], [ false, %.split183.a ], [ false, %.split182 ], [ false, %.split181.a ], [ false, %.split180.a ], [ false, %.split179 ], [ false, %.split178.a ], [ false, %.split177.a ], [ false, %.split176 ], [ false, %.split175 ], [ false, %.split7.i.i.i ], [ false, %_RNvXs2P_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i ], [ false, %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i6.i.i.i.i ], [ false, %.split.i.i.i ], [ false, %_RNvXs2P_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i ], [ false, %bb.cu ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread19.i.i.i.i ], [ false, %bb.cz ], [ false, %bb.cx ], [ false, %bb.dd ], [ false, %bb.dp ], [ false, %bb.do ], [ false, %_RNvXsu_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit17.i.i.i.i ], [ false, %bb.dt ], [ false, %bb.eg ], [ false, %bb.ei ], [ false, %bb.eh ], [ false, %bb.dy ], [ false, %bb.dx ], [ false, %bb.dw ], [ false, %bb.du ], [ false, %bb.eb ], [ false, %.split8.i12.i.i.i.i ], [ false, %.split7.i13.i.i.i.i ], [ false, %.split.i15.i.i.i.i ], [ false, %bb.dz ], [ false, %bb.ct ], [ false, %bb.cv ], [ false, %bb.cy ], [ false, %bb.db ], [ false, %bb.da ], [ false, %bb.de ], [ false, %bb.dl ], [ false, %bb.di ]
  ret i1 %i.aiu

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread12: ; preds = %.split189.a, %.split188, %.split187.a, %.split186, %.split185, %.split184, %.split183.a, %.split182, %.split181.a, %.split180.a, %.split179, %.split178.a, %.split177.a, %.split176, %.split175, %bb.cj, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.aiv = add nuw i64 %.sroa.01.024, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.aiv, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.06
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %.not = icmp eq ptr %.val, %.val5               ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread9
  %i.b = add nuw i64 %.sroa.01.011, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.011 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.011 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.011 ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !range !43, !noundef !5 ; 2 uses
  %.val6 = load i32, ptr %i.d, align 4, !range !43, !noundef !5
  %i.e = icmp eq i32 %.val, %.val6
  br i1 %i.e, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread9, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread9: ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %.val7 = load i32, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %i.c, i64 4
  %.val5 = load i32, ptr %i.g, align 4
  %switch = icmp samesign ugt i32 %.val, 2
  %.sroa.0.0.shrunk.i.i.not = icmp eq i32 %.val5, %.val7
  %or.cond = select i1 %switch, i1 true, i1 %.sroa.0.0.shrunk.i.i.not
  br i1 %or.cond, label %bb.b, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %bb.b, %.lr.ph, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread9, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread9 ], [ false, %.lr.ph ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6
  %.sroa.01.09 = phi i64 [ %i.bl, %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.09 ; 12 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.09 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12207)
  %i.d = load i32, ptr %i.b, align 8, !range !43, !alias.scope !12208, !noalias !12209, !noundef !5 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !range !43, !alias.scope !12209, !noalias !12208, !noundef !5
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %.split8.i.i
    i32 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !12208, !noalias !12209, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !12209, !noalias !12208, !noundef !5
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %.split.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !12208, !noalias !12209, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !12209, !noalias !12208, !noundef !5
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %.split9.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !12208, !noalias !12209, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !12209, !noalias !12208, !nonnull !5, !noundef !5
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %.split7.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i.i:                                      ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !12208, !noalias !12209, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !12209, !noalias !12208, !nonnull !5, !noundef !5
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !12208, !noalias !12209, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !12209, !noalias !12208, !noundef !5
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i.i:                                       ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !12208, !noalias !12209, !nonnull !5, !noundef !5
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !12209, !noalias !12208, !nonnull !5, !noundef !5
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i.i:                                      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !12208, !noalias !12209, !nonnull !5, !noundef !5
  %i.an = load ptr, ptr %i.ak, align 8, !alias.scope !12209, !noalias !12208, !nonnull !5, !noundef !5
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split7.i.i:                                      ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !12208, !noalias !12209, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !12209, !noalias !12208, !nonnull !5, !noundef !5
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !range !60, !alias.scope !12208, !noalias !12209, !noundef !5
  %i.ax = load i32, ptr %i.au, align 4, !range !60, !alias.scope !12209, !noalias !12208, !noundef !5
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.g:                                             ; preds = %_RNvXsz_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, %.split7.i.i, %.split9.i.i, %.split.i.i, %.split8.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !range !38, !alias.scope !12210, !noalias !12211, !noundef !5 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ba, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !range !38, !alias.scope !12211, !noalias !12210, !noundef !5 ; 3 uses
  %i.bd = icmp eq i32 %i.bc, -1
  %brmerge.i.i = or i1 %.not.i.i, %i.bd
  br i1 %brmerge.i.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.val2.i.i = load i32, ptr %i.be, align 4, !alias.scope !12210, !noalias !12211 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.val4.i.i = load i32, ptr %i.bf, align 4, !alias.scope !12211, !noalias !12210 ; 3 uses
  %i.bg = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bg, label %bb.i, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.i:                                             ; preds = %bb.h
  switch i32 %i.ba, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6 [
    i32 0, label %.split32
    i32 1, label %.split33
    i32 2, label %.split
  ]

.split32:                                         ; preds = %bb.i
  %i.bh = icmp eq i32 %.val2.i.i, %.val4.i.i
  br i1 %i.bh, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6, label %_RNvYNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

end_hunk_1
