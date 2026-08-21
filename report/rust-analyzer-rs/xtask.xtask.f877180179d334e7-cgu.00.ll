Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.00?download=true
inline.NumInlined: 1092
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8dedup_byNCNvMs5_B5_Bv_5dedup0ECslkzCjlEuW1f_5xtask:bb.a
  %.sroa.5.034 = phi i64 [ %.sroa.5.0, %bb.d ], [ %.sroa.5.032, %.preheader ] ; 2 uses
  %.sroa.11.033 = phi i64 [ %.sroa.11.1, %bb.d ], [ %.sroa.0.031, %.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.034 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.033 ; 3 uses
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load i64, ptr %i.q, align 8, !noundef !8 ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.val12 = load i64, ptr %i.r, align 8, !noundef !8
  %i.s = icmp eq i64 %.val10, %.val12
  br i1 %i.s, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19: ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.p, i64 -16
  %.val11 = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %bcmp.i.i.i18 = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val11, i64 %.val10), !alias.scope !55
  %i.u = icmp eq i32 %bcmp.i.i.i18, 0
  br i1 %i.u, label %bb.d, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19.thread: ; preds = %.lr.ph, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.v = add i64 %.sroa.11.033, 1
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19.thread
  %.sroa.11.1 = phi i64 [ %i.v, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19.thread ], [ %.sroa.11.033, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecReE5dedup0CslkzCjlEuW1f_5xtask.exit19 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.034, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE8dedup_byNCNvMs5_B5_Bv_5dedup0EBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread
  %.sroa.0.031 = phi i64 [ 1, %bb.b ], [ %i.q, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.031 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !69, !noalias !70, !noundef !8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -16
  %.val3.i.i = load i64, ptr %i.i, align 8, !alias.scope !70, !noalias !69, !noundef !8
  %i.j = icmp eq i64 %.val1.i.i, %.val3.i.i
  br i1 %i.j, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 -24
  %.val2.i.i = load ptr, ptr %i.k, align 8, !alias.scope !70, !noalias !69, !nonnull !8, !noundef !8
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !69, !noalias !70, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i), !alias.scope !71, !noalias !75
  %i.l = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.l, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = getelementptr i8, ptr %i.g, i64 -8
  %.val4.i.i = load i8, ptr %i.m, align 8, !range !76, !alias.scope !69, !noalias !70, !noundef !8
  %.val5.i.i = load i8, ptr %i.n, align 8, !range !76, !alias.scope !70, !noalias !69, !noundef !8
  %i.o = icmp eq i8 %.val4.i.i, %.val5.i.i
  br i1 %i.o, label %.preheader, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread

.preheader:                                       ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit
  %.sroa.5.032 = add nuw i64 %.sroa.0.031, 1      ; 2 uses
  %i.p = icmp ult i64 %.sroa.5.032, %i.b
  br i1 %i.p, label %.lr.ph, label %._crit_edge

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread: ; preds = %bb.c, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit
  %i.q = add nuw nsw i64 %.sroa.0.031, 1          ; 2 uses
  %.not = icmp eq i64 %i.q, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.031, %.preheader ], [ %.sroa.11.1, %bb.d ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.sroa.5.034 = phi i64 [ %.sroa.5.0, %bb.d ], [ %.sroa.5.032, %.preheader ] ; 2 uses
  %.sroa.11.033 = phi i64 [ %.sroa.11.1, %bb.d ], [ %.sroa.0.031, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.034 ; 4 uses
  %i.s = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.11.033 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i10 = load i64, ptr %i.t, align 8, !alias.scope !87, !noalias !88, !noundef !8 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -16
  %.val3.i.i11 = load i64, ptr %i.u, align 8, !alias.scope !88, !noalias !87, !noundef !8
  %i.v = icmp eq i64 %.val1.i.i10, %.val3.i.i11
  br i1 %i.v, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i13, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19.thread

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i13: ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %i.s, i64 -24
  %.val2.i.i14 = load ptr, ptr %i.w, align 8, !alias.scope !88, !noalias !87, !nonnull !8, !noundef !8
  %.val.i.i15 = load ptr, ptr %i.r, align 8, !alias.scope !87, !noalias !88, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i16 = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i15, ptr nonnull readonly %.val2.i.i14, i64 %.val1.i.i10), !alias.scope !89, !noalias !93
  %i.x = icmp eq i32 %bcmp.i.i.i.i16, 0
  br i1 %i.x, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i13
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = getelementptr i8, ptr %i.s, i64 -8
  %.val4.i.i17 = load i8, ptr %i.y, align 8, !range !76, !alias.scope !87, !noalias !88, !noundef !8
  %.val5.i.i18 = load i8, ptr %i.z, align 8, !range !76, !alias.scope !88, !noalias !87, !noundef !8
  %i.aa = icmp eq i8 %.val4.i.i17, %.val5.i.i18
  br i1 %i.aa, label %bb.d, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19.thread: ; preds = %.lr.ph, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCslkzCjlEuW1f_5xtask.exit.i.i13, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.ab = add i64 %.sroa.11.033, 1
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19.thread
  %.sroa.11.1 = phi i64 [ %i.ab, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19.thread ], [ %.sroa.11.033, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecTReNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src7EditionEE5dedup0BS_.exit19 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.034, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE5drainINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEECslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECslkzCjlEuW1f_5xtask(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE5drainINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEECslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECslkzCjlEuW1f_5xtask(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterBG_Kj2_EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.57 = alloca [32 x i8], align 8           ; 7 uses
  %.val = load i64, ptr %1, align 8, !noundef !8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %i.b = sub nuw i64 %.val5, %.val                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94, !noundef !8 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !97, !alias.scope !94, !noundef !8
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.c, align 8
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57)
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.57, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.57.0..sroa_idx, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.k = icmp ule i64 %.val, %.val5
  tail call void @llvm.assume(i1 %i.k)
  %.not5.i.i.i = icmp eq i64 %.val, %.val5
  br i1 %.not5.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit
  %.neg = add i64 %.val, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.l = add nuw nsw i64 %.val, 1
  %i.m = icmp ult i64 %.val, 2
  tail call void @llvm.assume(i1 %i.m)
  %.sroa.57.16..sroa_stride.prol = shl nuw nsw i64 %.val, 4
  %.sroa.57.16..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.sroa.57, i64 %.sroa.57.16..sroa_stride.prol ; 2 uses
  %i.n = load ptr, ptr %.sroa.57.16..sroa_idx.prol, align 8, !alias.scope !104, !noalias !105
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.57.16..sroa_idx.prol, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !104, !noalias !105
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store ptr %i.n, ptr %i.q, align 8, !noalias !113, !captures !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %i.r, align 8, !noalias !123
  %i.s = add i64 %i.h, 1                          ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.unr = phi i64 [ %i.h, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.unr9 = phi i64 [ %.val, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ] ; 2 uses
  %i.t = icmp eq i64 %.val5, %.neg
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.u = or i64 %.unr9, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.57, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !104, !noalias !105
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.57, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !104, !noalias !105
  %.not.i.i.i.1 = icmp eq i64 %i.u, %.val5
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %i.z = phi i64 [ %.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i.i ] ; 3 uses
  %i.aa = phi i64 [ %.unr9, %.lr.ph.i.i.i.preheader.new ], [ %i.u, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.57.16..sroa_stride = shl nuw nsw i64 %i.aa, 4
  %.sroa.57.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.57, i64 %.sroa.57.16..sroa_stride ; 2 uses
  %i.ab = load ptr, ptr %.sroa.57.16..sroa_idx, align 8, !alias.scope !104, !noalias !105
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.57.16..sroa_idx, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !104, !noalias !105
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.z ; 2 uses
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !113, !captures !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !noalias !123
  %i.ag = icmp eq i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr [16 x i8], ptr %i.j, i64 %i.z ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  store ptr %i.w, ptr %i.ai, align 8, !noalias !113, !captures !28
  %i.aj = getelementptr i8, ptr %i.ah, i64 24
  store i64 %i.y, ptr %i.aj, align 8, !noalias !123
  %i.ak = add i64 %i.z, 2                         ; 2 uses
  br i1 %.not.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit
  %.val2.i.i.i = phi i64 [ %i.h, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i.i ]
  store i64 %.val2.i.i.i, ptr %i.c, align 8, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterBG_EEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator9size_hintCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !125, !noundef !8 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !97, !alias.scope !125, !noundef !8
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2M_3VecB1s_E14extend_trustedBP_E0E0ECslkzCjlEuW1f_5xtask(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #25
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b, %bb.a
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(208) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscAsMj0W7j8b_3std9backtrace11BytesOrWideEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std9backtrace11BytesOrWideECslkzCjlEuW1f_5xtask.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std9backtrace11BytesOrWideECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std9backtrace11BytesOrWideECslkzCjlEuW1f_5xtask.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVectENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std9backtrace11BytesOrWideECslkzCjlEuW1f_5xtask.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtBG_6borrow3CoweEEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !129, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !129, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !132, !alias.scope !133, !noalias !129, !noundef !8
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.c, !noalias !129

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !132, !alias.scope !138, !noalias !129, !noundef !8
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit8.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit8.i.i unwind label %bb.e, !noalias !129

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !129
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtNtBG_6borrow3CoweEEECslkzCjlEuW1f_5xtask.exit unwind label %bb.f

_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtNtBG_6borrow3CoweEEECslkzCjlEuW1f_5xtask.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !141, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !141, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECslkzCjlEuW1f_5xtask.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECslkzCjlEuW1f_5xtask.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !144, !alias.scope !145, !noalias !141, !noundef !8
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECslkzCjlEuW1f_5xtask.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !150, !noalias !141, !noundef !8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECslkzCjlEuW1f_5xtask.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro9TokenTreeECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.d, !noalias !141

end_hunk_0
