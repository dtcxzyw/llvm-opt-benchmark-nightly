Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.04?download=true
inline.NumInlined: 214
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8grow_oneCs3Kwrwkha1e5_13pingora_proxy:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !331
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !331
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !331
  %i.f = load i64, ptr %i.a, align 8, !range !292, !noalias !331, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !293, !noalias !331, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !331, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !331
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !331
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3Kwrwkha1e5_13pingora_proxy(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !334
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !334

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #14
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #14
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
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3Kwrwkha1e5_13pingora_proxy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !334
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !334

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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #14
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #14
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest4pipe20do_send_body_to_pipe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i1 noundef zeroext %2, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(48) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  br i1 %2, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !noundef !4   ; 3 uses
  %.not.a = icmp eq ptr %i.h, null                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %5 = icmp ne i64 %i.j, 0
  %or.cond.not = select i1 %.not.a, i1 true, i1 %5
  br i1 %or.cond.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1
  store i8 0, ptr %0, align 8
  %i.l = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 448 ; 3 uses
  invoke void @_RNvXse_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.m)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  %i.n = invoke noundef zeroext i1 @_RNvXse_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore9is_closed(ptr noundef nonnull align 8 %i.m)
          to label %.noexc22 unwind label %.thread

.noexc22:                                         ; preds = %.noexc
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc22
  %i.o = invoke noundef zeroext i1 @_RNvXse_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.m)
          to label %.noexc23 unwind label %.thread

.noexc23:                                         ; preds = %bb.d
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  invoke void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %.thread

.thread:                                          ; preds = %bb.c, %.noexc, %bb.d, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %bb.e, %.noexc22, %.noexc23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !344, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !344, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !344, !noundef !4
  tail call void %i.u(ptr noundef %i.s, ptr noundef %i.w, i64 noundef 0), !noalias !344, !inline_history !276
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs3Kwrwkha1e5_13pingora_proxy.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.f, %_RNvMs8_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7boundedINtB5_6PermitNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskE4sendCs3Kwrwkha1e5_13pingora_proxy.exit
  ret void

bb.g:                                             ; preds = %bb.z, %bb.w, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE6map_oriNCNvNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest4pipe20do_send_body_to_pipes_0EB1A_.exit, %bb.q
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.h:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.a ], [ %.not.a, %bb.b ]
  %.sroa.0.0 = zext i1 %.sroa.0.0.shrunk to i8
  %i.y = load atomic i64, ptr @_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.z = icmp ult i64 %i.y, 6
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp samesign ugt i64 %i.y, 3
  br i1 %i.aa, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE6map_oriNCNvNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest4pipe20do_send_body_to_pipes_0EB1A_.exit, label %bb.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE6map_oriNCNvNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest4pipe20do_send_body_to_pipes_0EB1A_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ab = load ptr, ptr %1, align 8, !noundef !4
  %.not15.a = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.ac, align 8
  %.sroa.02.0.i = select i1 %.not15.a, i64 -1, i64 %.val.i
  store i64 %.sroa.02.0.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsj_NtNtNtCskKLDkoKarTP_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !345
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 4, ptr %i.ad, align 8, !noalias !345
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @9, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !345
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 31, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !345
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @7, ptr %i.ae, align 8, !noalias !345
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.f, ptr %i.af, align 8, !noalias !345
  store i64 0, ptr %i.c, align 8, !noalias !345
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @9, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !345
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 31, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !345
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ag, align 8, !noalias !345
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @8, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !345
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 36, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !345
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.ah, align 8, !noalias !345
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 380, ptr %i.ai, align 4, !noalias !345
  invoke void @_RNvXs0_NtCsdYyxaOYRLxS_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.j unwind label %bb.g

bb.i:                                             ; preds = %bb.h, %bb.j
  %.not16.a = icmp eq ptr %3, null
  br i1 %.not16.a, label %bb.l, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE6map_oriNCNvNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest4pipe20do_send_body_to_pipes_0EB1A_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !287, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.o, label %bb.p

bb.l:                                             ; preds = %bb.x, %bb.ab, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sroa.0.0, ptr %i.an, align 1
  store i8 1, ptr %i.d, align 8
  invoke void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB7_7bounded9SemaphoreE4sendCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %_RNvMs8_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7boundedINtB5_6PermitNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskE4sendCs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded6PermitNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull readonly align 8 dereferenceable(8) %4) #23
          to label %.body unwind label %bb.n, !noalias !350

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !350
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.ar = load i8, ptr %i.aq, align 1, !range !287, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.k, %bb.o
  %i.at = load ptr, ptr %1, align 8, !noundef !4  ; 2 uses
  %.not17 = icmp eq ptr %i.at, null
  br i1 %.not17, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4
  invoke void %i.au(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.av, ptr noundef %i.ax, i64 noundef %i.az)
          to label %bb.r unwind label %bb.g

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bb = load i64, ptr %i.ba, align 16, !alias.scope !356, !noalias !353, !noundef !4 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !353, !noalias !356, !noundef !4
  %i.be = add i64 %i.bd, %i.bb                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !353, !noalias !356, !noundef !4
  %.not53 = icmp ugt i64 %i.be, %i.bg
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br i1 %.not53, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.be, ptr %i.bc, align 8, !alias.scope !353, !noalias !356
  %i.bh = load <2 x ptr>, ptr %i.e, align 16, !alias.scope !356, !noalias !353 ; 3 uses
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !356, !noalias !353 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !361, !noalias !362, !noundef !4 ; 3 uses
  %i.bk = load i64, ptr %3, align 8, !range !20, !alias.scope !361, !noalias !362, !noundef !4
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.t, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8push_mutCs3Kwrwkha1e5_13pingora_proxy.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8grow_oneCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8push_mutCs3Kwrwkha1e5_13pingora_proxy.exit.i unwind label %bb.u, !noalias !362

bb.u:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = extractelement <2 x ptr> %i.bh, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
end_hunk_0
