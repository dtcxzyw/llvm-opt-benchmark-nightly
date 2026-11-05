Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.03?download=true
inline.NumInlined: 433
inline.NumDeleted: 200
begin_hunk_0_@_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner10poll_flush:bb.a
  %i.x = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.8.1 = select i1 %i.w, ptr %i.x, ptr null
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
  br label %bb.n

bb.p:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner22poll_complete_inflight(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = tail call fastcc { i64, ptr } @_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 8 uses
  %i.e = trunc nuw i64 %i.c to i1                 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.g
    i64 0, label %bb.d
    i64 1, label %bb.h
  ], !prof !15

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.m = invoke noundef i8 %i.l(i32 noundef %i.j)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread unwind label %bb.f, !inline_history !3

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !27, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread

bb.e:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
  ret i1 %i.e

bb.f:                                             ; preds = %.noexc, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.d) #29
          to label %bb.j unwind label %bb.i

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread: ; preds = %bb.d, %.noexc
  %.sroa.0.0.i.ph = phi i8 [ %i.m, %.noexc ], [ %i.o, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.0.0.i.ph, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.f, 32
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8   ; 2 uses
  %i.s = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %switch.idx.cast.i.i.i, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.f, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  %i.y = getelementptr i8, ptr %i.d, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !27, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.z, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ab, align 8, !alias.scope !920
  store i8 3, ptr %i.a, align 8, !alias.scope !920
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr nofree noundef nonnull align 8 captures(none) %0, i8 noundef range(i8 0, 5) %1) unnamed_addr #0 {
bb.a:
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ], !prof !24

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #32
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %0 seq_cst, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.d, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ %i.c, %bb.f ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7runtime18is_rt_shutdown_err(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.b
    i64 0, label %bb.c
    i64 1, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  ], !prof !15

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.i)
  br label %bb.c

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 -1
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.l = getelementptr i8, ptr %i.d, i64 7
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 31
  %i.o = load i8, ptr %i.n, align 8, !range !27, !noundef !9
  %i.p = icmp eq i8 %i.o, 42
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit, %bb.d, %bb.e
  %.sroa.0.0 = phi i1 [ false, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.0.0.i2, %bb.e ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !9, !nonnull !9
  %i.s = tail call { ptr, ptr } %i.r(ptr noundef nonnull %i.k) #31
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.k, ptr %i.c, align 8, !noalias !923
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.u, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !923
  store ptr @33, ptr %i.b, align 8, !noalias !923
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 56, ptr %i.v, align 8, !noalias !923
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 0, ptr %i.w, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !923
  store ptr %i.c, ptr %i.a, align 8, !noalias !923
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtBS_4SyncEL_NtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !923
  %i.x = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @11, ptr noundef nonnull @10, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !923
  %i.y = load i64, ptr %i.v, align 8, !noalias !923, !noundef !9
  %i.z = icmp eq i64 %i.y, 0
  %1 = load i8, ptr %i.w, align 8, !range !17, !noalias !923
  %2 = trunc nuw i8 %1 to i1
  %3 = xor i1 %2, true
  %.sroa.0.0.i2 = select i1 %i.z, i1 %3, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime9thread_id9exhausted() unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_owned11split_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !926
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 48, i64 noundef range(i64 8, 129) 8) #14, !noalias !926 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit
  store ptr %i.d, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.k, align 8
  ret void

bb.g:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_owned7reunite(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = icmp eq ptr %1, %2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %3 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.h, align 8
  %i.i = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !946
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
          to label %bb.f unwind label %bb.l

bb.e:                                             ; preds = %bb.k, %bb.b
  ret void

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.k = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.l = cmpxchg ptr %i.k, i64 1, i64 0 monotonic monotonic, align 8, !noalias !947
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i: ; preds = %bb.f
  fence acquire
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !947
  store ptr %i.k, ptr %i.b, align 8, !noalias !947
  call void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !947
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %i.n, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread, label %bb.k, !prof !28

_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i
  %.sroa.6.021 = phi ptr [ %.sroa.6.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.021) ]
  store ptr %.sroa.6.021, ptr %i.a, align 8, !noalias !948
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 39, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #30
          to label %bb.i unwind label %bb.g, !noalias !948

bb.g:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !951, !noalias !948, !nonnull !9, !noundef !9
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !952
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body.thread unwind label %bb.j, !noalias !948

bb.i:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !948
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx12, align 8
  br label %bb.e

.body.thread:                                     ; preds = %bb.l, %bb.m, %bb.h, %bb.g
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body16

bb.l:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !955, !nonnull !9, !noundef !9
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !955
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %.body.thread

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #28
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
