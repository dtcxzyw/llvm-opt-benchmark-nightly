Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 137
begin_hunk_0_@_RNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtB2_7ReadDir10next_chunk:bb.a
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !369
  %i.aa = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #29, !noalias !369 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.p, !prof !23

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc6.i unwind label %bb.l, !noalias !367

.noexc6.i:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsaL1QbXo9JQH_3std2fs8DirEntryEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #24
          to label %.body.i unwind label %bb.m, !noalias !367

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !367
  unreachable

.body.i:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body9.i

bb.n:                                             ; preds = %bb.i, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs8DirEntryECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #24
          to label %.body.i unwind label %bb.o, !noalias !367

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !367
  unreachable

bb.p:                                             ; preds = %bb.j
  %not..i = xor i32 %i.r, 1
  %.sroa.5.0.i = select i1 %i.s, i32 undef, i32 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %not..i, ptr %i.e, align 8
  store i32 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx14, align 4
  store ptr %i.aa, ptr %.sroa.516.0..sroa_idx, align 8
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEE13push_back_mutB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond = icmp eq i64 %i.m, 32
  br i1 %exitcond, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtB2_7ReadDir15poll_next_entry(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.6.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.pr.pre = load i64, ptr %1, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73
  %.pr = phi i64 [ %.pr.pre, %bb.a ], [ %i.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73 ]
  switch i64 %.pr, label %bb.b [
    i64 -2, label %thread-pre-split._crit_edge
    i64 -1, label %.loopexit111
  ], !prof !391

thread-pre-split._crit_edge:                      ; preds = %thread-pre-split
  %.val.pre = load ptr, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.i

bb.b:                                             ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEE9pop_frontB1N_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.n = load i32, ptr %i.f, align 8, !range !392, !noundef !7 ; 3 uses
  %.not64.peel = icmp eq i32 %i.n, -1
  br i1 %.not64.peel, label %bb.c, label %.loopexit112

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.g, align 8, !range !24, !noundef !7
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %.loopexit114

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.019.0.copyload.peel = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.523.0.copyload.peel = load ptr, ptr %.sroa.523.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0.copyload.peel = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %1, align 8
  %.not65.peel = icmp eq i64 %.sroa.019.0.copyload.peel, -1
  br i1 %.not65.peel, label %.loopexit115, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.261.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.523.0.copyload.peel) ]
  store i64 %.sroa.019.0.copyload.peel, ptr %i.e, align 8
  store ptr %.sroa.523.0.copyload.peel, ptr %i.h, align 8
  store i8 %.sroa.6.0.copyload.peel, ptr %i.i, align 8
  %i.q = call noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvMNtNtB8_2fs8read_dirNtB19_7ReadDir15poll_next_entry0TINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtB19_8DirEntryNtNtNtB31_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = load i64, ptr %1, align 8, !range !17, !alias.scope !393, !noundef !7
  switch i64 %i.r, label %bb.h [
    i64 -2, label %bb.f
    i64 -1, label %.loopexit104
  ]

bb.f:                                             ; preds = %bb.e
  %.val.i.peel = load ptr, ptr %.sroa.521.0..sroa_idx, align 8, !alias.scope !394, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val.i.peel)
          to label %.noexc67.peel unwind label %bb.ae

.noexc67.peel:                                    ; preds = %bb.f
  br i1 %i.s, label %bb.g, label %.loopexit104

bb.g:                                             ; preds = %.noexc67.peel
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val.i.peel)
          to label %.loopexit104 unwind label %bb.ae

bb.h:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.loopexit104 unwind label %bb.ae

