Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/perf.perf.9685abdc0f76bdb8-cgu.11?download=true
inline.NumInlined: 1891
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECscVe0kjRb1xs_4perf:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !19, !alias.scope !1045, !noundef !7
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #39
          to label %.body3 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body3 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECscVe0kjRb1xs_4perf.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

.body3:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.i ], [ %i.i, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #39
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECscVe0kjRb1xs_4perf.exit: ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !19, !alias.scope !1046, !noundef !7
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit7, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECscVe0kjRb1xs_4perf.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i6 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %.body3, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.k ], [ %.pn, %.body3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i6: ; preds = %bb.j
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECscVe0kjRb1xs_4perf.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECscVe0kjRb1xs_4perf.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscVe0kjRb1xs_4perf.exit.i6
  ret void

bb.m:                                             ; preds = %.body3, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !1057, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECscVe0kjRb1xs_4perf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1060, !nonnull !7, !noundef !7
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !1060
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECscVe0kjRb1xs_4perf.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECscVe0kjRb1xs_4perf.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #39
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECscVe0kjRb1xs_4perf.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECscVe0kjRb1xs_4perf.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECscVe0kjRb1xs_4perf.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECscVe0kjRb1xs_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECscVe0kjRb1xs_4perf.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  ret void

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECscVe0kjRb1xs_4perf.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECscVe0kjRb1xs_4perf.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECscVe0kjRb1xs_4perf.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECscVe0kjRb1xs_4perf.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !1073
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !1074
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !1075
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !1076
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
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCscVe0kjRb1xs_4perf.exit, label %bb.a

_RNvMNtNtCs1aYz1mjYrQZ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCscVe0kjRb1xs_4perf.exit: ; preds = %bb.a
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
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !1077
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !1078
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !1077
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !1078
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !1077
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !1078
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !1077
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !1078
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !1077
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !1078
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !1077
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !1078
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !1077
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !1078
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !1077
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !1078
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECscVe0kjRb1xs_4perf(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !1081
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #41, !noalias !1081
  unreachable

_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECscVe0kjRb1xs_4perf(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECscVe0kjRb1xs_4perf(<2 x i64> %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCskKLDkoKarTP_4core5clone5Clone5clone13clone_subtreeNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalECscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = tail call { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECscVe0kjRb1xs_4perf() ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store ptr %i.k, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %bb.e, label %bb.f, !prof !14

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = add i64 %2, -1                           ; 2 uses
  call fastcc void @_RINvNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCskKLDkoKarTP_4core5clone5Clone5clone13clone_subtreeNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.q, i64 noundef %i.r)
  %i.s = load ptr, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.n, label %bb.o, !prof !8

bb.d:                                             ; preds = %bb.n, %bb.f
  unreachable

bb.e:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !noundef !7
  %.not78 = icmp eq i16 %i.w, 0
  br i1 %.not78, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.e
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #38
          to label %bb.d unwind label %.loopexit.split-lp

._crit_edge76:                                    ; preds = %bb.l, %bb.e
  %.lcssa71 = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.l ]
  store i64 %.lcssa71, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph75, %bb.l
  %.sroa.7.073 = phi i64 [ 0, %.lr.ph75 ], [ %i.aa, %bb.l ] ; 2 uses
  %i.x = phi i64 [ 0, %.lr.ph75 ], [ %i.ad, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 %.sroa.7.073, ptr %.sroa.6.0..sroa_idx, align 8
  %i.y = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE7into_kvCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.j unwind label %.loopexit

bb.h:                                             ; preds = %bb.r, %._crit_edge76
  ret void

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.x, ptr %i.n, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtBG_7set_val9SetValZSTEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #39
          to label %bb.ab unwind label %bb.m

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.073, 1         ; 2 uses
  %.val61 = load i16, ptr %i.z, align 2, !range !29, !noundef !7
  %i.ab = getelementptr i8, ptr %i.z, i64 2
  %.val62 = load i16, ptr %i.ab, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, i16 noundef %.val61, i16 %.val62)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef nonnull ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE12into_val_mutCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.l unwind label %.loopexit  ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = add i64 %i.x, 1                         ; 2 uses
  %i.ae = load i16, ptr %i.v, align 2, !noundef !7
  %i.af = zext i16 %i.ae to i64
  %i.ag = icmp samesign ult i64 %i.aa, %i.af
  br i1 %i.ag, label %bb.g, label %._crit_edge76

bb.m:                                             ; preds = %bb.w, %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.n:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #38
          to label %bb.d unwind label %.loopexit.split-lp64

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.ai = load i64, ptr %i.t, align 8, !alias.scope !1084, !noundef !7
  %i.aj = invoke { ptr, i64 } @_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalECscVe0kjRb1xs_4perf(ptr noundef nonnull %i.s, i64 noundef %i.ai)
          to label %bb.q unwind label %bb.p, !noalias !1084 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.aj, 1      ; 2 uses
  store ptr %i.al, ptr %i.f, align 8, !alias.scope !1084
  store i64 %i.am, ptr %i.t, align 8, !alias.scope !1084
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.am, ptr %i.an, align 8
  store ptr %i.al, ptr %i.e, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noundef !7
  %.not77 = icmp eq i16 %i.ap, 0
  br i1 %.not77, label %bb.r, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8
  %.not1 = icmp eq i64 %.promoted, %i.c
  br i1 %.not1, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %.fr2 = freeze i64 %i.e
  %i.f = icmp ugt i64 %.fr2, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7
  %i.j = icmp eq i64 %.promoted, %i.c             ; 2 uses
  br i1 %i.f, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.j, label %.critedge, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.j, label %.critedge, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit.us

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit.us: ; preds = %.split.us.preheader, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit.us
  %i.k = phi i64 [ %i.l, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit.us ], [ %.promoted, %.split.us.preheader ] ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  %.sroa.01.0.copyload.us = load i64, ptr %i.m, align 8
  %.not.us = icmp eq i64 %.sroa.01.0.copyload.us, 2
  %i.n = icmp eq i64 %i.l, %i.c
  %or.cond = or i1 %.not.us, %i.n
  br i1 %or.cond, label %.critedge.loopexit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit.us

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit: ; preds = %.split.preheader, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit
  %i.o = phi i64 [ %i.p, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit ], [ %.promoted, %.split.preheader ] ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.o
  %.sroa.01.0.copyload = load i64, ptr %i.q, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, 2
  %i.r = icmp eq i64 %i.p, %i.c
  %or.cond8 = or i1 %.not, %i.r
  br i1 %or.cond8, label %.critedge.loopexit9, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit

.critedge.loopexit:                               ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit.us
  store i64 %i.l, ptr %i.a, align 8
  br label %.critedge

.critedge.loopexit9:                              ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCscVe0kjRb1xs_4perf.exit
  store i64 %i.p, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit9, %.critedge.loopexit, %.split.preheader, %.split.us.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([672 x i8]) align 8 captures(none) dereferenceable(672) initializes((0, 672)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(656) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCscVe0kjRb1xs_4perf.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2606, !noundef !7 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i7 = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink11.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i64 656, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 %.sink12.i7, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCscVe0kjRb1xs_4perf.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2609, !noundef !7 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 10                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i7 = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink11.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sink12.i7, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E10triple_mutCscVe0kjRb1xs_4perf.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2612, !noundef !7 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i7 = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink11.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sink12.i7, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvXsN_CsczYENlYh6wI_8smallvecRINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCscVe0kjRb1xs_4perf(ptr noundef nonnull align 8 %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noalias !2615, !noundef !7 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2615, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !2615, !noundef !7
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCscVe0kjRb1xs_4perf.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCscVe0kjRb1xs_4perf.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCscVe0kjRb1xs_4perf.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.sink12.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.c ]
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sink13.i, i64 %.sink12.i
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sink13.i, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.i, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_CsczYENlYh6wI_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @112)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #17 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1aYz1mjYrQZ_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !2619 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !2619 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !2619 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !2619 ; 5 uses
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
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECscVe0kjRb1xs_4perf.exit, label %bb.c

_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECscVe0kjRb1xs_4perf.exit: ; preds = %bb.c
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
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !2620, !noalias !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !2620, !noalias !7
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !2619
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECscVe0kjRb1xs_4perf(<2 x i64> %i.er) #42
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !2619
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1aYz1mjYrQZ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECscVe0kjRb1xs_4perf.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB4_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtB1m_4xfer10dns_handle9DnsHandle4sendCscVe0kjRb1xs_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.015.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.013.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.011.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0.sroa.0 = alloca [496 x i8], align 8    ; 3 uses
  %i.l = alloca [688 x i8], align 8               ; 12 uses
  %.sroa.016 = alloca [216 x i8], align 8         ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.o, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !7, !noundef !7 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.i)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2637, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.w = load i64, ptr %i.v, align 8, !noalias !2637, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2637
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2638
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  invoke void @_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie5innerINtB5_5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.x)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2638
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf.exit.i unwind label %bb.c, !noalias !2638

bb.c:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie5inner5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #39
          to label %bb.z unwind label %bb.d, !noalias !2638

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !2638
  unreachable

_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf.exit.i: ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2638, !noundef !7
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !2637
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2637
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2637
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2639
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 312
  invoke void @_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie5innerINtB5_5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ad)
          to label %.noexc.i unwind label %bb.g, !noalias !2637

