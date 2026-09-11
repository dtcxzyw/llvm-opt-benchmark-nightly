Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.06?download=true
inline.NumInlined: 2945
inline.NumDeleted: 1160
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionECs44McOc0n4RX_13interop_tests:bb.a

bb.aa:                                            ; preds = %.body4.i, %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.y, %bb.z
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !9018 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !9019, !nonnull !10, !noundef !10
  %i.d = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !9020
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !9018 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs44McOc0n4RX_13interop_tests.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !9019, !nonnull !10, !noundef !10
  %i.g = mul nuw i64 %.val.i, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !9021
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs44McOc0n4RX_13interop_tests.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %common.resume unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs44McOc0n4RX_13interop_tests.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i1 = load i64, ptr %i.i, align 8, !alias.scope !9022 ; 2 uses
  %i.k = icmp eq i64 %.val2.i1, 0
  br i1 %i.k, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i2 = load ptr, ptr %i.l, align 8, !alias.scope !9023, !nonnull !10, !noundef !10
  %i.m = mul nuw i64 %.val2.i1, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i2, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !9024
  br label %common.resume

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs44McOc0n4RX_13interop_tests.exit
  %.val.i3 = load i64, ptr %i.i, align 8, !alias.scope !9022 ; 2 uses
  %i.n = icmp eq i64 %.val.i3, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs44McOc0n4RX_13interop_tests.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i4 = load ptr, ptr %i.o, align 8, !alias.scope !9023, !nonnull !10, !noundef !10
  %i.p = mul nuw i64 %.val.i3, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !9025
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs44McOc0n4RX_13interop_tests.exit

common.resume:                                    ; preds = %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.a, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto21NoiseHandshakePayloadECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !9046 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !9047, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !9048
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !9046 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !9047, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !9049
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %.body7 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i2 = load i64, ptr %i.g, align 8, !alias.scope !9050 ; 2 uses
  %i.i = icmp eq i64 %.val2.i2, 0
  br i1 %i.i, label %.body7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i3 = load ptr, ptr %i.j, align 8, !alias.scope !9051, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i3, i64 noundef %.val2.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !9052
  br label %.body7

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit
  %.val.i5 = load i64, ptr %i.g, align 8, !alias.scope !9050 ; 2 uses
  %i.k = icmp eq i64 %.val.i5, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i6 = load ptr, ptr %i.l, align 8, !alias.scope !9051, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6, i64 noundef %.val.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !9053
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit9

.body7:                                           ; preds = %bb.g, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.a, %.body ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !32, !alias.scope !9054, !noundef !10
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs44McOc0n4RX_13interop_tests.exit, label %bb.j

bb.j:                                             ; preds = %.body7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit9: ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !32, !alias.scope !9055, !noundef !10
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs44McOc0n4RX_13interop_tests.exit10, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit9
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs44McOc0n4RX_13interop_tests.exit10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs44McOc0n4RX_13interop_tests.exit10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests.exit9, %bb.k
  ret void

