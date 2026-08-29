Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep20wake_specific_thread:bb.a

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  store i8 0, ptr %i.w, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB2_7Condvar10notify_one(ptr noundef nonnull align 4 %i.z)
          to label %bb.o unwind label %bb.n

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ac = and i64 %i.ab, 9223372036854775807
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.ae = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ae, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.aa monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.af = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !11

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  ret i1 %i.y

bb.n:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr nonnull %i.s, i8 %i.u) #30
          to label %common.resume unwind label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep20wake_specific_thread(ptr noundef nonnull align 8 %0, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %1, 65536
  br i1 %i.a, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3B_3ops5range5RangejENCNvMB26_NtB26_5Sleep3new0EE9from_iterB28_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef 0, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsB5_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.715 = alloca [16 x i8], align 8          ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 17)
  %i.i = load i64, ptr %i.f, align 8, !range !8, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  br i1 %i.j, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit

common.resume.sink.split.i:                       ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !170, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %bb.af, %bb.ag, %common.resume.sink.split.i33, %bb.y, %bb.l, %bb.m, %common.resume.sink.split.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %common.resume.sink.split.i33 ], [ %i.o, %common.resume.sink.split.i ], [ %i.ar, %bb.l ], [ %i.o, %bb.e ], [ %i.ar, %bb.m ], [ %i.bl, %bb.y ], [ %i.co, %bb.ag ], [ %i.co, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.l, -1
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !173 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.p, label %common.resume, label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !173 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !170, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread: ; preds = %bb.c, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.b
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not27 = icmp eq i64 %i.l, -1
  br i1 %.not27, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %i.l, ptr %i.d, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.s = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !184, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !184, !noundef !4 ; 2 uses
  switch i64 %i.u, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.s, align 1, !alias.scope !187, !noalias !190, !noundef !4 ; 2 uses
  switch i8 %i.v, label %bb.i [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.g
  %.pr.i.i = load i8, ptr %i.s, align 1, !alias.scope !187, !noalias !190
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i.i, %bb.h
  %i.w = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.v, %bb.h ]
  %cond.i.i = icmp eq i8 %i.w, 43                 ; 2 uses
  %i.x = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.u, %i.x        ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.y, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.i
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i124, i64 1
  %i.aa = add nsw i64 %.sroa.15.1.i.i123, -1      ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not52.i.not.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.i, %.preheader56.i.i
  %.sroa.0.1.i.i124 = phi ptr [ %i.z, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i.i123 = phi i64 [ %i.aa, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.i ]
  %.sroa.042.0.i.i122 = phi i64 [ %i.ag, %.preheader56.i.i ], [ 0, %bb.i ]
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i122, i64 10) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %.preheader56.i.i.preheader
  %3 = extractvalue { i64, i1 } %1, 0             ; 2 uses
  %i.ab = load i8, ptr %.sroa.0.1.i.i124, align 1, !alias.scope !187, !noalias !190, !noundef !4
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, 9
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = add i64 %3, %i.af                       ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %3
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ah, !prof !192
  br i1 %or.cond.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i, !prof !192

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.k
  %.sroa.0.269.i.i = phi ptr [ %i.ao, %bb.k ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.an, %bb.k ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.aq, %bb.k ], [ 0, %.preheader.i.i ]
  %i.ai = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !187, !noalias !190, !noundef !4
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10                  ; 3 uses
  br i1 %i.al, label %bb.k, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.am = mul i64 %.sroa.042.267.i.i, 10
  %i.an = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = add i64 %i.am, %i.ap                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.an, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.j, %.preheader56.i.i.preheader, %.preheader56.i.i, %bb.k, %.lr.ph.i.i, %.preheader.i.i, %bb.h, %bb.h, %bb.g
  %.sroa.102.0.i = phi i64 [ undef, %bb.h ], [ 0, %.preheader.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %.lr.ph.i.i ], [ %i.aq, %bb.k ], [ undef, %bb.j ], [ undef, %.preheader56.i.i.preheader ], [ %i.ag, %.preheader56.i.i ] ; 2 uses
  %not..sink.i.i = phi i1 [ false, %bb.h ], [ true, %.preheader.i.i ], [ false, %bb.g ], [ false, %bb.h ], [ %i.al, %bb.k ], [ %i.al, %.lr.ph.i.i ], [ false, %bb.j ], [ false, %.preheader56.i.i.preheader ], [ true, %.preheader56.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i30 = load i64, ptr %i.d, align 8, !alias.scope !193 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i.i30, 0
  br i1 %i.as, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val3.i.i.i = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !200, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !201
  br label %common.resume

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %.val.i.i.i31 = load i64, ptr %i.d, align 8, !alias.scope !193 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i.i31, 0
  br i1 %i.at, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !200, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !204
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br i1 %not..sink.i.i, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 17)
  %i.au = load i64, ptr %i.e, align 8, !range !8, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  br i1 %i.av, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45

bb.r:                                             ; preds = %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit
  %.not29 = icmp eq i64 %.sroa.102.0.i, 0
  br i1 %.not29, label %bb.s, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.s:                                             ; preds = %bb.r
  %i.ay = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = extractvalue { i64, ptr } %i.ay, 1      ; 4 uses
  %i.bb = trunc nuw i64 %i.az to i1
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  br i1 %i.bb, label %bb.t, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !207
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.u
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.v
  ], !prof !37

