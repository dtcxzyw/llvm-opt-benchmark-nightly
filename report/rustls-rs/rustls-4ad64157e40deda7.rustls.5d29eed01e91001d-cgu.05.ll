Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.05?download=true
inline.NumInlined: 809
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_23ExpectCertificateVerifyINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.u, %bb.x
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.bb, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.be = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3)
          to label %bb.y unwind label %bb.e       ; 0 uses

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.bg, ptr noundef nonnull align 8 dereferenceable(312) %i.bf, i64 312, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bk = load <2 x ptr>, ptr %i.t, align 8
  store <2 x ptr> %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 %i.bi, ptr %i.bl, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1165
  %i.bm = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 392, i64 noundef range(i64 1, 9) 8) #22, !noalias !1165 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.z, label %bb.ac, !prof !22

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 392) #27
          to label %.noexc45 unwind label %bb.aa

.noexc45:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.a) #24
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.bm, ptr noundef nonnull align 8 dereferenceable(392) %i.a, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @134, ptr %i.br, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEEB1g_.exit unwind label %bb.ad

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit: ; preds = %.body, %bb.ad
  %.sroa.021.2 = phi i8 [ %.sroa.018.3, %bb.ad ], [ %.sroa.021.0, %.body ]
  %.sroa.018.2 = phi i8 [ %.sroa.018.3, %bb.ad ], [ %.sroa.018.0, %.body ]
  %.pn38 = phi { ptr, i32 } [ %i.bs, %bb.ad ], [ %.pn, %.body ] ; 2 uses
  %cond = icmp eq i8 %.sroa.018.2, 0
  br i1 %cond, label %bb.aj, label %bb.ah

bb.ad:                                            ; preds = %bb.ac, %bb.p
  %.sroa.018.3 = phi i8 [ 1, %bb.p ], [ 0, %bb.ac ] ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEEB1g_.exit: ; preds = %bb.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit42
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 416, i64 noundef 8) #22
  ret void

bb.ae:                                            ; preds = %bb.c
  %.sroa.07.0.copyload = load i8, ptr %i.h, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.69.0..sroa_idx, i64 7, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.633.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.814.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %.sroa.07.0.copyload, ptr %0, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit42: ; preds = %bb.p
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEEB1g_.exit unwind label %bb.af

common.resume:                                    ; preds = %bb.al, %bb.aj, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.af ], [ %.pn38, %bb.aj ], [ %.pn38, %bb.al ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 416, i64 noundef 8) #22
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit42
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ag:                                            ; preds = %bb.ai, %.body, %bb.al, %bb.ak, %.noexc48
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1168, !nonnull !7, !noundef !7
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1168
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ai, label %.noexc48

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #25
          to label %.noexc48 unwind label %bb.ag

.noexc48:                                         ; preds = %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bz) #24
          to label %bb.ak unwind label %bb.ag

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit, %bb.ak
  %i.ca = trunc nuw i8 %.sroa.021.2 to i1
  br i1 %i.ca, label %bb.al, label %common.resume

bb.ak:                                            ; preds = %.noexc48
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.cb) #24
          to label %bb.aj unwind label %bb.ag

