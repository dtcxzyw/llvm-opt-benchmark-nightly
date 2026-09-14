Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE11resize_withNCNCINvMs0_NtCsinALYEoamBN_6bitvec3vecNtB15_6BitVec14do_reservationNvB2_7reserveE00ECs607s0NAIaWN_7segment:bb.a
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE8truncateCs607s0NAIaWN_7segment.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !15, !alias.scope !1385, !noundef !14
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !16

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !1386, !noundef !14
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.j = phi i64 [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i ], [ %i.b, %bb.b ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %.in.i, align 8, !alias.scope !1386, !nonnull !14, !noundef !14
  %i.l = shl i64 %i.j, 3
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %i.m = shl i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i.i, i8 0, i64 %i.m, i1 false), !noalias !1387
  %i.n = add i64 %i.j, %i.e
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE8truncateCs607s0NAIaWN_7segment.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE8truncateCs607s0NAIaWN_7segment.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBT_16LiveReloadResult5merge0EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1398, !noalias !1399, !noundef !14 ; 12 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1398, !noalias !1399, !nonnull !14, !noundef !14 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1400, !nonnull !14, !noundef !14 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !1400, !noundef !14 ; 6 uses
  switch i64 %i.j, label %.lr.ph.i.i.i.preheader.i [
    i64 0, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit
    i64 1, label %.preheader33.split.us46.i
  ]

.preheader33.split.us46.i:                        ; preds = %.preheader33.i
  %.val14.i.i.i.us51.i = load i32, ptr %i.h, align 4, !alias.scope !1401, !noalias !1402, !noundef !14 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.k = icmp samesign ult i64 %i.b, 4
  br i1 %i.k, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader, label %.preheader33.split.us46.i.new

