Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.09?download=true
inline.NumInlined: 347
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTmAhj21_RShEENCNCNvNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB1L_17SenderCertificate6signer8CERT_MAP00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3i_8for_each4callTmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtB1L_17ServerCertificateEENCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB5N_7HashMapmB4n_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB3m_7collect6ExtendB4l_E6extendBN_E0E0EB1N_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !99, !noalias !100, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !99, !noalias !100, !noundef !4
  call void @_RNvMNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB2_17ServerCertificate11deserialize(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab), !noalias !102
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ac = load i64, ptr %i.e, align 8, !range !5, !alias.scope !109, !noalias !101, !noundef !4
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.e, label %_RNCNCNvNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtBa_17SenderCertificate6signer8CERT_MAP00Bc_.exit.i.i, !prof !10

bb.e:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !noalias !111
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
          to label %bb.g unwind label %bb.f, !noalias !112

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #21
          to label %common.resume.i.i unwind label %bb.h, !noalias !112

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !112
  unreachable

common.resume.i.i:                                ; preds = %bb.r, %.body3.i.i.i.i.i.i.i, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.ap, %bb.r ], [ %.pn.i.i.i.i.i.i.i, %.body3.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNCNvNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtBa_17SenderCertificate6signer8CERT_MAP00Bc_.exit.i.i: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %.sroa.42.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 144, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 4 dereferenceable(144) %.sroa.42.8..sroa_idx.i.i, i64 144, i1 false), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  call void @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateENtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertB1H_(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.b), !noalias !115
  %i.ah = load i64, ptr %i.p, align 8, !range !5, !alias.scope !116, !noalias !114, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTmAhj21_RShETmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEuNCNCNvNvMs_B20_NtB20_17SenderCertificate6signer8CERT_MAP00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB17_NCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB5e_7HashMapmB19_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB4i_7collect6ExtendB17_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3b_EE0E0E0B22_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNCNCNvNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtBa_17SenderCertificate6signer8CERT_MAP00Bc_.exit.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %bb.k unwind label %bb.j, !noalias !115

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.l, !noalias !115

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i.i.i.i.i unwind label %bb.m, !noalias !115

bb.l:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !115
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.aj, %bb.j ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #21
          to label %.body3.i.i.i.i.i.i.i unwind label %bb.t, !noalias !115

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.o unwind label %bb.n, !noalias !115

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body3.i.i.i.i.i.i.i unwind label %bb.p, !noalias !115

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5.i.i.i.i.i.i.i unwind label %bb.q, !noalias !115

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !115
  unreachable

.body3.i.i.i.i.i.i.i:                             ; preds = %bb.q, %bb.n, %.body.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.ao, %bb.q ], [ %i.am, %bb.n ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #21
          to label %common.resume.i.i unwind label %bb.t, !noalias !115

bb.q:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i.i.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5.i.i.i.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEB1u_.exit.i.i.i.i.i unwind label %bb.r, !noalias !115

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5.i.i.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i.i unwind label %bb.s, !noalias !115

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !115
  unreachable

bb.t:                                             ; preds = %.body3.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !115
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEB1u_.exit.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5.i.i.i.i.i.i.i
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !115
  br label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTmAhj21_RShETmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEuNCNCNvNvMs_B20_NtB20_17SenderCertificate6signer8CERT_MAP00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB17_NCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB5e_7HashMapmB19_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB4i_7collect6ExtendB17_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3b_EE0E0E0B22_.exit.i

_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTmAhj21_RShETmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEuNCNCNvNvMs_B20_NtB20_17SenderCertificate6signer8CERT_MAP00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB17_NCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB5e_7HashMapmB19_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB4i_7collect6ExtendB17_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3b_EE0E0E0B22_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEB1u_.exit.i.i.i.i.i, %_RNCNCNvNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtBa_17SenderCertificate6signer8CERT_MAP00Bc_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i)
  %i.as = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.m
  br i1 %i.at, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTmAhj21_RShEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB19_8adapters3map8map_foldRBQ_TmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEuNCNCNvNvMs_B3k_NtB3k_17SenderCertificate6signer8CERT_MAP00NCINvNvB13_8for_each4callB2r_NCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB64_7HashMapmB2t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB17_7collect6ExtendB2r_E6extendINtB1T_3MapBF_B4v_EE0E0E0EB3m_.exit, label %bb.c

