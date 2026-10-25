Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.15?download=true
inline.NumInlined: 2449
inline.NumDeleted: 825
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvXs_NtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs2Bxje7pdMIr_13libp2p_server:bb.a
bb.jt:                                            ; preds = %bb.js
  %.sroa.8.32.extract.trunc = trunc i64 %.sroa.8.0.copyload to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i64 %.sroa.025.0.copyload, ptr %i.ed, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.628.0..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.afd = icmp ult i64 %.sroa.7.0.copyload, 2
  br i1 %i.afd, label %bb.jx, label %bb.jw

bb.ju:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false)
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.8..sroa_idx, align 8
  %i.afe = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.afe)
  %.not534 = icmp ult i64 %.sroa.8.0.copyload, %.sroa.7.0.copyload
  br i1 %.not534, label %bb.kk, label %bb.kj

bb.jv:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eb, ptr noundef nonnull align 8 dereferenceable(40) %i.ei, i64 40, i1 false)
  store i64 -1, ptr %i.ei, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_stream13WriteTcpStateEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %.backedge

bb.jw:                                            ; preds = %bb.jt
  %i.aff = load i64, ptr %i.er, align 8, !noundef !11 ; 2 uses
  %i.afg = icmp sgt i64 %i.aff, -1
  call void @llvm.assume(i1 %i.afg)
  %i.afh = add nuw i64 %i.aff, 2
  %i.afi = icmp ult i64 %.sroa.7.0.copyload, %i.afh
  br i1 %i.afi, label %bb.jz, label %bb.jy

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_stream13WriteTcpStateEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ei)
          to label %bb.kh unwind label %bb.kg

bb.jy:                                            ; preds = %bb.jw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_stream13WriteTcpStateEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ei)
          to label %bb.ka unwind label %bb.ki

bb.jz:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.549)
  %i.afj = add i64 %.sroa.7.0.copyload, -2        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.549, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_stream13WriteTcpStateEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ei)
          to label %bb.kf unwind label %bb.ke

bb.ka:                                            ; preds = %bb.jy
  store i64 -9223372036854775807, ptr %i.ei, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit585 unwind label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.afk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.afl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit585: ; preds = %bb.ka
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kf, %bb.kh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %.backedge

bb.ke:                                            ; preds = %bb.jz
  %i.afm = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.ei, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.549, i64 24, i1 false)
  store i64 %i.afj, ptr %i.ek, align 8
  br label %common.resume

bb.kf:                                            ; preds = %bb.jz
  store i64 -9223372036854775808, ptr %i.ei, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.549, i64 24, i1 false)
  store i64 %i.afj, ptr %i.ek, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.549)
  br label %bb.kd

bb.kg:                                            ; preds = %bb.jx
  %i.afn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035, i64 24, i1 false)
  store i64 %.sroa.7.0.copyload, ptr %i.el, align 8
  store i16 %.sroa.8.32.extract.trunc, ptr %i.ek, align 8
  br label %common.resume

bb.kh:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035, i64 24, i1 false)
  store i64 %.sroa.7.0.copyload, ptr %i.el, align 8
  store i16 %.sroa.8.32.extract.trunc, ptr %i.ek, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.035)
  br label %bb.kd

bb.ki:                                            ; preds = %bb.jy
  %i.afo = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %i.ei, align 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed) #32
          to label %common.resume unwind label %bb.az

bb.kj:                                            ; preds = %bb.ju
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_stream13WriteTcpStateEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ei)
          to label %bb.kl unwind label %bb.kq

bb.kk:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.565, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4LZN9PPmi2I_11hickory_net3tcp10tcp_stream13WriteTcpStateEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ei)
          to label %bb.kp unwind label %.thread598

bb.kl:                                            ; preds = %bb.kj
  store i64 -9223372036854775807, ptr %i.ei, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit587 unwind label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.afp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %common.resume unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.afq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit587: ; preds = %bb.kl
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server.exit587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %.backedge

.thread598:                                       ; preds = %bb.kk
  %i.afr = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.ei, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.565, i64 24, i1 false)
  store i64 %.sroa.8.0.copyload, ptr %i.ek, align 8
  br label %common.resume

bb.kp:                                            ; preds = %bb.kk
  store i64 -9223372036854775808, ptr %i.ei, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.565, i64 24, i1 false)
  store i64 %.sroa.8.0.copyload, ptr %i.ek, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.565)
  br label %bb.ko