default.unreachable:                              ; preds = %bb.al, %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.be = icmp ult ptr %i.ba, inttoptr (i64 188978561024 to ptr)
  %i.bf = and i64 %i.bc, 1095216660480
  %i.bg = icmp ne i64 %i.bf, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bg)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !alias.scope !210, !noalias !207
  store i8 3, ptr %i.b, align 8, !alias.scope !210, !noalias !207
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi), !noalias !207
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !207
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i, %bb.s, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit, %bb.r, %bb.a
  %.sroa.0.1 = phi i64 [ %.sroa.102.0.i, %bb.r ], [ %i.h, %bb.a ], [ %.sroa.3.0.i56, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit ], [ %i.bc, %bb.s ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77 ], [ %i.cw, %bb.ak ]
  ret i64 %.sroa.0.1

common.resume.sink.split.i33:                     ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val3.i.i.i.i.i36 = load ptr, ptr %i.bj, align 8, !alias.scope !213, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i36, i64 noundef %.val2.i.i.i.i.i32, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.bk = icmp eq i64 %i.ax, -1
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i32 = load i64, ptr %i.aw, align 8, !alias.scope !216 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i.i.i.i32, 0
  br i1 %i.bm, label %common.resume, label %common.resume.sink.split.i33

bb.z:                                             ; preds = %bb.x
  %.val.i.i.i.i.i39 = load i64, ptr %i.aw, align 8, !alias.scope !216 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i.i.i.i39, 0
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i40

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i40: ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i.i.i42 = load ptr, ptr %i.bo, align 8, !alias.scope !213, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i42, i64 noundef %.val.i.i.i.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread: ; preds = %bb.w, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45: ; preds = %bb.q
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not28 = icmp eq i64 %i.ax, -1
  br i1 %.not28, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715, i64 16, i1 false)
  store i64 %i.ax, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.bp = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !227, !nonnull !4, !noundef !4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !227, !noundef !4 ; 2 uses
  switch i64 %i.br, label %thread-pre-split.i.i74 [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load i8, ptr %i.bp, align 1, !alias.scope !230, !noalias !233, !noundef !4 ; 2 uses
  switch i8 %i.bs, label %bb.ac [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  ]

thread-pre-split.i.i74:                           ; preds = %bb.aa
  %.pr.i.i75 = load i8, ptr %i.bp, align 1, !alias.scope !230, !noalias !233
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split.i.i74, %bb.ab
  %i.bt = phi i8 [ %.pr.i.i75, %thread-pre-split.i.i74 ], [ %i.bs, %bb.ab ]
  %cond.i.i57 = icmp eq i8 %i.bt, 43              ; 2 uses
  %i.bu = sext i1 %cond.i.i57 to i64
  %.sroa.15.0.i.i58 = add nsw i64 %i.br, %i.bu    ; 4 uses
  %.sroa.0.0.idx.i.i59 = zext i1 %cond.i.i57 to i64
  %.sroa.0.0.i.i60 = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0.idx.i.i59 ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.15.0.i.i58, 17
  br i1 %i.bv, label %.preheader.i.i67, label %.preheader56.i.i61.preheader

.preheader.i.i67:                                 ; preds = %bb.ac
  %.not5366.i.i68 = icmp eq i64 %.sroa.15.0.i.i58, 0
  br i1 %.not5366.i.i68, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.lr.ph.i.i69

.preheader56.i.i61:                               ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i64127, i64 1
  %i.bx = add nsw i64 %.sroa.15.1.i.i63126, -1    ; 2 uses
  %.not52.i.not.i65.not = icmp eq i64 %i.bx, 0
  br i1 %.not52.i.not.i65.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.preheader56.i.i61.preheader

.preheader56.i.i61.preheader:                     ; preds = %bb.ac, %.preheader56.i.i61
  %.sroa.0.1.i.i64127 = phi ptr [ %i.bw, %.preheader56.i.i61 ], [ %.sroa.0.0.i.i60, %bb.ac ] ; 2 uses
  %.sroa.15.1.i.i63126 = phi i64 [ %i.bx, %.preheader56.i.i61 ], [ %.sroa.15.0.i.i58, %bb.ac ]
  %.sroa.042.0.i.i62125 = phi i64 [ %i.cd, %.preheader56.i.i61 ], [ 0, %bb.ac ]
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i62125, i64 10) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %.preheader56.i.i61.preheader
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.by = load i8, ptr %.sroa.0.1.i.i64127, align 1, !alias.scope !230, !noalias !233, !noundef !4
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48                  ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, 9
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = add i64 %6, %i.cc                       ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %6
  %or.cond.i66 = select i1 %i.cb, i1 true, i1 %i.ce, !prof !192
  br i1 %or.cond.i66, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.preheader56.i.i61, !prof !192

