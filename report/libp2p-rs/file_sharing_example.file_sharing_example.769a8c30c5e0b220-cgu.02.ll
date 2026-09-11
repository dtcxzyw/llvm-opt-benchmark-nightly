Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/file_sharing_example.file_sharing_example.769a8c30c5e0b220-cgu.02?download=true
inline.NumInlined: 1440
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECsabk8e3lPnsy_20file_sharing_example:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1418, !nonnull !11, !noundef !11
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !1418
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsabk8e3lPnsy_20file_sharing_example.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsabk8e3lPnsy_20file_sharing_example.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1421, !nonnull !11, !noundef !11
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1421
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsabk8e3lPnsy_20file_sharing_example.exit4

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsabk8e3lPnsy_20file_sharing_example.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsabk8e3lPnsy_20file_sharing_example.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsabk8e3lPnsy_20file_sharing_example.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsabk8e3lPnsy_20file_sharing_example.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 60680079189834052) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit._crit_edge, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit.i
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit
  %.sroa.0.027 = phi i64 [ %i.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %.sroa.0.027 ; 8 uses
  %i.d = add nuw nsw i64 %.sroa.0.027, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1434, !noundef !11
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !1434, !nonnull !11, !align !14, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1434, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1434, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1434, !noundef !11
  invoke void %i.j(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i unwind label %bb.b, !noalias !1430, !inline_history !1

bb.b:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c) #23
          to label %.body unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i: ; preds = %.lr.ph
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit, %bb.a
  ret void

bb.f:                                             ; preds = %.lr.ph29
  %i.s = add i64 %.sroa.0.128, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %._crit_edge, label %.lr.ph29

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.p, %bb.c ], [ %i.o, %bb.b ]
  %i.v = icmp eq i64 %i.d, %1
  br i1 %i.v, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.body, %bb.f
  %.sroa.0.128 = phi i64 [ %i.s, %bb.f ], [ %i.d, %.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %.sroa.0.128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef align 8 dereferenceable(152) %i.w) #23
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.lr.ph29
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtB4_6option6OptionNtNtBI_10connection13StreamCommandEEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !1437, !alias.scope !1438, !noundef !11
  %switch.i = icmp ugt i64 %i.b, -3
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECsabk8e3lPnsy_20file_sharing_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux5frame5FrameINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtBE_6header4DataNtB28_12WindowUpdateEEECsabk8e3lPnsy_20file_sharing_example.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux5frame5FrameINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtBE_6header4DataNtB28_12WindowUpdateEEECsabk8e3lPnsy_20file_sharing_example.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECsabk8e3lPnsy_20file_sharing_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux5frame5FrameINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtBE_6header4DataNtB28_12WindowUpdateEEECsabk8e3lPnsy_20file_sharing_example.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1b_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2W_9behaviourINtB3S_9BehaviourNtNtNtB2U_5store6memory11MemoryStoreE14provider_peers0EENtNtB2W_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [208 x i8], align 8               ; 7 uses
  %.sroa.011.i.sroa.8.i.i.i.i.i = alloca [96 x i8], align 8 ; 9 uses
  %i.e = alloca [208 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [112 x i8], align 8               ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.614.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.9.i.i.i.i.i = alloca [96 x i8], align 8  ; 6 uses
  %i.o = alloca [152 x i8], align 8               ; 20 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !11 ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 9 uses
  %i.u = mul i64 %i.s, 152                        ; 6 uses
  %i.v = udiv i64 %i.u, 112                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1505, !noundef !11 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.b

.body:                                            ; preds = %.body.i.i.i.i.i, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.es, %bb.ax ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2x_9behaviourINtB3t_9BehaviourNtNtNtB2v_5store6memory11MemoryStoreE14provider_peers0EEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #23
          to label %common.resume unwind label %bb.bg

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !1509, !noalias !1510, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !1509, !noalias !1510, !nonnull !11, !noundef !11 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not23.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.011.i.sroa.8.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.i.sroa.8.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.011.i.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %.sroa.614.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.614.0..sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aw = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.ee, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i ] ; 2 uses
  %i.ax = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ay, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.4.024.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %.sroa.7.012.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(152) %i.ax, i64 152, i1 false), !noalias !1512
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 152 ; 3 uses
  store ptr %i.ay, ptr %i.ab, align 8, !alias.scope !1509, !noalias !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1512
  store ptr %i.t, ptr %i.p, align 8, !noalias !1511
  store ptr %.sroa.4.024.i.i.i.i, ptr %i.ae, align 8, !noalias !1511
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.az = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.e unwind label %bb.d, !noalias !1515 ; 2 uses

