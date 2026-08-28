Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.12?download=true
inline.NumInlined: 353
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEEBI_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 1, label %bb.g
  ], !prof !22

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ult ptr %i.g, inttoptr (i64 188978561024 to ptr)
  %i.l = and i64 %i.i, 1095216660480
  %i.m = icmp ne i64 %i.l, 1095216660480
  call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.g, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !66, !noalias !63
  store i8 3, ptr %i.a, align 8, !alias.scope !66, !noalias !63
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i unwind label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  br label %_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit

.body:                                            ; preds = %bb.g, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i32, ptr %i.b, align 4, !range !26, !noalias !60, !noundef !5
  %i.q = call noundef i32 @close(i32 noundef %.val4.i) #18 ; 0 uses
  %.val2 = load i32, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq i32 %.val2, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.s = call noundef i32 @close(i32 noundef %.val2) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit

_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
  %.val3.i = load i32, ptr %i.b, align 4, !range !26, !noalias !60, !noundef !5
  %i.t = call noundef i32 @close(i32 noundef %.val3.i) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  %.val.pr = load i32, ptr %i.c, align 8          ; 2 uses
  %i.u = icmp eq i32 %.val.pr, -1
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit3, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit
  %i.v = call noundef i32 @close(i32 noundef %.val.pr) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.h, %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #20
          to label %bb.k unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit3: ; preds = %bb.a, %bb.i, %_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  ret void

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEECslghKHtsL3a4_5tokio.exit
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !noundef !5 ; 2 uses
  %i.b = icmp eq i32 %.val, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @close(i32 noundef %.val) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i32, ptr %i.d, align 4, !noundef !5 ; 2 uses
  %i.e = icmp eq i32 %.val4, -1
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit
  %i.f = tail call noundef i32 @close(i32 noundef %.val4) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val6 = load i32, ptr %i.g, align 4, !noundef !5 ; 2 uses
  %i.h = icmp eq i32 %.val6, -1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10
  %i.i = tail call noundef i32 @close(i32 noundef %.val6) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8 = load i32, ptr %i.j, align 4, !noundef !5 ; 2 uses
  %i.k = icmp eq i32 %.val8, -1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEECslghKHtsL3a4_5tokio.exit12, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11
  %i.l = tail call noundef i32 @close(i32 noundef %.val8) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEECslghKHtsL3a4_5tokio.exit12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEECslghKHtsL3a4_5tokio.exit12: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit
    i64 1, label %bb.c
  ], !prof !22

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !69
  store i8 3, ptr %i.a, align 8, !alias.scope !69
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !72, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !79
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !86, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !86
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #20
          to label %bb.h unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = load i64, ptr %0, align 8, !range !72, !alias.scope !87, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.b, 0
  br i1 %1, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !96, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !96
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !103, !nonnull !5, !noundef !5
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !103
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !110, !nonnull !5, !noundef !5
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !110
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #19
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !117, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !117
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit4

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe12set_blockingNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEB8_(i32 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 (i32, i32, ...) @fcntl(i32 noundef %.0.val, i32 noundef 3) #18 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @__errno_location() #18
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.e, @3
  br i1 %.not.i, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.b, %bb.c
  %i.f = sext i32 %i.d to i64
  %i.g = shl nsw i64 %i.f, 32
  %i.h = or disjoint i64 %i.g, 2
  %i.i = inttoptr i64 %i.h to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = and i32 %i.a, -2049
  %i.k = tail call noundef i32 (i32, i32, ...) @fcntl(i32 noundef %.0.val, i32 noundef 4, i32 noundef %i.j) #18
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit3, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit ], [ %i.s, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit3 ], [ null, %bb.d ]
  ret ptr %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef ptr @__errno_location() #18
  %i.n = load i32, ptr %i.m, align 4, !noundef !5
  %i.o = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i2 = icmp eq ptr %i.o, @3
  br i1 %.not.i2, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit3, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit3

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit3: ; preds = %bb.f, %bb.g
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, 2
  %i.s = inttoptr i64 %i.r to ptr
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB6_9OsStorageNtNtB8_8registry7Storage8for_eachNCNvMs1_BX_INtBX_8RegistryBG_E9broadcast0EBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_RNtNtBU_8registry9EventInfouNCINvXs0_BS_NtBS_9OsStorageNtB36_7Storage8for_eachNCNvMs1_B36_INtB36_8RegistryB3H_E9broadcast0E0NCINvNvB1F_8for_each4callB33_B4j_E0E0EBW_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i
  %.sroa.01.0.i = phi i64 [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw xchg ptr %i.f, i8 0 seq_cst, align 1, !noalias !118
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = tail call noundef zeroext i1 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6SenderuE4sendB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !118
  br i1 %i.h, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 1, !alias.scope !118
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i: ; preds = %bb.c, %bb.b, %.preheader
  %i.i = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_RNtNtBU_8registry9EventInfouNCINvXs0_BS_NtBS_9OsStorageNtB36_7Storage8for_eachNCNvMs1_B36_INtB36_8RegistryB3H_E9broadcast0E0NCINvNvB1F_8for_each4callB33_B4j_E0E0EBW_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_RNtNtBU_8registry9EventInfouNCINvXs0_BS_NtBS_9OsStorageNtB36_7Storage8for_eachNCNvMs1_B36_INtB36_8RegistryB3H_E9broadcast0E0NCINvNvB1F_8for_each4callB33_B4j_E0E0EBW_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoRNtNtBZ_8registry9EventInfouNCINvXs0_BX_NtBX_9OsStorageNtB1M_7Storage8for_eachNCNvMs1_B1M_INtB1M_8RegistryB2n_E9broadcast0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_B2Z_E0E0B11_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtB6_7process3imp4PipeE10into_innerB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  store i32 -1, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.a, align 4
  %i.d = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtBI_7process3imp4PipeEEBI_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #20
          to label %common.resume unwind label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8 = load i32, ptr %i.a, align 4, !range !26, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8Receiver8try_read:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8Receiver9from_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8Receiver13from_owned_fd(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 1, 3) i8 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB5_6Signal9poll_recv(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCslghKHtsL3a4_5tokio6signalNtB2_8RxFuture9poll_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %spec.select = select i1 %i.a, i8 2, i8 1
  ret i8 %spec.select
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util4randNtB4_8FastRand3new() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvNtNtNtCslghKHtsL3a4_5tokio4loom3std4rand4seed() ; 2 uses
  %i.b = lshr i64 %i.a, 32                        ; 2 uses
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = trunc i64 %i.a to i32                    ; 2 uses
  %i.e = icmp eq i32 %i.c, %i.d
  %i.f = icmp eq i64 %i.b, 0
  %or.cond.i = and i1 %i.f, %i.e                  ; 2 uses
  %..i = select i1 %or.cond.i, i32 1, i32 %i.d
  %.1.i = select i1 %or.cond.i, i32 0, i32 %i.c
  %i.g = insertvalue { i32, i32 } poison, i32 %.1.i, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %..i, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB4_9WriteHalf10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !268, !noundef !5
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream10local_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB4_9WriteHalf18try_write_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !268, !noundef !5
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream18try_write_vectored(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB4_9WriteHalf9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !268, !noundef !5
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9peer_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB4_9WriteHalf9try_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !268, !noundef !5
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9try_write(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix18signal_with_handle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !374
  store i32 %1, ptr %i.d, align 4, !noalias !374
  %i.e = icmp slt i32 %1, 1
  br i1 %i.e, label %.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %_RNvXsE_NtNtCs3oUPovFnLWP_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i [
    i32 9, label %.split.i
    i32 19, label %.split.i
    i32 4, label %.split.i
    i32 8, label %.split.i
    i32 11, label %.split.i
  ]

.split.i:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !374
  store ptr %i.d, ptr %i.b, align 8, !noalias !374
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !374
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @40, ptr noundef nonnull %i.b), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !374
  %i.f = call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECslghKHtsL3a4_5tokio(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) #19, !noalias !374
  br label %bb.k

_RNvXsE_NtNtCs3oUPovFnLWP_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i: ; preds = %bb.b
  %i.g = tail call noundef ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6signalNtB4_6Handle11check_inner(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_RNvXsE_NtNtCs3oUPovFnLWP_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals() ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !noalias !374
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = add nsw i64 %i.i, -1                     ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 16) #19
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load atomic i32, ptr %i.s acquire, align 4, !noalias !377
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtBY_6option6OptionlEEE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zEB2G_.exit.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtBY_6option6OptionlEEE10initializeNCINvB2_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zEB2B_(ptr noundef nonnull align 4 %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtBY_6option6OptionlEEE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zEB2G_.exit.i

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtBY_6option6OptionlEEE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zEB2G_.exit.i: ; preds = %bb.f, %bb.e
  %i.v = load i32, ptr %i.r, align 4, !range !381, !noundef !5 ; 2 uses
  %.not15.i = icmp eq i32 %i.v, 2
  br i1 %.not15.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtBY_6option6OptionlEEE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zEB2G_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = trunc nuw i32 %i.v to i1
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !374
  %.not.i.i.i.i.i = icmp eq ptr %i.z, @3
  br i1 %.not.i.i.i.i.i, label %_RNvYNvMNtNtCsaL1QbXo9JQH_3std2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error17from_raw_os_errorINtNtNtBG_3ops8function6FnOnceTlEE9call_onceCslghKHtsL3a4_5tokio.exit.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvYNvMNtNtCsaL1QbXo9JQH_3std2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error17from_raw_os_errorINtNtNtBG_3ops8function6FnOnceTlEE9call_onceCslghKHtsL3a4_5tokio.exit.i.i

_RNvYNvMNtNtCsaL1QbXo9JQH_3std2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error17from_raw_os_errorINtNtNtBG_3ops8function6FnOnceTlEE9call_onceCslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.i, %bb.h
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 32
  %i.ac = or disjoint i64 %i.ab, 2
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ae = call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 33) #19
  br label %bb.k

bb.k:                                             ; preds = %_RNvXsE_NtNtCs3oUPovFnLWP_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i, %.split.i, %bb.d, %_RNvYNvMNtNtCsaL1QbXo9JQH_3std2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error17from_raw_os_errorINtNtNtBG_3ops8function6FnOnceTlEE9call_onceCslghKHtsL3a4_5tokio.exit.i.i, %bb.j
  %.sroa.0.2.i.ph = phi ptr [ %i.ae, %bb.j ], [ %i.ad, %_RNvYNvMNtNtCsaL1QbXo9JQH_3std2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error17from_raw_os_errorINtNtNtBG_3ops8function6FnOnceTlEE9call_onceCslghKHtsL3a4_5tokio.exit.i.i ], [ %i.n, %bb.d ], [ %i.f, %.split.i ], [ %i.g, %_RNvXsE_NtNtCs3oUPovFnLWP_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.2.i.ph, ptr %i.af, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtBY_6option6OptionlEEE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zEB2G_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = call noundef nonnull align 8 ptr @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals()
  %i.ah = call { ptr, i64 } @_RNvMs3_NtNtCslghKHtsL3a4_5tokio6signal8registryNtB5_7Globals17register_listener(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, i64 noundef %i.i) ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  store ptr %i.ai, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.ak, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix6action(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = sext i32 %1 to i64
  tail call void @_RNvMs3_NtNtCslghKHtsL3a4_5tokio6signal8registryNtB5_7Globals12record_event(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call { i64, ptr } @_RNvXs2_NtNtNtCsbPfeiB6icZG_3mio3net3uds6streamRNtB5_10UnixStreamNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 4 uses
  %2 = icmp eq i64 %i.e, 0
  br i1 %2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !382
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.d
  ], !prof !22

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !385, !noalias !382
  store i8 3, ptr %i.a, align 8, !alias.scope !385, !noalias !382
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !382
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix6ctrl_c(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix6signal(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix6signal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = trunc nuw i64 %i.d to i1
  %.sroa.01.0.v = select i1 %i.g, i64 352, i64 560
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.v
  %i.h = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6signal(ptr noundef nonnull align 8 %.sroa.01.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #20
          to label %bb.q unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix18signal_with_handle(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.o = load i64, ptr %i.b, align 8, !range !72, !alias.scope !388, !noundef !5
  %3 = icmp eq i64 %i.o, 0
  br i1 %3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.p = load ptr, ptr %i.f, align 8, !alias.scope !397, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !397
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.s = load ptr, ptr %i.f, align 8, !alias.scope !404, !nonnull !5, !noundef !5
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !404
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.j:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = invoke { ptr, ptr } @_RNvMNtCslghKHtsL3a4_5tokio6signalNtB2_8RxFuture3new(ptr noundef nonnull %i.j, i64 noundef %i.v)
          to label %bb.k unwind label %bb.b       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.x, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.aa = load i64, ptr %i.b, align 8, !range !72, !alias.scope !405, !noundef !5
  %4 = icmp eq i64 %i.aa, 0
  br i1 %4, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.ab = load ptr, ptr %i.f, align 8, !alias.scope !414, !nonnull !5, !noundef !5
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !414
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.ae = load ptr, ptr %i.f, align 8, !alias.scope !421, !nonnull !5, !noundef !5
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !421
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.p:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.q:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtNtCslghKHtsL3a4_5tokio7runtime8blocking20create_blocking_pool(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_12BlockingPool3new(ptr noundef nonnull align 8 %0, i64 noundef %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe4pipe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f)
  %i.g = load i32, ptr %i.f, align 8, !range !235, !noundef !5
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 2, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = load i32, ptr %i.l, align 4, !range !26, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i32, ptr %i.n, align 8, !range !26, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.p = invoke { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.f, !noalias !422 ; 2 uses

.body.i.i:                                        ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val15.i.i.i = load i32, ptr %i.d, align 4, !range !26, !noalias !427, !noundef !5
  %i.r = call noundef i32 @close(i32 noundef %.val15.i.i.i) #18, !noalias !427 ; 0 uses
  br label %.body

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, ptr } %i.p, 0
  %i.t = extractvalue { i64, ptr } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !422
  store i32 %i.m, ptr %i.d, align 4, !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !427
  invoke void @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration28new_with_interest_and_handleNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe6SenderEBc_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef 2, i64 noundef range(i64 0, 2) %i.s, ptr noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.e unwind label %.body.i.i, !noalias !427

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !144, !noalias !427, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !427 ; 3 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = tail call noundef i32 @close(i32 noundef range(i32 0, -1) %i.m) #18, !noalias !422 ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %.body.i.i ], [ %i.y, %bb.f ]
  %i.aa = call noundef i32 @close(i32 noundef %i.o) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe6SenderEBJ_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !427
  %.val.i.i.i = load i32, ptr %i.d, align 4, !range !26, !noalias !427, !noundef !5
  %i.ab = call noundef i32 @close(i32 noundef %.val.i.i.i) #18, !noalias !427 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !422
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ac, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = call noundef i32 @close(i32 noundef %i.o) #18 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.511.0.copyload.i.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !427
  %i.ae = load i32, ptr %i.d, align 4, !range !26, !noalias !427, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !422
  store i64 %i.u, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.511.0.copyload.i.i.i, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.ae, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx, align 8
  %i.af = invoke { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.i unwind label %bb.k, !noalias !430 ; 2 uses

.body.i.i31:                                      ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.val15.i.i.i32 = load i32, ptr %i.b, align 4, !range !26, !noalias !435, !noundef !5
  br label %.body38

bb.i:                                             ; preds = %bb.h
  %i.ah = extractvalue { i64, ptr } %i.af, 0
  %i.ai = extractvalue { i64, ptr } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !430
  store i32 %i.o, ptr %i.b, align 4, !noalias !435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !435
  invoke void @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB6_12Registration28new_with_interest_and_handleNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEBc_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 1, i64 noundef range(i64 0, 2) %i.ah, ptr noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.j unwind label %.body.i.i31, !noalias !435

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.a, align 8, !range !144, !noalias !435, !noundef !5 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !435 ; 3 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %.body.i.i31, %bb.k
  %.val15.i.i.i32.sink = phi i32 [ %.val15.i.i.i32, %.body.i.i31 ], [ %i.o, %bb.k ]
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.ag, %.body.i.i31 ], [ %i.an, %bb.k ]
  %i.ao = call noundef i32 @close(i32 noundef %.val15.i.i.i32.sink) #18, !noalias !430 ; 0 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe6SenderEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe6SenderEBJ_.exit unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !435
  %.val.i.i.i37 = load i32, ptr %i.b, align 4, !range !26, !noalias !435, !noundef !5
  %i.ap = call noundef i32 @close(i32 noundef %.val.i.i.i37) #18, !noalias !435 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.aq, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe6SenderEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %.sroa.511.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.0.copyload.i.i.i34 = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i33, align 8, !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !435
  %i.ar = load i32, ptr %i.b, align 4, !range !26, !noalias !435, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8ReceiverNtNtNtBb_2io10async_read9AsyncRead9poll_read:bb.a
  store i64 %i.au, ptr %i.av, align 8, !alias.scope !528, !noalias !532
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ay = icmp ult i64 %i.au, %i.m
  br i1 %i.ay, label %.noexc31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit.i, !prof !9

.noexc31.i:                                       ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #23, !noalias !528
  unreachable

_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit.i: ; preds = %bb.m
  store i64 %i.au, ptr %i.l, align 8, !alias.scope !534, !noalias !537
  br label %.loopexit43.i

.loopexit43.i:                                    ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit.i
  %.sroa.5.0.i = phi ptr [ null, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8read_bufNtB2_7ReadBuf7advance.exit.i ], [ %i.ab, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !530
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverE9poll_readB9_.exit

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.ar, %bb.g ], [ %switch.idx.cast.i.i.i.i, %bb.e ], [ %i.ap, %bb.f ], [ %i.ak, %.noexc.i ]
  %i.az = icmp eq i8 %.sroa.0.0.i.i, 13
  br i1 %i.az, label %bb.n, label %.loopexit43.i

bb.n:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !530
  store ptr %i.ab, ptr %i.b, align 8, !noalias !530
  invoke void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.e)
          to label %bb.p unwind label %bb.o, !noalias !528

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %.thread.i unwind label %bb.t, !noalias !528

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  switch i64 %i.ae, label %default.unreachable [
    i64 2, label %bb.s
    i64 3, label %bb.q
    i64 0, label %bb.s
    i64 1, label %bb.r
  ], !prof !22

bb.q:                                             ; preds = %bb.p
  %i.bb = icmp ult ptr %i.ab, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.ad, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.t, align 8, !alias.scope !542, !noalias !539
  store i8 3, ptr %i.a, align 8, !alias.scope !542, !noalias !539
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !528
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !530
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15poll_read_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !528
  %i.bf = load i8, ptr %i.g, align 1, !range !205, !noalias !530, !noundef !5 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, -1
  br i1 %i.bg, label %.loopexit.i, label %.lr.ph.split.split.i

bb.t:                                             ; preds = %bb.o, %bb.k
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !528
  unreachable

.thread.i:                                        ; preds = %bb.o, %bb.k
  %.pn38.i = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %lpad.thr_comm.split-lp.i, %bb.k ]
  resume { ptr, i32 } %.pn38.i

.loopexit.i:                                      ; preds = %bb.s, %.split.us.i, %bb.a
  %.sroa.5.2.i = phi ptr [ %.us-phi.i, %.split.us.i ], [ undef, %bb.a ], [ undef, %bb.s ]
  %.sroa.0.2.i = phi i64 [ 0, %.split.us.i ], [ 1, %bb.a ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !530
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverE9poll_readB9_.exit

_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverE9poll_readB9_.exit: ; preds = %.loopexit43.i, %.loopexit.i
  %.sroa.5.1.i = phi ptr [ %.sroa.5.2.i, %.loopexit.i ], [ %.sroa.5.0.i, %.loopexit43.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.2.i, %.loopexit.i ], [ 0, %.loopexit43.i ]
  %i.bi = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.bj = insertvalue { i64, ptr } %i.bi, ptr %.sroa.5.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret { i64, ptr } %i.bj
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 1, 3) i8 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB5_6SignalNtB5_14InternalStream9poll_recv(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCslghKHtsL3a4_5tokio6signalNtB2_8RxFuture9poll_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %spec.select.i = select i1 %i.a, i8 2, i8 1
  ret i8 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8ReceiverNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret i32 %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaperINtB5_11PidfdReaperNtNtCsaL1QbXo9JQH_3std7process5ChildNtB7_17GlobalOrphanQueueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [28 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [28 x i8], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 2, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.h, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, ptr noundef nonnull align 8 dereferenceable(28) %i.f, i64 28, i1 false)
  invoke void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtB9_7process3imp12pidfd_reaper5PidfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val2.i = load i32, ptr %i.h, align 8, !alias.scope !545, !noundef !5 ; 2 uses
  %i.i = icmp eq i32 %.val2.i, -1
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef i32 @close(i32 noundef %.val2.i) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit.i

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i = load i32, ptr %i.k, align 8, !alias.scope !545, !noundef !5 ; 2 uses
  %i.l = icmp eq i32 %.val.i, -1
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef i32 @close(i32 noundef %.val.i) #18 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit3.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit.i: ; preds = %bb.d, %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #20
          to label %.body.thread unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit3.i: ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtBI_7process3imp12pidfd_reaper5PidfdEEBI_.exit unwind label %.body.thread22

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #23
  unreachable

.body.thread22:                                   ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtBI_7process3imp12pidfd_reaper5PidfdEEBI_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit3.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtBI_7process3imp12pidfd_reaper5PidfdEEBI_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXNtNtCslghKHtsL3a4_5tokio7process3impNtNtCsaL1QbXo9JQH_3std7process5ChildNtNtB2_6orphan4Wait8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.e)
          to label %bb.i unwind label %.body.thread22

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io12poll_evented11PollEventedNtNtNtNtBI_7process3imp12pidfd_reaper5PidfdEEBI_.exit
  %i.o = load i32, ptr %i.c, align 8, !range !235, !noundef !5 ; 2 uses
  %i.p = trunc nuw i32 %i.o to i1
  %.not7 = xor i1 %i.p, true
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !235
  %i.s = trunc nuw i32 %i.r to i1
  %or.cond = select i1 %.not7, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val12 = load ptr, ptr %i.t, align 8           ; 4 uses
  %1 = icmp eq i32 %i.o, 0
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ExitStatusENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !548
  %i.u = ptrtoint ptr %.val12 to i64              ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.m
  ], !prof !22

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.w = icmp ult ptr %.val12, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.val12, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !551, !noalias !548
  store i8 3, ptr %i.a, align 8, !alias.scope !551, !noalias !548
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i unwind label %.body.thread22

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !548
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ExitStatusENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.val.i17 = load i32, ptr %i.ab, align 4, !alias.scope !554, !noundef !5 ; 2 uses
  %i.ac = icmp eq i32 %.val.i17, -1
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = call noundef i32 @close(i32 noundef %.val.i17) #18, !noalias !554 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.o, %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val4.i = load i32, ptr %i.ae, align 4, !alias.scope !554, !noundef !5 ; 2 uses
  %i.af = icmp eq i32 %.val4.i, -1
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i
  %i.ag = call noundef i32 @close(i32 noundef %.val4.i) #18, !noalias !554 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.val6.i = load i32, ptr %i.ah, align 4, !alias.scope !554, !noundef !5 ; 2 uses
  %i.ai = icmp eq i32 %.val6.i, -1
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i
  %i.aj = call noundef i32 @close(i32 noundef %.val6.i) #18, !noalias !554 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i: ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val8.i = load i32, ptr %i.ak, align 4, !alias.scope !554, !noundef !5 ; 2 uses
  %i.al = icmp eq i32 %.val8.i, -1
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i
  %i.am = call noundef i32 @close(i32 noundef %.val8.i) #18, !noalias !554 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit: ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ExitStatusENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ExitStatusENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %i.e, i64 28, i1 false)
  call void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_17GlobalOrphanQueueINtNtB5_6orphan11OrphanQueueNtNtCsaL1QbXo9JQH_3std7process5ChildE11push_orphan(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(28) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit

.body.thread:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit.i, %.body.thread22
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread22 ], [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaper5PidfdEEB15_.exit.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 4 dereferenceable(28) %i.e) #20
  resume { ptr, i32 } %eh.lpad-body21
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs7_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8ReceiverNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !557, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8ReceiverNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !noalias !557
  unreachable

_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_8ReceiverNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit: ; preds = %bb.a
  ret i32 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketENtNtB7_3fmt5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCslghKHtsL3a4_5tokio3net3udpNtB4_9UdpSocketINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtNtCsaL1QbXo9JQH_3std3net3udp9UdpSocketE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtCslghKHtsL3a4_5tokio3net3udpNtB2_9UdpSocket8from_std(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB4_9OsStorageNtNtCs3oUPovFnLWP_4core7default7Default7default() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @__libc_current_sigrtmax() #18
  %i.b = sext i32 %i.a to i64
  %i.c = tail call { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSNtNtNtCslghKHtsL3a4_5tokio6signal4unix10SignalInfoEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1M_8adapters4take4TakeINtNtNtB1M_7sources11repeat_with10RepeatWithNvYBQ_NtNtB1O_7default7Default7defaultEEEBW_(i64 noundef %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs_NtNtNtCslghKHtsL3a4_5tokio3net3udp3sysNtB6_9UdpSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !560, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_RNvXNtNtNtCslghKHtsL3a4_5tokio3net3udp3sysNtB4_9UdpSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !noalias !560
  unreachable

_RNvXNtNtNtCslghKHtsL3a4_5tokio3net3udp3sysNtB4_9UdpSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd.exit: ; preds = %bb.a
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtNtCslghKHtsL3a4_5tokio3net4addreNtNtB5_6sealed17ToSocketAddrsPriv15to_socket_addrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
end_hunk_2