_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTmAhj21_RShEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB19_8adapters3map8map_foldRBQ_TmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEuNCNCNvNvMs_B3k_NtB3k_17SenderCertificate6signer8CERT_MAP00NCINvNvB13_8for_each4callB2r_NCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB64_7HashMapmB2t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB17_7collect6ExtendB2r_E6extendINtB1T_3MapBF_B4v_EE0E0E0EB3m_.exit: ; preds = %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTmAhj21_RShETmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEuNCNCNvNvMs_B20_NtB20_17SenderCertificate6signer8CERT_MAP00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB17_NCINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB5e_7HashMapmB19_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtB4i_7collect6ExtendB17_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3b_EE0E0E0B22_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCNvMs2_B1Y_NtB1Y_15SenderKeyRecord21chain_ids_for_logging0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB40_8for_each4callmNCINvMsj_NtB16_3vecINtB5d_3VecmE14extend_trustedBN_E0E0EB20_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs2_NtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2k_8adapters3map8map_foldRB18_muNCNvMs2_B1a_NtB1a_15SenderKeyRecord21chain_ids_for_logging0NCINvNvB2e_8for_each4callmNCINvMsj_NtBc_3vecINtB5r_3VecmE14extend_trustedINtB3k_3MapBX_B3V_EE0E0E0EB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3W_9EnumeratepEB38_4fold9enumerateB21_uNCINvNvB38_8for_each4callTjB21_ENCINvMs1_B17_INtB17_8VecDequeB21_E10write_iterBP_E0E0E0EB25_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs2_NtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2k_8adapters3map8map_foldRB18_B18_uNvYB18_NtNtB2m_5clone5Clone5cloneNCINvNvXs_NtB3m_9enumerateINtB4F_9EnumeratepEB2e_4fold9enumerateB18_uNCINvNvB2e_8for_each4callTjB18_ENCINvMs1_B8_INtB8_8VecDequeB18_E10write_iterINtNtB3m_6cloned6ClonedBX_EE0E0E0E0EB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB40_4TakepEB38_8try_fold5checkB21_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvMB4P_B4M_10wrap_mut_2uB21_NCINvNvXs_NtB7_9enumerateINtB6a_9EnumeratepEB38_4fold9enumerateB21_uNCINvNvB38_8for_each4callTjB21_ENCINvMs1_B17_INtB17_8VecDequeB21_E10write_iterIB4b_INtNtB7_12by_ref_sized10ByRefSizedBP_EEE0E0E0E0E0INtNtB4R_12control_flow11ControlFlowB4M_EEB25_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.b = call noundef zeroext i1 @_RINvXs2_NtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2k_8adapters6cloned14clone_try_foldB18_uINtNtNtB2m_3ops12control_flow11ControlFlowINtNtB4c_9try_trait17NeverShortCircuituEENCINvNvXs_NtB3q_4takeINtB5C_4TakepEB2e_8try_fold5checkB18_uB4N_NCINvMB4Q_B4N_10wrap_mut_2uB18_NCINvNvXs_NtB3q_9enumerateINtB78_9EnumeratepEB2e_4fold9enumerateB18_uNCINvNvB2e_8for_each4callTjB18_ENCINvMs1_B8_INtB8_8VecDequeB18_E10write_iterIB5O_INtNtB3q_12by_ref_sized10ByRefSizedINtB3o_6ClonedBX_EEEE0E0E0E0E0E0B47_EB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB2_13EphemeralKeys9calculate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 10 uses
  %.sroa.0 = alloca [32 x i8], align 1            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 1            ; 2 uses
  %.sroa.4 = alloca [32 x i8], align 1            ; 2 uses
  %i.g = alloca [96 x i8], align 1                ; 7 uses
  %i.h = alloca [96 x i8], align 1                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = tail call { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 6 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 7 uses
  %i.o = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.d unwind label %bb.c       ; 2 uses

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38: ; preds = %bb.e, %.body43, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn15, %.body43 ], [ %.pn15, %bb.e ]
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef range(i64 1, 0) %i.n, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38

