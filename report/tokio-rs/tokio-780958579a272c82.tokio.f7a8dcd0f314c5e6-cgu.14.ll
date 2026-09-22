Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.14?download=true
inline.NumInlined: 646
inline.NumDeleted: 372
begin_hunk_0_@_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context8blockingNtB3_19BlockingRegionGuard16block_on_timeoutQINtNtNtB9_4sync7oneshot8ReceiveruEEB9_:bb.a
  %i.ao = extractvalue { i64, i32 } %i.al, 0      ; 3 uses
  %i.ap = extractvalue { i64, i32 } %i.al, 1      ; 2 uses
  %i.aq = icmp eq i64 %i.ao, %i.s
  %i.ar = icmp sge i64 %i.ao, %i.s
  %i.as = icmp samesign uge i32 %i.ap, %i.t
  %spec.select = select i1 %i.aq, i1 %i.as, i1 %i.ar
  br i1 %spec.select, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef %i.t, i64 noundef %i.ao, i32 noundef %i.ap)
          to label %bb.o unwind label %.loopexit  ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.au = extractvalue { i64, i32 } %i.at, 0
  %i.av = extractvalue { i64, i32 } %i.at, 1
  invoke void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread12park_timeout(ptr noalias nofree noundef nonnull %i.a, i64 noundef %i.au, i32 noundef %i.av)
          to label %bb.e unwind label %.loopexit

bb.p:                                             ; preds = %bb.a, %bb.l
  %.sroa.0.1 = phi i8 [ %i.af, %bb.l ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i8 %.sroa.0.1

bb.q:                                             ; preds = %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !50, !nonnull !6, !noundef !6
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !50
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #16
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !53, !nonnull !6, !noundef !6
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !53
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #16
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !60, !noundef !6
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !60, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  %i.g = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.f
  ], !prof !13

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !61, !noalias !60
  store i8 3, ptr %i.a, align 8, !alias.scope !61, !noalias !60
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i1 = load ptr, ptr %i.n, align 8, !alias.scope !62, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !62 ; 6 uses
  %i.p = icmp eq ptr %.val.i1, null
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.q = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !62 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.q(ptr noundef nonnull %.val.i1)
          to label %bb.j unwind label %bb.l, !noalias !62

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !6, !noalias !62 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !6, !noalias !62
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #17, !noalias !62
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !6, !noalias !62 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !6, !noalias !62
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #17, !noalias !62
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4.i.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4.i.i.i.i: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.k, %bb.j, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTIBC_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtNtNtB1y_7runtime4task5error9JoinErrorEEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !69 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.e = ptrtoint ptr %.val1.i to i64             ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.val1.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !70, !noalias !69
  store i8 3, ptr %i.a, align 8, !alias.scope !70, !noalias !69
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.f, !noalias !69

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #18
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEEB1u_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEEB1u_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i1 = load ptr, ptr %i.r, align 8, !alias.scope !71, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i2 = load ptr, ptr %i.s, align 8, !alias.scope !71 ; 6 uses
  %i.t = icmp eq ptr %.val.i1, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i2) ]
  %i.u = load ptr, ptr %.val1.i2, align 8, !invariant.load !6, !noalias !71 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.u(ptr noundef nonnull %.val.i1)
          to label %bb.m unwind label %bb.o, !noalias !71

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !14, !invariant.load !6, !noalias !71 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !15, !invariant.load !6, !noalias !71
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #17, !noalias !71
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !14, !invariant.load !6, !noalias !71 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !15, !invariant.load !6, !noalias !71
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #17, !noalias !71
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit: ; preds = %bb.n, %bb.m, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEEB1u_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTIBC_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtNtNtB1y_7runtime4task5error9JoinErrorEEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !78 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.e = ptrtoint ptr %.val1.i to i64             ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.val1.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !79, !noalias !78
  store i8 3, ptr %i.a, align 8, !alias.scope !79, !noalias !78
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.f, !noalias !78

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #18
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEEB1u_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEEB1u_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i1 = load ptr, ptr %i.r, align 8, !alias.scope !80, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i2 = load ptr, ptr %i.s, align 8, !alias.scope !80 ; 6 uses
  %i.t = icmp eq ptr %.val.i1, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i2) ]
  %i.u = load ptr, ptr %.val1.i2, align 8, !invariant.load !6, !noalias !80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.u(ptr noundef nonnull %.val.i1)
          to label %bb.m unwind label %bb.o, !noalias !80

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !14, !invariant.load !6, !noalias !80 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !15, !invariant.load !6, !noalias !80
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #17, !noalias !80
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !14, !invariant.load !6, !noalias !80 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !15, !invariant.load !6, !noalias !80
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #17, !noalias !80
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit: ; preds = %bb.n, %bb.m, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEEB1u_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTIBC_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtNtNtB1y_7runtime4task5error9JoinErrorEEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !87 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.e = ptrtoint ptr %.val1.i to i64             ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.val1.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !88, !noalias !87
  store i8 3, ptr %i.a, align 8, !alias.scope !88, !noalias !87
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.f, !noalias !87

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #18
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEEB1u_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEEB1u_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i1 = load ptr, ptr %i.r, align 8, !alias.scope !89, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i2 = load ptr, ptr %i.s, align 8, !alias.scope !89 ; 6 uses
  %i.t = icmp eq ptr %.val.i1, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i2) ]
  %i.u = load ptr, ptr %.val1.i2, align 8, !invariant.load !6, !noalias !89 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.u(ptr noundef nonnull %.val.i1)
          to label %bb.m unwind label %bb.o, !noalias !89

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !14, !invariant.load !6, !noalias !89 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !15, !invariant.load !6, !noalias !89
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #17, !noalias !89
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !14, !invariant.load !6, !noalias !89 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i2, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !15, !invariant.load !6, !noalias !89
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #17, !noalias !89
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit: ; preds = %bb.n, %bb.m, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEEB1u_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeIBC_NtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbENtNtNtNtB25_7runtime4task5error9JoinErrorEEB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.b, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !114, !nonnull !6, !noundef !6
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !115
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %common.resume

