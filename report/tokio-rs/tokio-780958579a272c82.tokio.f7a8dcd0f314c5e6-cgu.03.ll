Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.03?download=true
inline.NumInlined: 433
inline.NumDeleted: 200
begin_hunk_0_@_RNvXs0_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io10async_seek9AsyncSeek10start_seek:bb.a
  %i.d = load i64, ptr %i.c, align 8, !range !20, !noundef !9 ; 3 uses
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 69) #28
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 -1, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !9 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !9
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = invoke noundef i64 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf12discard_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.l

bb.g:                                             ; preds = %bb.h, %bb.d
  %.sroa.3.0 = phi i64 [ %2, %bb.d ], [ %spec.select, %bb.h ]
  %i.n = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit

bb.h:                                             ; preds = %bb.f
  %i.q = icmp eq i64 %1, 2
  %i.r = select i1 %i.q, i64 %i.m, i64 0
  %spec.select = add i64 %i.r, %2
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.n, ptr %i.s, align 8
  store i64 %1, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.v = call noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs0_NtNtB8_2fs4fileNtB1c_4FileNtNtNtB8_2io10async_seek9AsyncSeek10start_seek0TNtB1c_9OperationNtNtB1G_8blocking3BufEEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %i.c, align 8
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit, %bb.b
  %.sroa.04.0 = phi ptr [ %i.f, %bb.b ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit ]
  ret ptr %.sroa.04.0

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.w

bb.l:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #29
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io10async_seek9AsyncSeek13poll_complete(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.416 = alloca [48 x i8], align 8          ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !range !20, !noundef !9
  %i.h = icmp eq i64 %i.g, -2
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.416.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 24
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = load i64, ptr %i.d, align 8, !range !26, !noundef !9 ; 4 uses
  switch i64 %i.l, label %bb.e [
    i64 -2, label %.loopexit
    i64 -1, label %bb.d
  ]

._crit_edge:                                      ; preds = %.thread, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.z, %.loopexit, %._crit_edge
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %.loopexit ], [ %i.z, %bb.z ], [ %i.o, %._crit_edge ]
  %.sroa.02.0 = phi i64 [ %.sroa.02.1, %.loopexit ], [ %i.x, %bb.z ], [ 0, %._crit_edge ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.r = call noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.416, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false)
  store i64 %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.s = load i64, ptr %i.f, align 8, !range !20, !alias.scope !1012, !noundef !9
  switch i64 %i.s, label %bb.f [
    i64 -2, label %bb.i
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.u unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i64 %i.l, label %default.unreachable88 [
    i64 0, label %bb.x
    i64 1, label %bb.k
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.o
  unreachable

default.unreachable88:                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  %i.w = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !noundef !9 ; 7 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.m

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  %i.x = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !8, !noundef !9 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noundef !9 ; 2 uses
  %i.aa = trunc nuw i64 %i.x to i1
  br i1 %i.aa, label %bb.z, label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.ab = load i8, ptr %i.j, align 8, !range !25, !noundef !9
  %.not19 = icmp eq i8 %i.ab, -1
  br i1 %.not19, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #30
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.ac = ptrtoint ptr %i.w to i64                ; 4 uses
  %i.ad = and i64 %i.ac, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %bb.p
    i64 3, label %bb.s
    i64 0, label %bb.q
    i64 1, label %bb.t
  ], !prof !15

bb.p:                                             ; preds = %bb.o
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.p
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !9, !noundef !9
  %i.aj = invoke noundef i8 %i.ai(i32 noundef %i.ag)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !3

bb.q:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !27, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc26, %bb.p, %bb.n
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.w) #29
          to label %.thread40 unwind label %bb.w