bb.d:                                             ; preds = %bb.a
  %4 = extractvalue { ptr, i64 } %i.o, 0          ; 8 uses
  %5 = extractvalue { ptr, i64 } %i.o, 1          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %. = select i1 %3, ptr %i.m, ptr %4             ; 2 uses
  %.79 = select i1 %3, ptr %4, ptr %i.m           ; 2 uses
  %.80 = select i1 %3, i64 %i.n, i64 %5
  %.81 = select i1 %3, i64 %5, i64 %i.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.79) ]
  store ptr @22, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 20, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %., ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.80, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.79, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.81, ptr %i.v, align 8
  invoke void @_RNvXs0_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_6ConcathE6concatCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 3)
          to label %bb.g unwind label %bb.f

.body43:                                          ; preds = %bb.ad, %bb.t, %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40
  %.pn15 = phi { ptr, i32 } [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40 ], [ %i.av, %bb.t ], [ %i.x, %bb.f ], [ %i.bb, %bb.ad ] ; 2 uses
  %i.w = icmp eq i64 %5, 0
  br i1 %i.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38, label %bb.e

bb.e:                                             ; preds = %.body43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38

bb.f:                                             ; preds = %bb.ae, %bb.u, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvMs8_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10PrivateKey19calculate_agreement(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40: ; preds = %bb.q, %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.q ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %.body43 unwind label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40

bb.i:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.i, align 8, !range !11, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.ac, align 8 ; 4 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = ptrtoint ptr %.sroa.07.0.copyload to i64 ; 2 uses
  %trunc = trunc i64 %i.ad to i8
  switch i8 %trunc, label %bb.y [
    i8 0, label %bb.ac
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
  ]

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val34 = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val35 = load i64, ptr %i.af, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.g, i8 0, i64 96, i1 false), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !145
  invoke void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val34, i64 %.val35, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0.copyload, i64 noundef %.sroa.48.0.copyload)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, i64 144, i1 false), !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !145
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ah, align 8, !noalias !145
  %i.ai = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 96)
          to label %bb.m unwind label %bb.l, !noalias !143

bb.l:                                             ; preds = %bb.n, %.noexc
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.f, ptr nonnull align 1 %i.c, i64 64, i1 true), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.f) #24, !noalias !143, !srcloc !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.ak)
          to label %.body unwind label %bb.o, !noalias !143

bb.m:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145
  br i1 %i.ai, label %bb.n, label %_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB15_13EphemeralKeys9calculate0E0B19_.exit.i, !prof !10

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !143

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !143
  unreachable

_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB15_13EphemeralKeys9calculate0E0B19_.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.f, ptr nonnull align 1 %i.b, i64 64, i1 true), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.f) #24, !noalias !143, !srcloc !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.am)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB15_13EphemeralKeys9calculate0E0B19_.exit.i, %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.aj, %bb.l ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.48.0.copyload, 0
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40, label %bb.q

bb.q:                                             ; preds = %.body
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.07.0.copyload, i64 noundef range(i64 1, 0) %.sroa.48.0.copyload, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40

bb.r:                                             ; preds = %_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB15_13EphemeralKeys9calculate0E0B19_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 1 dereferenceable(32) %i.ap, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(32) %i.aq, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ar, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.at, ptr noundef nonnull align 1 dereferenceable(96) %i.h, i64 96, i1 false)
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = icmp eq i64 %.sroa.48.0.copyload, 0
  br i1 %i.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit41, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.07.0.copyload, i64 noundef range(i64 1, 0) %.sroa.48.0.copyload, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit41

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit41: ; preds = %bb.s, %bb.r
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit41
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body43 unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit41
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.f

bb.v:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ax = icmp eq i64 %5, 0
  br i1 %i.ax, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit45, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit45

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit45: ; preds = %bb.w, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.ay = icmp eq i64 %i.n, 0
  br i1 %i.ay, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46.sink.split

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46.sink.split: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit45, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef range(i64 1, 0) %i.n, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46.sink.split, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit45
  ret void

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit40
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.y:                                             ; preds = %bb.j
  unreachable

bb.z:                                             ; preds = %bb.j
  %.sroa.09.1.extract.shift = lshr i64 %i.ad, 8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.j
  %.sroa.7.sroa.5.0.extract.shift = and i64 %.sroa.48.0.copyload, -256
  br label %bb.ac

