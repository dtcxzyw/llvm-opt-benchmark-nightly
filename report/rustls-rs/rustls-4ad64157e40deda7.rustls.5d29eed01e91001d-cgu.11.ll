Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.11?download=true
inline.NumInlined: 756
inline.NumDeleted: 245
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ServerCertDetailsEBH_:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client6common18ClientHelloDetailsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB1e_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %.body2 unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB1e_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB1e_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body2 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB1e_.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1e_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

.body2:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1e_.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEEB1c_.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1e_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body2, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1e_.exit
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hpke18EncapsulatedSecretEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hash7ContextEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtNtCs222MioR9bx1_9aws_lc_rs6digest10digest_ctxNtB5_13DigestContextNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 82351536043346213) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.0.i = alloca [104 x i8], align 8         ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [112 x i8], align 8               ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112)
  %i.j = load i64, ptr %i.g, align 8, !range !94, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !95, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #30
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = icmp ule i64 %2, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.m, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %2
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 80
  %.sroa.0.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 56
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %.sroa.10.029 = phi i64 [ %i.m, %.lr.ph ], [ %i.aa, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %.sroa.013.028 = phi ptr [ %1, %.lr.ph ], [ %i.ac, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 14 uses
  %.sroa.7.027 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 3 uses
  %i.aa = add i64 %.sroa.10.029, -1               ; 2 uses
  %i.ab = icmp eq ptr %.sroa.013.028, %i.t
  br i1 %i.ab, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit
  store i64 %2, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit:                                        ; preds = %bb.e, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 112
  %i.ad = add nuw nsw i64 %.sroa.7.027, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.ae = load i64, ptr %.sroa.013.028, align 8, !range !13, !alias.scope !602, !noalias !599, !noundef !5
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 32
  %i.ah = load <2 x i16>, ptr %i.ag, align 8, !alias.scope !602, !noalias !599
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 8
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.e
  store <2 x i16> %i.ah, ptr %i.z, align 8, !alias.scope !599, !noalias !602
  store i64 -1, ptr %i.h, align 8, !alias.scope !599, !noalias !602
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !607
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 52
  %i.ak = load i8, ptr %i.aj, align 4, !alias.scope !614, !noalias !615, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 48
  %i.am = load <2 x i16>, ptr %i.al, align 8, !alias.scope !614, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !616
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.013.028)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !616
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 24
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i unwind label %bb.g, !noalias !615

bb.g:                                             ; preds = %.noexc12
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEEBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %bb.r unwind label %bb.h, !noalias !615

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !615
  unreachable

_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc12
  store i8 %i.ak, ptr %i.v, align 4, !alias.scope !609, !noalias !617
  store <2 x i16> %i.am, ptr %i.w, align 8, !alias.scope !609, !noalias !617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !616
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !alias.scope !618, !noalias !619, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !607
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 80 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !range !13, !alias.scope !618, !noalias !619, !noundef !5
  %.not.i.i = icmp eq i64 %i.at, -1
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !607
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %bb.n unwind label %bb.m, !noalias !619

bb.j:                                             ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !618, !noalias !619, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 96
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !618, !noalias !619, !noundef !5
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i, %bb.n ], [ %i.ax, %bb.j ]
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i, %bb.n ], [ %i.av, %bb.j ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.n ], [ -1, %bb.j ]
  store i64 %.sroa.0.0.i.i, ptr %i.e, align 8, !noalias !607
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !607
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !607
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 56
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i unwind label %bb.o, !noalias !619

bb.l:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.az, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13HpkeKeyConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f) #27
          to label %bb.r unwind label %bb.p, !noalias !619

bb.m:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.i
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.c, align 8, !noalias !607
  %.sroa.5.0.copyload3.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !607
  %.sroa.6.0.copyload5.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !607
  br label %bb.k

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %bb.l unwind label %bb.p, !noalias !619

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !619
  unreachable

_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.80..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.i, i64 104, i1 false), !noalias !602
  store i8 %i.ar, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !599, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.noexc
  %i.bc = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %.sroa.7.027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bc, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bd = icmp eq i64 %i.aa, 0
  br i1 %i.bd, label %.thread, label %bb.c

