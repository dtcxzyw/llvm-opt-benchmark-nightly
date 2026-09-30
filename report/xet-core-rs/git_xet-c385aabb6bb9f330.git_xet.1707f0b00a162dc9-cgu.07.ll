Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.07?download=true
inline.NumInlined: 327
inline.NumDeleted: 156
begin_hunk_0_@_RNCNvXs_NtNtCs1YANDSn9Kib_7git_xet4auth3sshNtB6_19SSHCredentialHelperNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelper15fill_credential0Ba_:bb.a
common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, %bb.ee, %bb.ef
  %.sroa.4.sroa.6.0 = phi ptr [ undef, %bb.ef ], [ undef, %bb.ee ], [ %.sroa.14.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit ]
  %.sroa.4.sroa.5.0 = phi i64 [ undef, %bb.ef ], [ undef, %bb.ee ], [ %.sroa.1252.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit ]
  %.sroa.4.sroa.4.0 = phi ptr [ undef, %bb.ef ], [ undef, %bb.ee ], [ %.sroa.1051.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit ]
  %.sroa.4.sroa.3.0 = phi i64 [ undef, %bb.ef ], [ undef, %bb.ee ], [ %.sroa.850.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit ]
  %.sroa.4.sroa.2.0 = phi ptr [ undef, %bb.ef ], [ undef, %bb.ee ], [ %.sroa.649.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit ]
  %.sroa.0.0 = phi i64 [ -1, %bb.ef ], [ -1, %bb.ee ], [ %.sroa.053.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, i64 40, i1 false)
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.sroa.0, i64 224, i1 false)
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.sroa.4.sroa.2.0, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx24.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.4.sroa.3.0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx24.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.sroa.4.sroa.4.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx24.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.sroa.4.sroa.5.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx24.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.4.sroa.6.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx24.sroa_idx, align 8
  store i8 1, ptr %i.aj, align 8
  ret void

bb.bm:                                            ; preds = %.body, %bb.bn
  %.pn2 = phi { ptr, i32 } [ %i.de, %bb.bn ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %.body20

bb.bn:                                            ; preds = %bb.bo
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bi, %bb.bb
  %.sroa.845.0.i.ph = phi i64 [ %.sroa.845.3.i, %bb.bb ], [ %i.av, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.i, i64 48, i1 false)
  store i8 1, ptr %i.ar, align 8, !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.820.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.824.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.833, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !967
  store i64 %.sroa.845.0.i.ph, ptr %i.o, align 8, !noalias !968
  %.sroa.536.8..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536.8..sroa_idx37, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536, i64 48, i1 false), !noalias !968
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  invoke void @_RINvMs0_NtCsiAynQAjgDuT_10xet_client5errorNtB6_11ClientError23credential_helper_errorNtNtCs1YANDSn9Kib_7git_xet6errors11GitXetErrorEB1p_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.o)
          to label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtBO_6errors11GitXetErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B2n_B2l_23credential_helper_errorB1L_EEBO_.exit.thread unwind label %bb.bn

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtBO_6errors11GitXetErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B2n_B2l_23credential_helper_errorB1L_EEBO_.exit.thread: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !967
  br label %bb.eb

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtBO_6errors11GitXetErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B2n_B2l_23credential_helper_errorB1L_EEBO_.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.i, i64 48, i1 false)
  store i8 1, ptr %i.ar, align 8, !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.820.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.824.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.833, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.833)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  store i64 %.sroa.643.sroa.0.0.copyload51.i, ptr %i.ah, align 8, !alias.scope !967
  %.sroa.536.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536, i64 48, i1 false), !alias.scope !967
  %i.dg = icmp eq i64 %.sroa.643.sroa.0.0.copyload51.i, -1
  br i1 %i.dg, label %bb.eb, label %bb.bp

bb.bp:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtBO_6errors11GitXetErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B2n_B2l_23credential_helper_errorB1L_EEBO_.exit
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.12.0.copyload29 = load i64, ptr %.sroa.12.0..sroa_idx28, align 8, !alias.scope !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.536, i64 40, i1 false)
  store i64 %.sroa.643.sroa.0.0.copyload51.i, ptr %i.ai, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 %.sroa.12.0.copyload29, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 650 ; 2 uses
  store i8 0, ptr %i.dh, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.048.sroa.0.0.copyload = load i64, ptr %i.di, align 8 ; 2 uses
  %.sroa.048.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %.sroa.048.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.sroa.649.0.copyload = load ptr, ptr %.sroa.649.0..sroa_idx, align 8 ; 4 uses
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.sroa.850.0.copyload = load i64, ptr %.sroa.850.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.1051.0.copyload = load ptr, ptr %.sroa.1051.0..sroa_idx, align 8 ; 4 uses
  %.sroa.1252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.sroa.1252.0.copyload = load i64, ptr %.sroa.1252.0..sroa_idx, align 8 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !972
  store i64 %.sroa.048.sroa.0.0.copyload, ptr %i.n, align 8, !noalias !973
  %.sroa.048.sroa.6.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.048.sroa.6.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.048.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.048.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.048.sroa.7.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.048.sroa.7.0..sroa_idx, i64 224, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !972
  %i.dj = icmp eq i64 %.sroa.048.sroa.0.0.copyload, 2
  br i1 %i.dj, label %bb.dm, label %bb.bq

