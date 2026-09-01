Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.01?download=true
inline.NumInlined: 2179
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs6_NtCslLuZgPVt6hg_3ide9runnablesNtB5_8RunnableNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i8, ptr %i.c, align 8, !range !5618, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsC_NtCslLuZgPVt6hg_3ide17navigation_targetNtB5_16NavigationTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g) #43
  br i1 %i.h, label %bb.c, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5622)
  %i.i = load i64, ptr %0, align 8, !range !3515, !alias.scope !5619, !noalias !5622, !noundef !4 ; 2 uses
  %i.j = load i64, ptr %1, align 8, !range !3515, !alias.scope !5622, !noalias !5619, !noundef !4
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 4, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5
  ]

default.unreachable:                              ; preds = %.lr.ph.i, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5619, !noalias !5622, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5622, !noalias !5619, !noundef !4
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %.split, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5622, !noalias !5619, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5619, !noalias !5622, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.t, ptr nonnull %i.r, i64 %i.m), !noalias !5624
  %i.u = icmp eq i32 %bcmp.i, 0
  br i1 %i.u, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5628)
  %i.x = load i64, ptr %i.v, align 8, !range !3566, !alias.scope !5630, !noalias !5631, !noundef !4 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !range !3566, !alias.scope !5631, !noalias !5630, !noundef !4
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc nuw i64 %i.x to i1
  br i1 %i.aa, label %bb.h, label %.split7

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !5630, !noalias !5631, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !5631, !noalias !5630, !noundef !4
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %.split9, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split7:                                          ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = tail call noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
  br i1 %i.ai, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split9:                                          ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !5631, !noalias !5630, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !5630, !noalias !5631, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.am, ptr nonnull %i.ak, i64 %i.ac), !noalias !5632
  %i.an = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.an, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5636)
  %i.aq = load i64, ptr %i.ao, align 8, !range !3566, !alias.scope !5638, !noalias !5639, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !range !3566, !alias.scope !5639, !noalias !5638, !noundef !4
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = trunc nuw i64 %i.aq to i1
  br i1 %i.at, label %bb.k, label %.split8

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !5638, !noalias !5639, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !5639, !noalias !5638, !noundef !4
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.split11, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split8:                                          ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = tail call noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
  br i1 %i.bb, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split11:                                         ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !5639, !noalias !5638, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !5638, !noalias !5639, !nonnull !4, !noundef !4
  %bcmp.i4.i = tail call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.bd, i64 %i.av), !noalias !5640
  %i.bg = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.bg, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5644)
  %i.bj = load i64, ptr %i.bh, align 8, !range !3566, !alias.scope !5646, !noalias !5647, !noundef !4 ; 2 uses
  %i.bk = load i64, ptr %i.bi, align 8, !range !3566, !alias.scope !5647, !noalias !5646, !noundef !4
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bm = trunc nuw i64 %i.bj to i1
  br i1 %i.bm, label %bb.n, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !5646, !noalias !5647, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !5647, !noalias !5646, !noundef !4
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %.split10, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split10:                                         ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !5647, !noalias !5646, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !5646, !noalias !5647, !nonnull !4, !noundef !4
  %bcmp.i7.i = tail call i32 @bcmp(ptr nonnull %i.bv, ptr nonnull %i.bt, i64 %i.bo), !noalias !5648
  %i.bw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.bw, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = tail call noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by)
  br i1 %i.bz, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5: ; preds = %bb.d, %.split11, %.split10, %.split9, %.split8, %.split7, %.split, %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !3447, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !3447, !noundef !4 ; 2 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %.lr.ph.i, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5
  %i.cf = icmp eq i64 %i.cd, -1
  br i1 %i.cf, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.lr.ph.i:                                         ; preds = %bb.o, %tailrecurse.i
  %i.cg = phi i64 [ %i.cl, %tailrecurse.i ], [ %i.cb, %bb.o ]
  %.tr717.i = phi ptr [ %i.ck, %tailrecurse.i ], [ %i.cc, %bb.o ] ; 7 uses
  %.tr16.i = phi ptr [ %i.ci, %tailrecurse.i ], [ %i.ca, %bb.o ] ; 7 uses
  switch i64 %i.cg, label %default.unreachable [
    i64 1, label %bb.q
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %tailrecurse.i
    i64 0, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13
  ]

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !5649, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !5652, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = load i64, ptr %i.ci, align 8, !range !3515, !noalias !5654, !noundef !4 ; 2 uses
  %i.cm = load i64, ptr %i.ck, align 8, !range !3515, !noalias !5654, !noundef !4
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.i, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %.val.i.a = load ptr, ptr %i.co, align 8, !noalias !5649, !noundef !4 ; 2 uses
  %.val5.i = load ptr, ptr %i.cp, align 8, !noalias !5652, !noundef !4 ; 3 uses
  %2 = icmp ne ptr %.val.i.a, null                ; 2 uses
  %3 = icmp eq ptr %.val5.i, null                 ; 3 uses
  %not..i.i = xor i1 %3, true
  %i.cq = xor i1 %2, %3
  br i1 %i.cq, label %bb.r, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.r:                                             ; preds = %bb.q
  %4 = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %.val6.i = load ptr, ptr %4, align 8, !noalias !5652
  %5 = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %.val4.i = load ptr, ptr %5, align 8, !noalias !5649
  %6 = icmp eq ptr %.val4.i, %.val6.i             ; 2 uses
  br i1 %2, label %.split16, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.split16:                                         ; preds = %bb.r
  tail call void @llvm.assume(i1 %not..i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.cr = icmp eq ptr %.val.i.a, %.val5.i
  %spec.select.i.i = select i1 %i.cr, i1 %6, i1 false
  br i1 %spec.select.i.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.s:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !5649, !noundef !4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !5652, !noundef !4
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %.split17, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split17:                                         ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !5652, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !5649, !nonnull !4, !noundef !4
  %i.db = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, i64 noundef %i.ct), !noalias !5654, !inline_history !5655
  br i1 %i.db, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.t:                                             ; preds = %.lr.ph.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !5649, !noundef !4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !5652, !noundef !4
  %i.dg = icmp eq i64 %i.dd, %i.df
  br i1 %i.dg, label %.split15, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split15:                                         ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !5652, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !5649, !nonnull !4, !noundef !4
  %i.dl = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.di, i64 noundef %i.dd), !noalias !5654, !inline_history !5655
  br i1 %i.dl, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r
  tail call void @llvm.assume(i1 %3)
  br i1 %6, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13: ; preds = %.lr.ph.i, %.split17, %.split16, %.split15, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.dn = load i8, ptr %i.dm, align 1, !range !5618, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.dp = load i8, ptr %i.do, align 1, !range !5618, !noundef !4
  %i.dq = icmp eq i8 %i.dn, %i.dp
  br i1 %i.dq, label %bb.u, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %tailrecurse.i, %bb.s, %bb.q, %bb.t, %bb.i, %bb.f, %bb.l, %bb.n, %bb.k, %bb.h, %bb.e, %bb.c, %.split17, %.split16, %.split15, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %.split11, %.split10, %.split9, %.split8, %.split7, %.split, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13, %bb.u, %bb.p, %bb.a, %bb.b, %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.o, %bb.v
  %.sroa.0.0 = phi i1 [ %i.ea, %bb.v ], [ false, %bb.p ], [ false, %bb.o ], [ false, %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.u ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13 ], [ false, %.split17 ], [ false, %.split ], [ false, %.split7 ], [ false, %.split8 ], [ false, %.split9 ], [ false, %.split10 ], [ false, %.split11 ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %bb.i ], [ false, %.split15 ], [ false, %.split16 ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.f ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.s ], [ false, %tailrecurse.i ]
  ret i1 %.sroa.0.0