.loopexit104:                                     ; preds = %bb.h, %bb.g, %.noexc67.peel, %bb.e
  store i64 -2, ptr %1, align 8
  store ptr %i.q, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split._crit_edge, %.loopexit104
  %.val = phi ptr [ %.val.pre, %thread-pre-split._crit_edge ], [ %i.q, %.loopexit104 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !396
  store i64 -2, ptr %i.c, align 8, !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  %i.t = load i8, ptr %i.k, align 8, !range !25, !noalias !397, !noundef !7
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i: ; preds = %bb.i
  %i.v = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.j)
          to label %.noexc.i unwind label %.thread5.i, !noalias !396 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.thread8.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i: ; preds = %.noexc.i, %bb.i
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.v, %.noexc.i ], [ %i.j, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %i.y = load i8, ptr %i.x, align 1, !range !24, !noalias !398, !noundef !7 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 69 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !398 ; 4 uses
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %.thread5.i, !noalias !399

bb.l:                                             ; preds = %bb.j
  %i.ac = add i8 %i.ab, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i
  %.sroa.33.0.i.i.i.i = phi i8 [ %i.ac, %bb.l ], [ %i.ab, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i ]
  store i8 %.sroa.33.0.i.i.i.i, ptr %i.aa, align 1, !noalias !398
  br label %bb.n

.thread5.i:                                       ; preds = %bb.n, %bb.k, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.4.0.i.i.i.i = phi i8 [ %i.ab, %bb.m ], [ 0, %bb.k ]
  %.sroa.0.0.i.i7.i.i = phi i1 [ false, %bb.m ], [ true, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  store i24 0, ptr %i.a, align 4, !noalias !396
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l)
          to label %bb.o unwind label %.thread5.i, !noalias !399

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br i1 %.sroa.0.0.i.i7.i.i, label %bb.p, label %.thread8.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ad = load i64, ptr %i.c, align 8, !range !17, !alias.scope !400, !noalias !396, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, -2
  br i1 %.not.i.i, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %.not.i.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c), !noalias !399
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !402, !noalias !396, !noundef !7 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val1.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !402, !noalias !396 ; 6 uses
  %i.ag = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ag, label %.loopexit.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.ah = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !403 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.ah(ptr noundef nonnull %.val.i.i.i)
          to label %bb.v unwind label %bb.w, !noalias !403

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !9, !invariant.load !7, !noalias !403 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.loopexit.sink.split, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !15, !invariant.load !7, !noalias !403
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #29, !noalias !403
  br label %.loopexit.sink.split

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !9, !invariant.load !7, !noalias !403 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !15, !invariant.load !7, !noalias !403
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #29, !noalias !403
  br label %common.resume

common.resume:                                    ; preds = %bb.ae, %bb.al, %bb.w, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %.thread.i ], [ %i.an, %bb.w ], [ %i.an, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i ], [ %i.bg, %bb.al ], [ %lpad.loopexit.split-lp, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

.thread8.i:                                       ; preds = %.noexc.i, %bb.o
  %.sroa.03.011.i10.off8.i = phi i8 [ %i.y, %bb.o ], [ 0, %.noexc.i ]
  %.sroa.03.011.i10.off16.i = phi i8 [ %.sroa.4.0.i.i.i.i, %bb.o ], [ 0, %.noexc.i ]
  store i8 %.sroa.03.011.i10.off8.i, ptr %i.b, align 1, !noalias !396
  store i8 %.sroa.03.011.i10.off16.i, ptr %i.m, align 1, !noalias !396
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.at = load ptr, ptr %2, align 8, !alias.scope !395, !noalias !399, !nonnull !7, !align !13, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !396, !nonnull !7, !align !13, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !399, !nonnull !7, !noundef !7
  invoke void %i.ax(ptr noundef nonnull %.val, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.y unwind label %bb.x, !noalias !399

bb.x:                                             ; preds = %.thread8.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread.i unwind label %bb.z, !noalias !399

bb.y:                                             ; preds = %.thread8.i
  %i.az = load i64, ptr %i.c, align 8, !range !17, !noalias !396, !noundef !7 ; 5 uses
  %.not.i = icmp eq i64 %i.az, -2
  br i1 %.not.i, label %.loopexit.loopexit.critedge, label %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_6future6future6Future4pollBb_.exit

_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_6future6future6Future4pollBb_.exit: ; preds = %bb.y
  store i8 0, ptr %i.b, align 1, !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx74, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !396
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %bb.ag, label %bb.ah

bb.z:                                             ; preds = %.thread.i, %bb.x
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !399
  unreachable

.thread.i:                                        ; preds = %bb.x, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread5.i ], [ %i.ay, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeIB11_NtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbENtNtNtNtB2v_7runtime4task5error9JoinErrorEEEB2v_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #24
          to label %common.resume unwind label %bb.z, !noalias !399

.loopexit111:                                     ; preds = %thread-pre-split
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

.loopexit112:                                     ; preds = %bb.b
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 2 uses
  %i.bc = icmp eq i32 %i.n, 2
  br i1 %i.bc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload) ]
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.510.0 = phi i32 [ undef, %bb.aa ], [ %.sroa.5.0.copyload, %bb.ab ]
  %.sroa.08.0 = phi i32 [ -1, %bb.aa ], [ %i.n, %bb.ab ]
  store i32 %.sroa.08.0, ptr %0, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.510.0, ptr %.sroa.510.0..sroa_idx11, align 4
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.55.0.copyload, ptr %.sroa.513.0..sroa_idx14, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit114, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.af