.thread67.i.i:                                    ; preds = %bb.dg
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.kj) #23
          to label %.thread100.i.i unwind label %bb.dj, !noalias !977

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !980
  invoke void @_RNvXsH_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc.i.i unwind label %bb.dh, !noalias !981

.noexc.i.i:                                       ; preds = %bb.bq
  invoke void @_RNvMNtNtCsdCDTHl3mYPb_4http6header5valueNtB2_11HeaderValue11from_shared(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.br unwind label %bb.dh, !noalias !977

.thread70.i.i:                                    ; preds = %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread.i.i, %bb.da, %.noexc31.i.i.i, %bb.cu, %bb.cc, %bb.bz
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread100.i.i

bb.br:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !980
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.dm = load i8, ptr %i.dl, align 8, !range !930, !noalias !978, !noundef !7
  %i.dn = icmp eq i8 %i.dm, 2
  br i1 %i.dn, label %bb.de, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !978
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !978
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.dp = invoke noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.do)
          to label %bb.bt unwind label %bb.db, !noalias !985

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.dp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.dq = load ptr, ptr %i.k, align 8, !alias.scope !989, !noalias !990, !nonnull !7, !align !14, !noundef !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !991, !nonnull !7, !noundef !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !989, !noalias !990, !noundef !7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !989, !noalias !990, !noundef !7
  invoke void %i.ds(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.dv, i64 noundef %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i unwind label %bb.cz, !noalias !977, !inline_history !1

bb.bv:                                            ; preds = %bb.bt
  %i.dy = invoke noundef i16 @_RINvNtNtCsdCDTHl3mYPb_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.bw unwind label %bb.db, !noalias !992 ; 6 uses

bb.bw:                                            ; preds = %bb.bv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.ea = load i16, ptr %i.dz, align 8, !alias.scope !993, !noalias !985, !noundef !7 ; 3 uses
  %i.eb = and i16 %i.ea, %i.dy
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !993, !noalias !985, !noundef !7 ; 2 uses
  %i.eg = load ptr, ptr %i.ed, align 8, !alias.scope !993, !noalias !985, !nonnull !7
  %i.eh = zext i16 %i.ea to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !993, !noalias !985 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !993, !noalias !985, !nonnull !7
  %i.em = load ptr, ptr %i.j, align 8, !alias.scope !983, !noalias !994 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  %.not = icmp ne ptr %i.em, null
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 8, !range !995, !alias.scope !983, !noalias !994
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !983, !noalias !994 ; 2 uses
  %i.es = load ptr, ptr %i.eo, align 8, !alias.scope !983, !noalias !994
  %.not.a = icmp eq i64 %i.ef, 0
  br label %.outer130

.outer130:                                        ; preds = %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.bw
  %.sroa.09.0.i.i.i.ph = phi i64 [ %i.fn, %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.bw ] ; 3 uses
  %.sroa.01.0.i.i.i.ph = phi i64 [ %i.fo, %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.ec, %bb.bw ] ; 2 uses
  %i.et = icmp ult i64 %.sroa.01.0.i.i.i.ph, %i.ef ; 2 uses
  %.not.not = xor i1 %.not.a, true
  %brmerge = or i1 %i.et, %.not.not
  %.sroa.01.0.i.i.i.ph.mux = select i1 %i.et, i64 %.sroa.01.0.i.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer130
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.sroa.01.0.i.i.i.ph.mux ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !noalias !992, !noundef !7 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ev, -1
  br i1 %.not.i.i.i, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.ci
  unreachable

bb.by:                                            ; preds = %.loopexit
  %i.ew = zext i16 %i.ev to i64                   ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ey = load i16, ptr %i.ex, align 2, !noalias !992, !noundef !7 ; 2 uses
  %i.ez = and i16 %i.ey, %i.ea
  %i.fa = zext i16 %i.ez to i64
  %i.fb = sub i64 %.sroa.01.0.i.i.i.ph.mux, %i.fa
  %i.fc = and i64 %i.fb, %i.eh
  %i.fd = icmp samesign ult i64 %i.fc, %.sroa.09.0.i.i.i.ph
  br i1 %i.fd, label %.noexc31.i.i.i, label %bb.cd

bb.bz:                                            ; preds = %.loopexit
  %i.fe = icmp ult i64 %i.ej, 88686269585142076
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !990
  %i.ff = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.do, i16 noundef %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d)
          to label %.noexc25.i.i unwind label %.thread70.i.i, !noalias !977