bb.q:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.r:                                             ; preds = %.loopexit, %bb.l, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i.i, %bb.l ], [ %i.ao, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.027, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #27
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cacheNtB7_24ClientSessionMemoryCacheNtNtBb_11client_conn18ClientSessionStore19insert_tls13_ticket0Bd_(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = load i64, ptr %1, align 8, !range !24, !noundef !5
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueE9pop_frontB1b_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %.body.thread6

bb.c:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueE13push_back_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.body.thread6:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !range !13, !alias.scope !621, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist19ClientSessionCommonEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %.body.thread unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit unwind label %.body.thread6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body5

.body.thread:                                     ; preds = %bb.h, %bb.f, %.body.thread6
  %eh.lpad-body5 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread6 ], [ %i.m, %bb.h ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(128) %0) #27
          to label %bb.k unwind label %bb.l

bb.l:                                             ; preds = %.body.thread
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs7ZUl82OSlxp_6rustls6suitesNtB2_17CipherSuiteCommon4fips(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !20, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a) #32
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB2_3Tag3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = icmp samesign ult i64 %2, 65
  br i1 %i.d, label %bb.c, label %bb.b, !prof !624

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.b, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !625
  store ptr %i.b, ptr %i.a, align 8, !noalias !625
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !noalias !625
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !625
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs2_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_16DecapsulationKey11decapsulateCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !20, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  store i64 %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !630
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !94, !noalias !630, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !95, !noalias !630, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d, !prof !89

bb.b:                                             ; preds = %.noexc
  %i.m = load i64, ptr %i.l, align 8, !noalias !630
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #30
          to label %.noexc16 unwind label %bb.c
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!400 = !{!398, !395}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!403 = distinct !{!403, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!404 = !{!405, !407, !402}
!405 = distinct !{!405, !406, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!406 = distinct !{!406, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!407 = distinct !{!407, !408, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!408 = distinct !{!408, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!411 = distinct !{!411, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!414 = distinct !{!414, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!417 = distinct !{!417, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!420 = distinct !{!420, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!423 = distinct !{!423, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!424 = !{!422, !419}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!427 = distinct !{!427, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!428 = !{!429, !431, !426}
!429 = distinct !{!429, !430, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!430 = distinct !{!430, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!431 = distinct !{!431, !432, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!432 = distinct !{!432, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!435 = distinct !{!435, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!438 = distinct !{!438, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!441 = distinct !{!441, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!444 = distinct !{!444, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!447 = distinct !{!447, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!448 = !{!446, !443}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!451 = distinct !{!451, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!452 = !{!453, !455, !450}
!453 = distinct !{!453, !454, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!454 = distinct !{!454, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!455 = distinct !{!455, !456, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!456 = distinct !{!456, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!459 = distinct !{!459, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!462 = distinct !{!462, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!465 = distinct !{!465, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!468 = distinct !{!468, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!471 = distinct !{!471, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!472 = !{!470, !467}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!475 = distinct !{!475, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!476 = !{!477, !479, !474}
!477 = distinct !{!477, !478, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!478 = distinct !{!478, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!479 = distinct !{!479, !480, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!480 = distinct !{!480, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!483 = distinct !{!483, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!486 = distinct !{!486, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!489 = distinct !{!489, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!490 = !{!488, !485}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_: argument 0"}
!493 = distinct !{!493, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!496 = distinct !{!496, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!497 = !{!498, !500, !495}
!498 = distinct !{!498, !499, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!499 = distinct !{!499, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!500 = distinct !{!500, !501, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!501 = distinct !{!501, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!504 = distinct !{!504, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!507 = distinct !{!507, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!508 = !{!506, !503}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!511 = distinct !{!511, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!512 = !{!513, !515, !510}
!513 = distinct !{!513, !514, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!514 = distinct !{!514, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!515 = distinct !{!515, !516, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!516 = distinct !{!516, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!517 = !{!518}
!518 = distinct !{!518, !519, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!519 = distinct !{!519, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!522 = distinct !{!522, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!523 = !{!524}
!524 = distinct !{!524, !525, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!525 = distinct !{!525, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!526 = !{!524, !521}
!527 = !{!528}
!528 = distinct !{!528, !529, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!529 = distinct !{!529, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!530 = !{!531, !533, !528}
!531 = distinct !{!531, !532, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!532 = distinct !{!532, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!533 = distinct !{!533, !534, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!534 = distinct !{!534, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!537 = distinct !{!537, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!540 = distinct !{!540, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!543 = distinct !{!543, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!544 = !{!545}
!545 = distinct !{!545, !546, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!546 = distinct !{!546, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!549 = distinct !{!549, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!550 = !{!548, !545}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!553 = distinct !{!553, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!554 = !{!555, !557, !552}
!555 = distinct !{!555, !556, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!556 = distinct !{!556, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!557 = distinct !{!557, !558, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!558 = distinct !{!558, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!561 = distinct !{!561, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!562 = !{!563}
!563 = distinct !{!563, !564, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_: argument 0"}
!564 = distinct !{!564, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client6common17ClientAuthDetailsEEB13_"}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!567 = distinct !{!567, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!570 = distinct !{!570, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!573 = distinct !{!573, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!574 = !{!572, !569}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!577 = distinct !{!577, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!578 = !{!579, !581, !576}
!579 = distinct !{!579, !580, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!580 = distinct !{!580, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!581 = distinct !{!581, !582, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!582 = distinct !{!582, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!583 = !{!584}
!584 = distinct !{!584, !585, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_: argument 0"}
!585 = distinct !{!585, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEEB1A_"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 0"}
!588 = distinct !{!588, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_: argument 0"}
!591 = distinct !{!591, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!594 = distinct !{!594, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!595 = !{!593, !590}
!596 = !{!597}
!597 = distinct !{!597, !598, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 0"}
!598 = distinct !{!598, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls"}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!601 = distinct !{!601, !"_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!602 = !{!603}
!603 = distinct !{!603, !601, !"_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!606 = distinct !{!606, !"_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!607 = !{!608, !605, !600, !603}
!608 = distinct !{!608, !606, !"_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!609 = !{!610}
!610 = distinct !{!610, !611, !"_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!611 = distinct !{!611, !"_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!612 = !{!613}
!613 = distinct !{!613, !611, !"_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!614 = !{!613, !605, !603}
!615 = !{!610, !608, !600}
!616 = !{!610, !613, !608, !605, !600, !603}
!617 = !{!613, !608, !605, !600, !603}
!618 = !{!605, !603}
!619 = !{!608, !600}
!620 = !{!605, !600, !603}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_: argument 0"}
!623 = distinct !{!623, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_"}
!624 = !{!"branch_weights", i32 4000000, i32 4001}
!625 = !{!626, !628}
!626 = distinct !{!626, !627, !"_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!627 = distinct !{!627, !"_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!628 = distinct !{!628, !629, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_: argument 0"}
!629 = distinct !{!629, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!632 = distinct !{!632, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!633 = !{!634, !636}
!634 = distinct !{!634, !635, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls: argument 0"}
!635 = distinct !{!635, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls"}
!636 = distinct !{!636, !637, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls: argument 0"}
!637 = distinct !{!637, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls"}
!638 = !{!639, !641}
!639 = distinct !{!639, !640, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls: argument 0"}
!640 = distinct !{!640, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls"}
!641 = distinct !{!641, !642, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls: argument 0"}
!642 = distinct !{!642, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE8generateNCNvNtB8_3kem16kem_key_generate0ECs7ZUl82OSlxp_6rustls: argument 0"}
!645 = distinct !{!645, !"_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE8generateNCNvNtB8_3kem16kem_key_generate0ECs7ZUl82OSlxp_6rustls"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!648 = distinct !{!648, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!651 = distinct !{!651, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!654 = distinct !{!654, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!655 = !{i8 -1, i8 22}
!656 = !{i32 0, i32 2}
!657 = !{!658, !660}
!658 = distinct !{!658, !659, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!659 = distinct !{!659, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!660 = distinct !{!660, !661, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_: argument 0"}
!661 = distinct !{!661, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_"}
!662 = !{!663, !665}
!663 = distinct !{!663, !664, !"_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryINtNtCs4wP2HXfJTCR_5alloc3vec3VechEB12_E9or_insertCs7ZUl82OSlxp_6rustls: argument 0"}
!664 = distinct !{!664, !"_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryINtNtCs4wP2HXfJTCR_5alloc3vec3VechEB12_E9or_insertCs7ZUl82OSlxp_6rustls"}
!665 = distinct !{!665, !664, !"_RNvMs18_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_5EntryINtNtCs4wP2HXfJTCR_5alloc3vec3VechEB12_E9or_insertCs7ZUl82OSlxp_6rustls: argument 1"}
!666 = !{!665}
!667 = !{!663}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 0"}
!670 = distinct !{!670, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls"}
!671 = !{i64 2}
!672 = !{i16 0, i16 17}
!673 = !{!674, !676}
!674 = distinct !{!674, !675, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6suitesNtB2t_20SupportedCipherSuite30usable_for_signature_algorithm0EBU_: argument 0"}
!675 = distinct !{!675, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6suitesNtB2t_20SupportedCipherSuite30usable_for_signature_algorithm0EBU_"}
!676 = distinct !{!676, !675, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6suitesNtB2t_20SupportedCipherSuite30usable_for_signature_algorithm0EBU_: argument 1"}
!677 = distinct !{!677, !678}
!678 = !{!"llvm.loop.unroll.disable"}
!679 = distinct !{!679, !678}
!680 = distinct !{!680, !678}
!681 = distinct !{!681, !678}
!682 = distinct !{!682, !678}
!683 = distinct !{!683, !678}
!684 = !{!685, !687}
!685 = distinct !{!685, !686, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_31compatible_sigscheme_for_suites0EBU_: argument 0"}
!686 = distinct !{!686, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_31compatible_sigscheme_for_suites0EBU_"}
!687 = distinct !{!687, !686, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_31compatible_sigscheme_for_suites0EBU_: argument 1"}
!688 = !{!689, !685, !687}
!689 = distinct !{!689, !690, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls6suitesNtB4_20SupportedCipherSuite30usable_for_signature_algorithm: argument 0"}
!690 = distinct !{!690, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls6suitesNtB4_20SupportedCipherSuite30usable_for_signature_algorithm"}
!691 = !{!692, !694, !689, !685, !687}
!692 = distinct !{!692, !693, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6suitesNtB2t_20SupportedCipherSuite30usable_for_signature_algorithm0EBU_: argument 0"}
!693 = distinct !{!693, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6suitesNtB2t_20SupportedCipherSuite30usable_for_signature_algorithm0EBU_"}
!694 = distinct !{!694, !693, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6suitesNtB2t_20SupportedCipherSuite30usable_for_signature_algorithm0EBU_: argument 1"}
!695 = !{!696, !698}
!696 = distinct !{!696, !697, !"_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!697 = distinct !{!697, !"_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!698 = distinct !{!698, !699, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_: argument 0"}
!699 = distinct !{!699, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_"}
!700 = !{!701, !703}
!701 = distinct !{!701, !702, !"_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!702 = distinct !{!702, !"_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!703 = distinct !{!703, !704, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_: argument 0"}
!704 = distinct !{!704, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_"}
!705 = !{!706}
!706 = distinct !{!706, !707, !"_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB5_3TagINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref: argument 0"}
!707 = distinct !{!707, !"_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB5_3TagINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref"}
!708 = !{!709, !711}
!709 = distinct !{!709, !710, !"_RNvXs2z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18PresharedKeyBinderINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE4from: argument 0"}
!710 = distinct !{!710, !"_RNvXs2z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18PresharedKeyBinderINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE4from"}
!711 = distinct !{!711, !710, !"_RNvXs2z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18PresharedKeyBinderINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE4from: argument 1"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!714 = distinct !{!714, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!717 = distinct !{!717, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!720 = distinct !{!720, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!721 = !{!719, !716}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new: argument 1"}
!724 = distinct !{!724, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new"}
!725 = !{!726}
!726 = distinct !{!726, !724, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new: argument 0"}
!727 = !{!726, !723}
!728 = !{i16 -1, i16 16}
!729 = !{i16 0, i16 2}
!730 = !{i8 0, i8 5}
!731 = !{i16 0, i16 377}
!732 = !{i64 0, i64 3}
!733 = !{!734}
!734 = distinct !{!734, !735, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_: argument 0"}
!735 = distinct !{!735, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_: argument 0"}
!738 = distinct !{!738, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_"}
!739 = !{!740}
!740 = distinct !{!740, !741, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_: argument 0"}
!741 = distinct !{!741, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_"}
!742 = !{!743, !745, !746}
!743 = distinct !{!743, !744, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete: argument 0"}
!744 = distinct !{!744, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete"}
!745 = distinct !{!745, !744, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete: argument 1"}
!746 = distinct !{!746, !744, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete: argument 2"}
!747 = distinct !{null}
!748 = !{i16 0, i16 16}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1313emit_fake_ccs: argument 1"}
!751 = distinct !{!751, !"_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1313emit_fake_ccs"}
!752 = !{!753}
!753 = distinct !{!753, !751, !"_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1313emit_fake_ccs: argument 0"}
!754 = !{!753, !750}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!757 = distinct !{!757, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!758 = !{!759, !761, !756}
!759 = distinct !{!759, !760, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!760 = distinct !{!760, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!761 = distinct !{!761, !762, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!762 = distinct !{!762, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!765 = distinct !{!765, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!768 = distinct !{!768, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!769 = !{!767, !764}
!770 = !{!771}
!771 = distinct !{!771, !772, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_: argument 0"}
!772 = distinct !{!772, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_"}
!773 = !{!774}
!774 = distinct !{!774, !775, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_: argument 0"}
!775 = distinct !{!775, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!778 = distinct !{!778, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!779 = !{!780}
!780 = distinct !{!780, !781, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!781 = distinct !{!781, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!782 = !{!780, !777}
!783 = !{!784}
!784 = distinct !{!784, !785, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!785 = distinct !{!785, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!786 = !{!787, !789, !784}
!787 = distinct !{!787, !788, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!788 = distinct !{!788, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!789 = distinct !{!789, !790, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!790 = distinct !{!790, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!791 = !{!792}
!792 = distinct !{!792, !793, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!793 = distinct !{!793, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!796 = distinct !{!796, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!797 = !{!795, !792}
!798 = !{!799}
!799 = distinct !{!799, !800, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_: argument 0"}
!800 = distinct !{!800, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_"}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1313emit_fake_ccs: argument 0"}
!803 = distinct !{!803, !"_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1313emit_fake_ccs"}
!804 = !{!805}
!805 = distinct !{!805, !803, !"_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1313emit_fake_ccs: argument 1"}
!806 = !{!802, !805}
!807 = !{!808, !810}
!808 = distinct !{!808, !809, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!809 = distinct !{!809, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!810 = distinct !{!810, !811, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_: argument 0"}
!811 = distinct !{!811, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8compressNtB5_21CompressionCacheEntry23compressed_cert_payload: argument 1"}
!814 = distinct !{!814, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8compressNtB5_21CompressionCacheEntry23compressed_cert_payload"}
!815 = !{!816}
!816 = distinct !{!816, !814, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8compressNtB5_21CompressionCacheEntry23compressed_cert_payload: argument 0"}
!817 = !{!818, !820}
!818 = distinct !{!818, !819, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!819 = distinct !{!819, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!820 = distinct !{!820, !821, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_: argument 0"}
end_hunk_1