.body28.i.i.i.i.i.i:                              ; preds = %bb.af, %.body.i.i.i.i.i.i, %bb.d
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.bg, %bb.d ], [ %i.df, %bb.af ] ; 2 uses
  %.sroa.03.0.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i ], [ %.sroa.03.1.i.i.i.i.i.i, %bb.d ], [ false, %bb.af ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.ba = load ptr, ptr %i.al, align 8, !alias.scope !1519, !noalias !1520, !noundef !11
  %i.bb = load ptr, ptr %i.ak, align 8, !alias.scope !1519, !noalias !1520, !nonnull !11, !align !14, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !1521, !nonnull !11, !noundef !11
  %i.be = load ptr, ptr %i.am, align 8, !alias.scope !1519, !noalias !1520, !noundef !11
  %i.bf = load i64, ptr %i.an, align 8, !alias.scope !1519, !noalias !1520, !noundef !11
  invoke void %i.bd(ptr noundef %i.ba, ptr noundef %i.be, i64 noundef %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i unwind label %bb.ao, !noalias !1520, !inline_history !1

bb.d:                                             ; preds = %bb.ag, %bb.h, %bb.g, %bb.c
  %.sroa.03.1.i.i.i.i.i.i = phi i1 [ true, %bb.h ], [ false, %bb.ag ], [ true, %bb.g ], [ true, %bb.c ]
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %i.af, align 8, !range !23, !alias.scope !1514, !noalias !1520, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bh, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = extractvalue { i64, i32 } %i.az, 1
  %i.bj = load i64, ptr %i.ag, align 8, !alias.scope !1514, !noalias !1520 ; 2 uses
  %i.bk = extractvalue { i64, i32 } %i.az, 0      ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.bj
  %i.bm = icmp sge i64 %i.bk, %i.bj
  %i.bn = icmp samesign uge i32 %i.bi, %i.bh
  %spec.select.i.i.i.i.i.i = select i1 %i.bl, i1 %i.bn, i1 %i.bm
  br i1 %spec.select.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = load ptr, ptr %i.ao, align 8, !alias.scope !1522, !noalias !1523, !nonnull !11, !align !14, !noundef !11
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1520, !nonnull !11, !align !14, !noundef !11
  %i.bq = invoke noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bp)
          to label %bb.i unwind label %bb.d, !noalias !1520

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ah, align 8, !alias.scope !1522, !noalias !1523, !nonnull !11, !align !14, !noundef !11
  %i.bs = load ptr, ptr %i.ai, align 8, !alias.scope !1522, !noalias !1523, !nonnull !11, !align !14, !noundef !11
  invoke void @_RNvXs0_NtNtNtCskC4O4hr3vz7_10libp2p_kad6record5store6memoryNtB5_11MemoryStoreNtB7_11RecordStore15remove_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.br, ptr noundef nonnull align 8 %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aj)
          to label %bb.ap unwind label %bb.d, !noalias !1520

bb.i:                                             ; preds = %bb.g
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.bt = load ptr, ptr %i.al, align 8, !alias.scope !1527, !noalias !1520, !noundef !11
  %i.bu = load ptr, ptr %i.ak, align 8, !alias.scope !1527, !noalias !1520, !nonnull !11, !align !14, !noundef !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !1528, !nonnull !11, !noundef !11
  %i.bx = load ptr, ptr %i.am, align 8, !alias.scope !1527, !noalias !1520, !noundef !11
  %i.by = load i64, ptr %i.an, align 8, !alias.scope !1527, !noalias !1520, !noundef !11
  invoke void %i.bw(ptr noundef %i.bt, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit25.i.i.i.i.i.i unwind label %bb.an, !noalias !1520, !inline_history !1

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !1520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(152) %i.o, i64 24, i1 false), !noalias !1520
  %i.bz = load ptr, ptr %i.ap, align 8, !alias.scope !1522, !noalias !1523, !nonnull !11, !align !14, !noundef !11
  %i.ca = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEE12contains_keyBO_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n)
          to label %bb.o unwind label %bb.n, !noalias !1520

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit25.i.i.i.i.i.i: ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit.i.invoke.i.i.i.i.i unwind label %bb.l, !noalias !1520

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit25.i.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %.body.i.i.i.i.i unwind label %bb.m, !noalias !1520