bb.r:                                             ; preds = %bb.n
  unreachable

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread: ; preds = %bb.q, %.noexc26
  %.sroa.0.0.i.ph = phi i8 [ %i.aj, %.noexc26 ], [ %i.al, %bb.q ]
  store i8 %.sroa.0.0.i.ph, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.am = lshr i64 %i.ac, 32
  %switch.idx.cast.i.i.i = trunc i64 %i.am to i8  ; 2 uses
  %i.an = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.an)
  store i8 %switch.idx.cast.i.i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = icmp ult ptr %i.w, inttoptr (i64 188978561024 to ptr)
  %i.ap = and i64 %i.ac, 1095216660480
  %i.aq = icmp ne i64 %i.ap, 1095216660480
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.assume(i1 %i.aq)
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.ar = getelementptr i8, ptr %i.w, i64 -1      ; 2 uses
  %i.as = getelementptr i8, ptr %i.w, i64 31
  %i.at = load i8, ptr %i.as, align 8, !range !27, !noundef !9
  store i8 %i.at, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  store ptr %i.ar, ptr %i.k, align 8, !alias.scope !1013
  store i8 3, ptr %i.a, align 8, !alias.scope !1013
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.v

bb.u:                                             ; preds = %bb.j, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.t, %bb.g ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  switch i64 %i.l, label %bb.aa [
    i64 1, label %bb.ab
    i64 2, label %bb.ac
  ]

bb.v:                                             ; preds = %bb.t, %bb.s, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.w:                                             ; preds = %bb.ac, %.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.aa
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %bb.k, %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = load i64, ptr %i.f, align 8, !range !20, !noundef !9
  %i.aw = icmp eq i64 %i.av, -2
  br i1 %i.aw, label %bb.b, label %._crit_edge

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  br label %.thread

bb.y:                                             ; preds = %bb.l
  %i.ax = ptrtoint ptr %i.z to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ax, ptr %i.ay, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.l, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.aa:                                            ; preds = %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %.thread40 unwind label %bb.w

bb.ab:                                            ; preds = %bb.u
  %i.az = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !noundef !9 ; 2 uses
  %.not44 = icmp eq ptr %i.az, null
  br i1 %.not44, label %.thread40, label %bb.ad

bb.ac:                                            ; preds = %bb.u
  %.sroa.2.0..sroa_idx.val22 = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !8, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.2.0..sroa_idx.val23 = load ptr, ptr %i.ba, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.sroa.2.0..sroa_idx.val22, ptr %.sroa.2.0..sroa_idx.val23) #29
          to label %.thread40 unwind label %bb.w

.thread40:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ac, %bb.ad, %bb.ab, %bb.aa
  %.pn38 = phi { ptr, i32 } [ %eh.lpad-body, %bb.ac ], [ %eh.lpad-body, %bb.ad ], [ %eh.lpad-body, %bb.ab ], [ %eh.lpad-body, %bb.aa ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn38

bb.ad:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.az) #29
          to label %.thread40 unwind label %bb.w

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.sroa.5.1 = phi ptr [ %i.r, %bb.d ], [ undef, %bb.b ]
  %.sroa.02.1 = phi i64 [ 1, %bb.d ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call fastcc { i64, ptr } @_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.439 = alloca [48 x i8], align 8          ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.624 = alloca [48 x i8], align 8          ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !25, !noundef !9 ; 2 uses
  store i8 -1, ptr %i.h, align 8
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !range !20, !noundef !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.439.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 24
  %.sroa.624.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.624, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i8 %i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, 3
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.ae, %.loopexit, %bb.r, %bb.b
  %.sroa.7.0 = phi ptr [ %i.p, %bb.b ], [ %.sroa.7.2, %.loopexit ], [ %i.az, %bb.ae ], [ %.sroa.7.1, %bb.r ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ 1, %bb.ae ], [ %.sroa.0.1, %bb.r ]
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.r

bb.d:                                             ; preds = %.lr.ph, %.thread62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624)
  call void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.s = load i64, ptr %i.c, align 8, !range !26, !noundef !9 ; 4 uses
  switch i64 %i.s, label %bb.x [
    i64 -2, label %.loopexit
    i64 -1, label %bb.w
  ]

._crit_edge:                                      ; preds = %.thread62, %.preheader
  %.lcssa = phi i64 [ %i.j, %.preheader ], [ %i.ba, %.thread62 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
end_hunk_0
