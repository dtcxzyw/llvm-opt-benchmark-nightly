Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_dcutr-0b78cb70ecea022b.libp2p_dcutr.dd3b15936bc3e9b9-cgu.4?download=true
inline.NumInlined: 126
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbZN1VVVQjZP_5prost5error11DecodeErrorECsiZBANkraIbZ_12libp2p_dcutr:bb.a
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.g
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.l, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #23
          to label %.body.i.i unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiZBANkraIbZ_12libp2p_dcutr.exit.sink.split.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.l:                                             ; preds = %.body.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiZBANkraIbZ_12libp2p_dcutr.exit.sink.split.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.j, %.body.i.i.i, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.t, %bb.m ], [ %i.q, %bb.j ], [ %i.j, %bb.d ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTReB19_EEECsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val) #23
          to label %bb.r unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbZN1VVVQjZP_5prost5error15DecodeErrorKindECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiZBANkraIbZ_12libp2p_dcutr.exit.sink.split.i.i.i, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTReBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTReB19_EEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbZN1VVVQjZP_5prost5error15DecodeErrorKindECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTReBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTReB19_EEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbZN1VVVQjZP_5prost5error15DecodeErrorKindECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTReBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsbZN1VVVQjZP_5prost5error5InnerEECsiZBANkraIbZ_12libp2p_dcutr.exit unwind label %bb.q

bb.p:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTReB19_EEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.q ], [ %i.u, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsbZN1VVVQjZP_5prost5error5InnerEECsiZBANkraIbZ_12libp2p_dcutr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTReB19_EEECsiZBANkraIbZ_12libp2p_dcutr.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiZBANkraIbZ_12libp2p_dcutr.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiZBANkraIbZ_12libp2p_dcutr.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiZBANkraIbZ_12libp2p_dcutr.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiZBANkraIbZ_12libp2p_dcutr.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsiZBANkraIbZ_12libp2p_dcutr.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsiZBANkraIbZ_12libp2p_dcutr.exit
    i64 1, label %bb.c
  ], !prof !26

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsiZBANkraIbZ_12libp2p_dcutr.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !27
  store i8 3, ptr %i.a, align 8, !alias.scope !27
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsiZBANkraIbZ_12libp2p_dcutr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsiZBANkraIbZ_12libp2p_dcutr.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiZBANkraIbZ_12libp2p_dcutr5proto12holepunch_pb9HolePunchEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECsiZBANkraIbZ_12libp2p_dcutr.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsiZBANkraIbZ_12libp2p_dcutr.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsiZBANkraIbZ_12libp2p_dcutr.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECsiZBANkraIbZ_12libp2p_dcutr.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol7inbound9handshake0s0_0EINtB4_3VechEEB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = shl i64 %i.c, 5                          ; 4 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol7inbound9handshake0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VechEENCINvNtB12_16in_place_collect24write_in_place_with_dropB4N_E0INtNtBc_6result6ResultB4c_zEEB2w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol7inbound9handshake0s0_0EEB2I_.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrE32forget_allocation_drop_remainingCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCsbli3iz7XG76_9multiaddr9MultiaddrINtBG_3VechEEECsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #24 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #25
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol7inbound9handshake0s0_0EEB2I_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol8outbound9handshake00EINtB4_3VechEEB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = shl i64 %i.c, 5                          ; 4 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol8outbound9handshake00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VechEENCINvNtB12_16in_place_collect24write_in_place_with_dropB4L_E0INtNtBc_6result6ResultB4a_zEEB2w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol8outbound9handshake00EEB2I_.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrE32forget_allocation_drop_remainingCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCsbli3iz7XG76_9multiaddr9MultiaddrINtBG_3VechEEECsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiZBANkraIbZ_12libp2p_dcutr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #24 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #25
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCNvNtNtCsiZBANkraIbZ_12libp2p_dcutr8protocol8outbound9handshake00EEB2I_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiZBANkraIbZ_12libp2p_dcutr(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !40, !noalias !41
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !40, !noalias !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !41, !noalias !38
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !41, !noalias !38
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !40, !noalias !41
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !40, !noalias !41
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !41, !noalias !38
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !41, !noalias !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !38, !noalias !39
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !39, !noalias !38
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !38, !noalias !39
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !39, !noalias !38
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !38, !noalias !39
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !39, !noalias !38
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !38, !noalias !39
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !39, !noalias !38
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !44, !noalias !45
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !45, !noalias !44
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !44, !noalias !45
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !45, !noalias !44
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !37
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtCs1eA6bChxBZF_5bytes5bytesNtB6_5BytesNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs9gyJhbkOeXY_8hashlink13DefaultHasherECsiZBANkraIbZ_12libp2p_dcutr(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16, !alias.scope !64, !noundef !4 ; 3 uses
  %i.g = icmp ugt i8 %i.f, 64
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i64 %i.d to i128
  %i.i = zext nneg i8 %i.f to i128
  %i.j = shl nuw i128 %i.h, %i.i
  %i.k = load i128, ptr %1, align 16, !alias.scope !64, !noundef !4
  %i.l = or i128 %i.k, %i.j
  %i.m = add nuw i8 %i.f, 64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !65, !noalias !66
  %.phi.trans.insert1 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2 = load ptr, ptr %.phi.trans.insert1, align 16, !alias.scope !65, !noalias !66
  br label %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsiZBANkraIbZ_12libp2p_dcutr.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load i128, ptr %1, align 16, !alias.scope !64, !noundef !4 ; 2 uses
  %i.o = trunc i128 %i.n to i64
  %i.p = lshr i128 %i.n, 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !64, !noundef !4
  %i.s = xor i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !64, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !64, !noundef !4
  %i.w = zext i64 %i.s to i128
  %i.x = zext i64 %i.v to i128
  %i.y = xor i128 %i.p, %i.x
  %i.z = mul nuw i128 %i.y, %i.w                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64
  %i.ad = zext i64 %i.d to i128
  br label %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsiZBANkraIbZ_12libp2p_dcutr.exit

_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsiZBANkraIbZ_12libp2p_dcutr.exit: ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.u, %bb.c ], [ %.pre2, %bb.b ] ; 2 uses
  %i.af = phi i64 [ %i.ac, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.sink.i.i = phi i128 [ %i.ad, %bb.c ], [ %i.l, %bb.b ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.c ], [ %i.m, %bb.b ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !64
  store i8 %storemerge.i.i.i, ptr %i.e, align 16, !alias.scope !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshr.i64(i64 %i.af, i64 %i.af, i64 range(i64 0, -9223372036854775808) %i.d) ; 6 uses
  store i64 %i.ah, ptr %i.ag, align 8, !alias.scope !65, !noalias !66
  %i.ai = icmp samesign ult i64 %i.d, 17
  br i1 %i.ai, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsiZBANkraIbZ_12libp2p_dcutr.exit
  %i.aj = tail call noundef i64 @_RNvCs2CMyvXgshDu_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae) #26, !noalias !65
  br label %_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit

bb.e:                                             ; preds = %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsiZBANkraIbZ_12libp2p_dcutr.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !72, !noalias !73, !noundef !4 ; 4 uses
  %i.am = icmp samesign ugt i64 %i.d, 7
  br i1 %i.am, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiZBANkraIbZ_12libp2p_dcutr.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = icmp samesign ugt i64 %i.d, 3
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiZBANkraIbZ_12libp2p_dcutr.exit.i.i, label %bb.g

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiZBANkraIbZ_12libp2p_dcutr.exit.i.i: ; preds = %bb.e
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.b, align 1, !alias.scope !74, !noalias !75
end_hunk_0