.noexc25.i.i:                                     ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !996
  br i1 %i.ff, label %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc25.i.i
  %i.fg = load i64, ptr %i.ee, align 8, !alias.scope !993, !noalias !985, !noundef !7 ; 2 uses
  %i.fh = icmp ult i64 %.sroa.01.0.i.i.i.ph.mux, %i.fg
  br i1 %i.fh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fi = load ptr, ptr %i.ed, align 8, !alias.scope !993, !noalias !985, !nonnull !7, !noundef !7
  %i.fj = trunc i64 %i.ej to i16
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.sroa.01.0.i.i.i.ph.mux ; 2 uses
  store i16 %i.fj, ptr %i.fk, align 2, !noalias !992
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i16 %i.dy, ptr %i.fl, align 2, !noalias !992
  br label %.thread48.i.i

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.i.i.ph.mux, i64 noundef %i.fg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %.noexc26.i.i unwind label %.thread70.i.i, !noalias !977

.noexc26.i.i:                                     ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.by
  %i.fm = icmp eq i16 %i.ey, %i.dy
  br i1 %i.fm, label %bb.ce, label %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.ch, %bb.cf, %bb.cd
  %i.fn = add nuw nsw i64 %.sroa.09.0.i.i.i.ph, 1
  %i.fo = add i64 %.sroa.01.0.i.i.i.ph.mux, 1
  br label %.outer130

bb.ce:                                            ; preds = %bb.cd
  %i.fp = icmp ugt i64 %i.ej, %i.ew
  br i1 %i.fp, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.fq = getelementptr inbounds nuw [104 x i8], ptr %i.el, i64 %i.ew ; 10 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !992, !noundef !7
  %i.ft = icmp ne ptr %i.fs, null                 ; 2 uses
  %i.fu = xor i1 %.not, %i.ft
  br i1 %i.fu, label %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.ft, label %bb.ch, label %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !992, !noundef !7
  %i.fx = icmp eq i64 %i.fw, %i.er
  br i1 %i.fx, label %.split.i.i.i, label %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.ch
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !992, !noundef !7
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.fz, ptr %i.es, i64 %i.er), !noalias !992
  %i.ga = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ga, label %bb.cj, label %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ci:                                            ; preds = %bb.ce
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ew, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
          to label %bb.bx unwind label %bb.db, !noalias !992

