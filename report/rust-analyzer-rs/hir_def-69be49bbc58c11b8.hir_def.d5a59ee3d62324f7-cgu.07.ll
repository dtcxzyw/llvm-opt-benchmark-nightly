Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.07?download=true
inline.NumInlined: 1664
inline.NumDeleted: 903
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def3hir9StatementINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_:bb.a
  br i1 %i.s, label %bb.g, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i8, ptr %i.t, align 8, !range !20, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !20, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3040, !noalias !3041, !align !12, !noundef !10 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3041, !noalias !3040, !align !12, !noundef !10 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null                 ; 2 uses
  %i.ae = xor i1 %i.aa, %i.ad
  br i1 %i.ae, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ag = trunc i32 %i.d to i1
  %i.ah = trunc nuw i32 %i.i to i1                ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ah, label %.split.i.i, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.i:                                             ; preds = %bb.g
  br i1 %i.ah, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.j

.split.i.i:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aj = load i32, ptr %i.af, align 4, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.ak = load i32, ptr %i.ai, align 4, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.j:                                             ; preds = %.split.i.i, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8, !range !36, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ap = trunc nuw i32 %i.an to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !range !36, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.as = trunc nuw i32 %i.ar to i1               ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.as, label %.split6.i.i, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.l:                                             ; preds = %bb.j
  br i1 %i.as, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.m

.split6.i.i:                                      ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.au = load i32, ptr %i.ao, align 4, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.av = load i32, ptr %i.at, align 4, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.m, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.m:                                             ; preds = %.split6.i.i, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !range !36, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ba = trunc nuw i32 %i.ay to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !range !36, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.bd = trunc nuw i32 %i.bc to i1               ; 2 uses
  br i1 %i.ba, label %bb.n, label %.split

bb.n:                                             ; preds = %bb.m
  br i1 %i.bd, label %.split36, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split:                                           ; preds = %bb.m
  br i1 %i.bd, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6

.split36:                                         ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bf = load i32, ptr %i.az, align 4, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.bg = load i32, ptr %i.be, align 4, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.o:                                             ; preds = %bb.f
  %brmerge.i.i = or i1 %i.aa, %i.ad
  br i1 %brmerge.i.i, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6, label %.split35

.split35:                                         ; preds = %bb.o
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXsL_Cs33K2ylI4knu_10hir_expandNtB5_10MacroDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.z, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.ac) #58, !noalias !3042
  br i1 %i.bi, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !3040, !noalias !3041, !noundef !10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !3041, !noalias !3040, !noundef !10
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6, %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %.lr.ph, %bb.n, %bb.f, %bb.e, %bb.d, %bb.k, %bb.h, %bb.l, %bb.i, %.split.i.i, %.split6.i.i, %.split, %.split35, %.split36, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split36 ], [ false, %.split35 ], [ false, %.split ], [ false, %.split6.i.i ], [ false, %.split.i.i ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.n ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ true, %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6 ]
  ret i1 %.lcssa

