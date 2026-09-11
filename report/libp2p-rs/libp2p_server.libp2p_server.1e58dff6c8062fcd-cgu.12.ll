Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.12?download=true
inline.NumInlined: 2947
inline.NumDeleted: 1161
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCskC4O4hr3vz7_10libp2p_kad8protocol13KadRequestMsgNtNtBG_5query7QueryIdEECs2Bxje7pdMIr_13libp2p_server:bb.a

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !5887 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.as, label %common.resume.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5888, !nonnull !19, !noundef !19
  %i.au = shl nuw i64 %.val2.i.i.i, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5889
  br label %common.resume.i

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs2Bxje7pdMIr_13libp2p_server.exit.i
  %.val.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !5887 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad8protocol13KadRequestMsgECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !5888, !nonnull !19, !noundef !19
  %i.ax = shl nuw i64 %.val.i.i.i, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5890
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad8protocol13KadRequestMsgECs2Bxje7pdMIr_13libp2p_server.exit

bb.p:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad8protocol13KadRequestMsgECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.a, %bb.b, %bb.f, %bb.g, %bb.h, %bb.j, %bb.n, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtB4_6option6OptionNtNtBI_10connection13StreamCommandEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !36, !alias.scope !5905, !noundef !19
  %switch.i = icmp ugt i64 %i.b, -3
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !5906 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5907, !nonnull !19, !noundef !19
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5908
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !5906 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5907, !nonnull !19, !noundef !19
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5909
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTbINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !5918 ; 2 uses
  %i.c = icmp eq i64 %.val2.i, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !5919, !nonnull !19, !noundef !19
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5920
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2Bxje7pdMIr_13libp2p_server.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !5918 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !5919, !nonnull !19, !noundef !19
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5921
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio3net4addr15to_socket_addrsNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5925
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB2p_16name_server_poolINtB3r_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB4_3VecB2l_EE0EINtNtB6_4sync3ArcINtNtB2p_11name_server10NameServerB4c_EEECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !19
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB1P_16name_server_poolINtB2R_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtB14_4sync3ArcINtNtB1P_11name_server10NameServerB3C_EEENCINvNtB12_16in_place_collect24write_in_place_with_dropB6H_E0INtNtBc_6result6ResultB66_zEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB21_16name_server_poolINtB33_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB1e_3VecB1X_EE0EECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.g

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
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigE32forget_allocation_drop_remainingCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigINtNtBI_4sync3ArcINtNtB1P_11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #36
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i64 %i.c, 6
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigENCINvMNtB21_16name_server_poolINtB33_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB1e_3VecB1X_EE0EECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1b_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2W_9behaviourINtB3S_9BehaviourNtNtNtB2U_5store6memory11MemoryStoreE14provider_peers0EENtNtB2W_8protocol7KadPeerECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !19
  %i.i = mul i64 %i.e, 152                        ; 6 uses
  %i.j = udiv i64 %i.i, 112                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5935)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5936, !noundef !19
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.n, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2x_9behaviourINtB3t_9BehaviourNtNtNtB2v_5store6memory11MemoryStoreE14provider_peers0EEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5937
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.o, ptr %i.a, align 8, !noalias !5937
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.p, align 8, !noalias !5937
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.q, align 8, !noalias !5937
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB11_8protocol7KadPeerENCINvNtNtB1V_8adapters10filter_map19filter_map_try_foldBX_B3t_B2T_INtNtNtB1X_3ops12control_flow11ControlFlowINtNtB1X_6result6ResultB2T_zEB2T_ENCNvMs0_NtB11_9behaviourINtB6j_9BehaviourNtNtNtBZ_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB40_4takeINtB7R_4TakepEB1P_8try_fold5checkB3t_B2T_B5D_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0E0E0B4X_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5937
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !5936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5936
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.a
  %.pn7.i.i = phi ptr [ %i.s, %.noexc ], [ %i.f, %bb.a ]
  %i.t = ptrtoint ptr %.pn7.i.i to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 112                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.y, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordE32forget_allocation_drop_remainingCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1P_8protocol7KadPeerEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #36
          to label %bb.b unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp ne i64 %i.e, 0
  %i.aa = mul nuw i64 %i.j, 112                   ; 4 uses
  %i.ab = icmp ne i64 %i.i, %i.aa
  %or.cond = select i1 %.not.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECs2Bxje7pdMIr_13libp2p_server.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECs2Bxje7pdMIr_13libp2p_server.exit.thread: ; preds = %bb.i, %bb.g, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ag, %bb.j ], [ %i.f, %bb.g ]
  store i64 %i.j, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %i.i, 112
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #38
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECs2Bxje7pdMIr_13libp2p_server.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.af = icmp ule i64 %i.aa, %i.i
  call void @llvm.assume(i1 %i.af)
  %i.ag = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.aa) #38 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECs2Bxje7pdMIr_13libp2p_server.exit.thread, !prof !5938

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aa) #39
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2x_9behaviourINtB3t_9BehaviourNtNtNtB2v_5store6memory11MemoryStoreE14provider_peers0EEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB4_9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEB2n_ECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5946)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5947, !noundef !19
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.f, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.m, %bb.e ], [ %i.m, %bb.f ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.h

bb.b:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECs2Bxje7pdMIr_13libp2p_server.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5947
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNvXs_NtNtB2G_8adapters4takeINtB4s_4TakepEB2A_8try_fold5checkBX_B3E_INtNtB2I_6result6ResultB3E_zENCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0INtNtNtB2I_3ops12control_flow11ControlFlowB5s_B3E_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !5947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5947
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.a
  %.pn7.i.i = phi ptr [ %i.l, %.noexc ], [ %i.d, %bb.a ]
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE32forget_allocation_drop_remainingCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.c, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = mul nuw i64 %i.c, 112
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5948
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECs2Bxje7pdMIr_13libp2p_server.exit

bb.g:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %.pn7.i.i to i64
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 112
  store i64 %i.c, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECs2Bxje7pdMIr_13libp2p_server.exit
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECs2Bxje7pdMIr_13libp2p_server.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsG258MDvU3F_3std3sys3net10connection9each_addrNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNvNvMsa_NtB2_6socketNtB1T_9UdpSocket4bind5innerB25_ECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.020.0.copyload = load i16, ptr %1, align 4, !alias.scope !5952 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 4, !alias.scope !5952 ; 3 uses
  switch i16 %.sroa.020.0.copyload, label %.lr.ph.split.us [
    i16 -1, label %.thread
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr null) #36
          to label %bb.f unwind label %bb.e

.thread:                                          ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %i.c, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit19

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
          to label %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.us unwind label %bb.b

_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.us: ; preds = %.lr.ph.split.us
  %i.e = load i32, ptr %0, align 8, !range !33, !noundef !19
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.c, label %.split41.us

bb.c:                                             ; preds = %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.us
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1.lcssa.sink = phi ptr [ %i.g, %bb.c ], [ @8, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.lcssa.sink, ptr %i.h, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit19: ; preds = %.split41.us, %.thread, %bb.d
  ret void

.split41.us:                                      ; preds = %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit19

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyNtNtCskeoOuuhwsQF_12sharded_slab3tid12RegistrationECs2Bxje7pdMIr_13libp2p_server(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !20, !noundef !19
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskeoOuuhwsQF_12sharded_slab3tid12RegistrationE0ECs2Bxje7pdMIr_13libp2p_server.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs7_NtCskeoOuuhwsQF_12sharded_slab3tidNtB5_12RegistrationNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskeoOuuhwsQF_12sharded_slab3tid12RegistrationE0ECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #41
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
end_hunk_0