bb.g:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #16
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !120, !nonnull !6, !noundef !6
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !121
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #16
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_.exit

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %.body.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ], [ %i.w, %bb.p ], [ %i.w, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !122, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !122 ; 6 uses
  %i.p = icmp eq ptr %.val.i, null
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.q = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !122 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.q(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !122

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !6, !noalias !122 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !6, !noalias !122
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #17, !noalias !122
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_.exit

bb.o:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !6, !noalias !122 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !6, !noalias !122
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #17, !noalias !122
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB14_2io8blocking3BufENtNtNtNtB14_7runtime4task5error9JoinErrorEEB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !17, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.g
    i64 1, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.e, align 8, !range !12, !alias.scope !137, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !137 ; 4 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.h = ptrtoint ptr %.val1.i.i to i64           ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !13

default.unreachable:                              ; preds = %bb.l, %bb.h, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !138, !noalias !137
  store i8 3, ptr %i.c, align 8, !alias.scope !138, !noalias !137
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i unwind label %bb.o, !noalias !135

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i

bb.g:                                             ; preds = %bb.b
  %.val2.i.i = load i64, ptr %i.e, align 8, !range !12, !alias.scope !137, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.o, align 8, !alias.scope !137 ; 4 uses
  %i.p = icmp eq i64 %.val2.i.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  %i.q = ptrtoint ptr %.val3.i.i to i64           ; 2 uses
  %i.r = and i64 %i.q, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5.i.i
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5.i.i
    i64 1, label %bb.j
  ], !prof !13

bb.i:                                             ; preds = %bb.h
  %i.s = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.t = and i64 %i.q, 1095216660480
  %i.u = icmp ne i64 %i.t, 1095216660480
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.assume(i1 %i.u)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !139, !noalias !137
  store i8 3, ptr %i.b, align 8, !alias.scope !139, !noalias !137
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5.i.i unwind label %bb.o, !noalias !135

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i

bb.k:                                             ; preds = %bb.b
  %.val4.i.i = load ptr, ptr %i.e, align 8, !alias.scope !137, !noundef !6 ; 4 uses
  %i.x = icmp eq ptr %.val4.i.i, null
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  %i.y = ptrtoint ptr %.val4.i.i to i64           ; 2 uses
  %i.z = and i64 %i.y, 3
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7.i.i
    i64 3, label %bb.m
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7.i.i
    i64 1, label %bb.n
  ], !prof !13