bb.m:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1520
  unreachable

bb.n:                                             ; preds = %bb.al, %bb.ai, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ac, %bb.n
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %i.dd, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #23
          to label %.body28.i.i.i.i.i.i unwind label %bb.ao, !noalias !1520

bb.o:                                             ; preds = %bb.k
  %..i.i.i.i.i.i = zext i1 %i.ca to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i.i.i.i.i)
  %i.ce = load i64, ptr %i.aq, align 8, !noalias !1515, !noundef !11 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 288230376151711744
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i64 %i.ce, 0
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.sroa.8.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.011.i.sroa.8.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false), !noalias !1515
  %.sroa.011.i.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.i.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.i.sroa.8.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.011.i.sroa.8.i.i.i.i.i, i64 96, i1 false), !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i.i.i.i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit30.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.z, align 8, !alias.scope !1522, !noalias !1523, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = invoke noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ci)
          to label %bb.r unwind label %bb.n, !noalias !1520

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit30.i.i.i.i.i.i: ; preds = %bb.ag, %bb.p
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i, %bb.ag ], [ %.sroa.011.i.sroa.0.0.copyload.i.i.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1515
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
end_hunk_0
begin_hunk_1_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1b_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2W_9behaviourINtB3S_9BehaviourNtNtNtB2U_5store6memory11MemoryStoreE14provider_peers0EENtNtB2W_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1515
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.012.0.i.i.i.i.i = phi i64 [ %.sroa.012.0.copyload13.i.i.i.i.i, %bb.am ], [ %.sroa.012.0.copyload.i.i.i.i.i, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.sroa.8.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.011.i.sroa.8.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false), !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.i.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.i.i.i.i.i, i64 16, i1 false), !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.011.i.sroa.8.i.i.i.i.i, i64 96, i1 false), !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.sroa.8.i.i.i.i.i)
  br label %bb.ae

bb.al:                                            ; preds = %bb.t
  %i.dh = load ptr, ptr %i.av, align 8, !alias.scope !1522, !noalias !1523, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !1520, !nonnull !11, !noundef !11 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !1520, !noundef !11
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1515
  store ptr %i.dj, ptr %i.k, align 8, !noalias !1515
  store ptr %i.dm, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1515
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB2b_5chain5ChainINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB11_EINtNtNtB2f_5slice4iter4IterB11_EEEE9from_iterCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.am unwind label %bb.n, !noalias !1520

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1515
  %.sroa.012.0.copyload13.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.0..sroa_idx15.i.i.i.i.i, i64 16, i1 false), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1515
  br label %bb.ak

bb.an:                                            ; preds = %bb.j
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o) #23
          to label %.body.i.i.i.i.i unwind label %bb.ao, !noalias !1520

bb.ao:                                            ; preds = %bb.au, %bb.an, %.body.i.i.i.i.i.i, %.body28.i.i.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1520
  unreachable

bb.ap:                                            ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %i.dp = load ptr, ptr %i.al, align 8, !alias.scope !1541, !noalias !1520, !noundef !11
  %i.dq = load ptr, ptr %i.ak, align 8, !alias.scope !1541, !noalias !1520, !nonnull !11, !align !14, !noundef !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !1542, !nonnull !11, !noundef !11
  %i.dt = load ptr, ptr %i.am, align 8, !alias.scope !1541, !noalias !1520, !noundef !11
  %i.du = load i64, ptr %i.an, align 8, !alias.scope !1541, !noalias !1520, !noundef !11
  invoke void %i.ds(ptr noundef %i.dp, ptr noundef %i.dt, i64 noundef %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !1543, !inline_history !1

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o) #23
          to label %.body.i.i.i.i.i unwind label %bb.at, !noalias !1520

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i.i: ; preds = %bb.ap
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit.i.invoke.i.i.i.i.i unwind label %bb.ar, !noalias !1520

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %.body.i.i.i.i.i unwind label %bb.as, !noalias !1520

bb.as:                                            ; preds = %bb.ar
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1520
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1520
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit.i.invoke.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit25.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i.i unwind label %bb.av, !noalias !1511

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i: ; preds = %.body28.i.i.i.i.i.i
  br i1 %.sroa.03.0.i.i.i.i.i.i, label %bb.au, label %.body.i.i.i.i.i

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.o) #23
          to label %.body.i.i.i.i.i unwind label %bb.ao, !noalias !1520

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit.i.invoke.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit30.i.i.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example.exit.i.invoke.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1511
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i

