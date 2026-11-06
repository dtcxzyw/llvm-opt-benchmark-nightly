Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.12?download=true
inline.NumInlined: 1824
inline.NumDeleted: 579
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionECs44McOc0n4RX_13interop_tests:bb.a
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3124)
  %i.b = load i8, ptr %i.a, align 8, !range !37, !alias.scope !3125, !noundef !12
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3125 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !3125, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !12, !noalias !3125 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !3125

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !19, !invariant.load !12, !noalias !3125 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs44McOc0n4RX_13interop_tests.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !20, !invariant.load !12, !noalias !3125
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #35, !noalias !3125
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs44McOc0n4RX_13interop_tests.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !19, !invariant.load !12, !noalias !3125 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !20, !invariant.load !12, !noalias !3125
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #35, !noalias !3125
  br label %.body.i.i

bb.h:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls5error5ErrorECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %bb.g ], [ %i.l, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn20ServerConnectionDataECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(136) %i.s) #32
          to label %bb.j unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.h, %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn20ServerConnectionDataECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(136) %i.t)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls12common_state11CommonStateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %0) #32
          to label %bb.m unwind label %bb.r

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs44McOc0n4RX_13interop_tests.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls12common_state11CommonStateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %0)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.j
  %.pn2.i.i = phi { ptr, i32 } [ %i.w, %bb.n ], [ %.pn.i.i, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake17HandshakeDeframerECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #32
          to label %.body.i unwind label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake17HandshakeDeframerECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.body.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake17HandshakeDeframerECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn14ConnectionCoreNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.j, %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake17HandshakeDeframerECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.p, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.s ], [ %i.y, %bb.p ], [ %.pn2.i.i, %bb.m ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer7buffers17DeframerVecBufferECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac) #32
          to label %.body2.i unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn14ConnectionCoreNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer9handshake17HandshakeDeframerECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn14ConnectionCoreNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body2.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn14ConnectionCoreNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer7buffers17DeframerVecBufferECs44McOc0n4RX_13interop_tests.exit.i unwind label %bb.v

.body2.i:                                         ; preds = %bb.v, %bb.t, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ah, %bb.v ], [ %i.ae, %bb.t ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1080
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ag) #32
          to label %common.resume.i unwind label %bb.y

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer7buffers17DeframerVecBufferECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer7buffers17DeframerVecBufferECs44McOc0n4RX_13interop_tests.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %common.resume.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i:                                  ; preds = %bb.w, %.body2.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %.pn.i, %.body2.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.y:                                             ; preds = %.body2.i, %.body.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls4msgs8deframer7buffers17DeframerVecBufferECs44McOc0n4RX_13interop_tests.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !3138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !3139
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !3140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !3141
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs44McOc0n4RX_13interop_tests.exit, label %bb.a