bb.al:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %common.resume unwind label %bb.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm12aead_key_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !15, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len(ptr noalias nofree readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, 17
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [13 x i8], align 1                ; 5 uses
  %i.c = alloca [13 x i8], align 1                ; 6 uses
  %i.d = alloca [5 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [12 x i8], align 1                ; 6 uses
  %i.g = alloca [12 x i8], align 1                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [12 x i8], align 1                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = load ptr, ptr %2, align 8, !noundef !7
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sub i64 %i.m, %i.o
  %.sroa.0.0 = select i1 %.not, i64 %i.o, i64 %i.p
  %i.q = add i64 %.sroa.0.0, 17                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.r, i64 noundef 8)
          to label %bb.c unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.s, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.s, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.thr_comm, %bb.s ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %common.resume unwind label %bb.t

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1190
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull readonly dereferenceable(12) %i.t, ptr noundef nonnull readonly %i.v)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !1191, !noalias !1190, !noundef !7 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val6.i.i = load i64, ptr %i.x, align 8, !alias.scope !1191, !noalias !1190, !noundef !7 ; 6 uses
  %i.y = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1192, !noalias !1190, !nonnull !7, !noundef !7 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1192, !noalias !1190, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep47 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep48 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep49 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep49
  %bound1 = icmp ult ptr %scevgep48, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 28
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %index, %.val.i.i               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !alias.scope !1193, !noalias !1194
  %wide.load51 = load <16 x i8>, ptr %i.ae, align 1, !alias.scope !1193, !noalias !1194
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load52 = load <16 x i8>, ptr %i.ac, align 1, !alias.scope !1195, !noalias !1196
  %wide.load53 = load <16 x i8>, ptr %i.af, align 1, !alias.scope !1195, !noalias !1196
  %i.ag = xor <16 x i8> %wide.load52, %wide.load
  %i.ah = xor <16 x i8> %wide.load53, %wide.load51
  store <16 x i8> %i.ag, ptr %i.ac, align 1, !alias.scope !1195, !noalias !1196
  store <16 x i8> %i.ah, ptr %i.af, align 1, !alias.scope !1195, !noalias !1196
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.y, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = add i64 %index55, %.val.i.i             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aj
  %wide.load56 = load <4 x i8>, ptr %i.al, align 1, !alias.scope !1193, !noalias !1194
  %wide.load57 = load <4 x i8>, ptr %i.ak, align 1, !alias.scope !1195, !noalias !1196
  %i.am = xor <4 x i8> %wide.load57, %wide.load56
  store <4 x i8> %i.am, ptr %i.ak, align 1, !alias.scope !1195, !noalias !1196
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.y, %n.vec54
  br i1 %cmp.n59, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ] ; 4 uses
  %i.ao = sub i64 %.val6.i.i, %.val.i.i
  %i.ap = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.aq = add i64 %.val6.i.i, %i.ap
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ar = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.as = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.as
  %.val7.i.i.prol = load i8, ptr %i.au, align 1, !noalias !1194, !noundef !7
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !1197, !noalias !1194, !noundef !7
  %i.aw = xor i8 %i.av, %.val7.i.i.prol
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !1197, !noalias !1194
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ar, %vec.epilog.scalar.ph.prol ]
  %i.ax = icmp eq i64 %i.aq, %.val.i.i
  br i1 %i.ax, label %.loopexit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bd, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ay = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ay
  %.val7.i.i = load i8, ptr %i.ba, align 1, !noalias !1194, !noundef !7
  %i.bb = load i8, ptr %i.az, align 1, !alias.scope !1197, !noalias !1194, !noundef !7
  %i.bc = xor i8 %i.bb, %.val7.i.i
  store i8 %i.bc, ptr %i.az, align 1, !alias.scope !1197, !noalias !1194
  %i.bd = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.bf, align 1, !noalias !1194, !noundef !7
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !1197, !noalias !1194, !noundef !7
  %i.bh = xor i8 %i.bg, %.val7.i.i.1
  store i8 %i.bh, ptr %i.be, align 1, !alias.scope !1197, !noalias !1194
  %exitcond.not.i.i.1 = icmp eq i64 %i.bd, %i.y
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1186

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.e unwind label %bb.s

bb.d:                                             ; preds = %bb.l, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load i8, ptr %i.bi, align 8, !range !34, !noundef !7
  switch i8 %i.bj, label %default.unreachable46 [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable46:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bl = load i8, ptr %i.bk, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.018.0 = phi i8 [ %i.bl, %bb.j ], [ 21, %bb.f ], [ 22, %bb.g ], [ 23, %bb.h ], [ 24, %bb.i ], [ 20, %bb.e ]
  store i8 %.sroa.018.0, ptr %i.h, align 1
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload17extend_from_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bm, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  %sh.diff = shl i64 %i.q, 16
  %i.bn = trunc i64 %sh.diff to i40
  %.sroa.035.3.insert.shift = and i40 %i.bn, 4278190080
  %4 = trunc i64 %i.q to i40
  %.sroa.035.4.insert.ext = shl i40 %4, 32
  %.sroa.035.3.insert.insert = or disjoint i40 %.sroa.035.3.insert.shift, %.sroa.035.4.insert.ext
  %.sroa.035.4.insert.insert = or disjoint i40 %.sroa.035.3.insert.insert, 197399
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val38 = load ptr, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i40 %.sroa.035.4.insert.insert, ptr %i.d, align 8, !noalias !1198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1198
  store i8 1, ptr %i.b, align 1, !noalias !1198
  invoke fastcc void @_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_(ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.c, ptr %.val, ptr readonly %.val38, ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc39 unwind label %bb.d

.noexc39:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1198
  %i.bq = load i8, ptr %i.c, align 1, !range !6, !noalias !1198, !noundef !7
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.bs, i64 12, i1 false), !noalias !1198
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.a)
          to label %bb.q unwind label %bb.d