_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsabk8e3lPnsy_20file_sharing_example.exit30.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1511
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.av, %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i, %bb.ar, %bb.aq, %bb.an, %bb.l
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.dz, %bb.av ], [ %i.dv, %bb.aq ], [ %i.cb, %bb.l ], [ %.pn.i.i.i.i.i.i, %bb.au ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECsabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i.i ], [ %i.dn, %bb.an ], [ %i.dw, %bb.ar ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef align 8 dereferenceable(16) %i.p) #23
          to label %.body unwind label %bb.aw, !noalias !1511

bb.aw:                                            ; preds = %.body.i.i.i.i.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1511
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i: ; preds = %_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i, %_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1512
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i: ; preds = %_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i.i
  %i.eb = add i64 %i.aw, -1                       ; 3 uses
  store i64 %i.eb, ptr %i.w, align 8, !alias.scope !1544, !noalias !1545
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.4.024.i.i.i.i, align 8, !noalias !1546
  %.sroa.68.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.16..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.i.i.i.i.i, i64 96, i1 false), !noalias !1511
  %.sroa.7.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024.i.i.i.i, i64 104
  store i8 %..i.i.i.i.i.i, ptr %.sroa.7.16..sroa_idx.i.i.i.i.i, align 8, !noalias !1546
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.4.024.i.i.i.i, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1512
  br i1 %i.ec, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i
  %i.ee = phi i64 [ %i.aw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i ], [ %i.eb, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i ]
  %.sroa.7.012.i.i.i.i = phi ptr [ %.sroa.4.024.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.thread.i.i.i.i ], [ %i.ed, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.ac
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i, %bb.b, %bb.a
  %.pn6.i.i = phi ptr [ %i.t, %bb.b ], [ %i.t, %bb.a ], [ %.sroa.7.012.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit._crit_edge.i.i.i.i ], [ %i.ed, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.i.i.i.i ]
  %i.ef = ptrtoint ptr %.pn6.i.i to i64
  %i.eg = ptrtoint ptr %i.t to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = udiv exact i64 %i.eh, 112               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.t, ptr %i.q, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.s, ptr %i.ek, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.el, align 8, !alias.scope !1547, !nonnull !11, !noundef !11 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val1.i = load ptr, ptr %i.em, align 8, !alias.scope !1547, !nonnull !11, !noundef !11
  store i64 0, ptr %i.r, align 8, !alias.scope !1547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1547
  store i64 0, ptr %i.c, align 8, !noalias !1547
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.en, align 8, !noalias !1547
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !1547
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %.loopexit
  %i.eo = ptrtoint ptr %.val1.i to i64
  %i.ep = ptrtoint ptr %.val.i to i64
  %i.eq = sub nuw i64 %i.eo, %i.ep
  %i.er = udiv exact i64 %i.eq, 152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1547
  store ptr inttoptr (i64 8 to ptr), ptr %i.el, align 8, !alias.scope !1547
  store ptr inttoptr (i64 8 to ptr), ptr %i.em, align 8, !alias.scope !1547
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.er)
          to label %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordE32forget_allocation_drop_remainingCsabk8e3lPnsy_20file_sharing_example.exit unwind label %bb.ax

bb.ax:                                            ; preds = %.noexc, %.loopexit, %bb.be
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1P_8protocol7KadPeerEECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #23
          to label %.body unwind label %bb.bg

_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordE32forget_allocation_drop_remainingCsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %.noexc
  %.not.i = icmp ne i64 %i.s, 0
  %i.et = mul nuw i64 %i.v, 112                   ; 4 uses
  %i.eu = icmp ne i64 %i.u, %i.et
  %or.cond = select i1 %.not.i, i1 %i.eu, i1 false
  br i1 %or.cond, label %bb.bb, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example.exit.thread: ; preds = %bb.bc, %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordE32forget_allocation_drop_remainingCsabk8e3lPnsy_20file_sharing_example.exit, %bb.bd
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bc ], [ %i.fd, %bb.bd ], [ %i.t, %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordE32forget_allocation_drop_remainingCsabk8e3lPnsy_20file_sharing_example.exit ]
  store i64 %i.v, ptr %0, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %i.ew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2x_9behaviourINtB3t_9BehaviourNtNtNtB2v_5store6memory11MemoryStoreE14provider_peers0EEECsabk8e3lPnsy_20file_sharing_example.exit unwind label %bb.ay, !noalias !1548