.loopexit114:                                     ; preds = %bb.c
  store i32 2, ptr %0, align 8
  br label %bb.ad

.loopexit115:                                     ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable

bb.ae:                                            ; preds = %bb.h, %bb.g, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store i64 -2, ptr %1, align 8
  store ptr %i.q, ptr %.sroa.521.0..sroa_idx, align 8
  br label %common.resume

bb.af:                                            ; preds = %.loopexit.sink.split, %bb.ag, %bb.ad
  ret void

.loopexit.loopexit.critedge:                      ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx74, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.r, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.v, %bb.s, %bb.p, %.loopexit.loopexit.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !396
  store i32 -2, ptr %0, align 8
  br label %bb.af

bb.ag:                                            ; preds = %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_6future6future6Future4pollBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.bd = call noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  store i32 -1, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.ah:                                            ; preds = %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_6future6future6Future4pollBb_.exit
  %i.be = load i64, ptr %1, align 8, !range !17, !alias.scope !404, !noundef !7
  switch i64 %i.be, label %bb.ai [
    i64 -2, label %bb.aj
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73
  ]

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73 unwind label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %.val.i69 = load ptr, ptr %.sroa.521.0..sroa_idx, align 8, !alias.scope !405, !nonnull !7, !noundef !7 ; 2 uses
  %i.bf = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val.i69)
          to label %.noexc71 unwind label %bb.al

.noexc71:                                         ; preds = %bb.aj
  br i1 %i.bf, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73