_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !3142
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !3143
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !3142
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !3143
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !3142
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !3143
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !3142
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !3143
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !3142
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !3143
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !3142
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !3143
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !3142
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !3143
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !3142
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !3143
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsl9hx9jpF0W9_12futures_util2io4copy4copyQINtNtB4_4take4TakeQINtNtB4_5split8ReadHalfINtNtNtB6_6future6either6EitherIB1t_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB27_6server9TlsStreamB2S_EEB2S_EEENtNtB4_4sink4SinkECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtCsl9hx9jpF0W9_12futures_util2io10buf_readerINtB2_9BufReaderQINtNtB4_4take4TakeQINtNtB4_5split8ReadHalfINtNtNtB6_6future6either6EitherIB1L_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2p_6server9TlsStreamB3a_EEB3a_EEEE13with_capacityCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef 8192, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs44McOc0n4RX_13interop_tests(<2 x i64> %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter7WindowshEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1s_3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2F_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3B_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4E_6server9TlsStreamB5p_EEB5p_EE15receive_request00E0INtNtNtBb_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !34, !alias.scope !3155, !noundef !12 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !3155, !nonnull !12 ; 2 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !3155 ; 3 uses
  %i.e = icmp eq i64 %i.c, 4
  %i.f = icmp ugt i64 %.promoted.i, 3
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.split.us.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests.exit

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.g = sub nuw i64 %.promoted.i, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = add i64 %.promoted.i, -1                 ; 3 uses
  %i.j = load i32, ptr %i.h, align 1, !alias.scope !3156, !noalias !3154, !noundef !12
  %i.k = icmp eq i32 %i.j, 168626701
  br i1 %i.k, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests.exit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader: ; preds = %.lr.ph.split.us.i
  %.not19.i3 = icmp ugt i64 %i.i, 3
  br i1 %.not19.i3, label %.split.us.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests.exit

.split.us.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i
  %storemerge.i.i9.us16.i4 = phi i64 [ %i.l, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i ], [ %i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader ] ; 2 uses
  %i.l = add i64 %storemerge.i.i9.us16.i4, -1     ; 3 uses
  %i.m = getelementptr i8, ptr %i.d, i64 %storemerge.i.i9.us16.i4
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 1, !alias.scope !3156, !noalias !3154, !noundef !12
  %i.p = icmp eq i32 %i.o, 168626701              ; 3 uses
  br i1 %i.p, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests.exit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i: ; preds = %.split.us.i
  %.not19.i = icmp ugt i64 %i.l, 3
  br i1 %.not19.i, label %.split.us.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i, %.split.us.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader, %bb.a, %.lr.ph.split.us.i
  %storemerge.i.i.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph.split.us.i ], [ 0, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader ], [ %i.l, %.split.us.i ], [ 0, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i ]
  %.lcssa.i = phi i1 [ false, %bb.a ], [ true, %.lr.ph.split.us.i ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i.preheader ], [ %i.p, %.split.us.i ], [ %i.p, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cs44McOc0n4RX_13interop_tests.exit.backedge.us.i ]
  store i64 %storemerge.i.i.lcssa.i, ptr %i.a, align 8, !alias.scope !3155
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB6_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherNtNtB8_15stream_protocol14StreamProtocolIB16_B1A_B1A_EEENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = tail call { ptr, i64 } @_RNvXsv_Cscu2bAJ62uie_6eitherINtB5_6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolIBr_BD_BD_EEINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  tail call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3163
  store i8 -1, ptr %i.a, align 1, !noalias !3163
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #31, !noalias !3164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3163
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs4_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB8_13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtBa_6stream6StreamIB1I_B2B_B2B_EEIB1a_zIB1a_zzEEE12new_outboundIB1a_INtNtBa_7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBa_15stream_protocol14StreamProtocolEEIB3L_IB1a_B4d_B4d_EEEE0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5274.i = alloca [96 x i8], align 8       ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.5222.i = alloca [96 x i8], align 8       ; 5 uses
  %.sroa.6224.i = alloca [32 x i8], align 8       ; 5 uses
  %.sroa.5212.i = alloca [96 x i8], align 8       ; 5 uses
  %.sroa.6214.i = alloca [32 x i8], align 8       ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 10 uses
  %i.ae = alloca [32 x i8], align 8               ; 15 uses
  %i.af = alloca [32 x i8], align 8               ; 18 uses
  %i.ag = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.5159.i = alloca [96 x i8], align 8       ; 5 uses
  %.sroa.6161.i = alloca [32 x i8], align 8       ; 5 uses
  %.sroa.5153.i = alloca [96 x i8], align 8       ; 5 uses
  %.sroa.6155.i = alloca [32 x i8], align 8       ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 14 uses
  %i.ai = alloca [96 x i8], align 8               ; 10 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.5123.i = alloca [96 x i8], align 8       ; 5 uses
  %.sroa.6125.i = alloca [32 x i8], align 8       ; 5 uses
  %.sroa.5117.i = alloca [96 x i8], align 8       ; 5 uses
  %.sroa.6119.i = alloca [32 x i8], align 8       ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [16 x i8], align 16              ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [16 x i8], align 16              ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [32 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 21 uses
  %.sroa.582.i = alloca [96 x i8], align 8        ; 5 uses
  %.sroa.684.i = alloca [32 x i8], align 8        ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 26 uses
  %i.bf = alloca [96 x i8], align 8               ; 13 uses
  %.sroa.553.i = alloca [96 x i8], align 8        ; 5 uses
  %i.bg = alloca [32 x i8], align 8               ; 9 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.517.i = alloca [96 x i8], align 8        ; 5 uses
  %i.bi = alloca [96 x i8], align 8               ; 11 uses
  %i.bj = alloca [96 x i8], align 8               ; 4 uses
  %i.bk = alloca [80 x i8], align 8               ; 6 uses
  %.sroa.10116 = alloca [120 x i8], align 8       ; 2 uses
  %.sroa.4108 = alloca [120 x i8], align 8        ; 2 uses
  %i.bl = alloca [144 x i8], align 8              ; 9 uses
  %i.bm = alloca [32 x i8], align 8               ; 5 uses
  %i.bn = alloca [136 x i8], align 8              ; 6 uses
  %i.bo = alloca [32 x i8], align 8               ; 5 uses
  %i.bp = alloca [144 x i8], align 8              ; 5 uses
  %.sroa.1482 = alloca [96 x i8], align 8         ; 2 uses
  %.sroa.41 = alloca [96 x i8], align 8           ; 6 uses
  %i.bq = alloca [128 x i8], align 8              ; 11 uses
  %i.br = alloca [32 x i8], align 8               ; 11 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !range !31, !noundef !12
  switch i8 %i.bt, label %default.unreachable267 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.e
  ]