bb.n:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 3, ptr %.sroa.612.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %bb.k, %.loopexit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtB5_6sealed12SecureRandom9fill_impl(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs222MioR9bx1_9aws_lc_rs4rand4fill(ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @144, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %i.c = alloca [392 x i8], align 8               ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = load i64, ptr %3, align 8, !range !19, !noundef !7 ; 2 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808       ; 2 uses
  %i.i = icmp ult i64 %i.h, 5
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.b [
    i64 1, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls5check31inappropriate_handshake_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 1)
          to label %bb.v unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load i64, ptr %i.k, align 8, !range !17, !noundef !7 ; 2 uses
  %i.m = icmp ne i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.l, -9223372036854775796
  br i1 %i.n, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !align !15, !noundef !7
  %i.r = invoke noundef zeroext i1 @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_14EarlyDataState23take_received_plaintext(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.m unwind label %.thread41

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %2, align 8, !nonnull !7, !align !15, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !1212, !noalias !1213, !nonnull !7, !align !15, !noundef !7
  %i.w = invoke fastcc { ptr, ptr } @_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite16derive_decrypter(ptr nonnull readonly %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v)
          to label %.noexc unwind label %.thread41 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer21set_message_decrypter(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.t, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending16update_decrypter.exit unwind label %.thread41

.thread41:                                        ; preds = %bb.d, %_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending16update_decrypter.exit, %.noexc, %bb.n, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread35

bb.f:                                             ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread49.thread

_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending16update_decrypter.exit: ; preds = %.noexc
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3)
          to label %bb.g unwind label %.thread41  ; 0 uses

bb.g:                                             ; preds = %_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending16update_decrypter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ab, ptr noundef nonnull align 8 dereferenceable(312) %i.s, i64 312, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.af = load <2 x ptr>, ptr %i.aa, align 8
  store <2 x ptr> %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store i64 %i.ad, ptr %i.ag, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1214
  %i.ah = tail call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 392, i64 noundef range(i64 1, 9) 8) #22, !noalias !1214 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.k, !prof !22

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 392) #27
          to label %.noexc19 unwind label %bb.i

.noexc19:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a
  br i1 %i.ap, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %2, align 8, !nonnull !7, !align !15, !noundef !7
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.aq, i8 noundef 1, i8 undef, i8 noundef 67)
          to label %bb.p unwind label %.thread41

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @144, ptr %i.as, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.01.1 = phi i8 [ 0, %bb.o ], [ 1, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.at = trunc nuw i8 %.sroa.01.1 to i1
  br label %bb.l

bb.r:                                             ; preds = %bb.s, %bb.l
  br i1 %.sroa.01.0, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.01.0, label %.thread49, label %bb.ai

bb.u:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b) #24
          to label %.thread49.thread unwind label %bb.ag

bb.v:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b)
          to label %.thread58 unwind label %bb.f

.thread58:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit, %bb.r
  ret void

bb.x:                                             ; preds = %bb.r
  %cond = icmp eq i8 %.sroa.03.2, 0
  br i1 %cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit, label %bb.y

bb.y:                                             ; preds = %.thread58, %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1217, !nonnull !7, !noundef !7
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !1217
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.z, label %.noexc20

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #25
          to label %.noexc20 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.ah unwind label %bb.ag

.noexc20:                                         ; preds = %bb.z, %bb.y
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc20
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i, %bb.x
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  br label %bb.w

bb.ac:                                            ; preds = %.noexc20
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.bc) #24
          to label %.sink.split unwind label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.bc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ak, %bb.al, %.noexc24, %bb.aj, %bb.ah, %bb.aa, %bb.u
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ah:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.ab ], [ %i.ba, %bb.aa ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.bi) #24
          to label %.sink.split unwind label %bb.ag

.sink.split:                                      ; preds = %bb.ah, %bb.ad, %bb.af, %bb.al, %.thread49
  %.merged.ph = phi { ptr, i32 } [ %.merged6468, %bb.al ], [ %.merged64, %.thread49 ], [ %.pn, %bb.ah ], [ %i.bg, %bb.af ], [ %i.be, %bb.ad ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.t
  %.merged = phi { ptr, i32 } [ %i.au, %bb.t ], [ %.merged.ph, %.sink.split ]
  resume { ptr, i32 } %.merged

.thread35:                                        ; preds = %bb.i, %.thread41
  %eh.lpad-body40 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread41 ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.03.1.lpad-body39 = phi i8 [ 1, %.thread41 ], [ 0, %bb.i ] ; 2 uses
  %i.bj = load i64, ptr %3, align 8, !range !19, !noundef !7 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bj, -9223372036854775804
  br i1 %i.bl, label %.thread49, label %bb.aj

bb.aj:                                            ; preds = %.thread35
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3) #24
          to label %.thread49 unwind label %bb.ag