.lr.ph.i.i69:                                     ; preds = %.preheader.i.i67, %bb.ae
  %.sroa.0.269.i.i70 = phi ptr [ %i.cl, %bb.ae ], [ %.sroa.0.0.i.i60, %.preheader.i.i67 ] ; 2 uses
  %.sroa.15.268.i.i71 = phi i64 [ %i.ck, %bb.ae ], [ %.sroa.15.0.i.i58, %.preheader.i.i67 ]
  %.sroa.042.267.i.i72 = phi i64 [ %i.cn, %bb.ae ], [ 0, %.preheader.i.i67 ]
  %i.cf = load i8, ptr %.sroa.0.269.i.i70, align 1, !alias.scope !230, !noalias !233, !noundef !4
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nsw i32 %i.cg, -48                  ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 9                   ; 3 uses
  br i1 %i.ci, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i69
  %i.cj = mul i64 %.sroa.042.267.i.i72, 10
  %i.ck = add nsw i64 %.sroa.15.268.i.i71, -1     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i70, i64 1
  %i.cm = zext nneg i32 %i.ch to i64
  %i.cn = add i64 %i.cj, %i.cm                    ; 2 uses
  %.not53.i.i73 = icmp eq i64 %i.ck, 0
  br i1 %.not53.i.i73, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.lr.ph.i.i69

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46: ; preds = %bb.ad, %.preheader56.i.i61.preheader, %.preheader56.i.i61, %bb.ae, %.lr.ph.i.i69, %.preheader.i.i67, %bb.ab, %bb.ab, %bb.aa
  %.sroa.102.0.i47 = phi i64 [ undef, %bb.ab ], [ 0, %.preheader.i.i67 ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %.lr.ph.i.i69 ], [ %i.cn, %bb.ae ], [ undef, %bb.ad ], [ undef, %.preheader56.i.i61.preheader ], [ %i.cd, %.preheader56.i.i61 ]
  %.sink.i.i48 = phi i1 [ true, %bb.ab ], [ false, %.preheader.i.i67 ], [ true, %bb.aa ], [ true, %bb.ab ], [ %i.ci, %bb.ae ], [ %i.ci, %.lr.ph.i.i69 ], [ true, %bb.ad ], [ true, %.preheader56.i.i61.preheader ], [ false, %.preheader56.i.i61 ] ; 2 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i49 = load i64, ptr %i.c, align 8, !alias.scope !235 ; 2 uses
  %i.cp = icmp eq i64 %.val2.i.i.i49, 0
  br i1 %i.cp, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val3.i.i.i50 = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !242, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i50, i64 noundef %.val2.i.i.i49, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !243
  br label %common.resume

