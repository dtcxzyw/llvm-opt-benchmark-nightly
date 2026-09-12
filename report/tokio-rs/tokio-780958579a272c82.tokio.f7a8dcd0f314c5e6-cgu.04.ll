Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.04?download=true
inline.NumInlined: 435
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread9shutdown2
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread9shutdown2(ptr noalias noundef nonnull returned align 8 %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE22close_and_shutdown_allB8_(ptr noundef nonnull align 8 %i.d, i64 noundef 0)
          to label %.preheader15 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader15:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

.loopexit:                                        ; preds = %.preheader, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.g, %bb.b
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.n, %bb.p, %bb.m, %bb.k, %bb.h, %bb.a
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit16, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEEB1i_(ptr %0) #25
          to label %bb.s unwind label %bb.r

bb.b:                                             ; preds = %.preheader15, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !837
  %i.g = invoke noundef ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1a_9scheduler14current_thread6HandleEEE9pop_frontB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !noalias !837
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !837, !noundef !5
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics15set_queue_depth(ptr noundef nonnull align 128 %1, i64 noundef %i.h)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !837
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit unwind label %.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.m = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE5closeB8_(ptr noundef nonnull align 8 %i.l)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.preheader:                                       ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit10
  %i.n = invoke noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE3popB8_(ptr noundef nonnull align 8 %i.l)
          to label %bb.i unwind label %.loopexit  ; 2 uses

bb.i:                                             ; preds = %.preheader
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit10 unwind label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.p = invoke noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr noundef nonnull align 8 %i.o, i8 noundef 0)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit10: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 128 %1, i64 noundef 0)
          to label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  unreachable

_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit: ; preds = %bb.n
  %i.s = load i64, ptr %0, align 8, !range !12, !noundef !5
  %.not7 = icmp eq i64 %i.s, -1
  br i1 %.not7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver8shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 %i.t)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core14submit_metrics.exit
  ret ptr %0

bb.r:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCslghKHtsL3a4_5tokio7process3impNtNtCsaL1QbXo9JQH_3std7process5ChildNtNtB2_6orphan4Wait8try_wait(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(28) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsT_NtCsaL1QbXo9JQH_3std7processNtB5_5Child8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCslghKHtsL3a4_5tokio4loom3std7barrierNtB2_7BarrierNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 7)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio4loom3std7barrierNtB5_17BarrierWaitResultNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i8, ptr %0, align 1, !range !16, !noundef !5
  store i8 %i.c, ptr %i.a, align 1
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std7process5ChildNtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !838, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCsaL1QbXo9JQH_3std7processNtB5_5ChildNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io5readyNtB5_5ReadyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.i = and i64 %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  %2 = lshr i64 %i.h, 2
  %3 = trunc i64 %2 to i8
  %i.j = and i8 %3, 1                             ; 2 uses
  %storemerge = select i1 %.not, i8 %i.j, i8 1
  store i8 %storemerge, ptr %i.f, align 1
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = and i64 %i.h, 2
  %.not1 = icmp eq i64 %i.l, 0
  %4 = lshr i64 %i.h, 3
  %5 = trunc i64 %4 to i8
  %i.m = and i8 %5, 1                             ; 2 uses
  %storemerge2 = select i1 %.not1, i8 %i.m, i8 1
  store i8 %storemerge2, ptr %i.e, align 1
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.j, ptr %i.d, align 1
  %i.o = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 14, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.m, ptr %i.c, align 1
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %6 = lshr i64 %i.h, 5
  %7 = trunc i64 %6 to i8
  %i.q = and i8 %7, 1
  store i8 %i.q, ptr %i.b, align 1
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %8 = lshr i64 %i.h, 4
  %9 = trunc i64 %8 to i8
  %i.s = and i8 %9, 1
  store i8 %i.s, ptr %i.a, align 1
  %i.t = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !841, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !noalias !841 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.j to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !841
  store i32 %i.m, ptr %i.b, align 4, !noalias !841
  %i.o = load i32, ptr %i.k, align 8, !noalias !841, !noundef !5
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %i.q = phi i32 [ %i.ad, %bb.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %i.ac, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.010.i = phi i64 [ %.sroa.01.0.i.i, %bb.i ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !841
  %i.s = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.s, ptr %i.a, align 4, !noalias !841
  %i.t = icmp eq i32 %i.r, %i.q
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = icmp eq i32 %i.s, %i.r
  br i1 %i.u, label %bb.g, label %bb.f, !prof !6

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = zext i32 %i.s to i64
  %i.w = mul nuw i64 %i.v, 4294967297
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = and i64 %.sroa.04.010.i, -4294967296
  %i.z = or disjoint i64 %i.y, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedmmECsaL1QbXo9JQH_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #27, !noalias !841
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = cmpxchg weak ptr %i.i, i64 %.sroa.04.010.i, i64 %.sroa.01.0.i acq_rel acquire, align 8, !noalias !841 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.aa, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !841
  %i.ab = lshr i64 %.sroa.01.0.i.i, 32
  %i.ac = trunc nuw i64 %i.ab to i32              ; 2 uses
  %i.ad = trunc i64 %.sroa.01.0.i.i to i32        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !841
  store i32 %i.ac, ptr %i.b, align 4, !noalias !841
  %i.ae = load i32, ptr %i.k, align 8, !noalias !841, !noundef !5
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, label %.lr.ph.i

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, %bb.b
  ret void

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !841
  %i.ag = and i64 %.sroa.04.010.i, 255
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !841, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !841, !nonnull !5, !noundef !5
  store ptr %i.ak, ptr %i.c, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @75, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio4loom3std10atomic_u32NtB5_9AtomicU32NtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 4 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsP_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicmENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull align 4 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 128 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 30)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtNtBb_4util4wake4Wake11wake_by_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = atomicrmw xchg ptr %i.b, i8 1 release, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !13, !noalias !848, !noundef !5
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d), !noalias !848 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs6_NtNtBY_9scheduler14current_threadNtB2p_6HandleNtNtNtB10_4util4wake4Wake11wake_by_ref0E0uEB10_.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, %bb.b
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.h, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 70
  %i.k = load i8, ptr %i.j, align 1, !range !13, !noalias !849, !noundef !5
  %.not3.i.i.i = icmp eq i8 %i.k, 2
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.l), !noalias !849
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 40
  tail call void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCNvXs6_NtB15_14current_threadNtB1G_6HandleNtNtNtB9_4util4wake4Wake11wake_by_ref0uEB9_(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0), !noalias !850
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs6_NtNtBY_9scheduler14current_threadNtB2p_6HandleNtNtNtB10_4util4wake4Wake11wake_by_ref0E0uEB10_.exit.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.n), !noalias !851
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit

_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvXs6_NtNtB4_9scheduler14current_threadNtB15_6HandleNtNtNtB6_4util4wake4Wake11wake_by_ref0EB6_.exit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvXs6_NtNtBY_9scheduler14current_threadNtB2p_6HandleNtNtNtB10_4util4wake4Wake11wake_by_ref0E0uEB10_.exit.i, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtNtBb_4util4wake4Wake4wake(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.c = atomicrmw xchg ptr %i.b, i8 1 release, align 1, !noalias !868
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtNtBb_4util4wake4Wake11wake_by_ref.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !13, !noalias !869, !noundef !5
end_hunk_0