.thread49:                                        ; preds = %bb.aj, %.thread35, %bb.t
  %.sroa.03.555 = phi i8 [ %.sroa.03.2, %bb.t ], [ %.sroa.03.1.lpad-body39, %.thread35 ], [ %.sroa.03.1.lpad-body39, %bb.aj ]
  %.merged64 = phi { ptr, i32 } [ %i.au, %bb.t ], [ %eh.lpad-body40, %.thread35 ], [ %eh.lpad-body40, %bb.aj ] ; 2 uses
  %cond15 = icmp eq i8 %.sroa.03.555, 0
  br i1 %cond15, label %.sink.split, label %.thread49.thread

.thread49.thread:                                 ; preds = %bb.u, %bb.f, %.thread49
  %.merged6468 = phi { ptr, i32 } [ %.merged64, %.thread49 ], [ %i.av, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1220, !nonnull !7, !noundef !7
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !1220
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.ak, label %.noexc24

bb.ak:                                            ; preds = %.thread49.thread
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #25
          to label %.noexc24 unwind label %bb.ag

.noexc24:                                         ; preds = %bb.ak, %.thread49.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.al unwind label %bb.ag

bb.al:                                            ; preds = %.noexc24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.bq) #24
          to label %.sink.split unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [5 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = alloca [12 x i8], align 1                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.k, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1243
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull readonly dereferenceable(12) %i.j, ptr noundef nonnull readonly %i.m), !noalias !1244
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !1245, !noalias !1243, !noundef !7 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val6.i.i = load i64, ptr %i.o, align 8, !alias.scope !1245, !noalias !1243, !noundef !7 ; 6 uses
  %i.p = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1246, !noalias !1243, !nonnull !7, !noundef !7 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1246, !noalias !1243, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep63 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep64 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep65 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep65
  %bound1 = icmp ult ptr %scevgep64, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.p, 28
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i64 %index, %.val.i.i                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !alias.scope !1247, !noalias !1248
  %wide.load67 = load <16 x i8>, ptr %i.v, align 1, !alias.scope !1247, !noalias !1248
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load68 = load <16 x i8>, ptr %i.t, align 1, !alias.scope !1249, !noalias !1250
  %wide.load69 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !1249, !noalias !1250
  %i.x = xor <16 x i8> %wide.load68, %wide.load
  %i.y = xor <16 x i8> %wide.load69, %wide.load67
  store <16 x i8> %i.x, ptr %i.t, align 1, !alias.scope !1249, !noalias !1250
  store <16 x i8> %i.y, ptr %i.w, align 1, !alias.scope !1249, !noalias !1250
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.p, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.aa = add i64 %index71, %.val.i.i             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aa
  %wide.load72 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !1247, !noalias !1248
  %wide.load73 = load <4 x i8>, ptr %i.ab, align 1, !alias.scope !1249, !noalias !1250
  %i.ad = xor <4 x i8> %wide.load73, %wide.load72
  store <4 x i8> %i.ad, ptr %i.ab, align 1, !alias.scope !1249, !noalias !1250
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1237

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.p, %n.vec70
  br i1 %cmp.n75, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %.val6.i.i, %.val.i.i
  %i.ag = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ah = add i64 %.val6.i.i, %i.ag
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.aj = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aj
  %.val7.i.i.prol = load i8, ptr %i.al, align 1, !noalias !1248, !noundef !7
  %i.am = load i8, ptr %i.ak, align 1, !alias.scope !1251, !noalias !1248, !noundef !7
  %i.an = xor i8 %i.am, %.val7.i.i.prol
  store i8 %i.an, ptr %i.ak, align 1, !alias.scope !1251, !noalias !1248
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.ah, %.val.i.i
  br i1 %i.ao, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.au, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ap = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ap
  %.val7.i.i = load i8, ptr %i.ar, align 1, !noalias !1248, !noundef !7
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !1251, !noalias !1248, !noundef !7
  %i.at = xor i8 %i.as, %.val7.i.i
  store i8 %i.at, ptr %i.aq, align 1, !alias.scope !1251, !noalias !1248
  %i.au = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.aw, align 1, !noalias !1248, !noundef !7
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !1251, !noalias !1248, !noundef !7
  %i.ay = xor i8 %i.ax, %.val7.i.i.1
  store i8 %i.ay, ptr %i.av, align 1, !alias.scope !1251, !noalias !1248
  %exitcond.not.i.i.1 = icmp eq i64 %i.au, %i.p
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !1238

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.az = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  %sh.diff = shl i64 %i.h, 16
  %i.ba = trunc i64 %sh.diff to i40
  %.sroa.061.3.insert.shift = and i40 %i.ba, 4278190080
  %4 = trunc i64 %i.h to i40
  %.sroa.061.4.insert.ext = shl i40 %4, 32
  %.sroa.061.3.insert.insert = or disjoint i40 %.sroa.061.3.insert.shift, %.sroa.061.4.insert.ext
  %.sroa.061.4.insert.insert = or disjoint i40 %.sroa.061.3.insert.insert, 197399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i40 %.sroa.061.4.insert.insert, ptr %i.b, align 8, !noalias !1252
  %i.bb = call fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 1 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull %i.az, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  %i.be = extractvalue { ptr, i64 } %i.bb, 1
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len(ptr noalias nofree readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, 17
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [13 x i8], align 1                ; 5 uses
  %i.c = alloca [13 x i8], align 1                ; 6 uses
  %i.d = alloca [5 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [12 x i8], align 1                ; 6 uses
  %i.g = alloca [12 x i8], align 1                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [12 x i8], align 1                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = load ptr, ptr %2, align 8, !noundef !7
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sub i64 %i.m, %i.o
  %.sroa.0.0 = select i1 %.not, i64 %i.o, i64 %i.p
  %i.q = add i64 %.sroa.0.0, 17                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.r, i64 noundef 8)
          to label %bb.c unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.s, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.s, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.thr_comm, %bb.s ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %common.resume unwind label %bb.t

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1274
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull readonly dereferenceable(12) %i.t, ptr noundef nonnull readonly %i.v)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !1275, !noalias !1274, !noundef !7 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val6.i.i = load i64, ptr %i.x, align 8, !alias.scope !1275, !noalias !1274, !noundef !7 ; 6 uses
  %i.y = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1276, !noalias !1274, !nonnull !7, !noundef !7 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1276, !noalias !1274, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep47 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep48 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep49 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep49
  %bound1 = icmp ult ptr %scevgep48, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 28
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %index, %.val.i.i               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !alias.scope !1277, !noalias !1278
  %wide.load51 = load <16 x i8>, ptr %i.ae, align 1, !alias.scope !1277, !noalias !1278
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load52 = load <16 x i8>, ptr %i.ac, align 1, !alias.scope !1279, !noalias !1280
  %wide.load53 = load <16 x i8>, ptr %i.af, align 1, !alias.scope !1279, !noalias !1280
  %i.ag = xor <16 x i8> %wide.load52, %wide.load
  %i.ah = xor <16 x i8> %wide.load53, %wide.load51
  store <16 x i8> %i.ag, ptr %i.ac, align 1, !alias.scope !1279, !noalias !1280
  store <16 x i8> %i.ah, ptr %i.af, align 1, !alias.scope !1279, !noalias !1280
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.y, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = add i64 %index55, %.val.i.i             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aj
  %wide.load56 = load <4 x i8>, ptr %i.al, align 1, !alias.scope !1277, !noalias !1278
  %wide.load57 = load <4 x i8>, ptr %i.ak, align 1, !alias.scope !1279, !noalias !1280
  %i.am = xor <4 x i8> %wide.load57, %wide.load56
  store <4 x i8> %i.am, ptr %i.ak, align 1, !alias.scope !1279, !noalias !1280
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1269

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.y, %n.vec54
  br i1 %cmp.n59, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ] ; 4 uses
  %i.ao = sub i64 %.val6.i.i, %.val.i.i
  %i.ap = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.aq = add i64 %.val6.i.i, %i.ap
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ar = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.as = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.as
  %.val7.i.i.prol = load i8, ptr %i.au, align 1, !noalias !1278, !noundef !7
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !1281, !noalias !1278, !noundef !7
  %i.aw = xor i8 %i.av, %.val7.i.i.prol
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !1281, !noalias !1278
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ar, %vec.epilog.scalar.ph.prol ]
  %i.ax = icmp eq i64 %i.aq, %.val.i.i
  br i1 %i.ax, label %.loopexit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bd, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ay = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ay
  %.val7.i.i = load i8, ptr %i.ba, align 1, !noalias !1278, !noundef !7
  %i.bb = load i8, ptr %i.az, align 1, !alias.scope !1281, !noalias !1278, !noundef !7
  %i.bc = xor i8 %i.bb, %.val7.i.i
  store i8 %i.bc, ptr %i.az, align 1, !alias.scope !1281, !noalias !1278
  %i.bd = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.bf, align 1, !noalias !1278, !noundef !7
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !1281, !noalias !1278, !noundef !7
  %i.bh = xor i8 %i.bg, %.val7.i.i.1
  store i8 %i.bh, ptr %i.be, align 1, !alias.scope !1281, !noalias !1278
  %exitcond.not.i.i.1 = icmp eq i64 %i.bd, %i.y
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1270

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.e unwind label %bb.s