bb.ah:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  %.val.i.i.i52 = load i64, ptr %i.c, align 8, !alias.scope !235 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i.i52, 0
  br i1 %i.cq, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i.i53 = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !242, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i53, i64 noundef %.val.i.i.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !246
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.3.0.i56 = select i1 %.sink.i.i48, i64 undef, i64 %.sroa.102.0.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  %i.cr = icmp eq i64 %.sroa.3.0.i56, 0
  %or.cond.not = select i1 %.sink.i.i48, i1 true, i1 %i.cr
  br i1 %or.cond.not, label %bb.ak, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit
  %i.cs = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1      ; 4 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  br i1 %i.cv, label %bb.al, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !249
  %i.cx = and i64 %i.cw, 3
  switch i64 %i.cx, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77
    i64 3, label %bb.am
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77
    i64 1, label %bb.an
  ], !prof !37

bb.am:                                            ; preds = %bb.al
  %i.cy = icmp ult ptr %i.cu, inttoptr (i64 188978561024 to ptr)
  %i.cz = and i64 %i.cw, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77

bb.an:                                            ; preds = %bb.al
  %i.db = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !alias.scope !252, !noalias !249
  store i8 3, ptr %i.a, align 8, !alias.scope !252, !noalias !249
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc), !noalias !249
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77: ; preds = %bb.an, %bb.am, %bb.al, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !249
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameB5_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !255, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.b, i64 noundef %2) #35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #34 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CskVyUMSjkkSy_10rayon_coreNtB5_13Configuration5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @_RINvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnEB5_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 8, !range !163, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.h = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #34 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit: ; preds = %bb.b
  store i64 %i.d, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @7, ptr %i.m, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs4_CskVyUMSjkkSy_10rayon_coreNtB5_20ThreadPoolBuildError14is_unsupported(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = ptrtoint ptr %.val to i64                ; 3 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !37

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = tail call noundef i8 %i.j(i32 noundef %i.g), !inline_history !256
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.d, 32
  %i.m = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.l to i8   ; 2 uses
  %i.n = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !257, !noundef !4
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %.val, i64 31
  %i.r = load i8, ptr %i.q, align 8, !range !257, !noundef !4
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.c ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i8 %.sroa.0.0.i, 36
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.s, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !78, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !258
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !258
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noalias !258, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !79, !noalias !258, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !258, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !258
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !258
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !78, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !261
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !261
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !261
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noalias !261, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !79, !noalias !261, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !261, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !261
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !261
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !192
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #34
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %5 = extractvalue { i64, i1 } %i.a, 0           ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !192
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #34
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvNtCskVyUMSjkkSy_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskVyUMSjkkSy_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.f
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.e(ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !78, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !264, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #34
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !78, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !264, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #34
  br label %.body

.body:                                            ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs7_CskVyUMSjkkSy_10rayon_coreINtB8_17ThreadPoolBuilderpENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtNtB2_18ClosurePlaceholderBZ_3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #34
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 128) #34
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #34
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #34
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b
  ret void
end_hunk_0
