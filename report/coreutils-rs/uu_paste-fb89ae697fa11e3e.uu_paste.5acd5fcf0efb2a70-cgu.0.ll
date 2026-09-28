Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_paste-fb89ae697fa11e3e.uu_paste.5acd5fcf0efb2a70-cgu.0?download=true
inline.NumInlined: 456
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7NkY4QXzcxE_8uu_paste:bb.a
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !189, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !191
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !10, !alias.scope !189, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !189, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !189 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !189, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !189 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #26, !noalias !189, !inline_history !187
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !4, !noalias !189 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4, !noalias !189
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !189
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !195, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !195
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) #23, !noalias !195
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noalias !195, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !14, !noalias !195, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !195, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !195
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !195
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCs7NkY4QXzcxE_8uu_paste5paste(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i8 noundef range(i8 0, 11) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [8192 x i8], align 1              ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 21 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 21 uses
  %i.z = alloca [72 x i8], align 8                ; 44 uses
  %i.aa = alloca [1 x i8], align 1                ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 16 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 12 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.2 = alloca [16 x i8], align 8     ; 2 uses
  %i.af = alloca [24 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val62 = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val63 = load i64, ptr %i.ai, align 8, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !395
  %i.aj = shl i64 %.val63, 4                      ; 4 uses
  %i.ak = icmp ugt i64 %.val63, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.aj, 9223372036854775800
  %or.cond.i.i = or i1 %i.ak, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !396
  %i.am = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 9) 8) #23, !noalias !396 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.49.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i, i64 %i.aj) #25, !noalias !395
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %bb.c
  store i64 %.val63, ptr %i.v, align 8, !noalias !395
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  store ptr %i.am, ptr %i.ao, align 8, !noalias !395
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8, !noalias !395
  br label %.lr.ph.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i: ; preds = %bb.b
  %i.aq = icmp eq i64 %.val63, 0
  tail call void @llvm.assume(i1 %i.aq)
  br label %bb.bi

._crit_edge.i:                                    ; preds = %.backedge.i
  %.sroa.06.0.copyload.pre.i = load i64, ptr %i.v, align 8, !noalias !395 ; 2 uses
  %.sroa.4.0.copyload.pre.i = load ptr, ptr %i.ao, align 8, !noalias !395 ; 4 uses
  %i.ar = icmp ugt i64 %.sroa.06.0.copyload.pre.i, %i.dc
  br i1 %i.ar, label %bb.e, label %bb.bi

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.pre.i) ]
  %i.as = shl nuw i64 %.sroa.06.0.copyload.pre.i, 4 ; 3 uses
  %i.at = icmp eq i64 %i.dc, 0
  br i1 %i.at, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.pre.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !397
  br label %bb.bi

bb.f:                                             ; preds = %bb.e
  %i.au = shl nuw i64 %i.dc, 4                    ; 3 uses
  %i.av = icmp ule i64 %i.au, %i.as
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4.0.copyload.pre.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 16, 0) %i.au) #23, !noalias !397 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.g, label %bb.bi

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #25, !noalias !398
  unreachable

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i, %.backedge.i
  %i.ay = phi ptr [ %i.db, %.backedge.i ], [ %i.am, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ]
  %i.az = phi i64 [ %i.dc, %.backedge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 18 uses
  %.sroa.01.080.i = phi i64 [ %.sroa.01.0.be.i, %.backedge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val62, i64 %.sroa.01.080.i ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !395, !noundef !4
  %i.bc = icmp eq i8 %i.bb, 92
  br i1 %i.bc, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw nsw i64 %.sroa.01.080.i, 1      ; 4 uses
  %.not53.i = icmp ult i64 %i.bd, %.val63
  br i1 %.not53.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !395
  store i64 0, ptr %i.u, align 8, !noalias !395
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !395
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val62, i64 noundef %.val63) #23, !noalias !395
  %i.be = load i64, ptr %i.t, align 8, !range !10, !noalias !395, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !395 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !395 ; 14 uses
  %.not.i59.i = icmp slt i64 %i.bi, 0
  br i1 %.not.i59.i, label %bb.af, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp eq i64 %i.bi, 0                    ; 2 uses
  br i1 %i.bj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit62.thread30.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !399
  %i.bk = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 9) 1) #23, !noalias !399 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.af, label %bb.au

bb.l:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.bd ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !395, !noundef !4
  switch i8 %i.bn, label %bb.m [
    i8 48, label %bb.n
    i8 92, label %bb.o
    i8 110, label %bb.q
    i8 116, label %bb.s
    i8 98, label %bb.u
    i8 102, label %bb.w
    i8 114, label %bb.y
    i8 118, label %bb.aa
  ]