bb.d:                                             ; preds = %bb.l, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load i8, ptr %i.bi, align 8, !range !34, !noundef !7
  switch i8 %i.bj, label %default.unreachable46 [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable46:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bl = load i8, ptr %i.bk, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.018.0 = phi i8 [ %i.bl, %bb.j ], [ 21, %bb.f ], [ 22, %bb.g ], [ 23, %bb.h ], [ 24, %bb.i ], [ 20, %bb.e ]
  store i8 %.sroa.018.0, ptr %i.h, align 1
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload17extend_from_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bm, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  %sh.diff = shl i64 %i.q, 16
  %i.bn = trunc i64 %sh.diff to i40
  %.sroa.035.3.insert.shift = and i40 %i.bn, 4278190080
  %4 = trunc i64 %i.q to i40
  %.sroa.035.4.insert.ext = shl i40 %4, 32
  %.sroa.035.3.insert.insert = or disjoint i40 %.sroa.035.3.insert.shift, %.sroa.035.4.insert.ext
  %.sroa.035.4.insert.insert = or disjoint i40 %.sroa.035.3.insert.insert, 197399
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val38 = load ptr, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i40 %.sroa.035.4.insert.insert, ptr %i.d, align 8, !noalias !1282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1282
  store i8 1, ptr %i.b, align 1, !noalias !1282
  invoke fastcc void @_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_(ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.c, ptr %.val, ptr readonly %.val38, ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc39 unwind label %bb.d

.noexc39:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1282
  %i.bq = load i8, ptr %i.c, align 1, !range !6, !noalias !1282, !noundef !7
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.bs, i64 12, i1 false), !noalias !1282
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.a)
          to label %bb.q unwind label %bb.d