bb.m:                                             ; preds = %bb.l
  %i.aa = icmp ult ptr %.val4.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ab = and i64 %i.y, 1095216660480
  %i.ac = icmp ne i64 %i.ab, 1095216660480
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7.i.i

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.val4.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !140, !noalias !137
  store i8 3, ptr %i.a, align 8, !alias.scope !140, !noalias !137
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7.i.i unwind label %bb.o, !noalias !135

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #18
          to label %common.resume unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7.i.i, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5.i.i, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtBI_2io8blocking3BufEEBI_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.ai, %bb.p ], [ %i.au, %bb.y ], [ %i.au, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtBI_2io8blocking3BufEEBI_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.al, align 8, !alias.scope !141, !noundef !6 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.am, align 8, !alias.scope !141 ; 6 uses
  %i.an = icmp eq ptr %.val.i, null
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ao = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.ao(ptr noundef nonnull %.val.i)
          to label %bb.v unwind label %bb.x, !noalias !141

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !14, !invariant.load !6, !noalias !141 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !15, !invariant.load !6, !noalias !141
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #17, !noalias !141
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.x:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !14, !invariant.load !6, !noalias !141 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !15, !invariant.load !6, !noalias !141
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #17, !noalias !141
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit: ; preds = %bb.w, %bb.v, %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtBI_2io8blocking3BufEEBI_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtB1f_7ReadDir15poll_next_entry0EEB1j_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtBG_7ReadDir15poll_next_entry0EBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB1f_6Launch6launch0EEB1n_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.a = load ptr, ptr %.0.val, align 8, !alias.scope !151, !nonnull !6, !noundef !6
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !151
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtBG_6Launch6launch0EBO_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.0.val) #16
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtBG_6Launch6launch0EBO_.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtBG_6Launch6launch0EBO_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #17
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #17
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNvXsf_NtNtB8_3net4addreNtNtB1C_6sealed17ToSocketAddrsPriv15to_socket_addrs0ENtNtBX_8schedule16BlockingScheduleEB8_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNvXsh_NtNtB8_3net4addrTRetENtNtB1C_6sealed17ToSocketAddrsPriv15to_socket_addrs0ENtNtBX_8schedule16BlockingScheduleEB8_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXsh_NtNtBb_3net4addrTRetENtNtB1O_6sealed17ToSocketAddrsPriv15to_socket_addrs0ENtNtB19_8schedule16BlockingScheduleE8shutdownBb_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBZ_4util11linked_list10LinkedListINtNtNtBZ_7runtime4task4TaskINtNtBa_4sync3ArcNtNtNtB2u_9scheduler14current_thread6HandleEEEEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB41_8adapters4take4TakeINtNtNtB41_7sources11repeat_with10RepeatWithNCNvMNtB1Q_12sharded_listINtB6p_11ShardedListB2p_E3new0EEEBZ_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB13_4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2z_9scheduler14current_thread6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4u_7sources11repeat_with10RepeatWithNCNvMNtB1U_12sharded_listINtB60_11ShardedListB2u_E3new0EEE9from_iterB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0)
  %i.b = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE16into_boxed_sliceBN_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBZ_4util11linked_list10LinkedListINtNtNtBZ_7runtime4task4TaskINtNtBa_4sync3ArcNtNtNtNtB2u_9scheduler12multi_thread6handle6HandleEEEEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB48_8adapters4take4TakeINtNtNtB48_7sources11repeat_with10RepeatWithNCNvMNtB1Q_12sharded_listINtB6w_11ShardedListB2p_E3new0EEEBZ_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB13_4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2z_9scheduler12multi_thread6handle6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4B_7sources11repeat_with10RepeatWithNCNvMNtB1U_12sharded_listINtB67_11ShardedListB2u_E3new0EEE9from_iterB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0)
  %i.b = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtNtB2i_9scheduler12multi_thread6handle6HandleEEEEE16into_boxed_sliceBN_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtBZ_7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtNtB2R_9scheduler12multi_thread6handle6HandleEEEEEINtNtNtNtB1Y_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB4z_8adapters4take4TakeINtNtNtB4z_7sources11repeat_with10RepeatWithNCINvNtB3D_5queue5localB3i_E0EEEBZ_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtB13_7runtime4task8NotifiedINtNtB6_4sync3ArcNtNtNtNtB2V_9scheduler12multi_thread6handle6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtB22_4iter8adapters4take4TakeINtNtNtB51_7sources11repeat_with10RepeatWithNCINvNtB3I_5queue5localB3n_E0EEE9from_iterB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0)
  %i.b = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtNtBN_7runtime4task8NotifiedINtNtB6_4sync3ArcNtNtNtNtB2F_9scheduler12multi_thread6handle6HandleEEEEE16into_boxed_sliceBN_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1M_8adapters4take4TakeINtNtNtB1M_7sources11repeat_with10RepeatWithNvYBQ_NtNtB1O_7default7Default7defaultEEEBW_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB2d_7sources11repeat_with10RepeatWithNvYBU_NtNtB2f_7default7Default7defaultEEE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0)
  %i.b = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoE16into_boxed_sliceBK_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1X_8adapters3map3MapINtNtNtB1Z_3ops5range5RangejENvMBS_BQ_3newEEB10_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2q_3ops5range5RangejENvMBW_BU_3newEE9from_iterB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelE16into_boxed_sliceBO_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB2_8ReadHalf10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB2_8ReadHalf17try_read_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream17try_read_vectored(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB2_8ReadHalf8try_read(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream8try_read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB2_8ReadHalf9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9peer_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB2_8ReadHalf9poll_peek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9poll_peek(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5abortNtB2_11AbortHandle11is_finished(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State4load(ptr noundef nonnull align 8 %i.a)
  %i.c = and i64 %i.b, 2
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5abortNtB2_11AbortHandle5abort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1622, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State33transition_to_notified_and_cancel(ptr noundef nonnull align 8 %i.a), !noalias !1622
  br i1 %i.b, label %bb.b, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1622, !nonnull !6, !align !7, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1622, !nonnull !6, !noundef !6
  tail call void %i.f(ptr noundef nonnull %i.a), !noalias !1622, !inline_history !1621
  br label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort.exit

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtB2_9JoinError10into_panic(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7, !noundef !6
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_ENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorE6expectB21_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_ENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorE6expectB21_.exit, label %bb.c, !prof !1626

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1627
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !noalias !1628
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.6.0..sroa_idx2, align 8, !noalias !1628
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx4, align 8, !noalias !1628
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #19
          to label %bb.e unwind label %bb.d, !noalias !1629

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #18
          to label %bb.g unwind label %bb.f, !noalias !1629

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1629
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_ENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorE6expectB21_.exit: ; preds = %.thread, %bb.b
  %.sroa.8.09 = phi ptr [ %i.e, %.thread ], [ %.sroa.8.0.copyload, %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.09) ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.8.09, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -2) i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6sourceNtB2_10TimeSource16deadline_to_tick(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { i64, i32 } @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4time7instantNtB5_7InstantINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %1, i32 noundef %2, i64 noundef 0, i32 noundef 999999) ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  %.val = load i64, ptr %0, align 8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i32, ptr %i.e, align 8, !range !21, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.f, align 8
  %i.g = call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %.val, i32 noundef %.val1) ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  %i.j = zext i64 %i.h to i128
  %i.k = mul nuw nsw i128 %i.j, 1000
  %i.l = icmp ult i32 %i.i, 1000000000
  call void @llvm.assume(i1 %i.l)
  %i.m = udiv i32 %i.i, 1000000
  %i.n = zext nneg i32 %i.m to i128
  %i.o = add nuw nsw i128 %i.k, %i.n              ; 2 uses
  %i.p = icmp samesign ugt i128 %i.o, 18446744073709551615
  %i.q = trunc nuw i128 %i.o to i64
  %i.r = call range(i64 0, -2) i64 @llvm.umin.i64(i64 %i.q, i64 -3)
  %..i.i = select i1 %i.p, i64 -3, i64 %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %..i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6sourceNtB2_10TimeSource3new(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time5clockNtB2_5Clock3now(ptr noundef nonnull align 8 %0)
  ret { i64, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -2) i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6sourceNtB2_10TimeSource3now(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time5clockNtB2_5Clock3now(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  %.val = load i64, ptr %0, align 8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i32, ptr %i.e, align 8, !range !21, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.f, align 8
  %i.g = call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %.val, i32 noundef %.val1) ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  %i.j = zext i64 %i.h to i128
  %i.k = mul nuw nsw i128 %i.j, 1000
  %i.l = icmp ult i32 %i.i, 1000000000
  call void @llvm.assume(i1 %i.l)
  %i.m = udiv i32 %i.i, 1000000
  %i.n = zext nneg i32 %i.m to i128
  %i.o = add nuw nsw i128 %i.k, %i.n              ; 2 uses
  %i.p = icmp samesign ugt i128 %i.o, 18446744073709551615
  %i.q = trunc nuw i128 %i.o to i64
  %i.r = call range(i64 0, -2) i64 @llvm.umin.i64(i64 %i.q, i64 -3)
  %..i.i = select i1 %i.p, i64 -3, i64 %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %..i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB4_9WriteHalf10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB4_9WriteHalf18try_write_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream18try_write_vectored(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB4_9WriteHalf9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9peer_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net3tcp5splitNtB4_9WriteHalf9try_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9try_write(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void %i.d(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask4poll(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void %i.c(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void %i.d(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask7ref_inc(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_inc(ptr noundef nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void %i.d(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask11wake_by_ref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State29transition_to_notified_by_ref(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  tail call void %i.f(ptr noundef nonnull %i.a), !inline_history !1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask11wake_by_val(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.b = tail call noundef i8 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State29transition_to_notified_by_val(ptr noundef nonnull align 8 %i.a)
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference.exit.sink.split: ; preds = %bb.b, %bb.c
  %.sink.in = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ]
  %.sink = load ptr, ptr %.sink.in, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void %i.d(ptr noundef nonnull %i.a)
  br label %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference.exit

_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference.exit: ; preds = %_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference.exit.sink.split, %bb.b, %bb.a
end_hunk_1