_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6: ; preds = %.split36, %.split35, %.split, %bb.o, %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.bo = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %2
  br i1 %exitcond.not, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6
  %.sroa.01.08 = phi i64 [ %i.x, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.08 ; 4 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.08 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %i.d = load i32, ptr %i.b, align 8, !range !3053, !alias.scope !3054, !noalias !3055, !noundef !10 ; 3 uses
  %i.e = icmp ne i32 %i.d, 12
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i32 %i.d, -9
  %i.g = icmp samesign ugt i32 %i.d, 8
  %narrow.i.i = select i1 %i.g, i32 %i.f, i32 3   ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !range !3053, !alias.scope !3055, !noalias !3054, !noundef !10 ; 3 uses
  %i.i = icmp ne i32 %i.h, 12
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i32 %i.h, -9
  %i.k = icmp samesign ugt i32 %i.h, 8
  %narrow2.i.i = select i1 %i.k, i32 %i.j, i32 3
  %i.l = icmp eq i32 %narrow.i.i, %narrow2.i.i
  br i1 %i.l, label %bb.b, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i32 %narrow.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6 [
    i32 0, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #58
  br i1 %i.m, label %.split, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !3054, !noalias !3055, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !3055, !noalias !3054, !noundef !10
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3054, !noalias !3055, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3055, !noalias !3054, !nonnull !10, !noundef !10
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit, %.lr.ph, %bb.c, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit ], [ true, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6 ]
  ret i1 %.lcssa

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6: ; preds = %.split, %bb.b, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit
  %i.x = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6
  %.sroa.01.012 = phi i64 [ %i.eo, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.012 ; 15 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.012 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  %i.d = load i32, ptr %i.b, align 8, !range !38, !alias.scope !3087, !noalias !3088, !noundef !10 ; 3 uses
  %i.e = icmp ne i32 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i32 %i.d, -3
  %.inv.i.i = icmp samesign ult i32 %i.d, 3
  %narrow.i.i = select i1 %.inv.i.i, i32 3, i32 %i.f ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !range !38, !alias.scope !3088, !noalias !3087, !noundef !10 ; 3 uses
  %i.h = icmp ne i32 %i.g, 6
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i32 %i.g, -3
  %.inv3.i.i = icmp samesign ult i32 %i.g, 3      ; 2 uses
  %narrow2.i.i = select i1 %.inv3.i.i, i32 3, i32 %i.i
  %i.j = icmp eq i32 %narrow.i.i, %narrow2.i.i
  br i1 %i.j, label %bb.b, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i32 %narrow.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6 [
    i32 2, label %bb.c
    i32 3, label %3
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %.split60
    i32 7, label %.split59
    i32 8, label %bb.i
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %.split62
    i32 12, label %bb.u
  ]

3:                                                ; preds = %bb.b
  br i1 %.inv3.i.i, label %.split64, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.m = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE8data_rawB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k), !noalias !3091
  %i.n = load ptr, ptr %i.k, align 8, !alias.scope !3092, !noalias !3091, !nonnull !10, !noundef !10
  %i.o = load i64, ptr %i.n, align 8, !noalias !3091, !noundef !10 ; 2 uses
  %i.p = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEE8data_rawB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !alias.scope !3091, !noalias !3092, !nonnull !10, !noundef !10
  %i.r = load i64, ptr %i.q, align 8, !noundef !10
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split64:                                         ; preds = %3
  %i.t = tail call fastcc noundef zeroext i1 @_RNvXs6_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_4PathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #58
  br i1 %i.t, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !3087, !noalias !3088, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !3088, !noalias !3087, !noundef !10
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %.split63, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split63:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load i8, ptr %i.aa, align 8, !range !20, !alias.scope !3087, !noalias !3088, !noundef !10
  %.val4.i.i = load i8, ptr %i.z, align 8, !range !20, !alias.scope !3088, !noalias !3087, !noundef !10
  %i.ab = icmp eq i8 %.val.i.i, %.val4.i.i
  br i1 %i.ab, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !3087, !noalias !3088, !nonnull !10, !noundef !10 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !3088, !noalias !3087, !nonnull !10, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !3093, !noalias !3095, !noundef !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !3094, !noalias !3096, !noundef !10
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.ad, align 4, !range !36, !alias.scope !3093, !noalias !3095, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.an = trunc nuw i32 %i.al to i1
  %i.ao = load i32, ptr %i.af, align 4, !range !36, !alias.scope !3094, !noalias !3096, !noundef !10
  %i.ap = trunc nuw i32 %i.ao to i1               ; 2 uses
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %.split.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.h:                                             ; preds = %bb.f
  br i1 %i.ap, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.split56

.split.i.i.i:                                     ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ar = load i32, ptr %i.am, align 4, !alias.scope !3093, !noalias !3095, !noundef !10
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !3094, !noalias !3096, !noundef !10
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %.split56, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split56:                                         ; preds = %.split.i.i.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.av = load i8, ptr %i.au, align 4, !range !20, !alias.scope !3093, !noalias !3095, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ax = load i8, ptr %i.aw, align 4, !range !20, !alias.scope !3094, !noalias !3096, !noundef !10
  %i.ay = icmp eq i8 %i.av, %i.ax
  br i1 %i.ay, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split60:                                         ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !alias.scope !3087, !noalias !3088
  %i.bc = load <2 x i32>, ptr %i.ba, align 4, !alias.scope !3088, !noalias !3087
  %i.bd = icmp eq <2 x i32> %i.bb, %i.bc          ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %i.bf = extractelement <2 x i1> %i.bd, i64 1
  %.sroa.0.0.i10.i.i = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %.sroa.0.0.i10.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split59:                                         ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !3087, !noalias !3088, !noundef !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !3088, !noalias !3087, !noundef !10
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !3087, !noalias !3088, !nonnull !10, !noundef !10 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !3088, !noalias !3087, !nonnull !10, !noundef !10 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 34
  %i.bq = load i8, ptr %i.bp, align 2, !range !20, !alias.scope !3097, !noalias !3099, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 34
  %i.bs = load i8, ptr %i.br, align 2, !range !20, !alias.scope !3098, !noalias !3100, !noundef !10
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %bb.j, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 35
  %i.bv = load i8, ptr %i.bu, align 1, !range !20, !alias.scope !3097, !noalias !3099, !noundef !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 35
  %i.bx = load i8, ptr %i.bw, align 1, !range !20, !alias.scope !3098, !noalias !3100, !noundef !10
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.k, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.bm, align 8, !alias.scope !3097, !noalias !3099, !align !11, !noundef !10 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i.i.i = icmp eq ptr %i.bz, null
  %i.cb = load ptr, ptr %i.bo, align 8, !alias.scope !3098, !noalias !3100, !align !11, !noundef !10 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.cc, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %i.cc, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ce = load i64, ptr %i.ca, align 8, !alias.scope !3097, !noalias !3099, !noundef !10 ; 3 uses
  %i.cf = load i64, ptr %i.cd, align 8, !alias.scope !3098, !noalias !3100, !noundef !10
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.o, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ci = add nuw i64 %.sroa.01.06.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ci, %i.ce
  br i1 %exitcond.not.i.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.sroa.01.06.i.i.i.i = phi i64 [ %i.ci, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.sroa.01.06.i.i.i.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.sroa.01.06.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !3101, !nonnull !10, !noundef !10
  %.val5.i.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !3101, !nonnull !10, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.p, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !3097, !noalias !3099, !noundef !10 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !3098, !noalias !3100, !noundef !10
  %i.cp = icmp eq i64 %i.cm, %i.co
  br i1 %i.cp, label %bb.q, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.q:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !3098, !noalias !3100, !nonnull !10, !noundef !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !3097, !noalias !3099, !nonnull !10, !noundef !10
  %i.cu = icmp eq i64 %i.cm, 0
  br i1 %i.cu, label %.loopexit.i.i.i, label %.lr.ph.i4.i.i.i

bb.r:                                             ; preds = %.lr.ph.i4.i.i.i
  %i.cv = add nuw i64 %.sroa.01.08.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i8.i.i.i = icmp eq i64 %i.cv, %i.cm
  br i1 %exitcond.not.i8.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.q, %bb.r
  %.sroa.01.08.i.i.i.i = phi i64 [ %i.cv, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %.sroa.01.08.i.i.i.i ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.sroa.01.08.i.i.i.i ; 2 uses
  %.val.i5.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !3101, !noundef !10
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  %.val5.i6.i.i.i = load i32, ptr %i.cy, align 8, !noalias !3101
  %.val6.i.i.i.i = load ptr, ptr %i.cx, align 8, !noalias !3101
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  %.val7.i.i.i.i = load i32, ptr %i.cz, align 8, !noalias !3101
  %.sroa.0.0.shrunk.i.i.i.i.i.i.i = icmp eq ptr %.val6.i.i.i.i, %.val.i5.i.i.i
  %i.da = icmp eq i32 %.val5.i6.i.i.i, %.val7.i.i.i.i
  %spec.select.i.not.i.i.i.i = select i1 %.sroa.0.0.shrunk.i.i.i.i.i.i.i, i1 %i.da, i1 false
  br i1 %spec.select.i.not.i.i.i.i, label %bb.r, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.loopexit.i.i.i:                                  ; preds = %bb.r, %bb.q
  %4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %6 = tail call noundef zeroext i1 @_RNvXs0_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbiNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %5), !noalias !3102
  br i1 %6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %i.dd = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.db), !noalias !3105
  %i.de = load ptr, ptr %i.db, align 8, !alias.scope !3106, !noalias !3105, !nonnull !10, !noundef !10
  %i.df = load i64, ptr %i.de, align 8, !noalias !3105, !noundef !10 ; 2 uses
  %i.dg = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc)
  %i.dh = load ptr, ptr %i.dc, align 8, !alias.scope !3105, !noalias !3106, !nonnull !10, !noundef !10
  %i.di = load i64, ptr %i.dh, align 8, !noundef !10
  %i.dj = icmp eq i64 %i.df, %i.di
  br i1 %i.dj, label %.split57.a, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split57.a:                                       ; preds = %bb.s
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef %i.dd, ptr noundef %i.dg, i64 noundef %i.df)
  br i1 %i.dk, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.t:                                             ; preds = %bb.b
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  %i.dn = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl), !noalias !3109
  %i.do = load ptr, ptr %i.dl, align 8, !alias.scope !3110, !noalias !3109, !nonnull !10, !noundef !10
  %i.dp = load i64, ptr %i.do, align 8, !noalias !3109, !noundef !10 ; 2 uses
  %i.dq = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm)
  %i.dr = load ptr, ptr %i.dm, align 8, !alias.scope !3109, !noalias !3110, !nonnull !10, !noundef !10
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !10
  %i.dt = icmp eq i64 %i.dp, %i.ds
  br i1 %i.dt, label %.split58, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split58:                                         ; preds = %bb.t
  %i.du = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef %i.dn, ptr noundef %i.dq, i64 noundef %i.dp)
  br i1 %i.du, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split62:                                         ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  %i.dx = tail call fastcc noundef zeroext i1 @_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dw) #58
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !alias.scope !3115, !noalias !3116
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !alias.scope !3116, !noalias !3115
  %i.ec = icmp eq i32 %i.dz, %i.eb
  %.sroa.0.0.i.i.i.i = select i1 %i.dx, i1 %i.ec, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.u:                                             ; preds = %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !alias.scope !3087, !noalias !3088, !noundef !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !alias.scope !3088, !noalias !3087, !noundef !10
  %i.eh = icmp eq i32 %i.ee, %i.eg
  br i1 %i.eh, label %.split, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split:                                           ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !alias.scope !3087, !noalias !3088, !noundef !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !alias.scope !3088, !noalias !3087, !noundef !10
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.c
  %7 = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1c_(ptr noundef %i.m, ptr noundef %i.p, i64 noundef %i.o)
  br i1 %7, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit, %.lr.ph, %bb.u, %bb.c, %.split.i.i.i, %bb.s, %bb.d, %bb.m, %bb.t, %bb.i, %bb.j, %bb.l, %bb.n, %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i, %bb.g, %bb.h, %bb.e, %.split56, %.split, %.loopexit.i.i.i, %.split57.a, %.split59, %.split60, %.split58, %.split62, %.split63, %.split64, %.lr.ph.i.i.i.i, %.lr.ph.i4.i.i.i, %bb.a
  %i.en = phi i1 [ false, %.lr.ph.i.i.i.i ], [ false, %.lr.ph.i4.i.i.i ], [ true, %bb.a ], [ false, %.split63 ], [ false, %.split62 ], [ false, %.split58 ], [ false, %.split60 ], [ false, %.split59 ], [ false, %.split57.a ], [ false, %.loopexit.i.i.i ], [ false, %.split ], [ false, %.split56 ], [ false, %bb.e ], [ true, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6 ], [ false, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit ], [ false, %.lr.ph ], [ false, %bb.u ], [ false, %bb.c ], [ false, %.split.i.i.i ], [ false, %bb.s ], [ false, %bb.d ], [ false, %bb.m ], [ false, %bb.t ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.n ], [ false, %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit.thread.i.i.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.split64 ]
  ret i1 %i.en

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread6: ; preds = %.split64, %.split63, %.split62, %.split58, %.split60, %.split59, %.split57.a, %.loopexit.i.i.i, %.split, %.split56, %3, %bb.b, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit
  %i.eo = add nuw i64 %.sroa.01.012, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef readonly captures(address, read_provenance) %0, ptr nofree noundef readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7
  %.sroa.01.014 = phi i64 [ %i.bp, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.014 ; 7 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.014 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %i.d = load i8, ptr %i.b, align 8, !range !37, !alias.scope !3139, !noalias !3140, !noundef !10 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !37, !alias.scope !3140, !noalias !3139, !noundef !10
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.split33
    i8 3, label %bb.g
    i8 4, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !3139, !noalias !3140, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !3140, !noalias !3139, !noundef !10
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %.split, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !20, !alias.scope !3139, !noalias !3140, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !20, !alias.scope !3140, !noalias !3139, !noundef !10
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  %i.s = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE8data_rawCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !3143
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !3144, !noalias !3143, !nonnull !10, !noundef !10
  %i.u = load i64, ptr %i.t, align 8, !noalias !3143, !noundef !10 ; 3 uses
  %i.v = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE8data_rawCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
  %i.w = load ptr, ptr %i.r, align 8, !alias.scope !3143, !noalias !3144, !nonnull !10, !noundef !10
  %i.x = load i64, ptr %i.w, align 8, !noundef !10
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.e, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = add nuw i64 %.sroa.01.06.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aa, %i.u
  br i1 %exitcond.not.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.01.06.i.i.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.01.06.i.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.01.06.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10
  %.val5.i.i.i.i = load ptr, ptr %i.ac, align 8, !nonnull !10, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

.split33:                                         ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !3139, !noalias !3140, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !3140, !noalias !3139, !noundef !10
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3146)
  %i.ak = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai), !noalias !3147
  %i.al = load ptr, ptr %i.ai, align 8, !alias.scope !3148, !noalias !3147, !nonnull !10, !noundef !10
  %i.am = load i64, ptr %i.al, align 8, !noalias !3147, !noundef !10 ; 3 uses
  %i.an = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !alias.scope !3147, !noalias !3148, !nonnull !10, !noundef !10
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !10
  %i.aq = icmp eq i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.h, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7, label %.lr.ph.i.i3.i.i