bb.ab:                                            ; preds = %bb.j
  br label %bb.ac

bb.ac:                                            ; preds = %bb.j, %bb.ab, %bb.aa, %bb.z
  %.sroa.011.0 = phi i64 [ -9223372036854775798, %bb.ab ], [ -9223372036854775800, %bb.z ], [ -9223372036854775799, %bb.aa ], [ -9223372036854775801, %bb.j ]
  %.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.ab ], [ %.sroa.09.1.extract.shift, %bb.z ], [ %.sroa.48.0.copyload, %bb.aa ], [ 0, %bb.j ]
  %.sroa.7.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.ab ], [ 0, %bb.z ], [ %.sroa.7.sroa.5.0.extract.shift, %bb.aa ], [ 0, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0, ptr %i.ba, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.sroa.0.0.insert.ext = and i64 %.sroa.7.sroa.0.0, 255
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.5.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  store i64 %.sroa.7.sroa.0.0.insert.insert, ptr %.sroa.7.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body43 unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51 unwind label %bb.f

bb.af:                                            ; preds = %bb.ad
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bd = icmp eq i64 %5, 0
  br i1 %i.bd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef range(i64 1, 0) %5, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52: ; preds = %bb.ag, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51
  %i.be = icmp eq i64 %i.n, 0
  br i1 %i.be, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46.sink.split

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38
  resume { ptr, i32 } %.pn17
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v2NtB2_11DerivedKeys3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) initializes((0, 144)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v2NtB2_11DerivedKeys8derive_e(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 1                ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @23, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 29, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.h, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.j, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #23
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs9_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10PrivateKeyINtNtCsgxBkk5gSRhY_4core7convert7TryFromRShE8try_from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 32)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.k = load i8, ptr %i.f, align 8, !range !9, !alias.scope !155, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.c:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !156
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !154
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 16, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !noalias !156
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.n, i64 32, i1 false), !alias.scope !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXsb_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_7KeyPairINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtB5_10PrivateKeyE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.o = load i8, ptr %i.e, align 8, !range !9, !alias.scope !158, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve7KeyPairNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.d:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !159
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !157
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 21, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23, !noalias !159
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve7KeyPairNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.r, i64 64, i1 false), !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v2NtB2_11DerivedKeys8derive_k(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @29, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 19, ptr %i.d, align 8
  %i.e = call noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull %i.c, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #23
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsbPnb37KEv9e_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE3newB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.f = lshr i64 %2, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !173, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !173, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.val.i.i.i = load i8, ptr %3, align 1, !range !9
  %.val2.i.i.i = load i128, ptr %i.m, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.07.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.g ] ; 2 uses
  %.pn.i = phi i64 [ %2, %bb.a ], [ %i.ab, %bb.g ]
  %.sroa.03.0.i.i = and i64 %.pn.i, %i.i          ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.03.0.i.i
  %.sroa.0.0.copyload.i34.i = load <16 x i8>, ptr %i.n, align 1, !noalias !174 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i, %bb.b
  %.sroa.013.0.i = phi i16 [ %i.p, %bb.b ], [ %i.t, %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i ] ; 4 uses
  %.not.i.not.i = icmp eq i16 %.sroa.013.0.i, 0
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.013.0.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i16 %.sroa.013.0.i, -1
  %i.t = and i16 %i.s, %.sroa.013.0.i
  %i.u = add i64 %.sroa.03.0.i.i, %i.r            ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.03.0.i.i
  br i1 %i.v, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.n, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i64 %.sroa.07.0.i.i, -16
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i64 %.sroa.07.0.i.i, 16             ; 2 uses
  %i.ab = add i64 %.sroa.03.0.i.i, %i.aa          ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.03.0.i.i
  br i1 %i.ac, label %bb.i, label %bb.b

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !175
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !175
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ad = and i64 %i.u, %i.i                      ; 2 uses
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.val.i.i = load i64, ptr %i.ag, align 8, !noalias !176, !noundef !4 ; 4 uses
  %i.ah = icmp ult i64 %.val.i.i, %i.d
  br i1 %i.ah, label %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !177
  unreachable

_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i: ; preds = %bb.j
end_hunk_0