.noexc.i:                                         ; preds = %_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2639
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.h unwind label %bb.e, !noalias !2639

bb.e:                                             ; preds = %.noexc.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie5inner5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.f, !noalias !2639

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !2639
  unreachable

.body.i:                                          ; preds = %.body5.i, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body5.i ], [ %i.ah, %bb.g ], [ %i.af, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie3set9PrefixSetNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k) #39
          to label %bb.z unwind label %bb.p, !noalias !2637

bb.g:                                             ; preds = %_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie3mapINtB5_9PrefixMapNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %.noexc.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2639, !noundef !7
  %.sroa.011.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.011.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.011.i, i64 48, i1 false), !noalias !2637
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.aj, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !2637
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2637
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2640
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 368
  invoke void @_RNvXs5_NtCs9VKp7I8m2Fv_11prefix_trie5innerINtB5_5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv6NetuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.ak)
          to label %.noexc4.i unwind label %bb.k, !noalias !2637

.noexc4.i:                                        ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2640
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.l unwind label %bb.i, !noalias !2640

bb.i:                                             ; preds = %.noexc4.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie5inner5TableNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv6NetuEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #39
          to label %.body5.i unwind label %bb.j, !noalias !2640

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !2640
  unreachable

.body5.i:                                         ; preds = %.body8.i, %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body9.i, %.body8.i ], [ %i.ao, %bb.k ], [ %i.am, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9VKp7I8m2Fv_11prefix_trie3set9PrefixSetNtNtCsepmHL8YmS2V_5ipnet5ipnet7Ipv4NetEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #39
          to label %.body.i unwind label %bb.p, !noalias !2637
end_hunk_1