bb.i:                                             ; preds = %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.i.i.i.i, %.split.i.i.i.i
  %i.as = add nuw i64 %.sroa.01.06.i.i4.i.i, 1    ; 2 uses
  %exitcond.not.i.i5.i.i = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.i.i5.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7, label %.lr.ph.i.i3.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.h, %bb.i
  %.sroa.01.06.i.i4.i.i = phi i64 [ %i.as, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.sroa.01.06.i.i4.i.i ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.sroa.01.06.i.i4.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  %i.av = load i32, ptr %i.at, align 8, !range !36, !alias.scope !3153, !noalias !3154, !noundef !10 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 8, !range !36, !alias.scope !3154, !noalias !3153, !noundef !10
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.i3.i.i
  %i.ay = trunc nuw i32 %i.av to i1
  br i1 %i.ay, label %.split.i.i.i.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !3153, !noalias !3154, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !3154, !noalias !3153, !noundef !10
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.i.i.i.i: ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !3153, !noalias !3154, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !3154, !noalias !3153, !nonnull !10, !noundef !10
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.f, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !3139, !noalias !3140, !noundef !10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !3140, !noalias !3139, !noundef !10
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit, %.lr.ph, %bb.c, %bb.d, %bb.g, %.split, %.split33, %.split.i.i.i.i, %.lr.ph.i.i3.i.i, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.a
  %i.bo = phi i1 [ false, %.lr.ph.i.i.i.i ], [ true, %bb.a ], [ false, %.split.i.i.i.i ], [ false, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.i.i.i.i ], [ false, %.lr.ph.i.i3.i.i ], [ false, %bb.g ], [ false, %bb.d ], [ true, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7 ], [ false, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit ], [ false, %.lr.ph ], [ false, %.split ], [ false, %.split33 ], [ false, %bb.c ]
  ret i1 %i.bo

_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread7: ; preds = %bb.i, %.split33, %.split, %bb.h, %bb.b, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit
  %i.bp = add nuw i64 %.sroa.01.014, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.06 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.06 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3164)
  %i.e = load i32, ptr %i.c, align 8, !range !36, !alias.scope !3165, !noalias !3166, !noundef !10 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !range !36, !alias.scope !3166, !noalias !3165, !noundef !10
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = trunc nuw i32 %i.e to i1
  br i1 %i.h, label %.split, label %_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_.exit

