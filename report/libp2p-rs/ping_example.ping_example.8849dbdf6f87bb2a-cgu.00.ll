Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ping_example.ping_example.8849dbdf6f87bb2a-cgu.00?download=true
inline.NumInlined: 649
inline.NumDeleted: 424
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshuexzQAPOo_12libp2p_noise8protocol15KeypairIdentityECsbHsylk8USo0_12ping_example:bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %common.resume unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa9PublicKeyECsbHsylk8USo0_12ping_example.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbHsylk8USo0_12ping_example.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsbHsylk8USo0_12ping_example.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbHsylk8USo0_12ping_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsbHsylk8USo0_12ping_example.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  ret void

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !209, !nonnull !7, !noundef !7
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !209
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !212, !nonnull !7, !noundef !7
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !212
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdnM8jOGFORn_4snow6params8patterns15HandshakeChoiceECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdnM8jOGFORn_4snow6params8patterns21HandshakeModifierListECsbHsylk8USo0_12ping_example.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierEECsbHsylk8USo0_12ping_example.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierEECsbHsylk8USo0_12ping_example.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdnM8jOGFORn_4snow6params8patterns21HandshakeModifierListECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #24
          to label %bb.h unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.b = load i64, ptr %0, align 8, !range !9, !alias.scope !231, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !234, !nonnull !7, !noundef !7
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !234
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !237, !nonnull !7, !noundef !7
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !237
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !240, !nonnull !7, !noundef !7
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !240
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !243, !nonnull !7, !noundef !7
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !243
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example.exit4

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCINvNtB1t_10connection26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB46_8for_each4callTINtB2y_11AsStrHashEqB1p_EbENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5L_7HashMapB5a_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4a_7collect6ExtendB59_E6extendBN_E0E0ECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.sroa.02.0.copyload38.i = load i64, ptr %i.b, align 8, !alias.scope !258 ; 2 uses
  store i64 2, ptr %i.b, align 8, !alias.scope !259
  %.not9.i = icmp eq i64 %.sroa.02.0.copyload38.i, 2
  br i1 %.not9.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_TINtNtBW_10connection11AsStrHashEqBS_EbEuNCINvB3f_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvB1W_8for_each4callB3b_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5R_7HashMapB3c_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB20_7collect6ExtendB3b_E6extendINtB2F_3MapB3_B3Q_EE0E0E0ECsbHsylk8USo0_12ping_example.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %bb.d unwind label %bb.c

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store i64 %.sroa.02.0.copyload38.i, ptr %i.a, align 8, !noalias !261
  %i.e = invoke noundef i8 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBS_15stream_protocol14StreamProtocolEbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext true)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example.exit.loopexit.i unwind label %bb.b, !noalias !256 ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_TINtNtBW_10connection11AsStrHashEqBS_EbEuNCINvB3f_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvB1W_8for_each4callB3b_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5R_7HashMapB3c_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB20_7collect6ExtendB3b_E6extendINtB2F_3MapB3_B3Q_EE0E0E0ECsbHsylk8USo0_12ping_example.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_TINtNtBW_10connection11AsStrHashEqBS_EbEuNCINvB3f_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvB1W_8for_each4callB3b_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5R_7HashMapB3c_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB20_7collect6ExtendB3b_E6extendINtB2F_3MapB3_B3Q_EE0E0E0ECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B55_E14extend_trustedBN_E0E0ECsbHsylk8USo0_12ping_example(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsbHsylk8USo0_12ping_example.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.010.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.010.i.prol, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.c
  %.sroa.42.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.prol, align 8, !noalias !271
  %i.f = add i64 %i.c, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !270

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1
  %i.h = icmp ugt i64 %i.g, -4
  br i1 %i.h, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsbHsylk8USo0_12ping_example.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !271
  %i.k = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.k, i64 72
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !noalias !271
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.2, align 8, !noalias !271
  %i.m = add nuw i64 %.sroa.0.010.i, 4            ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.3, align 8, !noalias !271
  %i.o = add i64 %i.i, 4                          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsbHsylk8USo0_12ping_example.exit, label %.lr.ph.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsbHsylk8USo0_12ping_example.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !273
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1u_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callINtNtB1w_4page6SharedB2h_B3m_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB4X_E14extend_trustedBN_E0E0ECsbHsylk8USo0_12ping_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsbHsylk8USo0_12ping_example.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i
  %.val4.i = phi i64 [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = invoke noundef i64 @_RNvYNtNtCskeoOuuhwsQF_12sharded_slab3cfg13DefaultConfigNtB4_10CfgPrivate9page_sizeCsbHsylk8USo0_12ping_example(i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i unwind label %bb.b, !noalias !284 ; 2 uses

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i: ; preds = %.lr.ph.i
  %i.h = add nuw i64 %.sroa.0.010.i, 1            ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !noalias !285, !noundef !7 ; 2 uses
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %i.e, align 8, !noalias !285
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i ; 4 uses
  store ptr null, ptr %i.k, align 8, !noalias !286
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 274877906944, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !286
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.g, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !286
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !286
  %i.l = add i64 %.val4.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsbHsylk8USo0_12ping_example.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !284
  resume { ptr, i32 } %i.m

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsbHsylk8USo0_12ping_example.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !284
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1u_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtB1w_4page5LocalNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5r_3VecB4Z_E14extend_trustedBN_E0E0ECsbHsylk8USo0_12ping_example(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsbHsylk8USo0_12ping_example.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 3
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !295
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsbHsylk8USo0_12ping_example.exit

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsbHsylk8USo0_12ping_example.exit: ; preds = %bb.a, %.lr.ph.i
  %.val6.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !296
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENvMs2_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB1v_4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1z_3cfg13DefaultConfigE3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB2b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2b_E14extend_trustedBN_E0E0ECsbHsylk8USo0_12ping_example(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECsbHsylk8USo0_12ping_example.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i
  %.val4.i = phi i64 [ %i.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.c, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  invoke void @_RNvMs2_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE3newCsbHsylk8USo0_12ping_example(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i unwind label %bb.b, !noalias !306

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i: ; preds = %.lr.ph.i
  %i.c = add nuw i64 %.sroa.0.010.i, 1            ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !307
  %i.e = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECsbHsylk8USo0_12ping_example.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !306
  resume { ptr, i32 } %i.f

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECsbHsylk8USo0_12ping_example.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example.exit.i, %bb.a
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!47 = distinct !{!47, !46, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECsbHsylk8USo0_12ping_example: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3set7HashSetTNtNtNtB4_3net7ip_addr6IpAddrtEEEEECsbHsylk8USo0_12ping_example"}
!49 = distinct !{!49, !48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtB1i_11collections4hash3set7HashSetTNtNtNtB4_3net7ip_addr6IpAddrtEEEEECsbHsylk8USo0_12ping_example: argument 0"}
!50 = distinct !{!50, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEEENtNtNtB2j_3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!51 = distinct !{!51, !50, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEEENtNtNtB2j_3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!52 = distinct !{!52, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example"}
!53 = distinct !{!53, !52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example: argument 0"}
!54 = distinct !{!54, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!55 = distinct !{!55, !54, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!56 = distinct !{!56, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECsbHsylk8USo0_12ping_example"}
!57 = distinct !{!57, !56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECsbHsylk8USo0_12ping_example: argument 0"}
!58 = distinct !{!58, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtBG_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2D_8provider5tokio3TcpEEEECsbHsylk8USo0_12ping_example"}
!59 = distinct !{!59, !58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtBG_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2D_8provider5tokio3TcpEEEECsbHsylk8USo0_12ping_example: argument 0"}
!60 = distinct !{!60, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example"}
!61 = distinct !{!61, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example: argument 0"}
!62 = distinct !{!62, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!63 = distinct !{!63, !62, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!64 = !{!47}
!65 = !{!49}
!66 = !{!51}
!67 = !{!51, !49, !47}
!68 = !{!53}
!69 = !{!55}
!70 = !{!55, !53, !59, !57}
!71 = !{!55, !53}
!72 = !{!61}
!73 = !{!63}
!74 = !{!63, !61, !59, !57}
!75 = !{!63, !61}
!76 = distinct !{!76, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated5StateNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example"}
!77 = distinct !{!77, !76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated5StateNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example: argument 0"}
!78 = distinct !{!78, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example"}
!79 = distinct !{!79, !78, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example: argument 0"}
!80 = distinct !{!80, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited21LengthDelimitedReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example"}
!81 = distinct !{!81, !80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited21LengthDelimitedReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example: argument 0"}
!82 = distinct !{!82, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited15LengthDelimitedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited15LengthDelimitedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECsbHsylk8USo0_12ping_example: argument 0"}
!84 = distinct !{!84, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECsbHsylk8USo0_12ping_example"}
!85 = distinct !{!85, !84, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECsbHsylk8USo0_12ping_example: argument 0"}
!86 = distinct !{!86, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECsbHsylk8USo0_12ping_example"}
!87 = distinct !{!87, !86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECsbHsylk8USo0_12ping_example: argument 0"}
!88 = distinct !{!88, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECsbHsylk8USo0_12ping_example"}
!89 = distinct !{!89, !88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECsbHsylk8USo0_12ping_example: argument 0"}
!90 = distinct !{!90, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECsbHsylk8USo0_12ping_example"}
!91 = distinct !{!91, !90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECsbHsylk8USo0_12ping_example: argument 0"}
!92 = distinct !{!92, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECsbHsylk8USo0_12ping_example"}
!93 = distinct !{!93, !92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECsbHsylk8USo0_12ping_example: argument 0"}
!94 = distinct !{!94, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECsbHsylk8USo0_12ping_example"}
!95 = distinct !{!95, !94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECsbHsylk8USo0_12ping_example: argument 0"}
!96 = !{i64 0, i64 4}
!97 = !{!77}
!98 = !{!89, !87, !85, !83, !81, !79, !77}
!99 = !{!95, !93, !91, !77}
!100 = distinct !{!100, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECsbHsylk8USo0_12ping_example"}
!101 = distinct !{!101, !100, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECsbHsylk8USo0_12ping_example: argument 0"}
!102 = !{!101}
!103 = distinct !{!103, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example"}
!104 = distinct !{!104, !103, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example: argument 0"}
!105 = distinct !{!105, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!106 = distinct !{!106, !105, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!107 = distinct !{!107, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtBG_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2D_8provider5tokio3TcpEEEECsbHsylk8USo0_12ping_example"}
!108 = distinct !{!108, !107, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtBG_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2D_8provider5tokio3TcpEEEECsbHsylk8USo0_12ping_example: argument 0"}
!109 = distinct !{!109, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example"}
!110 = distinct !{!110, !109, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB1g_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB3x_8provider5tokio3TcpEEEEECsbHsylk8USo0_12ping_example: argument 0"}
!111 = distinct !{!111, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!112 = distinct !{!112, !111, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!113 = !{!104}
!114 = !{!106}
!115 = !{!106, !104, !108}
!116 = !{!106, !104}
!117 = !{!110}
!118 = !{!112}
!119 = !{!112, !110, !108}
!120 = !{!112, !110}
!121 = distinct !{!121, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!123 = distinct !{!123, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!124 = distinct !{!124, !123, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!125 = distinct !{!125, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!126 = distinct !{!126, !125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsbHsylk8USo0_12ping_example"}
!128 = distinct !{!128, !127, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsbHsylk8USo0_12ping_example: argument 0"}
!129 = distinct !{!129, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECsbHsylk8USo0_12ping_example"}
!130 = distinct !{!130, !129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECsbHsylk8USo0_12ping_example: argument 0"}
!131 = distinct !{!131, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsbHsylk8USo0_12ping_example"}
!132 = distinct !{!132, !131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsbHsylk8USo0_12ping_example: argument 0"}
!133 = distinct !{!133, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!134 = distinct !{!134, !133, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!135 = !{!122}
!136 = !{!124}
!137 = !{!126}
!138 = !{!126, !124, !122}
!139 = !{!128}
!140 = !{!130}
!141 = !{!132}
!142 = !{!134}
!143 = !{!134, !132, !130, !128, !126, !124, !122}
!144 = distinct !{!144, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!145 = distinct !{!145, !144, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!146 = distinct !{!146, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!147 = distinct !{!147, !146, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!148 = distinct !{!148, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!149 = distinct !{!149, !148, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!150 = distinct !{!150, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example"}
!151 = distinct !{!151, !150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsbHsylk8USo0_12ping_example: argument 0"}
!152 = distinct !{!152, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsbHsylk8USo0_12ping_example"}
!153 = distinct !{!153, !152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsbHsylk8USo0_12ping_example: argument 0"}
!154 = distinct !{!154, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECsbHsylk8USo0_12ping_example"}
!155 = distinct !{!155, !154, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECsbHsylk8USo0_12ping_example: argument 0"}
!156 = distinct !{!156, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsbHsylk8USo0_12ping_example"}
!157 = distinct !{!157, !156, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsbHsylk8USo0_12ping_example: argument 0"}
!158 = distinct !{!158, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!159 = distinct !{!159, !158, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!160 = !{!145}
!161 = !{!147}
!162 = !{!149}
!163 = !{!151}
!164 = !{!151, !149, !147, !145}
!165 = !{!153}
!166 = !{!155}
!167 = !{!157}
!168 = !{!159}
!169 = !{!159, !157, !155, !153, !151, !149, !147, !145}
!170 = distinct !{!170, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshuexzQAPOo_12libp2p_noise6ConfigECsbHsylk8USo0_12ping_example"}
!171 = distinct !{!171, !170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshuexzQAPOo_12libp2p_noise6ConfigECsbHsylk8USo0_12ping_example: argument 0"}
!172 = distinct !{!172, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEEECsbHsylk8USo0_12ping_example"}
!173 = distinct !{!173, !172, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEEECsbHsylk8USo0_12ping_example: argument 0"}
!174 = distinct !{!174, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEEECsbHsylk8USo0_12ping_example"}
!175 = distinct !{!175, !174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEEECsbHsylk8USo0_12ping_example: argument 0"}
!176 = !{!173, !171}
!177 = !{!175, !171}
!178 = distinct !{!178, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair12KeyPairInnerECsbHsylk8USo0_12ping_example"}
!179 = distinct !{!179, !178, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair12KeyPairInnerECsbHsylk8USo0_12ping_example: argument 0"}
!180 = distinct !{!180, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa7KeypairECsbHsylk8USo0_12ping_example"}
!181 = distinct !{!181, !180, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa7KeypairECsbHsylk8USo0_12ping_example: argument 0"}
!182 = distinct !{!182, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairEECsbHsylk8USo0_12ping_example"}
!183 = distinct !{!183, !182, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairEECsbHsylk8USo0_12ping_example: argument 0"}
!184 = distinct !{!184, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!185 = distinct !{!185, !184, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!186 = !{!179}
!187 = !{!181}
!188 = !{!183}
!189 = !{!185}
!190 = !{!185, !183, !181, !179}
!191 = distinct !{!191, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair14PublicKeyInnerECsbHsylk8USo0_12ping_example"}
!192 = distinct !{!192, !191, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair14PublicKeyInnerECsbHsylk8USo0_12ping_example: argument 0"}
!193 = !{!192}
!194 = distinct !{!194, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsbHsylk8USo0_12ping_example"}
!195 = distinct !{!195, !194, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsbHsylk8USo0_12ping_example: argument 0"}
!196 = distinct !{!196, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair14PublicKeyInnerECsbHsylk8USo0_12ping_example"}
!197 = distinct !{!197, !196, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair14PublicKeyInnerECsbHsylk8USo0_12ping_example: argument 0"}
!198 = !{!197, !195}
!199 = distinct !{!199, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example"}
!200 = distinct !{!200, !199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example: argument 0"}
!201 = distinct !{!201, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!202 = distinct !{!202, !201, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!203 = distinct !{!203, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsbHsylk8USo0_12ping_example"}
!204 = distinct !{!204, !203, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsbHsylk8USo0_12ping_example: argument 0"}
!205 = distinct !{!205, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!206 = distinct !{!206, !205, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!207 = !{!200}
!208 = !{!202}
!209 = !{!202, !200}
!210 = !{!204}
!211 = !{!206}
!212 = !{!206, !204}
!213 = distinct !{!213, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example"}
!214 = distinct !{!214, !213, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsbHsylk8USo0_12ping_example: argument 0"}
!215 = distinct !{!215, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example"}
!216 = distinct !{!216, !215, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleEECsbHsylk8USo0_12ping_example: argument 0"}
!217 = distinct !{!217, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!218 = distinct !{!218, !217, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!219 = distinct !{!219, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsbHsylk8USo0_12ping_example"}
!220 = distinct !{!220, !219, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsbHsylk8USo0_12ping_example: argument 0"}
!221 = distinct !{!221, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!222 = distinct !{!222, !221, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!223 = distinct !{!223, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example"}
!224 = distinct !{!224, !223, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example: argument 0"}
!225 = distinct !{!225, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!226 = distinct !{!226, !225, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!227 = distinct !{!227, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example"}
!228 = distinct !{!228, !227, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsbHsylk8USo0_12ping_example: argument 0"}
!229 = distinct !{!229, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example"}
!230 = distinct !{!230, !229, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbHsylk8USo0_12ping_example: argument 0"}
!231 = !{!214}
!232 = !{!216}
!233 = !{!218}
!234 = !{!218, !216, !214}
!235 = !{!220}
!236 = !{!222}
!237 = !{!222, !220, !214}
!238 = !{!224}
!239 = !{!226}
!240 = !{!226, !224}
!241 = !{!228}
!242 = !{!230}
!243 = !{!230, !228}
!244 = distinct !{!244, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_TINtNtBW_10connection11AsStrHashEqBS_EbEuNCINvB3f_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvB1W_8for_each4callB3b_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5R_7HashMapB3c_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB20_7collect6ExtendB3b_E6extendINtB2F_3MapB3_B3Q_EE0E0E0ECsbHsylk8USo0_12ping_example"}
!245 = distinct !{!245, !244, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_TINtNtBW_10connection11AsStrHashEqBS_EbEuNCINvB3f_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvB1W_8for_each4callB3b_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5R_7HashMapB3c_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB20_7collect6ExtendB3b_E6extendINtB2F_3MapB3_B3Q_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 0"}
!246 = distinct !{!246, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources4onceINtB2_4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtB6_6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example"}
!247 = distinct !{!247, !246, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources4onceINtB2_4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtB6_6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example: argument 0:pre.rot"}
!248 = distinct !{!248, !246, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources4onceINtB2_4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtB6_6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example: argument 1:pre.rot"}
!249 = distinct !{!249, !244, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_TINtNtBW_10connection11AsStrHashEqBS_EbEuNCINvB3f_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvB1W_8for_each4callB3b_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5R_7HashMapB3c_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB20_7collect6ExtendB3b_E6extendINtB2F_3MapB3_B3Q_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 1"}
!250 = distinct !{!250, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolTINtNtBY_10connection11AsStrHashEqBU_EbEuNCINvB21_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB57_7HashMapB1Y_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4b_7collect6ExtendB1X_E6extendINtB4_3MapINtNtNtB8_7sources4once4OnceBU_EB2C_EE0E0E0CsbHsylk8USo0_12ping_example"}
!251 = distinct !{!251, !250, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolTINtNtBY_10connection11AsStrHashEqBU_EbEuNCINvB21_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB57_7HashMapB1Y_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4b_7collect6ExtendB1X_E6extendINtB4_3MapINtNtNtB8_7sources4once4OnceBU_EB2C_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!252 = distinct !{!252, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1l_15stream_protocol14StreamProtocolEbENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB34_7HashMapB1g_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources4once4OnceB2c_ENCINvB1j_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0EE0E0CsbHsylk8USo0_12ping_example"}
!253 = distinct !{!253, !252, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB1l_15stream_protocol14StreamProtocolEbENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB34_7HashMapB1g_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources4once4OnceB2c_ENCINvB1j_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0EE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!254 = distinct !{!254, i1 true, !"_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBW_15stream_protocol14StreamProtocolEbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_bEE6extendINtNtNtB3n_8adapters3map3MapINtNtNtB3n_7sources4once4OnceB1N_ENCINvBU_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0EE0CsbHsylk8USo0_12ping_example"}
!255 = distinct !{!255, !254, !"_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBW_15stream_protocol14StreamProtocolEbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_bEE6extendINtNtNtB3n_8adapters3map3MapINtNtNtB3n_7sources4once4OnceB1N_ENCINvBU_26gather_supported_protocolsNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE0EE0CsbHsylk8USo0_12ping_example: argument 0"}
!256 = !{!245}
!257 = !{!247}
!258 = !{!247, !248, !245}
!259 = !{!248, !245}
!260 = !{!255, !253, !251, !245, !249}
!261 = !{!245, !249}
!262 = distinct !{!262, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsbHsylk8USo0_12ping_example"}
!263 = distinct !{!263, !262, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 0"}
!264 = distinct !{!264, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvBY_15allocate_bucketB1w_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B1U_IB1S_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3k_EE0E0E0CsbHsylk8USo0_12ping_example"}
!265 = distinct !{!265, !264, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvBY_15allocate_bucketB1w_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B1U_IB1S_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3k_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!266 = distinct !{!266, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtCse0v0U5LqnG1_12thread_local5EntryINtNtBe_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEENCINvMsk_B2e_IB2c_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvB1i_15allocate_bucketB1Q_E0EE0E0CsbHsylk8USo0_12ping_example"}
!267 = distinct !{!267, !266, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtCse0v0U5LqnG1_12thread_local5EntryINtNtBe_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEENCINvMsk_B2e_IB2c_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvB1i_15allocate_bucketB1Q_E0EE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!268 = distinct !{!268, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBz_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1o_4iter8adapters3map3MapINtNtNtB1o_3ops5range5RangejENCINvBL_15allocate_bucketB1j_E0EE0CsbHsylk8USo0_12ping_example"}
!269 = distinct !{!269, !268, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBz_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1o_4iter8adapters3map3MapINtNtNtB1o_3ops5range5RangejENCINvBL_15allocate_bucketB1j_E0EE0CsbHsylk8USo0_12ping_example: argument 0"}
!270 = distinct !{!270, !272}
!271 = !{!269, !267, !265, !263}
!272 = !{!"llvm.loop.unroll.disable"}
!273 = !{!263}
!274 = distinct !{!274, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsbHsylk8USo0_12ping_example"}
!275 = distinct !{!275, !274, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 0"}
!276 = distinct !{!276, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example"}
!277 = distinct !{!277, !276, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!278 = distinct !{!278, i1 true, !"_RNCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB4_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB6_3cfg13DefaultConfigE3new0CsbHsylk8USo0_12ping_example"}
!279 = distinct !{!279, !278, !"_RNCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB4_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB6_3cfg13DefaultConfigE3new0CsbHsylk8USo0_12ping_example: argument 0"}
!280 = distinct !{!280, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1k_3cfg13DefaultConfigENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3E_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMNtB1k_5shardINtB5y_5ShardB1Y_B33_E3new0EE0E0CsbHsylk8USo0_12ping_example"}
!281 = distinct !{!281, !280, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1k_3cfg13DefaultConfigENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3E_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMNtB1k_5shardINtB5y_5ShardB1Y_B33_E3new0EE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!282 = distinct !{!282, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3n_3ops5range5RangejENCNvMNtBN_5shardINtB4A_5ShardB1r_B2w_E3new0EE0CsbHsylk8USo0_12ping_example"}
!283 = distinct !{!283, !282, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3n_3ops5range5RangejENCNvMNtBN_5shardINtB4A_5ShardB1r_B2w_E3new0EE0CsbHsylk8USo0_12ping_example: argument 0"}
!284 = !{!275}
!285 = !{!279, !277, !275}
!286 = !{!283, !281, !277, !275}
!287 = distinct !{!287, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsbHsylk8USo0_12ping_example"}
!288 = distinct !{!288, !287, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 0"}
!289 = distinct !{!289, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtBZ_5shardINtB1I_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigE3news_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4O_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1D_EE0E0E0CsbHsylk8USo0_12ping_example"}
!290 = distinct !{!290, !289, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtBZ_5shardINtB1I_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigE3news_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4O_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1D_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!291 = distinct !{!291, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB25_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMNtB1j_5shardINtB3Z_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1j_3cfg13DefaultConfigE3news_0EE0E0CsbHsylk8USo0_12ping_example"}
!292 = distinct !{!292, !291, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB25_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMNtB1j_5shardINtB3Z_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1j_3cfg13DefaultConfigE3news_0EE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!293 = distinct !{!293, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1P_3ops5range5RangejENCNvMNtBM_5shardINtB32_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBM_3cfg13DefaultConfigE3news_0EE0CsbHsylk8USo0_12ping_example"}
!294 = distinct !{!294, !293, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1P_3ops5range5RangejENCNvMNtBM_5shardINtB32_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBM_3cfg13DefaultConfigE3news_0EE0CsbHsylk8USo0_12ping_example: argument 0"}
!295 = !{!294, !292, !290, !288}
!296 = !{!288}
!297 = distinct !{!297, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECsbHsylk8USo0_12ping_example"}
!298 = distinct !{!298, !297, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 0"}
!299 = distinct !{!299, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example"}
!300 = distinct !{!300, !299, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!301 = distinct !{!301, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1m_3cfg13DefaultConfigENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3J_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENvMs2_B1i_B1f_3newEE0E0CsbHsylk8USo0_12ping_example"}
!302 = distinct !{!302, !301, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1m_3cfg13DefaultConfigENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3J_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENvMs2_B1i_B1f_3newEE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!303 = distinct !{!303, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBP_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3s_3ops5range5RangejENvMs2_BL_BI_3newEE0CsbHsylk8USo0_12ping_example"}
!304 = distinct !{!304, !303, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBP_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3s_3ops5range5RangejENvMs2_BL_BI_3newEE0CsbHsylk8USo0_12ping_example: argument 0"}
!305 = !{!300, !298}
!306 = !{!298}
!307 = !{!304, !302, !300, !298}
!308 = distinct !{!308, i1 true, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBK_TBK_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3H_7HashSetBK_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1S_7collect6ExtendBK_E6extendB3_E0NCINvNvB1O_8for_each4callB3r_NCINvXs1i_NtB3J_3mapINtB6x_7HashMapBK_uB4t_EIB5h_B3r_E6extendINtB2U_3MapB3_B3y_EE0E0E0ECsbHsylk8USo0_12ping_example"}
!309 = distinct !{!309, !308, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBK_TBK_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3H_7HashSetBK_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1S_7collect6ExtendBK_E6extendB3_E0NCINvNvB1O_8for_each4callB3r_NCINvXs1i_NtB3J_3mapINtB6x_7HashMapBK_uB4t_EIB5h_B3r_E6extendINtB2U_3MapB3_B3y_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 0"}
!310 = distinct !{!310, i1 true, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example"}
!311 = distinct !{!311, !310, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example: argument 1:pre.rot"}
!312 = distinct !{!312, i1 true, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example"}
!313 = distinct !{!313, !312, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbHsylk8USo0_12ping_example: argument 1"}
!314 = distinct !{!314, !308, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBK_TBK_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3H_7HashSetBK_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1S_7collect6ExtendBK_E6extendB3_E0NCINvNvB1O_8for_each4callB3r_NCINvXs1i_NtB3J_3mapINtB6x_7HashMapBK_uB4t_EIB5h_B3r_E6extendINtB2U_3MapB3_B3y_EE0E0E0ECsbHsylk8USo0_12ping_example: argument 1"}
!315 = distinct !{!315, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolTBU_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2d_7HashSetBU_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBU_EE0NCINvNvNtNtB3R_8iterator8Iterator8for_each4callB1X_NCINvXs1i_NtB2f_3mapINtB6f_7HashMapBU_uB2Z_EIB3N_B1X_E6extendINtB4_3MapB4t_B24_EE0E0E0CsbHsylk8USo0_12ping_example"}
!316 = distinct !{!316, !315, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolTBU_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2d_7HashSetBU_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBU_EE0NCINvNvNtNtB3R_8iterator8Iterator8for_each4callB1X_NCINvXs1i_NtB2f_3mapINtB6f_7HashMapBU_uB2Z_EIB3N_B1X_E6extendINtB4_3MapB4t_B24_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!317 = distinct !{!317, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2v_7HashMapB1g_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainB1g_ENCINvXs8_NtB2x_3setINtB61_7HashSetB1g_B3j_EIB47_B1g_E6extendB56_E0EE0E0CsbHsylk8USo0_12ping_example"}
!318 = distinct !{!318, !317, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2v_7HashMapB1g_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainB1g_ENCINvXs8_NtB2x_3setINtB61_7HashSetB1g_B3j_EIB47_B1g_E6extendB56_E0EE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!319 = distinct !{!319, i1 true, !"_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2P_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBR_ENCINvXs8_NtBb_3setINtB5b_7HashSetBR_B1V_EIB2J_BR_E6extendB4h_E0EE0CsbHsylk8USo0_12ping_example"}
!320 = distinct !{!320, !319, !"_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2P_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBR_ENCINvXs8_NtBb_3setINtB5b_7HashSetBR_B1V_EIB2J_BR_E6extendB4h_E0EE0CsbHsylk8USo0_12ping_example: argument 0"}
!321 = !{!309}
!322 = !{!311, !309}
!323 = !{!313, !309}
!324 = !{!313}
!325 = !{!320, !318, !316, !309, !314}
!326 = !{!309, !314}
!327 = distinct !{!327, i1 true, !"_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBZ_15stream_protocol14StreamProtocolEbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBU_RB1Q_uINtNtNtB2F_3ops12control_flow11ControlFlowB1Q_ENCNvMs2_BX_INtBX_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvB2x_8find_map5checkB4k_B1Q_QNCINvMs0_NtBZ_7handlerNtB7d_15ProtocolsChange22from_initial_protocolsB1Q_INtB3H_3MapB3_B5b_EE0E0E0B4q_ECsbHsylk8USo0_12ping_example"}
!328 = distinct !{!328, !327, !"_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBZ_15stream_protocol14StreamProtocolEbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBU_RB1Q_uINtNtNtB2F_3ops12control_flow11ControlFlowB1Q_ENCNvMs2_BX_INtBX_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvB2x_8find_map5checkB4k_B1Q_QNCINvMs0_NtBZ_7handlerNtB7d_15ProtocolsChange22from_initial_protocolsB1Q_INtB3H_3MapB3_B5b_EE0E0E0B4q_ECsbHsylk8USo0_12ping_example: argument 0"}
!329 = distinct !{!329, !327, !"_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBZ_15stream_protocol14StreamProtocolEbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBU_RB1Q_uINtNtNtB2F_3ops12control_flow11ControlFlowB1Q_ENCNvMs2_BX_INtBX_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvB2x_8find_map5checkB4k_B1Q_QNCINvMs0_NtBZ_7handlerNtB7d_15ProtocolsChange22from_initial_protocolsB1Q_INtB3H_3MapB3_B5b_EE0E0E0B4q_ECsbHsylk8USo0_12ping_example: argument 3"}
!330 = distinct !{!330, !327, !"_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBZ_15stream_protocol14StreamProtocolEbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBU_RB1Q_uINtNtNtB2F_3ops12control_flow11ControlFlowB1Q_ENCNvMs2_BX_INtBX_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvB2x_8find_map5checkB4k_B1Q_QNCINvMs0_NtBZ_7handlerNtB7d_15ProtocolsChange22from_initial_protocolsB1Q_INtB3H_3MapB3_B5b_EE0E0E0B4q_ECsbHsylk8USo0_12ping_example: argument 2"}
!331 = distinct !{!331, !327, !"_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtBZ_15stream_protocol14StreamProtocolEbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBU_RB1Q_uINtNtNtB2F_3ops12control_flow11ControlFlowB1Q_ENCNvMs2_BX_INtBX_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvB2x_8find_map5checkB4k_B1Q_QNCINvMs0_NtBZ_7handlerNtB7d_15ProtocolsChange22from_initial_protocolsB1Q_INtB3H_3MapB3_B5b_EE0E0E0B4q_ECsbHsylk8USo0_12ping_example: argument 1"}
!332 = distinct !{!332, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB15_15stream_protocol14StreamProtocolERB1W_uINtNtNtBa_3ops12control_flow11ControlFlowB1W_ENCNvMs2_B13_INtB13_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2C_B1W_QNCINvMs0_NtB15_7handlerNtB60_15ProtocolsChange22from_initial_protocolsB1W_INtB4_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysB10_bEB3s_EE0E0E0CsbHsylk8USo0_12ping_example"}
!333 = distinct !{!333, !332, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB15_15stream_protocol14StreamProtocolERB1W_uINtNtNtBa_3ops12control_flow11ControlFlowB1W_ENCNvMs2_B13_INtB13_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2C_B1W_QNCINvMs0_NtB15_7handlerNtB60_15ProtocolsChange22from_initial_protocolsB1W_INtB4_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysB10_bEB3s_EE0E0E0CsbHsylk8USo0_12ping_example: argument 2"}
!334 = distinct !{!334, !332, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB15_15stream_protocol14StreamProtocolERB1W_uINtNtNtBa_3ops12control_flow11ControlFlowB1W_ENCNvMs2_B13_INtB13_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2C_B1W_QNCINvMs0_NtB15_7handlerNtB60_15ProtocolsChange22from_initial_protocolsB1W_INtB4_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysB10_bEB3s_EE0E0E0CsbHsylk8USo0_12ping_example: argument 1"}
!335 = distinct !{!335, !332, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqNtNtB15_15stream_protocol14StreamProtocolERB1W_uINtNtNtBa_3ops12control_flow11ControlFlowB1W_ENCNvMs2_B13_INtB13_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2C_B1W_QNCINvMs0_NtB15_7handlerNtB60_15ProtocolsChange22from_initial_protocolsB1W_INtB4_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysB10_bEB3s_EE0E0E0CsbHsylk8USo0_12ping_example: argument 0"}
!336 = distinct !{!336, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1h_QNCINvMs0_NtB1l_7handlerNtB2y_15ProtocolsChange22from_initial_protocolsB1h_INtNtNtBc_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtB1l_10connection11AsStrHashEqB1h_EbENCNvMs2_B4W_INtB4W_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0EE0E0CsbHsylk8USo0_12ping_example"}
!337 = distinct !{!337, !336, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1h_QNCINvMs0_NtB1l_7handlerNtB2y_15ProtocolsChange22from_initial_protocolsB1h_INtNtNtBc_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtB1l_10connection11AsStrHashEqB1h_EbENCNvMs2_B4W_INtB4W_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0EE0E0CsbHsylk8USo0_12ping_example: argument 2"}
!338 = distinct !{!338, !336, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1h_QNCINvMs0_NtB1l_7handlerNtB2y_15ProtocolsChange22from_initial_protocolsB1h_INtNtNtBc_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtB1l_10connection11AsStrHashEqB1h_EbENCNvMs2_B4W_INtB4W_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0EE0E0CsbHsylk8USo0_12ping_example: argument 1"}
!339 = distinct !{!339, !336, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1h_QNCINvMs0_NtB1l_7handlerNtB2y_15ProtocolsChange22from_initial_protocolsB1h_INtNtNtBc_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtB1l_10connection11AsStrHashEqB1h_EbENCNvMs2_B4W_INtB4W_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE3new0EE0E0CsbHsylk8USo0_12ping_example: argument 0"}
!340 = !{!328}
!341 = !{!328, !331, !330, !329}
!342 = !{!339, !338, !337, !335, !334, !333, !328, !331, !330, !329}
!343 = !{!339, !335, !328}
!344 = !{!331, !330, !329}
!345 = distinct !{!345, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!346 = distinct !{!346, !345, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!347 = distinct !{!347, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!348 = distinct !{!348, !347, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!349 = distinct !{!349, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!350 = distinct !{!350, !349, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!351 = distinct !{!351, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!352 = distinct !{!352, !351, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!353 = distinct !{!353, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice"}
!354 = distinct !{!354, !353, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 0"}
!355 = distinct !{!355, !353, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 1"}
!356 = distinct !{!356, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!357 = distinct !{!357, !356, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!358 = distinct !{!358, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!359 = distinct !{!359, !358, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!360 = distinct !{!360, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!361 = distinct !{!361, !360, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!362 = distinct !{!362, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!363 = distinct !{!363, !362, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!364 = distinct !{!364, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!365 = distinct !{!365, !364, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!366 = distinct !{!366, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!367 = distinct !{!367, !366, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!368 = distinct !{!368, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!369 = distinct !{!369, !368, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!370 = distinct !{!370, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!371 = distinct !{!371, !370, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!372 = distinct !{!372, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice"}
!373 = distinct !{!373, !372, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 0"}
!374 = distinct !{!374, !372, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 1"}
!375 = distinct !{!375, i1 true, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!376 = distinct !{!376, !375, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!377 = distinct !{!377, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!378 = distinct !{!378, !377, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!379 = distinct !{!379, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!380 = distinct !{!380, !379, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!381 = !{!346}
!382 = !{!348}
!383 = !{!348, !346}
!384 = !{!352, !350}
!385 = !{!354}
!386 = !{!354, !355}
!387 = !{!359, !357}
!388 = !{!363, !361}
!389 = !{!365}
!390 = !{!367}
!391 = !{!367, !365}
!392 = !{!369}
!393 = !{!371}
!394 = !{!371, !369}
!395 = !{!373}
!396 = !{!373, !374}
!397 = !{!376}
!398 = !{!378}
!399 = !{!380}
!400 = !{!380, !378}
!401 = distinct !{!401, i1 true, !"_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbHsylk8USo0_12ping_example"}
!402 = distinct !{!402, !401, !"_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbHsylk8USo0_12ping_example: argument 1"}
!403 = distinct !{!403, !401, !"_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbHsylk8USo0_12ping_example: argument 0"}
!404 = distinct !{!404, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!405 = distinct !{!405, !404, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!406 = distinct !{null}
!407 = distinct !{!407, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!408 = distinct !{!408, !407, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!409 = distinct !{!409, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice"}
!410 = distinct !{!410, !409, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 0"}
!411 = distinct !{!411, !409, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 1"}
!412 = distinct !{!412, i1 true, !"_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbHsylk8USo0_12ping_example"}
!413 = distinct !{!413, !412, !"_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbHsylk8USo0_12ping_example: argument 0"}
!414 = distinct !{!414, i1 true, !"_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!415 = distinct !{!415, !414, !"_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!416 = distinct !{!416, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!417 = distinct !{!417, !416, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!418 = distinct !{!418, !416, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!419 = distinct !{!419, i1 true, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!420 = distinct !{!420, !419, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!421 = distinct !{!421, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!422 = distinct !{!422, !421, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!423 = distinct !{!423, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!424 = distinct !{!424, !423, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!425 = distinct !{null, null}
!426 = distinct !{!426, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice"}
!427 = distinct !{!427, !426, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 0"}
!428 = distinct !{!428, !426, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 1"}
!429 = distinct !{!429, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!430 = distinct !{!430, !429, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!431 = distinct !{!431, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!432 = distinct !{!432, !431, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!433 = distinct !{!433, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example"}
!434 = distinct !{!434, !433, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsbHsylk8USo0_12ping_example: argument 0"}
!435 = distinct !{!435, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!436 = distinct !{!436, !435, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!437 = distinct !{!437, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice"}
!438 = distinct !{!438, !437, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 0"}
!439 = distinct !{!439, !437, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 1"}
!440 = !{!403, !402}
!441 = !{!405}
!442 = !{!405, !403, !402}
!443 = !{!408, !405}
!444 = !{!410}
!445 = !{!410, !411, !403, !402}
!446 = !{!415, !413, !403, !402}
!447 = !{!418, !417, !403, !402}
!448 = !{!420}
!449 = !{!420, !418, !417, !403, !402}
!450 = !{!422}
!451 = !{!424}
!452 = !{!424, !422}
!453 = !{!424, !422, !418, !417, !403, !402}
!454 = !{!417, !402}
!455 = !{!427}
!456 = !{!427, !428}
!457 = !{!432, !430}
!458 = !{!436, !434}
!459 = !{!438}
!460 = !{!439}
!461 = !{!438, !439}
end_hunk_1
