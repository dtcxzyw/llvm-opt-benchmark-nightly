Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.07?download=true
inline.NumInlined: 365
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker12with_currentuNCNvXNvB4_14block_in_placeNtB1t_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0E0Bc_:bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !176
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %.thread.thread.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.thread.thread.i unwind label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.ad = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !177
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit14.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit14.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit14.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.p:                                             ; preds = %bb.e
  store i64 -1, ptr %i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !align !5, !noundef !4
  %.not6.not.i = icmp eq ptr %i.ag, null
  br i1 %.not6.not.i, label %bb.s, label %bb.r, !prof !7

bb.q:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24
          to label %bb.j unwind label %bb.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
          to label %bb.j unwind label %.thread8.i

.thread8.i:                                       ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load i64, ptr %i.i, align 8, !noundef !4
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.i, align 8
  br label %.thread.i

bb.s:                                             ; preds = %bb.p
  store ptr %i.h, ptr %i.af, align 8
  store i64 0, ptr %i.i, align 8
  br label %_RNCNvXNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB4_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Be_.exit

bb.t:                                             ; preds = %.thread.thread.i, %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1G_.exit17.i: ; preds = %.thread.thread.i, %.thread.i
  %.pn8712.i = phi { ptr, i32 } [ %.pn87.i, %.thread.i ], [ %.pn8711.i, %.thread.thread.i ]
  resume { ptr, i32 } %.pn8712.i

.thread.i:                                        ; preds = %.thread8.i, %bb.i
  %.pn87.i = phi { ptr, i32 } [ %i.ah, %.thread8.i ], [ %i.w, %bb.i ] ; 2 uses
  br i1 %.not5.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1G_.exit17.i, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.m, %bb.l
  %.pn8711.i = phi { ptr, i32 } [ %.pn87.i, %.thread.i ], [ %i.aa, %bb.l ], [ %i.aa, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr nonnull %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1G_.exit17.i unwind label %bb.t

_RNCNvXNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB4_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Be_.exit: ; preds = %bb.c, %bb.s
  %i.al = trunc nuw i8 %.0.val1 to i1
  call void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop3set(i1 noundef zeroext %i.al, i8 %.1.val)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %_RNCNvXNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB4_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Be_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %1, ptr nofree noundef align 8 captures(address_is_null) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !range !6, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %.pre15 = load ptr, ptr %0, align 8             ; 4 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %.pre15, %bb.d ], [ %.pre15, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE4pushB8_(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.g)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = icmp eq ptr %.pre15, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !align !5, !noundef !4 ; 2 uses
  %.not5 = icmp eq ptr %i.o, null
  br i1 %.not5, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %bb.m unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.pre15, i64 128
  invoke void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_4Core9push_task(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 128 %i.p, ptr noundef nonnull %1)
          to label %bb.k unwind label %.thread

bb.i:                                             ; preds = %bb.f
  store i64 0, ptr %i.k, align 8
  call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.k, %bb.i
  ret void

.thread:                                          ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %i.k, align 8, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.k, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit

bb.k:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.k, align 8, !noundef !4
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.k, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.m:                                             ; preds = %bb.g
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit: ; preds = %bb.n, %.thread
  %.pn11 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.thr_comm.split-lp, %bb.n ]
  resume { ptr, i32 } %.pn11

bb.n:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEEBI_.exit unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 6 uses
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level15next_expiration(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.h, i64 noundef %i.j)
  %i.k = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level15next_expiration(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %.sroa.0.0.ptr.1, i64 noundef %i.j)
  %i.m = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 2080
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level15next_expiration(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %.sroa.0.0.ptr.2, i64 noundef %i.j)
  %i.o = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 3120
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level15next_expiration(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %.sroa.0.0.ptr.3, i64 noundef %i.j)
  %i.q = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 4160
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level15next_expiration(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %.sroa.0.0.ptr.4, i64 noundef %i.j)
  %i.s = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 5200
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level15next_expiration(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %.sroa.0.0.ptr.5, i64 noundef %i.j)
  %2 = load i64, ptr %0, align 8, !range !6, !noundef !4
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.j
  %spec.store.select.sink = phi i64 [ %2, %bb.j ], [ 1, %bb.c ]
  store i64 %spec.store.select.sink, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel20next_expiration_time(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.3.0 = select i1 %i.c, i64 %i.e, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1X_8adapters3map3MapINtNtNtB1Z_3ops5range5RangejENvMBS_BQ_3newEEB10_(i64 noundef 0, i64 noundef 6) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.c, ptr %i.a, align 8, !noalias !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.f, align 8, !noalias !182
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #24
          to label %bb.e unwind label %bb.c, !noalias !182

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !183, !noalias !182, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !183, !noalias !182, !nonnull !4, !noundef !4
  %i.i = mul nuw nsw i64 %.val1.i, 1040
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #29, !noalias !184
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit

bb.e:                                             ; preds = %bb.b
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  store ptr %i.c, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel4poll(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !204, !noundef !4 ; 2 uses
  %.not.i42 = icmp eq ptr %i.j, null
  br i1 %.not.i42, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11, %bb.a
  %.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.bi, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11 ] ; 3 uses
  %i.o = load ptr, ptr %.lcssa, align 8, !noalias !205, !noundef !4 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !alias.scope !205
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !noalias !205
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.c:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.h, align 8, !alias.scope !205
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.q = load i64, ptr %i.g, align 8, !range !6, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split: ; preds = %bb.c, %bb.b, %bb.k, %bb.l
  %.sink = phi ptr [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %.lcssa, %bb.b ], [ %.lcssa, %bb.c ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false), !noalias !4
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7: ; preds = %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit ], [ %.sink, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.k, align 8, !noundef !4 ; 7 uses
  %.not3 = icmp ugt i64 %i.s, %1
  br i1 %.not3, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8, !noalias !206
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !206, !noundef !4 ; 2 uses
  %.not.i4 = icmp ugt i64 %i.t, %1
  br i1 %.not.i4, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !206
  store ptr %i.n, ptr %i.e, align 8, !noalias !206
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.u, align 8, !noalias !206
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !206
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %1, %i.t
  br i1 %i.v, label %bb.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit

bb.i:                                             ; preds = %bb.h
  store i64 %1, ptr %i.n, align 8, !alias.scope !206
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.w = load ptr, ptr %i.i, align 8, !alias.scope !207, !noundef !4 ; 4 uses
  %.not.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i5, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit
  %i.x = load ptr, ptr %i.w, align 8, !noalias !207, !noundef !4 ; 3 uses
  store ptr %i.x, ptr %i.i, align 8, !alias.scope !207
  %.not6.i6 = icmp eq ptr %i.x, null
  br i1 %.not6.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !noalias !207
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %i.h, align 8, !alias.scope !207
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.m:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.z = load i64, ptr %i.l, align 8, !alias.scope !209, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 6
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !208, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [1040 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  %i.ad = load i64, ptr %i.m, align 8, !alias.scope !209, !noundef !4 ; 4 uses
  %i.ae = and i64 %i.ad, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = xor i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1032 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !210, !noundef !4
  %i.aj = and i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !210
  %i.ak = icmp ult i64 %i.ad, 64
  br i1 %i.ak, label %bb.p, label %bb.q
end_hunk_0