bb.m:                                             ; preds = %bb.l
  %i.bo = sub nuw nsw i64 %.val63, %i.bd          ; 2 uses
  %i.bp = tail call noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7charmap11mb_char_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo) #23, !noalias !395
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bp) ; 6 uses
  %i.bq = add nuw nsw i64 %..i.i, %i.bd
  %i.br = icmp eq i64 %..i.i, 0
  br i1 %i.br, label %bb.ad, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.v, align 8, !range !5, !alias.scope !400, !noalias !401, !noundef !4
  %i.bt = icmp eq i64 %i.az, %i.bs
  br i1 %i.bt, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.bu = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !6

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.o
  store i8 92, ptr %i.bu, align 1, !noalias !395
  %i.bw = load i64, ptr %i.v, align 8, !range !5, !alias.scope !402, !noalias !403, !noundef !4
  %i.bx = icmp eq i64 %i.az, %i.bw
  br i1 %i.bx, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.q:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.by = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.r, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, !prof !6

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i: ; preds = %bb.q
  store i8 10, ptr %i.by, align 1, !noalias !395
  %i.ca = load i64, ptr %i.v, align 8, !range !5, !alias.scope !404, !noalias !405, !noundef !4
  %i.cb = icmp eq i64 %i.az, %i.ca
  br i1 %i.cb, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.s:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.cc = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.t, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i: ; preds = %bb.s
  store i8 9, ptr %i.cc, align 1, !noalias !395
  %i.ce = load i64, ptr %i.v, align 8, !range !5, !alias.scope !406, !noalias !407, !noundef !4
  %i.cf = icmp eq i64 %i.az, %i.ce
  br i1 %i.cf, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.u:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.cg = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.v, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, !prof !6

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i: ; preds = %bb.u
  store i8 8, ptr %i.cg, align 1, !noalias !395
  %i.ci = load i64, ptr %i.v, align 8, !range !5, !alias.scope !408, !noalias !409, !noundef !4
  %i.cj = icmp eq i64 %i.az, %i.ci
  br i1 %i.cj, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.w:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.ck = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, !prof !6

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i: ; preds = %bb.w
  store i8 12, ptr %i.ck, align 1, !noalias !395
  %i.cm = load i64, ptr %i.v, align 8, !range !5, !alias.scope !410, !noalias !411, !noundef !4
  %i.cn = icmp eq i64 %i.az, %i.cm
  br i1 %i.cn, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.y:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.co = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, !prof !6

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i: ; preds = %bb.y
  store i8 13, ptr %i.co, align 1, !noalias !395
  %i.cq = load i64, ptr %i.v, align 8, !range !5, !alias.scope !412, !noalias !413, !noundef !4
  %i.cr = icmp eq i64 %i.az, %i.cq
  br i1 %i.cr, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.aa:                                            ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.cs = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ab, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i, !prof !6

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i: ; preds = %bb.aa
  store i8 11, ptr %i.cs, align 1, !noalias !395
  %i.cu = load i64, ptr %i.v, align 8, !range !5, !alias.scope !414, !noalias !415, !noundef !4
  %i.cv = icmp eq i64 %i.az, %i.cu
  br i1 %i.cv, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.n
  %.sink220.ph.i = phi ptr [ %i.co, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ %i.ck, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ inttoptr (i64 1 to ptr), %bb.n ], [ %i.bu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.by, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ %i.cc, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ %i.cg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ %i.cs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ]
  %.sink.ph.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ 0, %bb.n ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ]
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxShEE8grow_oneCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22, !noalias !395
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.n
  %.sink220.i = phi ptr [ %i.bu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.by, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ %i.cc, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ %i.cg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ %i.ck, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ %i.co, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ %i.cs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ], [ inttoptr (i64 1 to ptr), %bb.n ], [ %.sink220.ph.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i ]
  %.sink.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ], [ 0, %bb.n ], [ %.sink.ph.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i ]
  %i.cw = load ptr, ptr %i.ao, align 8, !noalias !395, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.az ; 2 uses
  store ptr %.sink220.i, ptr %i.cx, align 8, !noalias !395
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.sink.i, ptr %i.cy, align 8, !noalias !395
  %i.cz = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.cz, ptr %i.ap, align 8, !noalias !395
  %i.da = add nuw nsw i64 %.sroa.01.080.i, 2
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i
  %i.db = phi ptr [ %i.di, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i ], [ %i.cw, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i ], [ %i.gk, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i ]
end_hunk_0
