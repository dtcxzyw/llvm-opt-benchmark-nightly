Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_:bb.a
  br i1 %i.n, label %bb.d, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4894)
  %i.o = load i32, ptr %i.c, align 8, !range !46, !alias.scope !4895, !noalias !4896, !noundef !5 ; 2 uses
  %i.p = load i32, ptr %i.d, align 8, !range !46, !alias.scope !4896, !noalias !4895, !noundef !5
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.e:                                             ; preds = %bb.d
  switch i32 %i.o, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %bb.n
    i32 3, label %bb.r
    i32 4, label %bb.v
    i32 5, label %bb.ax
    i32 6, label %bb.bb
    i32 7, label %bb.bf
    i32 8, label %bb.bj
    i32 9, label %bb.bn
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4898)
  %i.t = load i32, ptr %i.r, align 8, !range !29, !alias.scope !4899, !noalias !4900, !noundef !5 ; 2 uses
  %i.u = load i32, ptr %i.s, align 8, !range !29, !alias.scope !4900, !noalias !4899, !noundef !5
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.w = trunc nuw i32 %i.t to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !4899, !noalias !4900, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !4900, !noalias !4899, !noundef !5
  %i.ab = icmp eq i32 %i.y, %i.aa                 ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ab, label %.split.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.i:                                             ; preds = %bb.g
  br i1 %i.ab, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split.i.i.i:                                     ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !range !32, !alias.scope !4899, !noalias !4900, !noundef !5
  %i.af = load i32, ptr %i.ac, align 4, !range !32, !alias.scope !4900, !noalias !4899, !noundef !5
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.br, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !range !32, !alias.scope !4899, !noalias !4900, !noundef !5
  %i.ak = load i32, ptr %i.ah, align 4, !range !32, !alias.scope !4900, !noalias !4899, !noundef !5
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.br, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  %i.ao = load i32, ptr %i.am, align 4, !range !29, !alias.scope !4903, !noalias !4904, !noundef !5 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !range !29, !alias.scope !4904, !noalias !4903, !noundef !5
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = trunc nuw i32 %i.ao to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !4903, !noalias !4904, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !4904, !noalias !4903, !noundef !5
  %i.aw = icmp eq i32 %i.at, %i.av                ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.aw, label %.split24.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.m:                                             ; preds = %bb.k
  br i1 %i.aw, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit5.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split24.i.i.i:                                   ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !32, !alias.scope !4903, !noalias !4904, !noundef !5
  %i.ba = load i32, ptr %i.ax, align 8, !range !32, !alias.scope !4904, !noalias !4903, !noundef !5
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %.split196, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit5.i.i.i: ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !range !32, !alias.scope !4903, !noalias !4904, !noundef !5
  %i.bf = load i32, ptr %i.bc, align 8, !range !32, !alias.scope !4904, !noalias !4903, !noundef !5
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %.split196, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.n:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4906)
  %i.bj = load i32, ptr %i.bh, align 8, !range !29, !alias.scope !4907, !noalias !4908, !noundef !5 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !range !29, !alias.scope !4908, !noalias !4907, !noundef !5
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.o, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bm = trunc nuw i32 %i.bj to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !4907, !noalias !4908, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !4908, !noalias !4907, !noundef !5
  %i.br = icmp eq i32 %i.bo, %i.bq                ; 2 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.br, label %.split26.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.q:                                             ; preds = %bb.o
  br i1 %i.br, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit7.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split26.i.i.i:                                   ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !range !32, !alias.scope !4907, !noalias !4908, !noundef !5
  %i.bv = load i32, ptr %i.bs, align 4, !range !32, !alias.scope !4908, !noalias !4907, !noundef !5
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.bt, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit7.i.i.i: ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !range !32, !alias.scope !4907, !noalias !4908, !noundef !5
  %i.ca = load i32, ptr %i.bx, align 4, !range !32, !alias.scope !4908, !noalias !4907, !noundef !5
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.bt, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.r:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4910)
  %i.cg = load i32, ptr %i.ce, align 8, !range !29, !alias.scope !4911, !noalias !4912, !noundef !5 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 8, !range !29, !alias.scope !4912, !noalias !4911, !noundef !5
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.s, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc nuw i32 %i.cg to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !alias.scope !4911, !noalias !4912, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cn = load i32, ptr %i.cm, align 8, !alias.scope !4912, !noalias !4911, !noundef !5
  %i.co = icmp eq i32 %i.cl, %i.cn                ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %i.co, label %.split28.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.u:                                             ; preds = %bb.s
  br i1 %i.co, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit9.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split28.i.i.i:                                   ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cr = load i32, ptr %i.cq, align 4, !range !32, !alias.scope !4911, !noalias !4912, !noundef !5
  %i.cs = load i32, ptr %i.cp, align 4, !range !32, !alias.scope !4912, !noalias !4911, !noundef !5
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.bu, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit9.i.i.i: ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !range !32, !alias.scope !4911, !noalias !4912, !noundef !5
  %i.cx = load i32, ptr %i.cu, align 4, !range !32, !alias.scope !4912, !noalias !4911, !noundef !5
  %i.cy = icmp eq i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.bu, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.v:                                             ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4914)
  %i.db = load i32, ptr %i.cz, align 8, !range !28, !alias.scope !4915, !noalias !4916, !noundef !5 ; 4 uses
  %i.dc = add nsw i32 %i.db, -2
  %.inv.i.i.i.i = icmp samesign ult i32 %i.db, 2  ; 2 uses
  %narrow.i.i.i.i = select i1 %.inv.i.i.i.i, i32 2, i32 %i.dc ; 2 uses
  %i.dd = load i32, ptr %i.da, align 8, !range !28, !alias.scope !4916, !noalias !4915, !noundef !5 ; 3 uses
  %i.de = add nsw i32 %i.dd, -2
  %.inv6.i.i.i.i = icmp samesign ult i32 %i.dd, 2 ; 2 uses
  %3 = icmp eq i32 %i.de, %narrow.i.i.i.i
  %4 = select i1 %.inv6.i.i.i.i, i1 %.inv.i.i.i.i, i1 %3
  br i1 %4, label %bb.w, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.w:                                             ; preds = %bb.v
  switch i32 %narrow.i.i.i.i, label %bb.x [
    i32 0, label %bb.y
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4918)
  %i.dh = load i32, ptr %i.df, align 8, !range !29, !alias.scope !4919, !noalias !4920, !noundef !5 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 8, !range !29, !alias.scope !4920, !noalias !4919, !noundef !5
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.z, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.dk = trunc nuw i32 %i.dh to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.dm = load i32, ptr %i.dl, align 8, !alias.scope !4919, !noalias !4920, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !alias.scope !4920, !noalias !4919, !noundef !5
  %i.dp = icmp eq i32 %i.dm, %i.do                ; 2 uses
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dp, label %.split.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ab:                                            ; preds = %bb.z
  br i1 %i.dp, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split.i.i.i.i:                                   ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ds = load i32, ptr %i.dr, align 4, !range !32, !alias.scope !4919, !noalias !4920, !noundef !5
  %i.dt = load i32, ptr %i.dq, align 4, !range !32, !alias.scope !4920, !noalias !4919, !noundef !5
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.ah, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.dx = load i32, ptr %i.dw, align 4, !range !32, !alias.scope !4919, !noalias !4920, !noundef !5
  %i.dy = load i32, ptr %i.dv, align 4, !range !32, !alias.scope !4920, !noalias !4919, !noundef !5
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.ah, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ac:                                            ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.eb = load i32, ptr %i.ea, align 8, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ed = load i32, ptr %i.ec, align 8, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.ee = icmp eq i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ak, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ad:                                            ; preds = %bb.w
  tail call void @llvm.assume(i1 %.inv6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  %i.ef = icmp eq i32 %i.db, %i.dd
  br i1 %i.ef, label %bb.ae, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.eg = trunc nuw i32 %i.db to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ei = load i32, ptr %i.eh, align 8, !alias.scope !4923, !noalias !4924, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ek = load i32, ptr %i.ej, align 8, !alias.scope !4924, !noalias !4923, !noundef !5
  %i.el = icmp eq i32 %i.ei, %i.ek                ; 2 uses
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %i.el, label %.split16.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.el, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit11.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split16.i.i.i.i:                                 ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.eo = load i32, ptr %i.en, align 4, !range !32, !alias.scope !4923, !noalias !4924, !noundef !5
  %i.ep = load i32, ptr %i.em, align 4, !range !32, !alias.scope !4924, !noalias !4923, !noundef !5
  %i.eq = icmp eq i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit11.i.i.i.i: ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.et = load i32, ptr %i.es, align 4, !range !32, !alias.scope !4923, !noalias !4924, !noundef !5
  %i.eu = load i32, ptr %i.er, align 4, !range !32, !alias.scope !4924, !noalias !4923, !noundef !5
  %i.ev = icmp eq i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.ar, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ah:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ex = load i32, ptr %i.ew, align 4, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ez = load i32, ptr %i.ey, align 4, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.ai, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fc = load i8, ptr %i.fb, align 8, !range !42, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.fe = load i8, ptr %i.fd, align 8, !range !42, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.ff = icmp eq i8 %i.fc, %i.fe
  br i1 %i.ff, label %bb.aj, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !4915, !noalias !4916, !align !18, !noundef !5 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.fh, null        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !4916, !noalias !4915, !align !18, !noundef !5 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null                 ; 2 uses
  %brmerge.i.i.i.i = or i1 %.not8.i.i.i.i, %i.fk
  br i1 %brmerge.i.i.i.i, label %_RNvXs15_Cs33K2ylI4knu_10hir_expandNtB6_13MacroCallKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, label %.split30.i.i.i

.split30.i.i.i:                                   ; preds = %bb.aj
  %i.fl = tail call fastcc noundef zeroext i1 @_RNvXsZ_Cs33K2ylI4knu_10hir_expandNtB5_13EagerCallInfoNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fj) #47, !noalias !4925
  br i1 %i.fl, label %bb.bw, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ak:                                            ; preds = %bb.ac
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4927)
  %i.fo = load i32, ptr %i.fm, align 4, !range !29, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.fp = load i32, ptr %i.fn, align 4, !range !29, !alias.scope !4929, !noalias !4928, !noundef !5
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.al, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.fr = trunc nuw i32 %i.fo to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ft = load i32, ptr %i.fs, align 4, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.fv = load i32, ptr %i.fu, align 4, !alias.scope !4929, !noalias !4928, !noundef !5
  %i.fw = icmp eq i32 %i.ft, %i.fv                ; 2 uses
  br i1 %i.fr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br i1 %i.fw, label %.split18.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.an:                                            ; preds = %bb.al
  br i1 %i.fw, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit13.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split18.i.i.i.i:                                 ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fz = load i32, ptr %i.fy, align 8, !range !32, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ga = load i32, ptr %i.fx, align 8, !range !32, !alias.scope !4929, !noalias !4928, !noundef !5
  %i.gb = icmp eq i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.ao, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit13.i.i.i.i: ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ge = load i32, ptr %i.gd, align 8, !range !32, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gf = load i32, ptr %i.gc, align 8, !range !32, !alias.scope !4929, !noalias !4928, !noundef !5
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.ao, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ao:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit13.i.i.i.i, %.split18.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.gi = load i32, ptr %i.gh, align 8, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.gk = load i32, ptr %i.gj, align 8, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.gl = icmp eq i32 %i.gi, %i.gk
  br i1 %i.gl, label %bb.ap, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.gn = load i32, ptr %i.gm, align 4, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.gp = load i32, ptr %i.go, align 4, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.gq = icmp eq i32 %i.gn, %i.gp
  br i1 %i.gq, label %bb.aq, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.gs = load i32, ptr %i.gr, align 8, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.gu = load i32, ptr %i.gt, align 8, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.gv = icmp eq i32 %i.gs, %i.gu
  br i1 %i.gv, label %.split31.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split31.i.i.i:                                   ; preds = %bb.aq
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.gy = load i32, ptr %i.gx, align 4, !range !32, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.gz = load i32, ptr %i.gw, align 4, !range !32, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.ha = icmp eq i32 %i.gy, %i.gz
  br i1 %i.ha, label %bb.bw, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ar:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit11.i.i.i.i, %.split16.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.hc = load i32, ptr %i.hb, align 4, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.he = load i32, ptr %i.hd, align 4, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.hf = icmp eq i32 %i.hc, %i.he
  br i1 %i.hf, label %bb.as, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !4915, !noalias !4916, !align !18, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hh, null
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !4916, !noalias !4915, !align !18, !noundef !5 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null                 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %i.hk, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.split19.i.i.i.i