bb.n:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 3, ptr %.sroa.612.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %bb.k, %.loopexit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4i_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @134, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [136 x i8], align 8               ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [1 x i8], align 1                 ; 6 uses
  %i.w = alloca [144 x i8], align 8               ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 14 uses
  %i.y = alloca [64 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 12 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [72 x i8], align 8               ; 5 uses
  %i.ad = alloca [224 x i8], align 8              ; 5 uses
  %i.ae = alloca [224 x i8], align 8              ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 5 uses
  %.sroa.14 = alloca [48 x i8], align 8           ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 13 uses
  %i.ah = alloca [72 x i8], align 8               ; 4 uses
  %i.ai = alloca [240 x i8], align 8              ; 5 uses
  %i.aj = alloca [304 x i8], align 8              ; 5 uses
  %i.ak = alloca [80 x i8], align 8               ; 8 uses
  %i.al = alloca [224 x i8], align 8              ; 12 uses
  %i.am = alloca [64 x i8], align 8               ; 6 uses
  %i.an = alloca [64 x i8], align 8               ; 4 uses
  %i.ao = alloca [64 x i8], align 8               ; 4 uses
  %i.ap = alloca [312 x i8], align 8              ; 8 uses
  %i.aq = alloca [312 x i8], align 8              ; 5 uses
  %i.ar = alloca [72 x i8], align 8               ; 10 uses
  %i.as = alloca [240 x i8], align 8              ; 7 uses
  %i.at = alloca [72 x i8], align 8               ; 5 uses
  %i.au = alloca [64 x i8], align 8               ; 7 uses
  %i.av = load i64, ptr %3, align 8, !range !19, !noundef !7 ; 2 uses
  %i.aw = icmp ne i64 %i.av, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sgt i64 %i.av, -9223372036854775804
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !range !17, !noundef !7 ; 2 uses
  %i.ba = icmp ne i64 %i.az, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, -9223372036854775790
  br i1 %i.bb, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls5check31inappropriate_handshake_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 1)
          to label %bb.eb unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash12current_hash(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.f unwind label %bb.e

.body74:                                          ; preds = %.split161.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit.i, %bb.e, %bb.ea, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit
  %.sroa.021.0 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit ], [ 0, %bb.ea ], [ %.sroa.021.1, %bb.e ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit.i ], [ 0, %.split161.thread ]
  %.pn53 = phi { ptr, i32 } [ %.pn49, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit ], [ %.pn51162, %bb.ea ], [ %i.bc, %bb.e ], [ %.pn.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit.i ], [ %lpad.thr_comm163, %.split161.thread ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit unwind label %bb.do

bb.e:                                             ; preds = %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite13set_decrypter.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79, %bb.d, %bb.c
  %.sroa.021.1 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79 ], [ 0, %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite13set_decrypter.exit.i ], [ 1, %bb.d ], [ 1, %bb.c ]
  %i.bc = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a