bb.u:                                             ; preds = %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread13
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.ds = load i8, ptr %i.dr, align 2, !range !5618, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.du = load i8, ptr %i.dt, align 2, !range !5618, !noundef !4
  %i.dv = icmp eq i8 %i.ds, %i.du
  br i1 %i.dv, label %bb.v, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.dx = load i8, ptr %i.dw, align 1, !range !5618, !noundef !4
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.dz = load i8, ptr %i.dy, align 1, !range !5618, !noundef !4
  %i.ea = icmp eq i8 %i.dx, %i.dz
  br label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5656, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE13drop_elementsCslLuZgPVt6hg_3ide.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !5659
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEECslLuZgPVt6hg_3ide.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEECslLuZgPVt6hg_3ide.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEECslLuZgPVt6hg_3ide.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5662)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5659 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !5659
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !5659
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !5659
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !5659
  %i.k = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !5659
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !5656
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d, !noalias !5656

bb.d:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEECslLuZgPVt6hg_3ide.exit.i.i.i unwind label %bb.e, !noalias !5656

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39, !noalias !5656
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEECslLuZgPVt6hg_3ide.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.w

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !5656
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE13drop_elementsCslLuZgPVt6hg_3ide.exit, label %bb.b

_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE13drop_elementsCslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEECslLuZgPVt6hg_3ide.exit.i, %bb.a
  %i.y = load i64, ptr %0, align 8, !range !5663, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE13drop_elementsCslLuZgPVt6hg_3ide.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.y) #41
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.g, %bb.f, %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEE13drop_elementsCslLuZgPVt6hg_3ide.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5664)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5664, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE13drop_elementsCslLuZgPVt6hg_3ide.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !5667
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEECslLuZgPVt6hg_3ide.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEECslLuZgPVt6hg_3ide.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEECslLuZgPVt6hg_3ide.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5670)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5667 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !5667
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !5667
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !5667
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !5667
  %i.k = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -640 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE9next_implKb0_ECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !5667
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [40 x i8], ptr %i.n, i64 %i.s
end_hunk_0
