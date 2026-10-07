Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.03?download=true
inline.NumInlined: 260
inline.NumDeleted: 150
begin_hunk_0_@_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsddkiMbsmfqo_5yr_ls:bb.a

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #22
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #22
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() unnamed_addr #4 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls(ptr %i.b)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.f = tail call { i64, ptr } @_RINvNtNtCs9j2PgAuXC7p_12futures_util2io10read_until19read_until_internalQQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB4_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i8 noundef 10, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !729 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 5 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %_RINvNtNtCs9j2PgAuXC7p_12futures_util2io9read_line18read_line_internalQQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB4_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEECsddkiMbsmfqo_5yr_ls.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !730
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !727, !noalias !731, !noundef !6 ; 5 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i64, ptr %i.c, align 8, !alias.scope !728, !noalias !732, !noundef !6 ; 3 uses
  %i.n = sub i64 %i.k, %i.m                       ; 2 uses
  %i.o = icmp ult i64 %i.k, %i.m
  br i1 %i.o, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.k, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24
          to label %bb.k unwind label %bb.e, !noalias !729

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !727, !noalias !731, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.m)
          to label %bb.f unwind label %bb.e, !noalias !729

bb.e:                                             ; preds = %bb.j, %bb.g, %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls(i64 %i.g, ptr %i.i) #19
          to label %bb.m unwind label %bb.l, !noalias !729

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.a, align 8, !range !5, !noalias !730, !noundef !6
  %.not.i = icmp eq i64 %i.t, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !730
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.j, align 8, !alias.scope !727, !noalias !731, !noundef !6 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.c, align 8, !alias.scope !728, !noalias !732, !noundef !6
  %i.x = sub i64 %i.u, %i.w
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x)
          to label %bb.i unwind label %bb.e, !noalias !729

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.j, %bb.i, %bb.f
  %.sroa.10.1.i = phi ptr [ %i.aa, %bb.j ], [ %i.i, %bb.i ], [ %i.i, %bb.f ]
  %.sroa.0.1.i = phi i64 [ 1, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.f ]
  store i64 0, ptr %i.c, align 8, !alias.scope !728, !noalias !732
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3)
          to label %bb.n unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #21
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.g, 0
  br i1 %i.z, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 34)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.e, !noalias !729

bb.k:                                             ; preds = %bb.c
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !729
  unreachable

bb.m:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.s

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.ac, align 8
  br label %_RINvNtNtCs9j2PgAuXC7p_12futures_util2io9read_line18read_line_internalQQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB4_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEECsddkiMbsmfqo_5yr_ls.exit.thread

_RINvNtNtCs9j2PgAuXC7p_12futures_util2io9read_line18read_line_internalQQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB4_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEECsddkiMbsmfqo_5yr_ls.exit.thread: ; preds = %bb.a, %bb.n
  %.sroa.02.0 = phi i64 [ %.sroa.0.1.i, %bb.n ], [ 2, %bb.a ]
  %.sroa.5.0 = phi ptr [ %.sroa.10.1.i, %bb.n ], [ undef, %bb.a ]
  %2 = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.ad = insertvalue { i64, ptr } %2, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs241mzyhqBWl_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtB1v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1v_6server9LifecycleINtNtB1v_5panic11CatchUnwindINtNtB1v_11concurrency11ConcurrencyINtNtB1v_6router6RouterNtNtB2e_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1v_5stdio10tokio_impl14TokioPipeStdinENtB6x_15TokioPipeStdoutE000ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE000ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs241mzyhqBWl_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtB1v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1v_6server9LifecycleINtNtB1v_5panic11CatchUnwindINtNtB1v_11concurrency11ConcurrencyINtNtB1v_6router6RouterNtNtB2e_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtB1v_5stdio10tokio_impl14TokioPipeStdinENtB6x_15TokioPipeStdoutE0s_00ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE0s_00ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 104
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscCnEmhw1znz_4libc4unix10linux_like11epoll_eventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = sub i64 %i.e, %i.h
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !align !9, !noundef !6
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i64 noundef 3)
end_hunk_0