.split.thread:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ip)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i unwind label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102
  %i.iq = landingpad { ptr, i32 }
          cleanup
  %i.ir = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ir)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i unwind label %bb.dv

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102
  %i.is = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.is)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i unwind label %bb.du

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i: ; preds = %bb.du, %bb.dt
  %.pn.i103 = phi { ptr, i32 } [ %i.iu, %bb.du ], [ %i.iq, %bb.dt ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.it)
          to label %.body105 unwind label %bb.dv

bb.du:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.iv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i, %bb.dt
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108 unwind label %.split161.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dz

.body.thread:                                     ; preds = %.thread.i, %bb.cw, %bb.cq, %bb.aa, %.body.thread158
  %eh.lpad-body151 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread158 ], [ %i.he, %bb.cq ], [ %.pn48.i, %bb.aa ], [ %.pn488.i, %.thread.i ], [ %i.hi, %bb.cw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #24
          to label %.body98 unwind label %bb.do

bb.dx:                                            ; preds = %.split.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit
  %.pn47160 = phi { ptr, i32 } [ %i.io, %.split.thread ], [ %.pn45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.al) #24
          to label %.body105 unwind label %bb.do

bb.dy:                                            ; preds = %bb.t
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.ai) #24
          to label %.body105 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.as)
          to label %bb.dw unwind label %bb.e

bb.dz:                                            ; preds = %bb.eb, %bb.dw
  %.sroa.021.4 = phi i8 [ 0, %bb.dw ], [ 1, %bb.eb ] ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110 unwind label %bb.dk

bb.ea:                                            ; preds = %.split161, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit
  %.pn51162 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp164, %.split161 ], [ %.pn49, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.as) #24
          to label %.body74 unwind label %bb.do

bb.eb:                                            ; preds = %bb.c
  %.sroa.07.0.copyload = load i8, ptr %i.au, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.69.0..sroa_idx, i64 7, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.638.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.814.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i8 %.sroa.07.0.copyload, ptr %0, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.dz

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110: ; preds = %bb.dz
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !1348, !nonnull !7, !noundef !7
  %i.ja = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !noalias !1348
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112

bb.ec:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iy) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.ee unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110, %bb.ec
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %.pn57 = phi { ptr, i32 } [ %i.je, %bb.ef ], [ %i.jc, %bb.ed ] ; 2 uses
  %i.jd = trunc nuw i8 %.sroa.021.4 to i1
  br i1 %i.jd, label %bb.el, label %.body115

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112
  %i.jf = trunc nuw i8 %.sroa.021.4 to i1
  br i1 %i.jf, label %bb.eh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.jh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.jg) #24
          to label %.body115 unwind label %bb.ej

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113: ; preds = %bb.eh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.jg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body115

bb.el:                                            ; preds = %bb.ee
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.jl) #24
          to label %.body115 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit, %bb.dj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.em unwind label %bb.do

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit
  %i.jm = trunc nuw i8 %.sroa.021.2 to i1
  br i1 %i.jm, label %bb.en, label %.body115