bb.kq:                                            ; preds = %bb.kj
  %i.afs = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %i.ei, align 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec) #32
          to label %common.resume unwind label %bb.az
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherIBY_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1j_6server9TlsStreamB24_EEB24_ENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !41, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call { i64, ptr } @_RNvXs1_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4837)
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4838)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !43, !alias.scope !4839, !noundef !11 ; 2 uses
  %switch.not.i.i = icmp samesign ult i8 %i.h, 2
  br i1 %switch.not.i.i, label %.sink.split.i.i.a, label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i

.sink.split.i.i.a:                                ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.i), !noalias !4840
  %i.j = load i8, ptr %i.g, align 8, !range !43, !alias.scope !4839, !noundef !11
  %2 = or i8 %i.j, 2                              ; 2 uses
  store i8 %2, ptr %i.g, align 8, !alias.scope !4839
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %.sink.split.i.i.a, %bb.d
  %i.k = phi i8 [ %i.h, %bb.d ], [ %2, %.sink.split.i.i.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4841
  %i.l = and i8 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.b, align 8, !noalias !4841
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4841
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.l, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4841
  %i.n = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4841
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4842)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !range !43, !alias.scope !4843, !noundef !11 ; 2 uses
  %switch.not.i4.i = icmp samesign ult i8 %i.q, 2
  br i1 %switch.not.i4.i, label %.sink.split.i7.i.a, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i

.sink.split.i7.i.a:                               ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.r), !noalias !4844
  %i.s = load i8, ptr %i.p, align 8, !range !43, !alias.scope !4843, !noundef !11
  %3 = or i8 %i.s, 2                              ; 2 uses
  store i8 %3, ptr %i.p, align 8, !alias.scope !4843
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %.sink.split.i7.i.a, %bb.e
  %i.t = phi i8 [ %i.q, %bb.e ], [ %3, %.sink.split.i7.i.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4845
  %i.u = and i8 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.a, align 8, !noalias !4845
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !noalias !4845
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.u, ptr %.sroa.5.0..sroa_idx.i6.i, align 8, !noalias !4845
  %i.w = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4845
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i, %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.b
  %.pn = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.n, %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %i.w, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherIBY_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1j_6server9TlsStreamB24_EEB24_ENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !41, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4855)
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4857
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.f = load i8, ptr %i.e, align 8, !range !43, !alias.scope !4858, !noundef !11
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.b, align 8, !noalias !4857
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4857
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4857
  %i.i = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4857
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4860
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.l = load i8, ptr %i.k, align 8, !range !43, !alias.scope !4861, !noundef !11
  %i.m = and i8 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.a, align 8, !noalias !4860
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !4860
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.m, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !noalias !4860
  %i.o = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4860
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi { i64, ptr } [ %i.i, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = extractvalue { i64, ptr } %.pn.i, 0
  %i.q = extractvalue { i64, ptr } %.pn.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.3.0 = phi ptr [ %i.q, %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.p, %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs2Bxje7pdMIr_13libp2p_server.exit ], [ 0, %bb.a ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherIBY_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1j_6server9TlsStreamB24_EEB24_ENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !41, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call { i64, ptr } @_RNvXs1_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4874)
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4876
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.h = load i8, ptr %i.g, align 8, !range !43, !alias.scope !4877, !noundef !11
  %i.i = and i8 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.b, align 8, !noalias !4876
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4876
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4876
  %i.k = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4876
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4879
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.n = load i8, ptr %i.m, align 8, !range !43, !alias.scope !4880, !noundef !11
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.a, align 8, !noalias !4879
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !4879
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.o, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !noalias !4879
  %i.q = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4879
  br label %_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB6_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1f_6server9TlsStreamB20_EENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.pn = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.k, %bb.d ], [ %i.q, %bb.e ]
  ret { i64, ptr } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsjouRnuJWSBB_5yamux10connectionNtB5_4ModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !13, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @301, ptr @300
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 6)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXse_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_13ProtocolErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !11
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @307, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4nsid9attribute13NsidAttributeNtB5_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4nsid9attribute13NsidAttributeINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info11bridge_port14InfoBridgePortNtB5_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info11bridge_port14InfoBridgePortINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtNtCsjouRnuJWSBB_5yamux5frame6headerINtB5_6HeaderNtB5_12WindowUpdateENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @316, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.h, align 8
end_hunk_0
