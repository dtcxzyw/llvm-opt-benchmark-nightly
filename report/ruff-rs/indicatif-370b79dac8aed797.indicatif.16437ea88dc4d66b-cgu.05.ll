Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/indicatif-370b79dac8aed797.indicatif.16437ea88dc4d66b-cgu.05?download=true
inline.NumInlined: 181
inline.NumDeleted: 80
begin_hunk_0_@_RNvMs_NtCs1UvybGPDVxf_9indicatif12progress_barNtB4_11ProgressBar9is_hidden:bb.a
  ret i1 %i.s

bb.l:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1UvybGPDVxf_9indicatif12progress_barNtB4_11ProgressBar9no_length(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs1UvybGPDVxf_9indicatif11draw_targetNtB2_18ProgressDrawTarget6stderr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a)
  call void @_RNvMs_NtCs1UvybGPDVxf_9indicatif12progress_barNtB4_11ProgressBar16with_draw_target(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef 0, i64 undef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1UvybGPDVxf_9indicatif12progress_barNtB4_11ProgressBar9reset_eta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateE4lockB11_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.e = load i64, ptr %i.b, align 8, !range !15, !alias.scope !550, !noalias !551, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !550, !noalias !551, !nonnull !3, !align !4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !5, !alias.scope !550, !noalias !551, !noundef !3
  store ptr %i.h, ptr %i.a, align 8, !noalias !552
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !552
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %bb.d unwind label %bb.c, !noalias !550

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEEB1T_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #15
          to label %common.resume unwind label %bb.e, !noalias !550

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !550
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.t, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !550, !noalias !551, !nonnull !3, !align !4, !noundef !3 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !5, !alias.scope !550, !noalias !551, !noundef !3 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.g, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_(ptr nonnull %i.o, i8 %i.q) #15
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = extractvalue { i64, i32 } %i.s, 0
  %i.w = extractvalue { i64, i32 } %i.s, 1
  invoke void @_RNvMNtCs1UvybGPDVxf_9indicatif5stateNtB2_8BarState5reset(ptr noalias noundef nonnull align 8 dereferenceable(520) %i.u, i64 noundef %i.v, i32 noundef %i.w, i8 noundef 0)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.z = and i64 %i.y, 9223372036854775807
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.ab = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ab, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr %i.x monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ac = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit, !prof !7

bb.l:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1UvybGPDVxf_9indicatif12progress_barNtB4_11ProgressBar9set_style(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  invoke void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateE4lockB11_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
          to label %bb.c unwind label %.body

bb.b:                                             ; preds = %bb.i
  br i1 %.sroa.0.2, label %.body.thread, label %bb.r

.body:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.e = load i64, ptr %i.b, align 8, !range !15, !alias.scope !556, !noalias !557, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !558
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !556, !noalias !557, !nonnull !3, !align !4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !5, !alias.scope !556, !noalias !557, !noundef !3
  store ptr %i.h, ptr %i.a, align 8, !noalias !558
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !558
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %bb.f unwind label %bb.e, !noalias !556

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEEB1T_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #15
          to label %.body.thread unwind label %bb.g, !noalias !556

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !556
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !556, !noalias !557, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !5, !alias.scope !556, !noalias !557, !noundef !3 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.t = invoke noundef zeroext i1 @_RNvMNtCs1UvybGPDVxf_9indicatif11draw_targetNtB2_18ProgressDrawTarget9is_stderr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit, %bb.h
  %.sroa.0.2 = phi i1 [ false, %_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit ], [ true, %bb.h ]
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_(ptr nonnull %i.o, i8 %i.q) #15
          to label %bb.b unwind label %bb.q

bb.j:                                             ; preds = %bb.h
  br i1 %i.t, label %bb.k, label %_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val7 = load i64, ptr %i.w, align 8, !noundef !3 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val7, 72
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 %.idx.i
  %i.y = icmp eq i64 %.val7, 0
  br i1 %i.y, label %_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.backedge.i.1
  %.sroa.0.01.i = phi ptr [ %i.z, %.backedge.i.1 ], [ %.val6, %bb.k ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 72 ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.01.i, align 8, !range !559, !noundef !3
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.backedge.i.1

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 17 ; 2 uses
  %.sroa.4.0.copyload.i.1 = load i8, ptr %.sroa.4.0..sroa_idx.i.1, align 1
  %.not.i.1 = icmp eq i8 %.sroa.4.0.copyload.i.1, 2
  %spec.store.select.i.1 = select i1 %.not.i.1, i8 2, i8 1
  store i8 %spec.store.select.i.1, ptr %.sroa.4.0..sroa_idx.i.1, align 1
  %.sroa.49.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 31 ; 2 uses
  %.sroa.49.0.copyload.i.1 = load i8, ptr %.sroa.49.0..sroa_idx.i.1, align 1
  %.not20.i.1 = icmp eq i8 %.sroa.49.0.copyload.i.1, 2
  %spec.store.select2.i.1 = select i1 %.not20.i.1, i8 2, i8 1
  store i8 %spec.store.select2.i.1, ptr %.sroa.49.0..sroa_idx.i.1, align 1
  br label %.backedge.i.1

.backedge.i.1:                                    ; preds = %bb.l, %.lr.ph.i
  %i.ac = icmp eq ptr %i.z, %i.x
  br i1 %i.ac, label %_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit, label %.lr.ph.i

_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit: ; preds = %.backedge.i.1, %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_RNvMNtCs1UvybGPDVxf_9indicatif5stateNtB2_8BarState9set_style(ptr noalias noundef nonnull align 8 dereferenceable(520) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle14set_for_stderr.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ag = and i64 %i.af, 9223372036854775807
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !6

.noexc:                                           ; preds = %bb.n
  %i.ai = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ai, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc, %bb.n, %bb.m
  %i.aj = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit, !prof !7

bb.p:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit: ; preds = %bb.p, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.q:                                             ; preds = %bb.i, %.body.thread
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.r:                                             ; preds = %.body.thread, %bb.b
  %.pn10 = phi { ptr, i32 } [ %i.u, %bb.b ], [ %.pn11, %.body.thread ]
  resume { ptr, i32 } %.pn10

.body.thread:                                     ; preds = %bb.e, %.body, %bb.b
  %.pn11 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.u, %bb.b ], [ %i.l, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5style13ProgressStyleEBF_(ptr noalias noundef align 8 dereferenceable(136) %1) #15
          to label %bb.r unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs_NtCs1UvybGPDVxf_9indicatif12progress_barNtB4_11ProgressBar9tab_width(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateE4lockB11_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.e = load i64, ptr %i.b, align 8, !range !15, !alias.scope !563, !noalias !564, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !565
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !563, !noalias !564, !nonnull !3, !align !4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !5, !alias.scope !563, !noalias !564, !noundef !3
  store ptr %i.h, ptr %i.a, align 8, !noalias !565
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !565
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %bb.d unwind label %bb.c, !noalias !563

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEEB1T_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #15
          to label %bb.f unwind label %bb.e, !noalias !563

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !563
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !563, !noalias !564, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !5, !alias.scope !563, !noalias !564, !noundef !3
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 520
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit
  %i.v = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.w = and i64 %i.v, 9223372036854775807
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.y = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.y, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.u monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit
  %i.z = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit, !prof !7

bb.j:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEB1A_.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.j
  ret i64 %i.t
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs1UvybGPDVxf_9indicatif12progress_barNtB2_11ProgressBarNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs1UvybGPDVxf_9indicatif12progress_barNtB5_6TickerNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RNvMs2_NtCs1UvybGPDVxf_9indicatif12progress_barNtB5_6Ticker4stop(ptr nonnull %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.c = call { ptr, ptr } @_RNvMs1_NtNtCs2AWtUsOyxgP_3std6thread9lifecycleINtB5_9JoinInneruE4joinCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 4 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1UvybGPDVxf_9indicatif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.g = load ptr, ptr %i.e, align 8, !invariant.load !3, !noalias !568 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.g(ptr noundef nonnull %i.d)
          to label %bb.e unwind label %bb.g, !noalias !568

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !3, !noalias !568 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1UvybGPDVxf_9indicatif.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !3, !noalias !568
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #17, !noalias !568
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs1UvybGPDVxf_9indicatif.exit

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !3, !noalias !568 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