default.unreachable267:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 106
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.bu, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
end_hunk_0
begin_hunk_1_@_RNvXs7_NtCsbVDXp34Q3tF_18multistream_select8protocolINtB5_9MessageIONtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs44McOc0n4RX_13interop_tests:bb.a
  br label %_RNCINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB6_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEE0Cs44McOc0n4RX_13interop_tests.exit.i

_RNCINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB6_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEE0Cs44McOc0n4RX_13interop_tests.exit.i: ; preds = %.noexc72.i, %bb.bc, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5569
  br label %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit

bb.bf:                                            ; preds = %bb.ba, %bb.az, %bb.aw, %bb.av
  %i.hf = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5569
  %.not.i = icmp eq i8 %i.hf, 0
  br i1 %.not.i, label %bb.bg, label %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit

bb.bg:                                            ; preds = %bb.bf
  %i.hg = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5569 ; 2 uses
  %i.hh = icmp ult i64 %i.hg, 6
  call void @llvm.assume(i1 %i.hh)
  %i.hi = icmp samesign ugt i64 %i.hg, 4
  br i1 %i.hi, label %bb.bh, label %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hj = load ptr, ptr @_RNvNvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_stream10___CALLSITE, align 8, !noalias !5569, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5569
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !5589, !nonnull !12, !noundef !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !5589, !noundef !12
  store i64 5, ptr %i.x, align 8, !noalias !5569
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.hl, ptr %i.ho, align 8, !noalias !5569
  %i.hp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.hn, ptr %i.hp, align 8, !noalias !5569
  %i.hq = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.bi unwind label %bb.au, !noalias !5589 ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.hr = extractvalue { ptr, ptr } %i.hq, 0      ; 2 uses
  %i.hs = extractvalue { ptr, ptr } %i.hq, 1      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !invariant.load !12, !noalias !5589, !nonnull !12
  %i.hv = invoke noundef zeroext i1 %i.hu(ptr noundef %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.bj unwind label %bb.au, !noalias !5589

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.hv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5569
  %i.hw = load ptr, ptr @_RNvNvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_stream10___CALLSITE, align 8, !noalias !5569, !nonnull !12, !align !13, !noundef !12
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5569
  store ptr @10, ptr %i.u, align 8, !noalias !5569
  %i.hy = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 33 to ptr), ptr %i.hy, align 8, !noalias !5569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5569
  store ptr %i.ae, ptr %i.t, align 8, !noalias !5569
  store ptr %i.u, ptr %i.v, align 8, !noalias !5569
  %i.hz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @5, ptr %i.hz, align 8, !noalias !5569
  %i.ia = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.t, ptr %i.ia, align 8, !noalias !5569
  %i.ib = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @11, ptr %i.ib, align 8, !noalias !5569
  store i64 1, ptr %i.w, align 8, !noalias !5569
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !5569
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 2, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !5569
  %i.ic = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.hx, ptr %i.ic, align 8, !noalias !5569
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hj, ptr noundef nonnull %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %bb.bm unwind label %bb.au, !noalias !5589