bb.ay:                                            ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example.exit.thread
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1548
  store i64 0, ptr %i.b, align 8, !noalias !1548
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ey, align 8, !noalias !1548
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.ba unwind label %bb.az, !noalias !1548

bb.az:                                            ; preds = %bb.ay
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1548
  unreachable

common.resume:                                    ; preds = %.body, %bb.ba
  %common.resume.op = phi { ptr, i32 } [ %i.ex, %bb.ba ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1548
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB2x_9behaviourINtB3t_9BehaviourNtNtNtB2v_5store6memory11MemoryStoreE14provider_peers0EEECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1548
  store i64 0, ptr %i.a, align 8, !noalias !1548
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fa, align 8, !noalias !1548
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1548
  ret void

bb.bb:                                            ; preds = %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordE32forget_allocation_drop_remainingCsabk8e3lPnsy_20file_sharing_example.exit
  %i.fb = icmp ult i64 %i.u, 112
  br i1 %i.fb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.u, i64 noundef 8) #24
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.fc = icmp ule i64 %i.et, %i.u
  call void @llvm.assume(i1 %i.fc)
  %i.fd = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.t, i64 noundef %i.u, i64 noundef 8, i64 noundef range(i64 0, -15) %i.et) #24 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.be, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB15_8protocol7KadPeerECsabk8e3lPnsy_20file_sharing_example.exit.thread, !prof !1549

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.et) #27
          to label %bb.bf unwind label %bb.ax

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.ax, %.body
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB4_9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEB2n_ECsabk8e3lPnsy_20file_sharing_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1566, !noundef !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1568, !noalias !1569, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1568, !noalias !1569 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %.promoted.i.i.i, %i.l
  br i1 %.not14.i.i.i, label %.sink.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.4.015.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.o = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.i, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  %i.q = add i64 %i.o, -1                         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.015.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !1570
  %i.r = icmp eq i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.l
  %or.cond.i = select i1 %i.r, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %.sink.split.i.i, label %.lr.ph.i.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.pn6.i.i = phi ptr [ %i.g, %bb.a ], [ %i.g, %bb.b ], [ %i.s, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1571
  store i64 0, ptr %i.c, align 8, !noalias !1571
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !1571
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.sink.split.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.v, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECsabk8e3lPnsy_20file_sharing_example.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1572
  store i64 0, ptr %i.d, align 8, !noalias !1572
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !1572
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.sink.split.i.i
  %i.x = ptrtoint ptr %.pn6.i.i to i64
  %i.y = ptrtoint ptr %i.g to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1571
  store i64 %i.f, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1573
  store i64 0, ptr %i.a, align 8, !noalias !1573
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !noalias !1573
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1573
  ret void

bb.e:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECsabk8e3lPnsy_20file_sharing_example.exit
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1L_EECsabk8e3lPnsy_20file_sharing_example.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1572
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs4_B1z_INtB1z_11ClosestIterB1u_B1u_NtNtB1B_9addresses9AddressesNCINvMs1_B1z_INtB1z_13KBucketsTableB1u_B4w_E12closest_keysB1u_E0B1u_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address, read_provenance) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 -120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !noalias !1596 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.g = load i64, ptr %1, align 8, !range !12, !alias.scope !1599, !noalias !1600, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !12, !alias.scope !1600, !noalias !1599, !noundef !11
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29, !noalias !1601
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29, !noalias !1601
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 -112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1601
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !1600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1601
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.l)
  %i.m = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1601
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit, %bb.k
  ret void

bb.g:                                             ; preds = %bb.j, %bb.e
  %.sroa.5.0 = phi ptr [ %1, %bb.e ], [ %.sroa.0.0, %bb.j ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.e ], [ %i.q, %bb.j ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.0, i64 120, i1 false)
  %i.p = icmp eq ptr %.sroa.0.0, %0
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %.val.i9 = load ptr, ptr %.0.val, align 8, !noalias !1604 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.r = load i64, ptr %i.e, align 8, !range !12, !alias.scope !1607, !noalias !1608, !noundef !11
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %.invoke, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.q, align 8, !range !12, !alias.scope !1608, !noalias !1607, !noundef !11
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example.exit.i, label %.invoke, !prof !24

.invoke:                                          ; preds = %bb.i, %bb.h
end_hunk_1
