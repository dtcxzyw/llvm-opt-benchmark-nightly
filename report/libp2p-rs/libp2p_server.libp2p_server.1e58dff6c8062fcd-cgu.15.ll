Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.15?download=true
inline.NumInlined: 2449
inline.NumDeleted: 825
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageECs2Bxje7pdMIr_13libp2p_server:bb.a
          to label %bb.l unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message4DialEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message8PeerInfoECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message12DialResponseEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m)
  ret void

bb.k:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #32
          to label %common.resume unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs2Bxje7pdMIr_13libp2p_server.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs2Bxje7pdMIr_13libp2p_server.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto21NoiseHandshakePayloadECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #32
          to label %.body3 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body3 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit5 unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body3:                                           ; preds = %bb.j, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.j ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !26, !alias.scope !1584, !noundef !11
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %.body3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit5: ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !26, !alias.scope !1585, !noundef !11
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs2Bxje7pdMIr_13libp2p_server.exit6, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit5
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs2Bxje7pdMIr_13libp2p_server.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs2Bxje7pdMIr_13libp2p_server.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit5, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %.body3, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdBM_ECs2Bxje7pdMIr_13libp2p_server(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #33
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtCsknXHD0xsxtc_16libp2p_websocket9quicksink5StateBM_ECs2Bxje7pdMIr_13libp2p_server(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #33
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !1598
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !1599
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !1600
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !1601
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
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.a

_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.a
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
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !1602
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !1603
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !1602
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !1603
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !1602
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !1603
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !1602
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !1603
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !1602
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !1603
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !1602
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !1603
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !1602
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !1603
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !1602
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !1603
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes14merge_repeatedINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8, !alias.scope !1612
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !1612
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !1612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  %i.h = invoke fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #34
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = trunc nuw i64 %i.i to i1
  br i1 %i.l, label %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !1613, !nonnull !11, !align !15, !noundef !11 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.m, align 8, !noalias !1614, !noundef !11
  %i.n = icmp ult i64 %.val.i.i, %i.k
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1615
  invoke void @_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13copy_to_bytesCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val.i, i64 noundef %i.k)
          to label %.noexc10 unwind label %bb.p

.noexc10:                                         ; preds = %bb.d
  invoke void @_RINvXs3_NtCsbZN1VVVQjZP_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread unwind label %bb.p

_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1615
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1615
  store i64 -9223372036854775801, ptr %i.b, align 8, !noalias !1615
  %i.o = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
          to label %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread19 unwind label %bb.p

_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread19: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1615
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 2, ptr %i.q, align 1
  store i64 -9223372036854775802, ptr %i.c, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %.noexc
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread19, %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.0.0.i22 = phi ptr [ %i.o, %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread19 ], [ %i.j, %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.ae, %bb.p ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.j:                                             ; preds = %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit.thread, %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1616, !noundef !11 ; 3 uses
  %i.w = load i64, ptr %1, align 8, !range !14, !alias.scope !1616, !noundef !11
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.l, !noalias !1617

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #32
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1616, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ad = add i64 %i.v, 1
  store i64 %i.ad, ptr %i.u, align 8, !alias.scope !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit, %bb.f
  %.sroa.0.0 = phi ptr [ %i.r, %bb.f ], [ %.sroa.0.0.i22, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit ], [ null, %bb.n ]
  ret ptr %.sroa.0.0

bb.p:                                             ; preds = %bb.b, %bb.d, %.noexc10, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #32
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes15encode_repeatedINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server(i32 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = shl i32 %0, 3
  %i.d = or disjoint i32 %i.c, 2
  %i.e = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.02.04 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.04, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call fastcc void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server(i64 noundef %i.e, ptr noalias nofree noundef align 8 dereferenceable(32) %3) #34, !noalias !1620
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.04, i64 16
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !1620, !noundef !11 ; 2 uses
  %i.h = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.h)
  tail call fastcc void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server(i64 noundef %.val.i, ptr noalias nofree noundef align 8 dereferenceable(32) %3) #34, !noalias !1620
  tail call void @_RINvXs3_NtCsbZN1VVVQjZP_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter9append_toNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.04, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3)
  %i.i = icmp eq ptr %i.f, %i.a
  br i1 %i.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes5mergeINtNtCsexYYUdYSQU6_5alloc3vec3VechEQRShECs2Bxje7pdMIr_13libp2p_server(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #34 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
end_hunk_0
begin_hunk_1_@_RNvXs_Csh4z5MoDg5zc_11prost_codecINtB4_5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageENtNtCsjYje7j88m19_18asynchronous_codec7encoder7Encoder6encodeCs2Bxje7pdMIr_13libp2p_server:bb.a
  br i1 %.not.i.i3.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB1C_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lens_0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRlE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB11_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_len0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i5.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !4768, !noundef !11 ; 3 uses
  %i.er = icmp sgt i64 %.val.i5.i.i.i.i, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = or i64 %.val.i5.i.i.i.i, 1
  %i.et = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = xor i64 %i.et, 63
  %i.ev = mul nuw nsw i64 %i.eu, 9
  %i.ew = add nuw nsw i64 %i.ev, 73
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = add nuw i64 %.val.i5.i.i.i.i, 1
  %i.ez = add nuw i64 %i.ey, %i.ex
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB1C_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lens_0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB1C_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lens_0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.z, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRlE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB11_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_len0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %.sroa.02.0.i6.i.i.i.i = phi i64 [ %i.ez, %bb.z ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRlE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB11_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_len0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fb = load i64, ptr %i.fa, align 8, !range !26, !alias.scope !4766, !noundef !11
  %.not3.i.i.i.i = icmp eq i64 %i.fb, -1
  br i1 %.not3.i.i.i.i, label %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7message6encodeNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message12DialResponseNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB1C_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lens_0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i8.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !4769, !noundef !11 ; 3 uses
  %i.fd = or i64 %.val.i8.i.i.i.i, 1
  %i.fe = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.fd, i1 true)
  %i.ff = xor i64 %i.fe, 63
  %i.fg = mul nuw nsw i64 %i.ff, 9
  %i.fh = add nuw nsw i64 %i.fg, 73
  %i.fi = lshr i64 %i.fh, 6
  %i.fj = icmp sgt i64 %.val.i8.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nuw i64 %.val.i8.i.i.i.i, 1
  %i.fl = add nuw i64 %i.fk, %i.fi
  br label %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7message6encodeNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message12DialResponseNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server.exit.i.i

_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7message6encodeNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message12DialResponseNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.aa, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB1C_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lens_0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %.sroa.02.0.i9.i.i.i.i = phi i64 [ %i.fl, %bb.aa ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orjNCNvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB1C_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lens_0ECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i ]
  %i.fm = add nuw i64 %.sroa.02.0.i6.i.i.i.i, %.sroa.02.0.i.i.i2.i.i
  %i.fn = add i64 %i.fm, %.sroa.02.0.i9.i.i.i.i
  invoke fastcc void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server(i64 noundef %i.fn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #34
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7message6encodeNtNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7message12DialResponseNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  invoke void @_RINvXsm_NtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7messageNtB6_12DialResponseNtNtCsbZN1VVVQjZP_5prost7message7Message10encode_rawNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.b

_RINvYNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageNtNtCsbZN1VVVQjZP_5prost7message7Message6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.r
  %i.fo = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsbZN1VVVQjZP_5prost5error11EncodeErrorEB1m_(i8 noundef 42, i64 noundef %i.bi, i64 noundef %i.bj)
          to label %bb.ad unwind label %bb.b

bb.ab:                                            ; preds = %.noexc11, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.0.0 = phi ptr [ %i.fo, %bb.ad ], [ null, %bb.ab ]
  ret ptr %.sroa.0.0

bb.ad:                                            ; preds = %_RINvYNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageNtNtCsbZN1VVVQjZP_5prost7message7Message6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %1)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.b
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.af:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_CshlctkzJY7Kq_14rw_stream_sinkINtB4_12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.02.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i64, ptr %0, align 8, !range !26
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs2Bxje7pdMIr_13libp2p_server.exit, %bb.a
  %i.e = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs2Bxje7pdMIr_13libp2p_server.exit ], [ %.pre, %bb.a ]
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !noundef !11
  %.val29 = load i64, ptr %i.d, align 8, !noundef !11
  %i.g = icmp ult i64 %i.f, %.val29
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtCsgtKVDLJNbYN_12futures_core6streamINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtB5_9TryStream13try_poll_nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.h = load i64, ptr %i.a, align 8, !range !47, !noundef !11 ; 5 uses
  %i.i = icmp eq i64 %i.h, -3
  br i1 %i.i, label %.loopexit, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = call { i64, ptr } @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull %2, i64 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.merged = phi { i64, ptr } [ %i.j, %bb.e ], [ %i.l, %.loopexit ]
  ret { i64, ptr } %.merged

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  switch i64 %i.h, label %bb.i [
    i64 -2, label %.loopexit
    i64 -1, label %bb.h
  ]

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.h
  %.sroa.6.1 = phi ptr [ %.sroa.4.0.copyload, %bb.h ], [ null, %bb.d ], [ null, %bb.g ]
  %.sroa.0.1 = phi i64 [ 1, %bb.h ], [ 0, %bb.g ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.6.1, 1
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.m = load i64, ptr %0, align 8, !range !26, !alias.scope !4772, !noundef !11
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2Bxje7pdMIr_13libp2p_server.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.m ], [ %i.o, %bb.k ]
  store i64 %i.h, ptr %0, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.02.sroa.8.0..sroa_idx16, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.d, align 8
  store i64 0, ptr %i.c, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2Bxje7pdMIr_13libp2p_server.exit.i
  store i64 %i.h, ptr %0, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.02.sroa.8.0..sroa_idx16, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.d, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #12 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1aYz1mjYrQZ_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4777)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !4776 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !4776 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !4776 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !4776 ; 5 uses
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
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c
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
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !4777, !noalias !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !4777, !noalias !11
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !4776
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs2Bxje7pdMIr_13libp2p_server(<2 x i64> %i.er) #34
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !4776
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2Bxje7pdMIr_13libp2p_server.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 3 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.5266 = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.8119.sroa.0.sroa.7 = alloca [6 x i8], align 2 ; 2 uses
  %i.x = alloca [16 x i8], align 16               ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 8 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [32 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 16              ; 9 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [24 x i8], align 8               ; 7 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = alloca [2 x i8], align 2                ; 6 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [32 x i8], align 8               ; 7 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [32 x i8], align 8               ; 8 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [16 x i8], align 8               ; 5 uses
  %i.cp = alloca [32 x i8], align 8               ; 7 uses
  %i.cq = alloca [24 x i8], align 8               ; 7 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [32 x i8], align 8               ; 8 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [32 x i8], align 8               ; 7 uses
  %i.cy = alloca [24 x i8], align 8               ; 7 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [32 x i8], align 8               ; 7 uses
  %i.dc = alloca [8 x i8], align 8                ; 12 uses
  %i.dd = alloca [24 x i8], align 8               ; 18 uses
  %i.de = alloca [16 x i8], align 8               ; 5 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [32 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 7 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %i.dj = alloca [16 x i8], align 8               ; 5 uses
  %i.dk = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.097 = alloca [24 x i8], align 8          ; 5 uses
  %i.dl = alloca [32 x i8], align 8               ; 7 uses
  %i.dm = alloca [8 x i8], align 8                ; 4 uses
  %i.dn = alloca [16 x i8], align 8               ; 5 uses
  %i.do = alloca [16 x i8], align 8               ; 5 uses
  %i.dp = alloca [32 x i8], align 8               ; 7 uses
  %i.dq = alloca [24 x i8], align 8               ; 7 uses
  %i.dr = alloca [32 x i8], align 8               ; 7 uses
  %i.ds = alloca [8 x i8], align 8                ; 4 uses
  %i.dt = alloca [16 x i8], align 8               ; 5 uses
  %i.du = alloca [16 x i8], align 8               ; 5 uses
  %i.dv = alloca [32 x i8], align 8               ; 8 uses
  %i.dw = alloca [32 x i8], align 8               ; 7 uses
  %i.dx = alloca [24 x i8], align 8               ; 2 uses
  %i.dy = alloca [32 x i8], align 4               ; 14 uses
  %i.dz = alloca [24 x i8], align 8               ; 10 uses
  %i.ea = alloca [56 x i8], align 8               ; 10 uses
  %i.eb = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.565 = alloca [24 x i8], align 8          ; 5 uses
  %i.ec = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.549 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.035 = alloca [24 x i8], align 8          ; 5 uses
  %i.ed = alloca [24 x i8], align 8               ; 11 uses
  %i.ee = alloca [32 x i8], align 8               ; 8 uses
  %i.ef = alloca [32 x i8], align 4               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i64 32, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 23 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 13 uses
end_hunk_1