bb.bl:                                            ; preds = %bb.bm, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5569
  br label %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5569
  br label %bb.bl

bb.bn:                                            ; preds = %bb.au
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !5589
  unreachable

_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread: ; preds = %bb.e, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5569
  br label %bb.bo

_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread27: ; preds = %.thread.i, %bb.at
  %.sroa.12.0.ph = phi i64 [ %.sroa.12.0.copyload21, %bb.at ], [ undef, %.thread.i ]
  %.sroa.11.0.ph = phi ptr [ %.sroa.11.0.copyload15, %bb.at ], [ %.sroa.27.0.ph108.i, %.thread.i ]
  %.sroa.10.0.ph = phi i64 [ %.sroa.10.0.copyload9, %bb.at ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5569
  br label %bb.bq

_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNCINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB6_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEE0Cs44McOc0n4RX_13interop_tests.exit.i, %bb.bf, %bb.bg, %bb.bl
  %.sroa.0.0.copyload2 = load i64, ptr %i.ae, align 8, !noalias !5590 ; 2 uses
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.10.0.copyload7 = load i64, ptr %.sroa.10.0..sroa_idx6, align 8, !noalias !5590 ; 2 uses
  %.sroa.11.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.11.0.copyload13 = load ptr, ptr %.sroa.11.0..sroa_idx12, align 8, !noalias !5590 ; 2 uses
  %.sroa.12.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.12.0.copyload19 = load i64, ptr %.sroa.12.0..sroa_idx18, align 8, !noalias !5590 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5569
  switch i64 %.sroa.0.0.copyload2, label %bb.br [
    i64 -3, label %bb.bo
    i64 -2, label %bb.bp
    i64 -1, label %bb.bq
  ]

bb.bo:                                            ; preds = %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit
  store i64 -3, ptr %0, align 8
  br label %bb.bs

bb.bp:                                            ; preds = %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread36, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit
  store i64 -2, ptr %0, align 8
  br label %bb.bs

bb.bq:                                            ; preds = %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread27, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit
  %.sroa.10.034 = phi i64 [ %.sroa.10.0.ph, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread27 ], [ %.sroa.10.0.copyload7, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit ]
  %.sroa.11.033 = phi ptr [ %.sroa.11.0.ph, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread27 ], [ %.sroa.11.0.copyload13, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit ]
  %.sroa.12.032 = phi i64 [ %.sroa.12.0.ph, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit.thread27 ], [ %.sroa.12.0.copyload19, %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit ]
  store i64 -1, ptr %0, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.034, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.033, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.032, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.bs

bb.br:                                            ; preds = %_RINvNtCsbVDXp34Q3tF_18multistream_select8protocol11poll_streamINtNtB4_16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECs44McOc0n4RX_13interop_tests.exit
  store i64 %.sroa.0.0.copyload2, ptr %0, align 8
  %.sroa.10.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.copyload7, ptr %.sroa.10.0..sroa_idx4, align 8
  %.sroa.11.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0.copyload13, ptr %.sroa.11.0..sroa_idx10, align 8
  %.sroa.12.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0.copyload19, ptr %.sroa.12.0..sroa_idx16, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bo
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #11 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1aYz1mjYrQZ_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5596)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !5595 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !5595 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !5595 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !5595 ; 5 uses
  %2 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32> ; 2 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0>
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0>
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0>
  %3 = bitcast <2 x i64> %i.f to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.g to <4 x i32>        ; 2 uses
  %5 = bitcast <2 x i64> %i.h to <4 x i32>        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.042.0110.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %6 = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %7 = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %8 = phi <4 x i32> [ %2, %bb.b ], [ %16, %bb.c ]
  %9 = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %3, %bb.b ], [ %17, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.n = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.o = phi <4 x i32> [ %4, %bb.b ], [ %18, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.q = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.s = phi <4 x i32> [ %5, %bb.b ], [ %19, %bb.c ]
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0110.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %7, %6                     ; 2 uses
  %i.w = xor <4 x i32> %8, %i.v                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %9                   ; 2 uses
  %i.z = xor <4 x i32> %i.y, %7                   ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.j, %i.i                ; 2 uses
  %i.ai = xor <4 x i32> %i.k, %i.ah               ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.l               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.j               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.n, %i.m                ; 2 uses
  %i.au = xor <4 x i32> %i.o, %i.at               ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.p               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.n               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.r, %i.q                ; 2 uses
  %i.bg = xor <4 x i32> %i.s, %i.bf               ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.r               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %13 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %14 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %15 = add <4 x i32> %i.ag, %i.bs                ; 2 uses
  %i.by = xor <4 x i32> %15, %10                  ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %15                ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %i.ck = xor <4 x i32> %i.cj, %11                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %14                ; 2 uses
  %i.di = xor <4 x i32> %i.dh, %13                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs44McOc0n4RX_13interop_tests.exit, label %bb.c

_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %i.ee = add <4 x i32> %16, %2
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %i.ei = add <4 x i32> %17, %3
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %i.em = add <4 x i32> %18, %4
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %i.eq = add <4 x i32> %19, %5
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !5596, !noalias !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !5596, !noalias !12
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !5595
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs44McOc0n4RX_13interop_tests(<2 x i64> %i.er) #31
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !5595
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs44McOc0n4RX_13interop_tests.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXsa_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB1c_INtNtB7_7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB7_15stream_protocol14StreamProtocolEEIB1P_IB1c_B2h_B2h_EEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.02 = alloca [32 x i8], align 8           ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %.sroa.733.0.copyload = load ptr, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx34, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 9 uses
  store i64 -1, ptr %0, align 8
  %i.e = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs44McOc0n4RX_13interop_tests.exit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx31, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.733.0.copyload, ptr %i.c, align 8
  %i.f = invoke noundef zeroext i1 @_RNvXs_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB4_5DelayNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.av

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !12 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !align !13, !noundef !12
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !12
  %i.m = invoke { ptr, ptr } %i.j(ptr noundef %i.l)
          to label %bb.w unwind label %bb.v       ; 2 uses

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB5_5DelayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5705)
  %i.o = load ptr, ptr %i.c, align 8, !alias.scope !5706, !noundef !12 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.aw, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !5707
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.aw

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #34
          to label %bb.aw unwind label %bb.l

bb.i:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5708)
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !5709, !noundef !12 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECs44McOc0n4RX_13interop_tests.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !5710
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECs44McOc0n4RX_13interop_tests.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECs44McOc0n4RX_13interop_tests.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.j, %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  %i.y = load i64, ptr %i.d, align 8, !range !16, !alias.scope !5711, !noundef !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECs44McOc0n4RX_13interop_tests.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5712)
  call void @llvm.experimental.noalias.scope.decl(metadata !5713)
  call void @llvm.experimental.noalias.scope.decl(metadata !5714)
  call void @llvm.experimental.noalias.scope.decl(metadata !5715)
  %i.aa = load i64, ptr %.sroa.7.0..sroa_idx32, align 8, !range !18, !alias.scope !5716, !noundef !12
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.az, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5717)
  call void @llvm.experimental.noalias.scope.decl(metadata !5718)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !5719, !nonnull !12, !noundef !12
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !5719
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEECs44McOc0n4RX_13interop_tests.exit.sink.split.i, label %bb.az

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECs44McOc0n4RX_13interop_tests.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  call void @llvm.experimental.noalias.scope.decl(metadata !5721)
  %i.ag = icmp eq i64 %i.y, 0
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5722)
  call void @llvm.experimental.noalias.scope.decl(metadata !5723)
  call void @llvm.experimental.noalias.scope.decl(metadata !5724)
  %i.ah = load i64, ptr %.sroa.7.0..sroa_idx32, align 8, !range !18, !alias.scope !5725, !noundef !12
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.az, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5726)
  call void @llvm.experimental.noalias.scope.decl(metadata !5727)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !5728, !nonnull !12, !noundef !12
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !5728
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEECs44McOc0n4RX_13interop_tests.exit.sink.split.i, label %bb.az

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5729)
  call void @llvm.experimental.noalias.scope.decl(metadata !5730)
  call void @llvm.experimental.noalias.scope.decl(metadata !5731)
  %i.an = load i64, ptr %.sroa.7.0..sroa_idx32, align 8, !range !18, !alias.scope !5732, !noundef !12
end_hunk_1