.split:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !3165, !noalias !3166, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !3166, !noalias !3165, !noundef !10
  %i.m = icmp eq i32 %i.j, %i.l
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!2902 = distinct !{!2902, !"_RNvXsv_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1i_3ast9generated5nodes8LifetimeEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def"}
!2903 = distinct !{!2903, !2902, !"_RNvXsv_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1i_3ast9generated5nodes8LifetimeEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def: argument 0"}
!2904 = distinct !{!2904, !2902, !"_RNvXsv_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1i_3ast9generated5nodes8LifetimeEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def: argument 1"}
!2905 = distinct !{!2905, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2906 = distinct !{!2906, !2905, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2907 = distinct !{!2907, !2905, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2908 = distinct !{!2908, !"_RNvXs2_NtCsjJXvCMGntp8_6syntax3ptrINtB5_6AstPtrNtNtNtNtB7_3ast9generated5nodes8LifetimeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def"}
!2909 = distinct !{!2909, !2908, !"_RNvXs2_NtCsjJXvCMGntp8_6syntax3ptrINtB5_6AstPtrNtNtNtNtB7_3ast9generated5nodes8LifetimeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def: argument 0"}
!2910 = distinct !{!2910, !2908, !"_RNvXs2_NtCsjJXvCMGntp8_6syntax3ptrINtB5_6AstPtrNtNtNtNtB7_3ast9generated5nodes8LifetimeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def: argument 1"}
!2911 = !{!2897}
!2912 = !{!2898}
!2913 = !{!2900}
!2914 = !{!2901}
!2915 = !{!2900, !2897}
!2916 = !{!2901, !2898}
!2917 = !{!2903}
!2918 = !{!2904}
!2919 = !{!2906}
!2920 = !{!2907}
!2921 = !{!2906, !2903, !2900, !2897}
!2922 = !{!2907, !2904, !2901, !2898}
!2923 = !{!2909}
!2924 = !{!2910}
!2925 = !{!2909, !2903, !2900, !2897}
!2926 = !{!2910, !2904, !2901, !2898}
!2927 = distinct !{null}
!2928 = distinct !{!2928, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir3PatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_"}
!2929 = distinct !{!2929, !2928, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir3PatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 0"}
!2930 = distinct !{!2930, !2928, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir3PatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 1"}
!2931 = distinct !{!2931, !"_RNvXs3b_NtCsileJQcQObtj_7hir_def3hirNtB6_3PatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2932 = distinct !{!2932, !2931, !"_RNvXs3b_NtCsileJQcQObtj_7hir_def3hirNtB6_3PatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2933 = distinct !{!2933, !2931, !"_RNvXs3b_NtCsileJQcQObtj_7hir_def3hirNtB6_3PatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2934 = !{!2929}
!2935 = !{!2930}
!2936 = !{!2932}
!2937 = !{!2933}
!2938 = !{!2932, !2929}
!2939 = !{!2933, !2930}
!2940 = !{!2932, !2933, !2929, !2930}
!2941 = distinct !{!2941, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_"}
!2942 = distinct !{!2942, !2941, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 0"}
!2943 = distinct !{!2943, !2941, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 1"}
!2944 = distinct !{!2944, !"_RNvXs10_NtCsileJQcQObtj_7hir_def3hirNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2945 = distinct !{!2945, !2944, !"_RNvXs10_NtCsileJQcQObtj_7hir_def3hirNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2946 = distinct !{!2946, !2944, !"_RNvXs10_NtCsileJQcQObtj_7hir_def3hirNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2947 = distinct !{!2947, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir8MatchArmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_"}
!2948 = distinct !{!2948, !2947, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir8MatchArmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 0"}
!2949 = distinct !{!2949, !2947, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir8MatchArmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 1"}
!2950 = distinct !{!2950, !"_RNvXs2v_NtCsileJQcQObtj_7hir_def3hirNtB6_8MatchArmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2951 = distinct !{!2951, !2950, !"_RNvXs2v_NtCsileJQcQObtj_7hir_def3hirNtB6_8MatchArmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2952 = distinct !{!2952, !2950, !"_RNvXs2v_NtCsileJQcQObtj_7hir_def3hirNtB6_8MatchArmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2953 = distinct !{!2953, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_"}
!2954 = distinct !{!2954, !2953, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_: argument 0"}
!2955 = distinct !{!2955, !2953, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_: argument 1"}
!2956 = distinct !{!2956, !"_RNvXs2q_NtCsileJQcQObtj_7hir_def3hirNtB6_5ArrayNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2957 = distinct !{!2957, !2956, !"_RNvXs2q_NtCsileJQcQObtj_7hir_def3hirNtB6_5ArrayNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2958 = distinct !{!2958, !2956, !"_RNvXs2q_NtCsileJQcQObtj_7hir_def3hirNtB6_5ArrayNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2959 = distinct !{!2959, !"_RNvXsJ_NtCsileJQcQObtj_7hir_def3hirNtB5_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2960 = distinct !{!2960, !2959, !"_RNvXsJ_NtCsileJQcQObtj_7hir_def3hirNtB5_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2961 = distinct !{!2961, !2959, !"_RNvXsJ_NtCsileJQcQObtj_7hir_def3hirNtB5_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2962 = distinct !{!2962, !"_RNvXs1b_NtCsileJQcQObtj_7hir_def3hirNtB6_8OffsetOfNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2963 = distinct !{!2963, !2962, !"_RNvXs1b_NtCsileJQcQObtj_7hir_def3hirNtB6_8OffsetOfNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2964 = distinct !{!2964, !2962, !"_RNvXs1b_NtCsileJQcQObtj_7hir_def3hirNtB6_8OffsetOfNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2965 = distinct !{!2965, !"_RNvXs1g_NtCsileJQcQObtj_7hir_def3hirNtB6_9InlineAsmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2966 = distinct !{!2966, !2965, !"_RNvXs1g_NtCsileJQcQObtj_7hir_def3hirNtB6_9InlineAsmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2967 = distinct !{!2967, !2965, !"_RNvXs1g_NtCsileJQcQObtj_7hir_def3hirNtB6_9InlineAsmNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2968 = distinct !{!2968, !"_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtB7_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandENtNtB7_3cmp9PartialEq2neB1C_"}
!2969 = distinct !{!2969, !2968, !"_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtB7_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandENtNtB7_3cmp9PartialEq2neB1C_: argument 0"}
!2970 = distinct !{!2970, !2968, !"_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtB7_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandENtNtB7_3cmp9PartialEq2neB1C_: argument 1"}
!2971 = distinct !{!2971, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir10AsmOperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_"}
!2972 = distinct !{!2972, !2971, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir10AsmOperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 0"}
!2973 = distinct !{!2973, !2971, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir10AsmOperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 1"}
!2974 = distinct !{!2974, !"_RNvXs1B_NtCsileJQcQObtj_7hir_def3hirNtB6_10AsmOperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!2975 = distinct !{!2975, !2974, !"_RNvXs1B_NtCsileJQcQObtj_7hir_def3hirNtB6_10AsmOperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!2976 = distinct !{!2976, !2974, !"_RNvXs1B_NtCsileJQcQObtj_7hir_def3hirNtB6_10AsmOperandNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!2977 = !{!2942}
!2978 = !{!2943}
!2979 = !{!2945}
!2980 = !{!2946}
!2981 = !{!2945, !2942}
!2982 = !{!2946, !2943}
!2983 = !{!2948}
!2984 = !{!2949}
!2985 = !{!2951}
!2986 = !{!2952}
!2987 = !{!2951, !2948}
!2988 = !{!2952, !2949}
!2989 = !{!2954}
!2990 = !{!2955}
!2991 = !{i8 -1, i8 7}
!2992 = !{!2957}
!2993 = !{!2958}
!2994 = !{!2957, !2958}
!2995 = !{!2960}
!2996 = !{!2961}
!2997 = !{i32 0, i32 1114112}
!2998 = !{!2960, !2961}
!2999 = !{i8 -1, i8 4}
!3000 = !{!2963}
!3001 = !{!2964}
!3002 = !{!2963, !2964}
!3003 = !{!2966}
!3004 = !{!2967}
!3005 = !{!2969}
!3006 = !{!2970}
!3007 = !{!2970, !2966, !2967}
!3008 = !{!2969, !2966, !2967}
!3009 = !{!2972}
!3010 = !{!2973}
!3011 = !{!2975}
!3012 = !{!2976}
!3013 = !{!2975, !2972, !2969}
!3014 = !{!2976, !2973, !2970, !2966, !2967}
!3015 = !{!2976, !2973, !2970}
!3016 = !{!2975, !2972, !2969, !2966, !2967}
!3017 = !{!2966, !2967}
!3018 = distinct !{!3018, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir7BindingNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_"}
!3019 = distinct !{!3019, !3018, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir7BindingNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 0"}
!3020 = distinct !{!3020, !3018, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir7BindingNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 1"}
!3021 = distinct !{!3021, !"_RNvXs31_NtCsileJQcQObtj_7hir_def3hirNtB6_7BindingNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3022 = distinct !{!3022, !3021, !"_RNvXs31_NtCsileJQcQObtj_7hir_def3hirNtB6_7BindingNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3023 = distinct !{!3023, !3021, !"_RNvXs31_NtCsileJQcQObtj_7hir_def3hirNtB6_7BindingNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3024 = !{!3019}
!3025 = !{!3020}
!3026 = !{!3022}
!3027 = !{!3023}
!3028 = !{!3022, !3019}
!3029 = !{!3023, !3020}
!3030 = distinct !{!3030, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_"}
!3031 = distinct !{!3031, !3030, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 0"}
!3032 = distinct !{!3032, !3030, !"_RNvYNtNtCsileJQcQObtj_7hir_def3hir9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_: argument 1"}
!3033 = distinct !{!3033, !"_RNvXs2F_NtCsileJQcQObtj_7hir_def3hirNtB6_9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3034 = distinct !{!3034, !3033, !"_RNvXs2F_NtCsileJQcQObtj_7hir_def3hirNtB6_9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3035 = distinct !{!3035, !3033, !"_RNvXs2F_NtCsileJQcQObtj_7hir_def3hirNtB6_9StatementNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3036 = !{!3031}
!3037 = !{!3032}
!3038 = !{!3034}
!3039 = !{!3035}
!3040 = !{!3034, !3031}
!3041 = !{!3035, !3032}
!3042 = !{!3034, !3035, !3031, !3032}
!3043 = distinct !{!3043, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3044 = distinct !{!3044, !3043, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3045 = distinct !{!3045, !3043, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3046 = distinct !{!3046, !"_RNvXs10_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3047 = distinct !{!3047, !3046, !"_RNvXs10_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3048 = distinct !{!3048, !3046, !"_RNvXs10_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_11LifetimeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3049 = !{!3044}
!3050 = !{!3045}
!3051 = !{!3047}
!3052 = !{!3048}
!3053 = !{i32 0, i32 14}
!3054 = !{!3047, !3044}
!3055 = !{!3048, !3045}
!3056 = distinct !{!3056, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3057 = distinct !{!3057, !3056, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3058 = distinct !{!3058, !3056, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3059 = distinct !{!3059, !"_RNvXsU_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3060 = distinct !{!3060, !3059, !"_RNvXsU_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3061 = distinct !{!3061, !3059, !"_RNvXsU_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7TypeRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3062 = distinct !{!3062, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1g_"}
!3063 = distinct !{!3063, !3062, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1g_: argument 0"}
!3064 = distinct !{!3064, !3062, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1g_: argument 1"}
!3065 = distinct !{!3065, !"_RNvXsO_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7RefTypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3066 = distinct !{!3066, !3065, !"_RNvXsO_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7RefTypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3067 = distinct !{!3067, !3065, !"_RNvXsO_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7RefTypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3068 = distinct !{!3068, !"_RNvXsC_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_6FnTypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3069 = distinct !{!3069, !3068, !"_RNvXsC_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_6FnTypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3070 = distinct !{!3070, !3068, !"_RNvXsC_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_6FnTypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3071 = distinct !{!3071, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_"}
!3072 = distinct !{!3072, !3071, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_: argument 0"}
!3073 = distinct !{!3073, !3071, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_: argument 1"}
!3074 = distinct !{!3074, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_"}
!3075 = distinct !{!3075, !3074, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_: argument 0"}
!3076 = distinct !{!3076, !3074, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_: argument 1"}
!3077 = distinct !{!3077, !"_RNvXs6y_CsileJQcQObtj_7hir_defNtB6_11TypeParamIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3078 = distinct !{!3078, !3077, !"_RNvXs6y_CsileJQcQObtj_7hir_defNtB6_11TypeParamIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3079 = distinct !{!3079, !3077, !"_RNvXs6y_CsileJQcQObtj_7hir_defNtB6_11TypeParamIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3080 = distinct !{!3080, !"_RNvXs6o_CsileJQcQObtj_7hir_defNtB6_18TypeOrConstParamIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3081 = distinct !{!3081, !3080, !"_RNvXs6o_CsileJQcQObtj_7hir_defNtB6_18TypeOrConstParamIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3082 = distinct !{!3082, !3080, !"_RNvXs6o_CsileJQcQObtj_7hir_defNtB6_18TypeOrConstParamIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3083 = !{!3057}
!3084 = !{!3058}
!3085 = !{!3060}
!3086 = !{!3061}
!3087 = !{!3060, !3057}
!3088 = !{!3061, !3058}
!3089 = !{!3063}
!3090 = !{!3064}
!3091 = !{!3064, !3061, !3058}
!3092 = !{!3063, !3060, !3057}
!3093 = !{!3066}
!3094 = !{!3067}
!3095 = !{!3067, !3060, !3061, !3057, !3058}
!3096 = !{!3066, !3060, !3061, !3057, !3058}
!3097 = !{!3069}
!3098 = !{!3070}
!3099 = !{!3070, !3060, !3061, !3057, !3058}
!3100 = !{!3069, !3060, !3061, !3057, !3058}
!3101 = !{!3069, !3070, !3060, !3061, !3057, !3058}
!3102 = !{!3060, !3061, !3057, !3058}
!3103 = !{!3072}
!3104 = !{!3073}
!3105 = !{!3073, !3061, !3058}
!3106 = !{!3072, !3060, !3057}
!3107 = !{!3075}
!3108 = !{!3076}
!3109 = !{!3076, !3061, !3058}
!3110 = !{!3075, !3060, !3057}
!3111 = !{!3078}
!3112 = !{!3079}
!3113 = !{!3081}
!3114 = !{!3082}
!3115 = !{!3081, !3078, !3060, !3057}
!3116 = !{!3082, !3079, !3061, !3058}
!3117 = distinct !{!3117, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3118 = distinct !{!3118, !3117, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3119 = distinct !{!3119, !3117, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3120 = distinct !{!3120, !"_RNvXs16_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3121 = distinct !{!3121, !3120, !"_RNvXs16_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3122 = distinct !{!3122, !3120, !"_RNvXs16_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9TypeBoundNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3123 = distinct !{!3123, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def"}
!3124 = distinct !{!3124, !3123, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def: argument 0"}
!3125 = distinct !{!3125, !3123, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def: argument 1"}
!3126 = distinct !{!3126, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_"}
!3127 = distinct !{!3127, !3126, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_: argument 0"}
!3128 = distinct !{!3128, !3126, !"_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_: argument 1"}
!3129 = distinct !{!3129, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3130 = distinct !{!3130, !3129, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3131 = distinct !{!3131, !3129, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3132 = distinct !{!3132, !"_RNvXs1c_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3133 = distinct !{!3133, !3132, !"_RNvXs1c_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3134 = distinct !{!3134, !3132, !"_RNvXs1c_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3135 = !{!3118}
!3136 = !{!3119}
!3137 = !{!3121}
!3138 = !{!3122}
!3139 = !{!3121, !3118}
!3140 = !{!3122, !3119}
!3141 = !{!3124}
!3142 = !{!3125}
!3143 = !{!3125, !3122, !3119}
!3144 = !{!3124, !3121, !3118}
!3145 = !{!3127}
!3146 = !{!3128}
!3147 = !{!3128, !3122, !3119}
!3148 = !{!3127, !3121, !3118}
!3149 = !{!3130}
!3150 = !{!3131}
!3151 = !{!3133}
!3152 = !{!3134}
!3153 = !{!3133, !3130}
!3154 = !{!3134, !3131}
!3155 = distinct !{!3155, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3156 = distinct !{!3156, !3155, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3157 = distinct !{!3157, !3155, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3158 = distinct !{!3158, !"_RNvXs1c_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3159 = distinct !{!3159, !3158, !"_RNvXs1c_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3160 = distinct !{!3160, !3158, !"_RNvXs1c_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB6_9UseArgRefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3161 = !{!3156}
!3162 = !{!3157}
!3163 = !{!3159}
!3164 = !{!3160}
!3165 = !{!3159, !3156}
!3166 = !{!3160, !3157}
!3167 = distinct !{!3167, !"_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdENtNtB7_3cmp9PartialEq2neB1d_"}
!3168 = distinct !{!3168, !3167, !"_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdENtNtB7_3cmp9PartialEq2neB1d_: argument 0"}
!3169 = distinct !{!3169, !3167, !"_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdENtNtB7_3cmp9PartialEq2neB1d_: argument 1"}
!3170 = distinct !{!3170, !"_RNvYNtCsileJQcQObtj_7hir_def11AssocItemIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_"}
!3171 = distinct !{!3171, !3170, !"_RNvYNtCsileJQcQObtj_7hir_def11AssocItemIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_: argument 0"}
!3172 = distinct !{!3172, !3170, !"_RNvYNtCsileJQcQObtj_7hir_def11AssocItemIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_: argument 1"}
!3173 = distinct !{!3173, !"_RNvXs8q_CsileJQcQObtj_7hir_defNtB6_11AssocItemIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3174 = distinct !{!3174, !3173, !"_RNvXs8q_CsileJQcQObtj_7hir_defNtB6_11AssocItemIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3175 = distinct !{!3175, !3173, !"_RNvXs8q_CsileJQcQObtj_7hir_defNtB6_11AssocItemIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3176 = !{!3168}
!3177 = !{!3169}
!3178 = !{!3171}
!3179 = !{!3172}
!3180 = !{!3174}
!3181 = !{!3175}
!3182 = !{!3174, !3171, !3168}
!3183 = !{!3175, !3172, !3169}
!3184 = distinct !{!3184, !"_RNvXsi_NtCshzWfHUSfYae_4core5tupleTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def7MacroIdINtCs83ee1IJTiSq_6either6EitherNtBB_11MacroCallIdNtB1d_19BuiltinDeriveImplIdEENtNtB7_3cmp9PartialEq2neB1d_"}
!3185 = distinct !{!3185, !3184, !"_RNvXsi_NtCshzWfHUSfYae_4core5tupleTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def7MacroIdINtCs83ee1IJTiSq_6either6EitherNtBB_11MacroCallIdNtB1d_19BuiltinDeriveImplIdEENtNtB7_3cmp9PartialEq2neB1d_: argument 0"}
!3186 = distinct !{!3186, !3184, !"_RNvXsi_NtCshzWfHUSfYae_4core5tupleTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def7MacroIdINtCs83ee1IJTiSq_6either6EitherNtBB_11MacroCallIdNtB1d_19BuiltinDeriveImplIdEENtNtB7_3cmp9PartialEq2neB1d_: argument 1"}
!3187 = distinct !{!3187, !"_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_"}
!3188 = distinct !{!3188, !3187, !"_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_: argument 0"}
!3189 = distinct !{!3189, !3187, !"_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_: argument 1"}
!3190 = distinct !{!3190, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3191 = distinct !{!3191, !3190, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3192 = distinct !{!3192, !3190, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3193 = distinct !{!3193, !"_RNvYINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1e_"}
!3194 = distinct !{!3194, !3193, !"_RNvYINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1e_: argument 0"}
!3195 = distinct !{!3195, !3193, !"_RNvYINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1e_: argument 1"}
!3196 = distinct !{!3196, !"_RNvXsq_Cs83ee1IJTiSq_6eitherINtB5_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1k_"}
!3197 = distinct !{!3197, !3196, !"_RNvXsq_Cs83ee1IJTiSq_6eitherINtB5_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1k_: argument 0"}
!3198 = distinct !{!3198, !3196, !"_RNvXsq_Cs83ee1IJTiSq_6eitherINtB5_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1k_: argument 1"}
!3199 = !{!3185}
!3200 = !{!3186}
!3201 = !{!3188}
!3202 = !{!3189}
!3203 = !{!3191}
!3204 = !{!3192}
!3205 = !{!3191, !3188, !3185}
!3206 = !{!3192, !3189, !3186}
!3207 = !{!3194}
!3208 = !{!3195}
!3209 = !{!3197}
!3210 = !{!3198}
!3211 = !{!3197, !3194, !3185}
!3212 = !{!3198, !3195, !3186}
!3213 = !{!"branch_weights", i32 2146410443, i32 1073205}
!3214 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!3215 = distinct !{!3215, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor18on_anon_const_expr"}
!3216 = distinct !{!3216, !3215, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor18on_anon_const_expr: argument 0"}
!3217 = !{!3216}
!3218 = distinct !{!3218, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor6on_pat"}
!3219 = distinct !{!3219, !3218, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor6on_pat: argument 0"}
!3220 = !{!3219}
!3221 = distinct !{!3221, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor7on_expr"}
!3222 = distinct !{!3222, !3221, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor7on_expr: argument 0"}
!3223 = !{!3222}
!3224 = distinct !{!3224, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor7on_type"}
!3225 = distinct !{!3225, !3224, !"_RNvXs1_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_16ExprScopeVisitorNtB7_12StoreVisitor7on_type: argument 0"}
!3226 = !{!3225}
!3227 = distinct !{!3227, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3228 = distinct !{!3228, !3227, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3229 = distinct !{!3229, !3227, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3230 = distinct !{!3230, !"_RNvXsc_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_9ScopeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3231 = distinct !{!3231, !3230, !"_RNvXsc_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_9ScopeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3232 = distinct !{!3232, !3230, !"_RNvXsc_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_9ScopeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3233 = distinct !{!3233, !"_RNvXsg_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_9ScopeKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3234 = distinct !{!3234, !3233, !"_RNvXsg_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_9ScopeKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3235 = distinct !{!3235, !3233, !"_RNvXsg_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_9ScopeKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3236 = distinct !{!3236, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope10ScopeEntryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_"}
!3237 = distinct !{!3237, !3236, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope10ScopeEntryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 0"}
!3238 = distinct !{!3238, !3236, !"_RNvYNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope10ScopeEntryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB8_: argument 1"}
!3239 = distinct !{!3239, !"_RNvXs8_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ScopeEntryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3240 = distinct !{!3240, !3239, !"_RNvXs8_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ScopeEntryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3241 = distinct !{!3241, !3239, !"_RNvXs8_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ScopeEntryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3242 = !{!3228}
!3243 = !{!3229}
!3244 = !{!3231}
!3245 = !{!3232}
!3246 = !{!3231, !3228}
!3247 = !{!3232, !3229}
!3248 = !{!3234}
!3249 = !{!3235}
!3250 = !{i32 0, i32 6}
!3251 = !{!3234, !3231, !3228}
!3252 = !{!3235, !3232, !3229}
!3253 = !{!3234, !3235, !3231, !3232, !3228, !3229}
!3254 = !{!3237}
!3255 = !{!3238}
!3256 = !{!3240}
!3257 = !{!3241}
!3258 = !{!3240, !3237}
!3259 = !{!3241, !3238}
!3260 = distinct !{!3260, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsileJQcQObtj_7hir_def"}
!3261 = distinct !{!3261, !3260, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsileJQcQObtj_7hir_def: argument 0"}
!3262 = distinct !{!3262, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsileJQcQObtj_7hir_def"}
!3263 = distinct !{!3263, !3262, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsileJQcQObtj_7hir_def: argument 0"}
!3264 = distinct !{!3264, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerEECsileJQcQObtj_7hir_def"}
!3265 = distinct !{!3265, !3264, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerEECsileJQcQObtj_7hir_def: argument 0"}
!3266 = distinct !{!3266, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def"}
!3267 = distinct !{!3267, !3266, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def: argument 0"}
!3268 = distinct !{!3268, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsileJQcQObtj_7hir_def"}
!3269 = distinct !{!3269, !3268, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsileJQcQObtj_7hir_def: argument 0"}
!3270 = distinct !{!3270, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsileJQcQObtj_7hir_def"}
!3271 = distinct !{!3271, !3270, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsileJQcQObtj_7hir_def: argument 0"}
!3272 = distinct !{!3272, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsileJQcQObtj_7hir_def"}
!3273 = distinct !{!3273, !3272, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsileJQcQObtj_7hir_def: argument 0"}
!3274 = distinct !{!3274, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerEECsileJQcQObtj_7hir_def"}
!3275 = distinct !{!3275, !3274, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerEECsileJQcQObtj_7hir_def: argument 0"}
!3276 = distinct !{!3276, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def"}
!3277 = distinct !{!3277, !3276, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def: argument 0"}
!3278 = !{!3261}
!3279 = !{!3263}
!3280 = !{!3265}
!3281 = !{!3267}
!3282 = !{!3267, !3265, !3263, !3261, !3269}
!3283 = !{!3267, !3265, !3263, !3261}
!3284 = !{!3271}
!3285 = !{!3273}
!3286 = !{!3275}
!3287 = !{!3277}
!3288 = !{!3277, !3275, !3273, !3271, !3269}
!3289 = !{!3277, !3275, !3273, !3271}
!3290 = distinct !{!3290, !"_RNvXsc_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_10NormalPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3291 = distinct !{!3291, !3290, !"_RNvXsc_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_10NormalPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3292 = distinct !{!3292, !3290, !"_RNvXsc_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_10NormalPathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3293 = distinct !{!3293, !"_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_3cmp9PartialEq2neBK_"}
!3294 = distinct !{!3294, !3293, !"_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_3cmp9PartialEq2neBK_: argument 0"}
!3295 = distinct !{!3295, !3293, !"_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_3cmp9PartialEq2neBK_: argument 1"}
!3296 = distinct !{!3296, !"_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_3cmp9PartialEq2eqBQ_"}
!3297 = distinct !{!3297, !3296, !"_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_3cmp9PartialEq2eqBQ_: argument 0"}
!3298 = distinct !{!3298, !3296, !"_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_3cmp9PartialEq2eqBQ_: argument 1"}
!3299 = distinct !{!3299, !"_RNvXsq_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_11GenericArgsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3300 = distinct !{!3300, !3299, !"_RNvXsq_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_11GenericArgsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3301 = distinct !{!3301, !3299, !"_RNvXsq_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_11GenericArgsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3302 = distinct !{!3302, !"_RNvXs5_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_14LangItemTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3303 = distinct !{!3303, !3302, !"_RNvXs5_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_14LangItemTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3304 = distinct !{!3304, !3302, !"_RNvXs5_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_14LangItemTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3305 = distinct !{!3305, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!3306 = distinct !{!3306, !3305, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!3307 = distinct !{!3307, !3305, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!3308 = !{!3291}
!3309 = !{!3292}
!3310 = !{!3294}
!3311 = !{!3295}
!3312 = !{!3297}
!3313 = !{!3298}
!3314 = !{!3297, !3294}
!3315 = !{!3298, !3295, !3291, !3292}
!3316 = !{!3298, !3295}
end_hunk_1