.preheader33.split.us46.i.new:                    ; preds = %.preheader33.split.us46.i
  %unroll_iter = and i64 %i.b, 2305843009213693948
  br label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3, %.preheader33.split.us46.i.new
  %.sroa.0.0.us47.i = phi i64 [ 0, %.preheader33.split.us46.i.new ], [ %i.s, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader33.split.us46.i.new ], [ %niter.next.3, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.us47.i
  %.val11.us48.i = load i32, ptr %i.l, align 4, !noalias !1400
  %.not.us52.i = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i
  br i1 %.not.us52.i, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i
  %i.m = or disjoint i64 %.sroa.0.0.us47.i, 1     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  %.val11.us48.i.1 = load i32, ptr %i.n, align 4, !noalias !1400
  %.not.us52.i.1 = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.1
  br i1 %.not.us52.i.1, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i
  %i.o = or disjoint i64 %.sroa.0.0.us47.i, 2     ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.o
  %.val11.us48.i.2 = load i32, ptr %i.p, align 4, !noalias !1400
  %.not.us52.i.2 = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.2
  br i1 %.not.us52.i.2, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1
  %i.q = or disjoint i64 %.sroa.0.0.us47.i, 3     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.q
  %.val11.us48.i.3 = load i32, ptr %i.r, align 4, !noalias !1400
  %.not.us52.i.3 = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.3
  br i1 %.not.us52.i.3, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2
  %i.s = add nuw nsw i64 %.sroa.0.0.us47.i, 4     ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.preheader33.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i
  %.sroa.0.0.i = phi i64 [ %i.ax, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i ], [ 0, %.preheader33.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load i32, ptr %i.t, align 4, !noalias !1400 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.sroa.05.016.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.u = lshr i64 %.sroa.01.017.i.i.i.i, 1        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %.sroa.05.016.i.i.i.i ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.j
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %.val12.i.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !1401, !noalias !1402, !noundef !14
  %i.y = icmp ugt i32 %.val12.i.i.i.i, %.val11.i
  %i.z = select i1 %i.y, i64 %.sroa.05.016.i.i.i.i, i64 %i.v, !unpredictable !14 ; 2 uses
  %i.aa = sub nuw nsw i64 %.sroa.01.017.i.i.i.i, %i.u ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.z
  %.val14.i.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !1401, !noalias !1402, !noundef !14
  %.not.i = icmp eq i32 %.val14.i.i.i.i, %.val11.i
  br i1 %.not.i, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i, !prof !1403

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i
  %.us-phi60.i = phi i64 [ %.sroa.0.0.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i ], [ %i.q, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2 ], [ %.sroa.0.0.us47.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i ], [ %i.m, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i ], [ %i.o, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1 ], [ %.sroa.0.0.us47.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil ] ; 12 uses
  %.sroa.7.062.i = add nuw i64 %.us-phi60.i, 1    ; 4 uses
  %i.ad = icmp ult i64 %.sroa.7.062.i, %i.b
  br i1 %i.ad, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  switch i64 %i.j, label %.lr.ph.i [
    i64 0, label %.lr.ph.i.us.preheader
    i64 1, label %.lr.ph.i.us7.preheader
  ]

.lr.ph.i.us7.preheader:                           ; preds = %.lr.ph.i.preheader
  %i.ae = add nsw i64 %i.b, -2
  %i.af = sub i64 %.us-phi60.i, %i.b
  %i.ag = and i64 %i.af, 1
  %lcmp.mod57.not.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod57.not.not, label %.lr.ph.i.us7.prol, label %.lr.ph.i.us7.prol.loopexit

.lr.ph.i.us7.prol:                                ; preds = %.lr.ph.i.us7.preheader
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.062.i
  %.val9.i.us10.prol = load i32, ptr %i.ah, align 4, !noalias !1400 ; 2 uses
  %.val14.i.i.i15.i.us13.prol = load i32, ptr %i.h, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i.us14.prol = icmp eq i32 %.val14.i.i.i15.i.us13.prol, %.val9.i.us10.prol
  br i1 %.not32.i.us14.prol, label %.lr.ph.i.us7.prol.loopexit.unr-lcssa, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol: ; preds = %.lr.ph.i.us7.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.us-phi60.i
  store i32 %.val9.i.us10.prol, ptr %i.ai, align 4, !noalias !1400
  %i.aj = add i64 %.us-phi60.i, 1
  br label %.lr.ph.i.us7.prol.loopexit.unr-lcssa

.lr.ph.i.us7.prol.loopexit.unr-lcssa:             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol, %.lr.ph.i.us7.prol
  %.sroa.13.1.i.us16.prol = phi i64 [ %i.aj, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol ], [ %.us-phi60.i, %.lr.ph.i.us7.prol ] ; 2 uses
  %.sroa.7.0.i.us17.prol = add nuw i64 %.us-phi60.i, 2
  br label %.lr.ph.i.us7.prol.loopexit

.lr.ph.i.us7.prol.loopexit:                       ; preds = %.lr.ph.i.us7.prol.loopexit.unr-lcssa, %.lr.ph.i.us7.preheader
  %.sroa.13.1.i.us16.lcssa.unr = phi i64 [ poison, %.lr.ph.i.us7.preheader ], [ %.sroa.13.1.i.us16.prol, %.lr.ph.i.us7.prol.loopexit.unr-lcssa ]
  %.sroa.7.064.i.us8.unr = phi i64 [ %.sroa.7.062.i, %.lr.ph.i.us7.preheader ], [ %.sroa.7.0.i.us17.prol, %.lr.ph.i.us7.prol.loopexit.unr-lcssa ]
  %.sroa.13.063.i.us9.unr = phi i64 [ %.us-phi60.i, %.lr.ph.i.us7.preheader ], [ %.sroa.13.1.i.us16.prol, %.lr.ph.i.us7.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %i.ae, %.us-phi60.i
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i.us7

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.al = shl nsw i64 %.us-phi60.i, 2             ; 2 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.al
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep30 = getelementptr i8, ptr %i.am, i64 4
  %i.an = add nsw i64 %i.b, -1                    ; 2 uses
  %i.ao = sub nsw i64 %i.an, %.us-phi60.i
  %i.ap = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep30, i64 %i.ap, i1 false), !noalias !1400
  br label %._crit_edge.i

.lr.ph.i.us7:                                     ; preds = %.lr.ph.i.us7.prol.loopexit, %bb.b
  %.sroa.7.064.i.us8 = phi i64 [ %.sroa.7.0.i.us17.1, %bb.b ], [ %.sroa.7.064.i.us8.unr, %.lr.ph.i.us7.prol.loopexit ] ; 3 uses
  %.sroa.13.063.i.us9 = phi i64 [ %.sroa.13.1.i.us16.1, %bb.b ], [ %.sroa.13.063.i.us9.unr, %.lr.ph.i.us7.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.064.i.us8
  %.val9.i.us10 = load i32, ptr %i.aq, align 4, !noalias !1400 ; 2 uses
  %.val14.i.i.i15.i.us13 = load i32, ptr %i.h, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i.us14 = icmp eq i32 %.val14.i.i.i15.i.us13, %.val9.i.us10
  br i1 %.not32.i.us14, label %.lr.ph.i.us7.1, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15: ; preds = %.lr.ph.i.us7
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.063.i.us9
  store i32 %.val9.i.us10, ptr %i.ar, align 4, !noalias !1400
  %i.as = add i64 %.sroa.13.063.i.us9, 1
  br label %.lr.ph.i.us7.1

.lr.ph.i.us7.1:                                   ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15, %.lr.ph.i.us7
  %.sroa.13.1.i.us16 = phi i64 [ %i.as, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15 ], [ %.sroa.13.063.i.us9, %.lr.ph.i.us7 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.064.i.us8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.val9.i.us10.1 = load i32, ptr %i.au, align 4, !noalias !1400 ; 2 uses
  %.val14.i.i.i15.i.us13.1 = load i32, ptr %i.h, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i.us14.1 = icmp eq i32 %.val14.i.i.i15.i.us13.1, %.val9.i.us10.1
  br i1 %.not32.i.us14.1, label %bb.b, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1: ; preds = %.lr.ph.i.us7.1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.1.i.us16
  store i32 %.val9.i.us10.1, ptr %i.av, align 4, !noalias !1400
  %i.aw = add i64 %.sroa.13.1.i.us16, 1
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1, %.lr.ph.i.us7.1
  %.sroa.13.1.i.us16.1 = phi i64 [ %i.aw, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1 ], [ %.sroa.13.1.i.us16, %.lr.ph.i.us7.1 ] ; 2 uses
  %.sroa.7.0.i.us17.1 = add nuw nsw i64 %.sroa.7.064.i.us8, 2 ; 2 uses
  %exitcond.not.i.us18.1 = icmp eq i64 %.sroa.7.0.i.us17.1, %i.b
  br i1 %exitcond.not.i.us18.1, label %._crit_edge.i, label %.lr.ph.i.us7

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i
  %i.ax = add nuw nsw i64 %.sroa.0.0.i, 1         ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.b
  br i1 %i.ay, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %.lr.ph.i.i.i.preheader.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.us7.prol.loopexit, %bb.b, %bb.c, %.lr.ph.i.us.preheader, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.us-phi60.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.c ], [ %i.an, %.lr.ph.i.us.preheader ], [ %.sroa.13.1.i.us16.lcssa.unr, %.lr.ph.i.us7.prol.loopexit ], [ %.sroa.13.1.i.us16.1, %bb.b ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1398, !noalias !1399
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.7.064.i = phi i64 [ %.sroa.7.0.i, %bb.c ], [ %.sroa.7.062.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.13.063.i = phi i64 [ %.sroa.13.1.i, %bb.c ], [ %.us-phi60.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.064.i
  %.val9.i = load i32, ptr %i.az, align 4, !noalias !1400 ; 3 uses
  br label %.lr.ph.i.i.i16.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i, %.lr.ph.i.i.i16.i
  %.sroa.01.017.i.i.i17.i = phi i64 [ %i.bg, %.lr.ph.i.i.i16.i ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.sroa.05.016.i.i.i18.i = phi i64 [ %i.bf, %.lr.ph.i.i.i16.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ba = lshr i64 %.sroa.01.017.i.i.i17.i, 1     ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %.sroa.05.016.i.i.i18.i ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.j
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %.val12.i.i.i19.i = load i32, ptr %i.bd, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %i.be = icmp ugt i32 %.val12.i.i.i19.i, %.val9.i
  %i.bf = select i1 %i.be, i64 %.sroa.05.016.i.i.i18.i, i64 %i.bb, !unpredictable !14 ; 2 uses
  %i.bg = sub nuw nsw i64 %.sroa.01.017.i.i.i17.i, %i.ba ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i.i.i16.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit: ; preds = %.lr.ph.i.i.i16.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf
  %.val14.i.i.i15.i = load i32, ptr %i.bi, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i = icmp eq i32 %.val14.i.i.i15.i, %.val9.i
  br i1 %.not32.i, label %bb.c, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.063.i
  store i32 %.val9.i, ptr %i.bj, align 4, !noalias !1400
  %i.bk = add i64 %.sroa.13.063.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit
  %.sroa.13.1.i = phi i64 [ %i.bk, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i ], [ %.sroa.13.063.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.064.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader: ; preds = %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa, %.preheader33.split.us46.i
  %.sroa.0.0.us47.i.epil.init = phi i64 [ 0, %.preheader33.split.us46.i ], [ %i.s, %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader
  %.sroa.0.0.us47.i.epil = phi i64 [ %i.bm, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil ], [ %.sroa.0.0.us47.i.epil.init, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil ], [ 0, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.us47.i.epil
  %.val11.us48.i.epil = load i32, ptr %i.bl, align 4, !noalias !1400
  %.not.us52.i.epil = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.epil
  br i1 %.not.us52.i.epil, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil
  %i.bm = add nuw nsw i64 %.sroa.0.0.us47.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil, !llvm.loop !1397

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit: ; preds = %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i, %bb.a, %.preheader33.i, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %.val11 = load i32, ptr %i.g, align 4, !noundef !14
  %.val12 = load i32, ptr %i.h, align 4, !noundef !14
  %i.i = icmp eq i32 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %.val.prol = load i32, ptr %i.m, align 4, !noundef !14 ; 2 uses
  %.val10.prol = load i32, ptr %i.o, align 4, !noundef !14
  %i.p = icmp eq i32 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %.val.prol, ptr %i.n, align 4
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
end_hunk_0