bb.au:                                            ; preds = %bb.as
  br i1 %i.hk, label %bb.av, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split19.i.i.i.i:                                 ; preds = %bb.at
  %i.hl = tail call fastcc noundef zeroext i1 @_RNvXsU_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hj) #47, !noalias !4925
  br i1 %i.hl, label %bb.av, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.av:                                            ; preds = %.split19.i.i.i.i, %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.hn = load i32, ptr %i.hm, align 8, !range !29, !alias.scope !4915, !noalias !4916, !noundef !5 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.hp = load i32, ptr %i.ho, align 8, !range !29, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.hq = icmp eq i32 %i.hn, %i.hp
  br i1 %i.hq, label %bb.aw, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.hr = trunc nuw i32 %i.hn to i1
  br i1 %i.hr, label %.split32.i.i.i, label %.split33.i.i.i

.split32.i.i.i:                                   ; preds = %bb.aw
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.hu = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ht) #47
  br i1 %i.hu, label %bb.bw, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split33.i.i.i:                                   ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.hw = load i32, ptr %i.hv, align 4, !alias.scope !4915, !noalias !4916, !noundef !5
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.hy = load i32, ptr %i.hx, align 4, !alias.scope !4916, !noalias !4915, !noundef !5
  %i.hz = icmp eq i32 %i.hw, %i.hy
  br i1 %i.hz, label %bb.bw, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs15_Cs33K2ylI4knu_10hir_expandNtB6_13MacroCallKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.aj
  %.mux.i.i.i.i = and i1 %.not8.i.i.i.i, %i.fk
  br i1 %.mux.i.i.i.i, label %bb.bw, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.ax:                                            ; preds = %bb.e
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4930)
end_hunk_0