bb.l:                                             ; preds = %bb.j, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs44McOc0n4RX_13interop_tests.exit: ; preds = %.body7, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENvYNtNtB6_6string6StringNtB2I_14FromRedisValue16from_redis_valueEINtNtB1d_6result6ResultzNtNtNtB2K_6errors13parsing_error12ParsingErrorEEB3k_ECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !10
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENvYNtNtB1l_6string6StringNtB24_14FromRedisValue16from_redis_valueEINtNtB7_6result6ResultzNtNtNtB26_6errors13parsing_error12ParsingErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB2G_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB2G_E0IB3I_B5x_zEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENvYNtNtB1A_6string6StringNtB2j_14FromRedisValue16from_redis_valueEINtNtB4_6result6ResultzNtNtNtB2l_6errors13parsing_error12ParsingErrorEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueE32forget_allocation_drop_remainingCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtBI_6string6StringEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #36
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtB6_6string6StringECs44McOc0n4RX_13interop_tests.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtB6_6string6StringECs44McOc0n4RX_13interop_tests.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtB6_6string6StringECs44McOc0n4RX_13interop_tests.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #38
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtB6_6string6StringECs44McOc0n4RX_13interop_tests.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #38 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtB6_6string6StringECs44McOc0n4RX_13interop_tests.exit.thread, !prof !12

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #39
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENvYNtNtB1A_6string6StringNtB2j_14FromRedisValue16from_redis_valueEINtNtB4_6result6ResultzNtNtNtB2l_6errors13parsing_error12ParsingErrorEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB2p_16name_server_poolINtB3r_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB4_3VecB2l_EE0EINtNtB6_4sync3ArcINtNtB2p_11name_server10NameServerB4c_EEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !10
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB1P_16name_server_poolINtB2R_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtB14_4sync3ArcINtNtB1P_11name_server10NameServerB3C_EEENCINvNtB12_16in_place_collect24write_in_place_with_dropB6H_E0INtNtBc_6result6ResultB66_zEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB21_16name_server_poolINtB33_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB1e_3VecB1X_EE0EECs44McOc0n4RX_13interop_tests.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigE32forget_allocation_drop_remainingCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigINtNtBI_4sync3ArcINtNtB1P_11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #36
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i64 %i.c, 6
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB21_16name_server_poolINtB33_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB1e_3VecB1X_EE0EECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsl9hx9jpF0W9_12futures_util11async_await6random7shuffleQDG0_INtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTQL1_INtNtNtB1c_4task4wake7ContextL0_EEEp6OutputINtNtB1c_6option6OptionINtNtB1Y_4poll4PollINtNCNvNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_stream5retry012___PrivResultIB2B_INtNtB1c_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB3r_5error8NetErrorEEuEEEEL_ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp samesign ugt i64 %1, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.01.010 = phi i64 [ %i.c, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.c = add nsw i64 %.sroa.01.010, -1            ; 5 uses
  %i.d = tail call noundef i64 @_RNvNtNtCsl9hx9jpF0W9_12futures_util11async_await6random9gen_index(i64 noundef %.sroa.01.010) ; 3 uses
  %i.e = icmp ult i64 %i.c, %1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp ult i64 %i.d, %1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp ugt i64 %i.c, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsG258MDvU3F_3std3sys3net10connection9each_addrNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNvNvMsa_NtB2_6socketNtB1T_9UdpSocket4bind5innerB25_ECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.020.0.copyload = load i16, ptr %1, align 4, !alias.scope !9059 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 4, !alias.scope !9059 ; 3 uses
  switch i16 %.sroa.020.0.copyload, label %.lr.ph.split.us [
    i16 -1, label %.thread
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs44McOc0n4RX_13interop_tests(ptr null) #36
          to label %bb.f unwind label %bb.e

.thread:                                          ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %i.c, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs44McOc0n4RX_13interop_tests.exit19

.lr.ph.split.us:                                  ; preds = %bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.sroa.020.0.copyload, ptr %i.a, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.727.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.621.0..sroa_idx, i64 6, i1 false)
  store ptr %.sroa.7.0.copyload, ptr %.sroa.828.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.929.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, i64 16, i1 false)
  invoke void @_RNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtB7_9UdpSocket4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs44McOc0n4RX_13interop_tests.exit.us unwind label %bb.b

_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs44McOc0n4RX_13interop_tests.exit.us: ; preds = %.lr.ph.split.us
  %i.e = load i32, ptr %0, align 8, !range !9060, !noundef !10
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.c, label %.split41.us

bb.c:                                             ; preds = %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs44McOc0n4RX_13interop_tests.exit.us
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1.lcssa.sink = phi ptr [ %i.g, %bb.c ], [ @13, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.lcssa.sink, ptr %i.h, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs44McOc0n4RX_13interop_tests.exit19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs44McOc0n4RX_13interop_tests.exit19: ; preds = %.split41.us, %.thread, %bb.d
  ret void

.split41.us:                                      ; preds = %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs44McOc0n4RX_13interop_tests.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs44McOc0n4RX_13interop_tests.exit19

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
end_hunk_0