_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.cg
  call void @llvm.assume(i1 %i.en)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.gc = load i8, ptr %i.gb, align 8, !range !995, !noalias !992, !noundef !7
  %i.gd = icmp eq i8 %i.gc, %i.ep
  br i1 %i.gd, label %bb.cj, label %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.cj:                                            ; preds = %_RNvXsy_NtNtCsdCDTHl3mYPb_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.gf = load i64, ptr %i.fq, align 8, !range !13, !alias.scope !997, !noalias !999, !noundef !7
  %i.gg = trunc nuw i64 %i.gf to i1
  br i1 %i.gg, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !997, !noalias !999, !noundef !7 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !1000, !noalias !1001, !noundef !7 ; 7 uses
  %i.gl = icmp ult i64 %i.gk, 128102389400760776
  call void @llvm.assume(i1 %i.gl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1002
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gm, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !990
  store i64 1, ptr %i.c, align 8, !noalias !1002
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.gi, ptr %i.gn, align 8, !noalias !1002
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.go, align 8, !noalias !1002
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ew, ptr %i.gp, align 8, !noalias !1002
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.gq = load i64, ptr %i.ge, align 8, !range !9, !alias.scope !1005, !noalias !1006, !noundef !7
  %i.gr = icmp eq i64 %i.gk, %i.gq
  br i1 %i.gr, label %bb.cl, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs9ekcjykjQb7_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.i.i.i unwind label %bb.cm, !noalias !1007

bb.cm:                                            ; preds = %bb.cl
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.gt = load ptr, ptr %i.gm, align 8, !alias.scope !1012, !noalias !1013, !nonnull !7, !align !14, !noundef !7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !1014, !nonnull !7, !noundef !7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !1012, !noalias !1013, !noundef !7
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !1012, !noalias !1013, !noundef !7
  invoke void %i.gv(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gy, i64 noundef %i.ha)
          to label %.body.thread.thread.i.i.i unwind label %bb.cn, !noalias !1015, !inline_history !821

bb.cn:                                            ; preds = %bb.cm
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1015
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.hc = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !1005, !noalias !1006, !nonnull !7, !noundef !7
  %i.he = getelementptr inbounds nuw [72 x i8], ptr %i.hd, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.he, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1015
  %i.hf = add nuw nsw i64 %i.gk, 1                ; 2 uses
  store i64 %i.hf, ptr %i.gj, align 8, !alias.scope !1005, !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1002
  %.not.i.i.i.i = icmp ugt i64 %i.gi, %i.gk
  br i1 %.not.i.i.i.i, label %bb.ct, label %bb.cs

bb.co:                                            ; preds = %bb.cj
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !1000, !noalias !1001, !noundef !7 ; 6 uses
  %i.hi = icmp ult i64 %i.hh, 128102389400760776
  call void @llvm.assume(i1 %i.hi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1002
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !990
  store i64 0, ptr %i.b, align 8, !noalias !1002
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ew, ptr %i.hk, align 8, !noalias !1002
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.hl, align 8, !noalias !1002
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ew, ptr %i.hm, align 8, !noalias !1002
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.hn = load i64, ptr %i.ge, align 8, !range !9, !alias.scope !1018, !noalias !1019, !noundef !7
  %i.ho = icmp eq i64 %i.hh, %i.hn
  br i1 %i.ho, label %bb.cp, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit9.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs9ekcjykjQb7_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit9.i.i.i.i unwind label %bb.cq, !noalias !1020

bb.cq:                                            ; preds = %bb.cp
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.hq = load ptr, ptr %i.hj, align 8, !alias.scope !1025, !noalias !1026, !nonnull !7, !align !14, !noundef !7
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !1027, !nonnull !7, !noundef !7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !1025, !noalias !1026, !noundef !7
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !1025, !noalias !1026, !noundef !7
  invoke void %i.hs(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef %i.hv, i64 noundef %i.hx)
          to label %.body.thread.thread.i.i.i unwind label %bb.cr, !noalias !1015, !inline_history !821

bb.cr:                                            ; preds = %bb.cq
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1015
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit9.i.i.i.i: ; preds = %bb.cp, %bb.co
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !1018, !noalias !1019, !nonnull !7, !noundef !7
  %i.ib = getelementptr inbounds nuw [72 x i8], ptr %i.ia, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ib, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1015
  %i.ic = add nuw nsw i64 %i.hh, 1
  store i64 %i.ic, ptr %i.hg, align 8, !alias.scope !1018, !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1002
  store i64 1, ptr %i.fq, align 8, !alias.scope !997, !noalias !999
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.hh, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !997, !noalias !999
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.hh, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !997, !noalias !999
  br label %_RINvNtNtCsdCDTHl3mYPb_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i

bb.cs:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  %i.id = load ptr, ptr %i.hc, align 8, !alias.scope !1000, !noalias !1001, !nonnull !7, !noundef !7
  %i.ie = getelementptr inbounds nuw [72 x i8], ptr %i.id, i64 %i.gi ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 1, ptr %i.if, align 8, !noalias !1015
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i64 %i.gk, ptr %i.ig, align 8, !noalias !1015
  store i64 1, ptr %i.fq, align 8, !alias.scope !997, !noalias !999
  store i64 %i.gk, ptr %i.gh, align 8, !alias.scope !997, !noalias !999
  br label %_RINvNtNtCsdCDTHl3mYPb_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i

bb.ct:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef %i.hf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
          to label %.noexc.i.i.i unwind label %.body.thread.i.i.i, !noalias !992

.noexc.i.i.i:                                     ; preds = %bb.ct
  unreachable

_RINvNtNtCsdCDTHl3mYPb_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i: ; preds = %bb.cs, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs1YANDSn9Kib_7git_xet.exit9.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.ih = load ptr, ptr %i.j, align 8, !alias.scope !1030, !noalias !994, !noundef !7 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %.thread48.i.i, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtNtCsdCDTHl3mYPb_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !1035, !nonnull !7, !noundef !7
  %i.il = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.im = load ptr, ptr %i.eo, align 8, !alias.scope !1036, !noalias !994, !noundef !7
  %i.in = load i64, ptr %i.eq, align 8, !alias.scope !1036, !noalias !994, !noundef !7
  invoke void %i.ik(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im, i64 noundef %i.in)
          to label %.thread48.i.i unwind label %.thread70.i.i, !noalias !977, !inline_history !845
end_hunk_0
