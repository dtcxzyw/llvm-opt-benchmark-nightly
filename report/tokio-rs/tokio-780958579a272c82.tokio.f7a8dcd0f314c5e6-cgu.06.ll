Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 137
begin_hunk_0_@_RNvXs3_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStreamNtNtB9_11async_write10AsyncWrite10poll_write:bb.a

bb.p:                                             ; preds = %.noexc21, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %.sroa.4.0.i.ph = phi ptr [ inttoptr (i64 47244640259 to ptr), %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ], [ %i.bh, %.noexc21 ]
  %.sroa.06.0.i.ph = phi i64 [ 1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ], [ 0, %.noexc21 ]
  store i8 0, ptr %i.c, align 1
  br label %bb.o

bb.q:                                             ; preds = %.critedge, %bb.o
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.i29, %bb.o ], [ undef, %.critedge ]
  %.sroa.0.0 = phi i64 [ %.sroa.06.0.i31, %bb.o ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bk = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bl = insertvalue { i64, ptr } %i.bk, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.bl

bb.r:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @_RNvXs3_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStreamNtNtB9_11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) initializes((72, 73)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8, !alias.scope !632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !632, !align !13, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !632
  store ptr null, ptr %i.b, align 8, !alias.scope !632
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStream11close_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !632, !nonnull !7, !noundef !7
  tail call void %i.g(ptr noundef %i.e), !noalias !632, !inline_history !2
  br label %_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStream11close_write.exit

_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStream11close_write.exit: ; preds = %bb.a, %bb.b
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs3_NtNtNtCslghKHtsL3a4_5tokio2io4util3memNtB5_13SimplexStreamNtNtB9_11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [3 x i8], align 4                 ; 8 uses
  %i.c = alloca [2 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !646, !noundef !7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !8

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.h = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.d), !noalias !646 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !647, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !647 ; 4 uses
  br i1 %i.l, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i24 0, ptr %i.b, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.p = add i8 %i.n, -1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit: ; preds = %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.p, %bb.c ], [ %i.n, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i24 0, ptr %i.b, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %.sroa.03.011.i24.off8 = phi i8 [ %i.k, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %.sroa.03.011.i24.off16 = phi i8 [ %i.n, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  store i8 %.sroa.03.011.i24.off8, ptr %i.c, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i24.off16, ptr %i.r, align 1
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i8, ptr %i.s, align 8, !range !24, !alias.scope !648, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !648, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !648, !noundef !7 ; 2 uses
  %i.z = sub i64 %i.w, %i.y                       ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ab = load ptr, ptr %.val, align 8, !noalias !650, !nonnull !7, !align !13, !noundef !7
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !650, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !650, !noundef !7
  %i.af = invoke { ptr, ptr } %i.ac(ptr noundef %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !642 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !648, !align !13, !noundef !7 ; 2 uses
  %i.aj = icmp eq ptr %.val.i, null
  br i1 %i.aj, label %bb.o, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val21.i = load ptr, ptr %i.ak, align 8, !alias.scope !648
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !650, !nonnull !7, !noundef !7
  invoke void %i.am(ptr noundef %.val21.i)
          to label %bb.o unwind label %bb.h, !noalias !650, !inline_history !1

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
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !648
  store ptr %i.ah, ptr %i.ak, align 8, !alias.scope !648
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
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !648, !align !13, !noundef !7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !648
  store ptr null, ptr %i.au, align 8, !alias.scope !648
  %.not20.i = icmp eq ptr %i.av, null
  br i1 %.not20.i, label %.noexc21, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.02.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !649, !noundef !7
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.07.03.i, i64 %i.az) ; 7 uses
  %i.ba = load ptr, ptr %.sroa.011.02.i, align 8, !alias.scope !649, !noundef !7
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.bb = load i64, ptr %i.ap, align 8, !alias.scope !652, !noundef !7
  %i.bc = sub i64 %i.bb, %i.ar
  %.not.i.i = icmp ugt i64 %..i.i, %i.bc
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = invoke noundef zeroext i1 @_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef range(i64 0, -9223372036854775808) %..i.i, i1 noundef zeroext true)
          to label %.noexc19 unwind label %.loopexit.split-lp ; 0 uses

.noexc19:                                         ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.x, align 8, !alias.scope !652
  br label %bb.l

bb.l:                                             ; preds = %.noexc19, %bb.j
  %i.be = phi i64 [ %i.ar, %bb.j ], [ %.pre.i.i, %.noexc19 ]
  %i.bf = load ptr, ptr %0, align 8, !alias.scope !652, !nonnull !7, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !noalias !649
  %i.bh = load i64, ptr %i.ap, align 8, !alias.scope !652, !noundef !7
  %i.bi = load i64, ptr %i.x, align 8, !alias.scope !652, !noundef !7 ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = icmp ugt i64 %..i.i, %i.bj
  br i1 %i.bk, label %bb.m, label %_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i, !prof !23

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !653
  store i64 %..i.i, ptr %i.a, align 8, !noalias !653
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !noalias !653
  invoke void @_RNvCslISFVBvEzZQ_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #26
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.m
  unreachable

_RNvMs_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit.i: ; preds = %bb.l
  %i.bm = add i64 %i.bi, %..i.i                   ; 2 uses
  store i64 %i.bm, ptr %i.x, align 8, !alias.scope !652
  %i.bn = sub nuw i64 %.sroa.07.03.i, %..i.i      ; 2 uses
  %i.bo = icmp eq ptr %i.as, %i.an
  br i1 %i.bo, label %._crit_edge.i, label %bb.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !649, !nonnull !7, !noundef !7
  invoke void %i.bq(ptr noundef %i.ax)
          to label %.noexc21 unwind label %.loopexit.split-lp, !inline_history !642

.noexc21:                                         ; preds = %bb.n, %._crit_edge.i
  %i.br = sub i64 %i.z, %.sroa.07.0.lcssa.i
  %i.bs = inttoptr i64 %i.br to ptr
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.k, %bb.n, %bb.m, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit unwind label %bb.s

bb.o:                                             ; preds = %.noexc, %bb.f
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !648
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ah, ptr %i.bt, align 8, !alias.scope !648
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
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !660, !noundef !7
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
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !661, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !661 ; 4 uses
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
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !661
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
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !668, !noundef !7
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
  %i.k = load i8, ptr %i.j, align 1, !range !24, !noalias !669, !noundef !7 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !669 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
end_hunk_0