bb.ak:                                            ; preds = %.noexc71
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val.i69)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store i64 %i.az, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir5StateEBH_.exit73: ; preds = %.noexc71, %bb.ah, %bb.ai, %bb.ak
  store i64 %i.az, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  br label %thread-pre-split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync7barrierNtB2_7Barrier3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch7channeljEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0)
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.613.0..sroa_idx, align 8
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %spec.store.select, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6signalNtB2_6Driver3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = invoke noundef nonnull align 8 ptr @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals()
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util3mem6duplex:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util3mem7simplex(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !516
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !516
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !516
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.b, align 8, !alias.scope !516
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %0, ptr %i.c, align 8, !alias.scope !516
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %i.d, align 8, !alias.scope !516
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.e, align 8, !alias.scope !516
  %i.f = call { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio2io5split5splitNtNtNtB4_4util3mem13SimplexStreamEB6_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker10drop_waker(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker11clone_waker(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_inc(ptr noundef nonnull align 8 %0)
  %i.a = insertvalue { ptr, ptr } { ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker12WAKER_VTABLE, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker11wake_by_ref(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask11wake_by_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker11wake_by_val(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask11wake_by_val(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtCslghKHtsL3a4_5tokio2io8blockingINtB2_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB4_10async_read9AsyncRead9poll_readB6_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.637 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 3 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 11 uses
  %.pr = load i64, ptr %0, align 8                ; 3 uses
  %i.h = icmp eq i64 %.pr, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.h, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.a
  %.val52.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

.lr.ph.split.us:                                  ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 5 uses
  %i.p = sub i64 %i.m, %i.o                       ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2097152)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  %.not.us = icmp eq i64 %.pr, -1
  br i1 %.not.us, label %.split.us, label %bb.b, !prof !23

bb.b:                                             ; preds = %.lr.ph.split.us
  store i64 %.pr, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.phi.trans.insert, i64 24, i1 false)
  %i.s = load i64, ptr %i.i, align 8, !noundef !7 ; 7 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.j, align 8, !noundef !7 ; 6 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %.split98.us

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !align !13, !noundef !7 ; 2 uses
  store ptr null, ptr %i.k, align 8
  %.not44.us = icmp eq ptr %i.w, null
  br i1 %.not44.us, label %.split103.us, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  store ptr %i.w, ptr %i.q, align 8
  store i64 %..i, ptr %i.r, align 8
  %i.x = call noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXNtNtB8_2io8blockingINtB19_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1b_10async_read9AsyncRead9poll_read0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB37_2io5error5ErrorENtB19_3BufB1I_EEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io8blocking5StateNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEEBI_(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %._crit_edge.split.us unwind label %.split105

._crit_edge.split.us:                             ; preds = %bb.d
  store i64 -2, ptr %0, align 8
  store ptr %i.x, ptr %.phi.trans.insert, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %._crit_edge.split.us
  %.val52 = phi ptr [ %.val52.pre, %._crit_edge ], [ %i.x, %._crit_edge.split.us ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !557
  store i64 -1, ptr %i.c, align 8, !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !557
  %i.y = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i8, ptr %i.z, align 8, !range !25, !noalias !558, !noundef !7
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i: ; preds = %bb.e
  %i.ac = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.y)
          to label %.noexc.i unwind label %.thread5.i, !noalias !557 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread8.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i: ; preds = %.noexc.i, %bb.e
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.ac, %.noexc.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %i.af = load i8, ptr %i.ae, align 1, !range !24, !noalias !559, !noundef !7 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 69 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !559 ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.j unwind label %.thread5.i, !noalias !560

bb.h:                                             ; preds = %bb.f
  %i.aj = add i8 %i.ai, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i
  %.sroa.33.0.i.i.i.i = phi i8 [ %i.aj, %bb.h ], [ %i.ai, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i.i ]
  store i8 %.sroa.33.0.i.i.i.i, ptr %i.ah, align 1, !noalias !559
  br label %bb.j

.thread5.i:                                       ; preds = %bb.j, %bb.g, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.i.i.i.i = phi i8 [ %i.ai, %bb.i ], [ 0, %bb.g ]
  %.sroa.0.0.i.i7.i.i = phi i1 [ false, %bb.i ], [ true, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  store i24 0, ptr %i.a, align 4, !noalias !557
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.ak)
          to label %bb.k unwind label %.thread5.i, !noalias !560

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  br i1 %.sroa.0.0.i.i7.i.i, label %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit.thread, label %.thread8.i

_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !557
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !557
  br label %bb.y

.thread8.i:                                       ; preds = %.noexc.i, %bb.k
  %.sroa.03.011.i10.off8.i = phi i8 [ %i.af, %bb.k ], [ 0, %.noexc.i ]
  %.sroa.03.011.i10.off16.i = phi i8 [ %.sroa.4.0.i.i.i.i, %bb.k ], [ 0, %.noexc.i ]
  store i8 %.sroa.03.011.i10.off8.i, ptr %i.b, align 1, !noalias !557
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i10.off16.i, ptr %i.al, align 1, !noalias !557
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %i.am = load ptr, ptr %1, align 8, !alias.scope !556, !noalias !560, !nonnull !7, !align !13, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val52, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !557, !nonnull !7, !align !13, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !560, !nonnull !7, !noundef !7
  invoke void %i.aq(ptr noundef nonnull %.val52, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.m unwind label %bb.l, !noalias !560

bb.l:                                             ; preds = %.thread8.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread.i unwind label %bb.o, !noalias !560

bb.m:                                             ; preds = %.thread8.i
  %i.as = load i64, ptr %i.c, align 8, !range !16, !noalias !557, !noundef !7 ; 3 uses
  %.not.i = icmp eq i64 %i.as, -1                 ; 2 uses
  br i1 %.not.i, label %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.b, align 1, !noalias !557
  br label %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit

bb.o:                                             ; preds = %.thread.i, %bb.l
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !560
  unreachable

common.resume:                                    ; preds = %bb.al, %bb.as, %.thread76, %bb.aa, %.split105, %.body, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %.thread.i ], [ %i.bu, %bb.aa ], [ %i.bt, %.split105 ], [ %i.bo, %.body ], [ %.pn46.pn75, %bb.as ], [ %.pn46, %bb.al ], [ %i.dj, %.thread76 ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %bb.l, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread5.i ], [ %i.ar, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #24
          to label %common.resume unwind label %bb.o, !noalias !560

_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit: ; preds = %bb.m, %bb.n
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !556 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.963.0.copyload = load ptr, ptr %.sroa.963.0..sroa_idx, align 8, !noalias !556 ; 2 uses
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !557
  br i1 %.not.i, label %bb.y, label %bb.ac

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #23
  unreachable

.split98.us:                                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.au = sub i64 %i.s, %i.u
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.au) ; 3 uses
  %i.av = icmp ugt i64 %i.u, %i.s
  br i1 %i.av, label %.invoke, label %bb.p, !prof !23

bb.p:                                             ; preds = %.split98.us
  %i.aw = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !563, !noalias !562, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.ax = add i64 %..i.i, %i.o                    ; 6 uses
  %i.ay = icmp uge i64 %i.ax, %i.o
  %i.az = icmp ule i64 %i.ax, %i.m
  %or.cond.i.i = and i1 %i.ay, %i.az
  br i1 %or.cond.i.i, label %bb.q, label %.invoke, !prof !28

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.u
  %i.bb = load ptr, ptr %2, align 8, !alias.scope !565, !noalias !566, !nonnull !7, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !noalias !567
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !565, !noalias !566, !noundef !7
  %i.bf = icmp ult i64 %i.be, %i.ax
  br i1 %i.bf, label %bb.r, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit.i

.invoke:                                          ; preds = %bb.p, %.split98.us
  %i.bg = phi i64 [ %i.u, %.split98.us ], [ %i.o, %bb.p ]
  %i.bh = phi i64 [ %i.s, %.split98.us ], [ %i.ax, %bb.p ]
  %i.bi = phi i64 [ %i.s, %.split98.us ], [ %i.m, %bb.p ]
  %i.bj = phi ptr [ @26, %.split98.us ], [ @27, %bb.p ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bg, i64 noundef %i.bh, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #23
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  store i64 %i.ax, ptr %i.bd, align 8, !alias.scope !565, !noalias !566
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit.i

_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit.i: ; preds = %bb.r, %bb.q
  store i64 %i.ax, ptr %i.n, align 8, !alias.scope !565, !noalias !566
  %i.bk = add i64 %..i.i, %i.u                    ; 2 uses
  store i64 %i.bk, ptr %i.j, align 8, !alias.scope !561, !noalias !562
  %i.bl = icmp eq i64 %i.bk, %i.s
  br i1 %i.bl, label %bb.s, label %_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf7copy_to.exit

bb.s:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !561, !noalias !562
  br label %_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf7copy_to.exit

_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf7copy_to.exit: ; preds = %bb.s, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf9put_slice.exit.i
  %i.bm = load i64, ptr %0, align 8, !range !568, !alias.scope !569, !noundef !7
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit, label %bb.t

bb.t:                                             ; preds = %_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf7copy_to.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !570 ; 2 uses
  %i.bp = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bp, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val3.i.i.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !571, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !572
  br label %.body

bb.w:                                             ; preds = %bb.t
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !570 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i.i.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !571, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !573
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

.body:                                            ; preds = %bb.u, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit: ; preds = %bb.x, %bb.w, %_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf7copy_to.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit, %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit.thread, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit
  %.sroa.6.0 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit ], [ %.sroa.6.1, %bb.am ], [ %i.bx, %bb.ad ], [ undef, %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit ], [ undef, %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit.thread ]
  %.sroa.07.0 = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit ], [ 0, %bb.am ], [ 0, %bb.ad ], [ 1, %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit ], [ 1, %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit.thread ]
  %i.br = insertvalue { i64, ptr } poison, i64 %.sroa.07.0, 0
  %i.bs = insertvalue { i64, ptr } %i.br, ptr %.sroa.6.0, 1
  ret { i64, ptr } %i.bs

.split103.us:                                     ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #26
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.an, %.split103.us
  unreachable

.split105:                                        ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  store i64 -2, ptr %0, align 8
  store ptr %i.x, ptr %.phi.trans.insert, align 8
  br label %common.resume

bb.aa:                                            ; preds = %.invoke, %.split103.us
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #24
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.ap, %bb.as, %bb.aa
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ac:                                            ; preds = %_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_6future6future6Future4pollBb_.exit
  %i.bw = icmp eq i64 %i.as, 2
  br i1 %i.bw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store ptr %.sroa.6.0.copyload, ptr %i.d, align 8
  %i.bx = call noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y

bb.ae:                                            ; preds = %bb.ac
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStreamNtNtB9_11async_write10AsyncWrite19poll_write_vectored:bb.a
bb.g:                                             ; preds = %bb.d
  %.idx.i = shl nuw nsw i64 %3, 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.ao = icmp eq i64 %3, 0
  br i1 %i.ao, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !656, !noalias !657
  store ptr %i.ah, ptr %i.ak, align 8, !alias.scope !656, !noalias !657
  br label %.body

bb.i:                                             ; preds = %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i, %.lr.ph.i
  %i.ar = phi i64 [ %i.y, %.lr.ph.i ], [ %i.bm, %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i ] ; 2 uses
  %.sroa.07.03.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.bn, %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i ] ; 3 uses
  %.sroa.011.02.i = phi ptr [ %2, %.lr.ph.i ], [ %i.as, %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.011.02.i, i64 16 ; 2 uses
  %i.at = icmp eq i64 %.sroa.07.03.i, 0
  br i1 %i.at, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i, %bb.i, %bb.g
  %.sroa.07.0.lcssa.i = phi i64 [ %i.z, %bb.g ], [ %i.bn, %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i ], [ 0, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !656, !noalias !657, !align !13, !noundef !7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !656, !noalias !657
  store ptr null, ptr %i.au, align 8, !alias.scope !656, !noalias !657
  %.not20.i = icmp eq ptr %i.av, null
  br i1 %.not20.i, label %.noexc21, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.02.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !657, !noalias !656, !noundef !7
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.07.03.i, i64 %i.az) ; 7 uses
  %i.ba = load ptr, ptr %.sroa.011.02.i, align 8, !alias.scope !657, !noalias !656, !noundef !7
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.bb = load i64, ptr %i.ap, align 8, !alias.scope !660, !noalias !661, !noundef !7
  %i.bc = sub i64 %i.bb, %i.ar
  %.not.i.i = icmp ugt i64 %..i.i, %i.bc
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = invoke noundef zeroext i1 @_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef range(i64 0, -9223372036854775808) %..i.i, i1 noundef zeroext true)
          to label %.noexc19 unwind label %.loopexit ; 0 uses

.noexc19:                                         ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.x, align 8, !alias.scope !660, !noalias !661
  br label %bb.l

bb.l:                                             ; preds = %.noexc19, %bb.j
  %i.be = phi i64 [ %i.ar, %bb.j ], [ %.pre.i.i, %.noexc19 ]
  %i.bf = load ptr, ptr %0, align 8, !alias.scope !660, !noalias !661, !nonnull !7, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !noalias !657
  %i.bh = load i64, ptr %i.ap, align 8, !alias.scope !660, !noalias !661, !noundef !7
  %i.bi = load i64, ptr %i.x, align 8, !alias.scope !660, !noalias !661, !noundef !7 ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = icmp ugt i64 %..i.i, %i.bj
  br i1 %i.bk, label %bb.m, label %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i, !prof !23

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !662
  store i64 %..i.i, ptr %i.a, align 8, !noalias !662
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !noalias !662
  invoke void @_RNvCslISFVBvEzZQ_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #26
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.m
  unreachable

_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i: ; preds = %bb.l
  %i.bm = add i64 %i.bi, %..i.i                   ; 2 uses
  store i64 %i.bm, ptr %i.x, align 8, !alias.scope !660, !noalias !661
  %i.bn = sub nuw i64 %.sroa.07.03.i, %..i.i      ; 2 uses
  %i.bo = icmp eq ptr %i.as, %i.an
  br i1 %i.bo, label %._crit_edge.i, label %bb.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !657, !nonnull !7, !noundef !7
  invoke void %i.bq(ptr noundef %i.ax)
          to label %.noexc21 unwind label %.loopexit.split-lp, !inline_history !650

.noexc21:                                         ; preds = %bb.n, %._crit_edge.i
  %i.br = sub i64 %i.z, %.sroa.07.0.lcssa.i
  %i.bs = inttoptr i64 %i.br to ptr
  br label %bb.q

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e, %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit unwind label %bb.s

bb.o:                                             ; preds = %.noexc, %bb.f
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !656, !noalias !657
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ah, ptr %i.bt, align 8, !alias.scope !656, !noalias !657
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.q
  %.sroa.06.0.i31 = phi i64 [ %.sroa.06.0.i.ph, %bb.q ], [ 2, %bb.o ]
  %.sroa.4.0.i29 = phi ptr [ %.sroa.4.0.i.ph, %bb.q ], [ undef, %bb.o ]
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
  br label %bb.r

bb.q:                                             ; preds = %.noexc21, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %.sroa.4.0.i.ph = phi ptr [ inttoptr (i64 47244640259 to ptr), %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ], [ %i.bs, %.noexc21 ]
  %.sroa.06.0.i.ph = phi i64 [ 1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ], [ 0, %.noexc21 ]
  store i8 0, ptr %i.c, align 1
  br label %bb.p

bb.r:                                             ; preds = %.critedge, %bb.p
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.i29, %bb.p ], [ undef, %.critedge ]
  %.sroa.0.0 = phi i64 [ %.sroa.06.0.i31, %bb.p ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bu = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bv = insertvalue { i64, ptr } %i.bu, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.bv

bb.s:                                             ; preds = %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !669, !noundef !7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !670, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !670 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread25

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !670
  br label %bb.f

.thread25:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread28

bb.h:                                             ; preds = %bb.g
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEEB3p_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c)
  br label %bb.l

.thread28:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !nonnull !7, !align !13, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !7, !align !13, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7
  invoke void %i.w(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread28
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread28
  %i.y = load i64, ptr %i.c, align 8, !range !14, !noundef !7
  %.not = icmp eq i64 %i.y, 2
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn24

.thread:                                          ; preds = %bb.i, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.x, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEEB3p_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #24
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !677, !noundef !7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread5 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread8, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !678, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !678 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %.thread5

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !678
  br label %bb.f

.thread5:                                         ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread5

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread8

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  br label %bb.l

.thread8:                                         ; preds = %.noexc, %bb.g
  %.sroa.03.011.i10.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i10.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i10.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i10.off16, ptr %i.q, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !align !13, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  invoke void %i.v(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread8
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread8
  %i.x = load i64, ptr %i.c, align 8, !range !16, !noundef !7
  %.not = icmp eq i64 %i.x, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn4

.thread:                                          ; preds = %bb.i, %.thread5
  %.pn4 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread5 ], [ %i.w, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #24
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEENtNtNtB1b_6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !685, !noundef !7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread5 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread8, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !686, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !686 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %.thread5

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !686
  br label %bb.f

.thread5:                                         ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread5

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread8

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  br label %bb.l

.thread8:                                         ; preds = %.noexc, %bb.g
  %.sroa.03.011.i10.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i10.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i10.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i10.off16, ptr %i.q, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !align !13, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  invoke void %i.v(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread8
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread8
  %i.x = load i64, ptr %i.c, align 8, !range !16, !noundef !7
  %.not = icmp eq i64 %i.x, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn4

.thread:                                          ; preds = %bb.i, %.thread5
  %.pn4 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread5 ], [ %i.w, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #24
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !693, !noundef !7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !694, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !694 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread25

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !694
  br label %bb.f

.thread25:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread28

bb.h:                                             ; preds = %bb.g
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB1t_2io8blocking3BufENtNtNtNtB1t_7runtime4task5error9JoinErrorEEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  br label %bb.l

.thread28:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !nonnull !7, !align !13, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !7, !align !13, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7
  invoke void %i.w(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread28
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread28
  %i.y = load i64, ptr %i.c, align 8, !range !18, !noundef !7
  %.not = icmp eq i64 %i.y, -2
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn24

.thread:                                          ; preds = %bb.i, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.x, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB1t_2io8blocking3BufENtNtNtNtB1t_7runtime4task5error9JoinErrorEEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #24
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB4_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB6_11async_write10AsyncWrite10poll_flushB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.640 = alloca [32 x i8], align 8          ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.510.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.640.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.640, i64 16
  %.pre73 = load i64, ptr %0, align 8, !range !17
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.i = phi i64 [ %.pre73, %bb.a ], [ %.be, %.backedge ] ; 3 uses
  %i.j = icmp eq i64 %i.i, -2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.val53 = load ptr, ptr %.sroa.510.0..sroa.0.0.1.sroa_idx, align 8
  call fastcc void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_6future6future6Future4pollBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.c, ptr %.val53, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  %i.k = load i64, ptr %i.c, align 8, !range !16, !noundef !7 ; 4 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.loopexit58, label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.f, align 8, !range !24, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_2