bb.en:                                            ; preds = %bb.em
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.jn) #24
          to label %.body115 unwind label %bb.do
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [5 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = alloca [12 x i8], align 1                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.k, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1371
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull readonly dereferenceable(12) %i.j, ptr noundef nonnull readonly %i.m), !noalias !1372
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !1373, !noalias !1371, !noundef !7 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val6.i.i = load i64, ptr %i.o, align 8, !alias.scope !1373, !noalias !1371, !noundef !7 ; 6 uses
  %i.p = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1374, !noalias !1371, !nonnull !7, !noundef !7 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1374, !noalias !1371, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep63 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep64 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep65 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep65
  %bound1 = icmp ult ptr %scevgep64, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.p, 28
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i64 %index, %.val.i.i                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !alias.scope !1375, !noalias !1376
  %wide.load67 = load <16 x i8>, ptr %i.v, align 1, !alias.scope !1375, !noalias !1376
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load68 = load <16 x i8>, ptr %i.t, align 1, !alias.scope !1377, !noalias !1378
  %wide.load69 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !1377, !noalias !1378
  %i.x = xor <16 x i8> %wide.load68, %wide.load
  %i.y = xor <16 x i8> %wide.load69, %wide.load67
  store <16 x i8> %i.x, ptr %i.t, align 1, !alias.scope !1377, !noalias !1378
  store <16 x i8> %i.y, ptr %i.w, align 1, !alias.scope !1377, !noalias !1378
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.p, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.aa = add i64 %index71, %.val.i.i             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aa
  %wide.load72 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !1375, !noalias !1376
  %wide.load73 = load <4 x i8>, ptr %i.ab, align 1, !alias.scope !1377, !noalias !1378
  %i.ad = xor <4 x i8> %wide.load73, %wide.load72
  store <4 x i8> %i.ad, ptr %i.ab, align 1, !alias.scope !1377, !noalias !1378
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1365

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.p, %n.vec70
  br i1 %cmp.n75, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %.val6.i.i, %.val.i.i
  %i.ag = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ah = add i64 %.val6.i.i, %i.ag
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.aj = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aj
  %.val7.i.i.prol = load i8, ptr %i.al, align 1, !noalias !1376, !noundef !7
  %i.am = load i8, ptr %i.ak, align 1, !alias.scope !1379, !noalias !1376, !noundef !7
  %i.an = xor i8 %i.am, %.val7.i.i.prol
  store i8 %i.an, ptr %i.ak, align 1, !alias.scope !1379, !noalias !1376
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.ah, %.val.i.i
  br i1 %i.ao, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.au, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ap = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ap
  %.val7.i.i = load i8, ptr %i.ar, align 1, !noalias !1376, !noundef !7
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !1379, !noalias !1376, !noundef !7
  %i.at = xor i8 %i.as, %.val7.i.i
  store i8 %i.at, ptr %i.aq, align 1, !alias.scope !1379, !noalias !1376
  %i.au = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.aw, align 1, !noalias !1376, !noundef !7
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !1379, !noalias !1376, !noundef !7
  %i.ay = xor i8 %i.ax, %.val7.i.i.1
  store i8 %i.ay, ptr %i.av, align 1, !alias.scope !1379, !noalias !1376
  %exitcond.not.i.i.1 = icmp eq i64 %i.au, %i.p
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !1366

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.az = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  %sh.diff = shl i64 %i.h, 16
  %i.ba = trunc i64 %sh.diff to i40
  %.sroa.061.3.insert.shift = and i40 %i.ba, 4278190080
  %4 = trunc i64 %i.h to i40
  %.sroa.061.4.insert.ext = shl i40 %4, 32
  %.sroa.061.3.insert.insert = or disjoint i40 %.sroa.061.3.insert.shift, %.sroa.061.4.insert.ext
  %.sroa.061.4.insert.insert = or disjoint i40 %.sroa.061.3.insert.insert, 197399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i40 %.sroa.061.4.insert.insert, ptr %i.b, align 8, !noalias !1380
  %i.bb = call fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 1 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull %i.az, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  %i.be = extractvalue { ptr, i64 } %i.bb, 1
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_8AcceptorNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1168 x i8]) align 8 captures(none) dereferenceable(1168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [840 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 -2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState3new(ptr noalias nofree noundef nonnull sret([840 x i8]) align 8 captures(none) dereferenceable(840) %i.a, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE3newB7_(ptr noalias nofree noundef nonnull sret([1080 x i8]) align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @155, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(840) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 1, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 65536, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.012.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i64 0, ptr %.sroa.012.sroa.6.0..sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.012.sroa.8.sroa.4.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.8.sroa.4.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.8.sroa.5.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.sroa.8.sroa.5.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20ServerConnectionDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.b) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EEB1g_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull @155) #24
          to label %.critedge unwind label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_9AcceptingINtNtB9_12common_state5StateNtB5_20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @155, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf16expander_for_okm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !15, !noundef !7 ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMsa_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_3Prk13new_less_safe(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.b, ptr %i.f, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1383
  %i.g = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 96, i64 noundef range(i64 1, 9) 8) #22, !noalias !1383 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderE3newBM_.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #27
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderE3newBM_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @156, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf19extract_from_secret(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %.not = icmp eq ptr %1, null
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 3 uses
  %i.g = icmp ult i64 %i.f, 65
  br i1 %i.g, label %bb.d, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.34.0 = phi i64 [ %2, %bb.a ], [ %i.f, %bb.b ]
  %.sroa.03.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_4Salt3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pre, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.34.0)
  invoke fastcc void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_4Salt7extract(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1401, !nonnull !7, !noundef !7
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1401
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs222MioR9bx1_9aws_lc_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #25
end_hunk_2
