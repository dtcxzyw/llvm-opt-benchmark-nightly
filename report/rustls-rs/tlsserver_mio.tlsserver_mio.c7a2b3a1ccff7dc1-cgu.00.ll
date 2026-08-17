inline.NumInlined: 704
inline.NumDeleted: 281
begin_hunk_0_@_RNvCsh8EDedVkTYb_13tlsserver_mio11make_config:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.qr = load ptr, ptr %i.qq, align 8, !alias.scope !738, !nonnull !23, !noundef !23
  %i.qs = atomicrmw sub ptr %i.qr, i64 1 release, align 8, !noalias !738
  %i.qt = icmp eq i64 %i.qs, 1
  br i1 %i.qt, label %bb.gx, label %.critedge60

bb.gx:                                            ; preds = %.critedge59
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.qq) #24
          to label %.critedge60 unwind label %bb.al

.critedge60:                                      ; preds = %bb.gx, %.critedge59
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qu) #22
          to label %.critedge61 unwind label %bb.al

.critedge61:                                      ; preds = %.critedge60
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.qw = load ptr, ptr %i.qv, align 8, !alias.scope !745, !nonnull !23, !noundef !23
  %i.qx = atomicrmw sub ptr %i.qw, i64 1 release, align 8, !noalias !745
  %i.qy = icmp eq i64 %i.qx, 1
  br i1 %i.qy, label %bb.gy, label %.critedge62

bb.gy:                                            ; preds = %.critedge61
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.qv) #24
          to label %.critedge62 unwind label %bb.al

.critedge62:                                      ; preds = %bb.gy, %.critedge61
  %i.qz = getelementptr inbounds nuw i8, ptr %i.bc, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ra = load ptr, ptr %i.qz, align 8, !alias.scope !752, !nonnull !23, !noundef !23
  %i.rb = atomicrmw sub ptr %i.ra, i64 1 release, align 8, !noalias !752
  %i.rc = icmp eq i64 %i.rb, 1
  br i1 %i.rc, label %bb.gz, label %.critedge63

bb.gz:                                            ; preds = %.critedge62
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.qz) #24
          to label %.critedge63 unwind label %bb.al

.critedge63:                                      ; preds = %bb.gz, %.critedge62
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bc, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !759, !nonnull !23, !noundef !23
  %i.rf = atomicrmw sub ptr %i.re, i64 1 release, align 8, !noalias !759
  %i.rg = icmp eq i64 %i.rf, 1
  br i1 %i.rg, label %bb.ha, label %.critedge64

bb.ha:                                            ; preds = %.critedge63
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.rd) #24
          to label %.critedge64 unwind label %bb.al

.critedge64:                                      ; preds = %bb.ha, %.critedge63
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.rh) #22
          to label %.critedge65 unwind label %bb.al

.critedge65:                                      ; preds = %.critedge64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bc, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.rj = load ptr, ptr %i.ri, align 8, !alias.scope !766, !nonnull !23, !noundef !23
  %i.rk = atomicrmw sub ptr %i.rj, i64 1 release, align 8, !noalias !766
  %i.rl = icmp eq i64 %i.rk, 1
  br i1 %i.rl, label %bb.hb, label %.critedge66

bb.hb:                                            ; preds = %.critedge65
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ri) #24
          to label %.critedge66 unwind label %bb.al

.critedge67:                                      ; preds = %.body68
  br i1 %.sroa.018.2.lpad-body, label %.critedge67.thread224, label %.body108

.critedge66:                                      ; preds = %bb.hb, %.critedge65
  %i.rm = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.rm) #22
          to label %.body108 unwind label %bb.al

.critedge67.thread224:                            ; preds = %bb.eh, %.critedge67
  %.pn.pn229 = phi { ptr, i32 } [ %eh.lpad-body69, %.critedge67 ], [ %i.mp, %bb.eh ]
  %.sroa.020.9228 = phi i8 [ %.sroa.020.8.lpad-body, %.critedge67 ], [ 1, %bb.eh ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #22
          to label %bb.hc unwind label %bb.al

bb.hc:                                            ; preds = %.critedge67.thread224, %.body6.i
  %.sroa.019.5.ph = phi i8 [ 0, %.critedge67.thread224 ], [ 1, %.body6.i ]
  %.sroa.020.7.ph = phi i8 [ %.sroa.020.9228, %.critedge67.thread224 ], [ 1, %.body6.i ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn229, %.critedge67.thread224 ], [ %.pn.i, %.body6.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types13PrivateKeyDerECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(32) %i.be) #22
          to label %bb.hd unwind label %bb.al

bb.hd:                                            ; preds = %bb.hc, %bb.dl, %bb.do
  %.sroa.019.4.ph = phi i8 [ %.sroa.019.5.ph, %bb.hc ], [ 1, %bb.dl ], [ 1, %bb.do ]
  %.sroa.020.6.ph = phi i8 [ %.sroa.020.7.ph, %bb.hc ], [ 1, %bb.dl ], [ 1, %bb.do ]
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.ph, %bb.hc ], [ %i.lk, %bb.dl ], [ %i.lm, %bb.do ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #22
          to label %.body108 unwind label %bb.al

.body105.thread:                                  ; preds = %bb.cr, %.body105
  %.pn52234 = phi { ptr, i32 } [ %.pn52, %.body105 ], [ %lpad.phi.i, %bb.cr ]
  %.sroa.020.3233 = phi i8 [ %.sroa.020.3, %.body105 ], [ 1, %bb.cr ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #22
          to label %.body105.thread235 unwind label %bb.al

.thread:                                          ; preds = %.body105.thread235..thread_crit_edge, %bb.by, %bb.cf
  %i.rn = phi ptr [ %.pre, %.body105.thread235..thread_crit_edge ], [ %i.eq, %bb.cf ], [ %i.eq, %bb.by ]
  %.pn54191 = phi { ptr, i32 } [ %.pn54, %.body105.thread235..thread_crit_edge ], [ %i.ia, %bb.cf ], [ %eh.lpad-body.i, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ro = atomicrmw sub ptr %i.rn, i64 1 release, align 8, !noalias !606
  %i.rp = icmp eq i64 %i.ro, 1
  br i1 %i.rp, label %bb.he, label %common.resume

bb.he:                                            ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bw) #24
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsh8EDedVkTYb_13tlsserver_mio4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [112 x i8], align 8               ; 4 uses
  %i.p = alloca [120 x i8], align 8               ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [112 x i8], align 8               ; 4 uses
  %i.t = alloca [120 x i8], align 8               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [112 x i8], align 8               ; 4 uses
  %i.w = alloca [120 x i8], align 8               ; 4 uses
  %i.x = alloca [112 x i8], align 8               ; 4 uses
  %i.y = alloca [120 x i8], align 8               ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 19 uses
  %i.ac = alloca [24 x i8], align 8               ; 20 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 22 uses
  %i.af = alloca [112 x i8], align 8              ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 27 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 27 uses
  %i.aj = alloca [112 x i8], align 8              ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 32 uses
  %i.al = alloca [112 x i8], align 8              ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 32 uses
  %i.an = alloca [112 x i8], align 8              ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 34 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [712 x i8], align 8              ; 5 uses
  %i.ar = alloca [712 x i8], align 8              ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 3 uses
  %.sroa.25.sroa.2.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.25.sroa.3.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.25.sroa.4.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.25.sroa.5.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.25.sroa.6.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.25.sroa.7.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.25.sroa.8.i = alloca [24 x i8], align 8  ; 4 uses
  %i.at = alloca [56 x i8], align 8               ; 20 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [1 x i8], align 1                ; 3 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [72 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [4 x i8], align 4                ; 10 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [32 x i8], align 4               ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 4 uses
  %i.bi = alloca [4 x i8], align 4                ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 3 uses
  %i.bk = alloca [32 x i8], align 4               ; 6 uses
  %i.bl = alloca [32 x i8], align 4               ; 6 uses
  %i.bm = alloca [168 x i8], align 8              ; 23 uses
  %i.bn = alloca [208 x i8], align 8              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !772
  call void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command3newReECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 15), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !775
  call fastcc void @_RNvXs8_Csh8EDedVkTYb_13tlsserver_mioNtB5_4ArgsNtNtCsdsZTLzXv0lo_12clap_builder6derive4Args12augment_args(ptr noalias nofree noundef align 8 captures(address) dereferenceable(712) %i.aq, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.ar), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !775
  invoke void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ap)
          to label %_RNvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i unwind label %bb.b, !noalias !775

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit, %bb.b, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bo, %bb.b ], [ %.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %i.aq) #22
          to label %common.resume unwind label %bb.c, !noalias !775

bb.c:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !775
  unreachable

_RNvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i: ; preds = %bb.a
  call void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap), !noalias !779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !784
  invoke void @_RNvMs_NtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matchesNtB4_10ArgMatches17remove_subcommand(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.at)
          to label %.noexc.i unwind label %bb.hq, !noalias !769

.noexc.i:                                         ; preds = %_RNvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i
  %i.bq = load i64, ptr %i.f, align 8, !range !41, !noalias !784, !noundef !23
  %.not.i.i.i = icmp eq i64 %i.bq, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !784
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.br, i64 56, i1 false), !noalias !784
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !784, !noundef !23 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4
  br i1 %i.bv, label %bb.f, label %.thread.i.i.i

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !784
  %i.bw = invoke noundef nonnull align 8 ptr @_RINvMNtCsdsZTLzXv0lo_12clap_builder5errorNtB3_5Error3rawReECsh8EDedVkTYb_13tlsserver_mio(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 49)
          to label %_RNvXs2_Csh8EDedVkTYb_13tlsserver_mioNtB5_10ServerModeNtNtCsdsZTLzXv0lo_12clap_builder6derive14FromArgMatches20from_arg_matches_mut.exit.thread.i.i unwind label %bb.hq, !noalias !769

bb.f:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %i.bs, align 8, !noalias !784, !nonnull !23, !noundef !23 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 1
  %i.bz = icmp ne i32 %i.by, 1869112165
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.h, label %.thread27.i.i.i

bb.g:                                             ; preds = %bb.j
  %.pr.pre.i.i.i = load i64, ptr %i.bt, align 8, !noalias !784 ; 2 uses
  %i.cc = icmp eq i64 %.pr.pre.i.i.i, 4
  br i1 %i.cc, label %..thread27.i_crit_edge.i.i, label %.thread.i.i.i

..thread27.i_crit_edge.i.i:                       ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.bs, align 8, !noalias !784
  br label %.thread27.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.cd = invoke noundef zeroext i1 @_RNvMNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.j unwind label %bb.i, !noalias !788

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh8EDedVkTYb_13tlsserver_mio.exit.i.i.i, %bb.u, %bb.r, %bb.q, %bb.o, %.thread.thread.i.i.i, %bb.l, %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matches10ArgMatchesECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #22
          to label %bb.v unwind label %bb.ae, !noalias !788

bb.j:                                             ; preds = %bb.h
  br i1 %i.cd, label %bb.g, label %bb.k

bb.k:                                             ; preds = %bb.u, %bb.t, %bb.m, %bb.j
  %.sroa.13227.0.i.i = phi ptr [ undef, %bb.t ], [ undef, %bb.m ], [ undef, %bb.j ], [ %i.dc, %bb.u ]
  %.sroa.11.0.i.i = phi i16 [ %i.db, %bb.t ], [ undef, %bb.m ], [ undef, %bb.j ], [ undef, %bb.u ]
  %.sroa.7.0.i.i = phi i16 [ 2, %bb.t ], [ 1, %bb.m ], [ 0, %bb.j ], [ undef, %bb.u ]
  %storemerge.sink.i.i.i = phi i1 [ false, %bb.t ], [ false, %bb.m ], [ false, %bb.j ], [ true, %bb.u ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matches10ArgMatchesECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d)
          to label %bb.x unwind label %bb.w, !noalias !788

.thread27.i.i.i:                                  ; preds = %..thread27.i_crit_edge.i.i, %bb.f
  %i.cf = phi ptr [ %.pre.i.i, %..thread27.i_crit_edge.i.i ], [ %i.bx, %bb.f ]
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = icmp ne i32 %i.cg, 1886680168
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.l, label %.thread.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread-pre-split23_crit_edge.i.i.i, %bb.g, %bb.d
  %i.ck = phi i64 [ %i.bu, %bb.d ], [ %.pr.pre.i.i.i, %bb.g ], [ %.pr24.pre.i.i.i, %.thread-pre-split23_crit_edge.i.i.i ]
  %i.cl = icmp eq i64 %i.ck, 7
  br i1 %i.cl, label %bb.n, label %.thread.thread.i.i.i

bb.l:                                             ; preds = %.thread27.i.i.i
  %i.cm = invoke noundef zeroext i1 @_RNvMNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.m unwind label %bb.i, !noalias !788

bb.m:                                             ; preds = %bb.l
  br i1 %i.cm, label %.thread-pre-split23_crit_edge.i.i.i, label %bb.k

.thread-pre-split23_crit_edge.i.i.i:              ; preds = %bb.m
  %.pr24.pre.i.i.i = load i64, ptr %i.bt, align 8, !noalias !784
  br label %.thread.i.i.i

bb.n:                                             ; preds = %.thread.i.i.i
  %i.cn = load ptr, ptr %i.bs, align 8, !noalias !784, !nonnull !23, !noundef !23 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = xor i32 %i.co, 2003988326
  %i.cq = getelementptr i8, ptr %i.cn, i64 3
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = xor i32 %i.cr, 1685217655
  %i.ct = or i32 %i.cp, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.o, label %.thread.thread.i.i.i

.thread.thread.i.i.i:                             ; preds = %bb.p, %bb.n, %.thread.i.i.i, %.thread27.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !784
  store ptr %i.e, ptr %i.b, align 8, !noalias !784
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !784
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @103, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh8EDedVkTYb_13tlsserver_mio.exit.i.i.i unwind label %bb.i, !noalias !788

bb.o:                                             ; preds = %bb.n
  %i.cx = invoke noundef zeroext i1 @_RNvMNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.p unwind label %bb.i, !noalias !788

bb.p:                                             ; preds = %bb.o
  br i1 %i.cx, label %.thread.thread.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !784
  invoke void @_RINvMs0_NtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onetECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4)
          to label %bb.r unwind label %bb.i, !noalias !788

bb.r:                                             ; preds = %bb.q
  %i.cy = invoke { i16, i16 } @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptiontEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.s unwind label %bb.i, !noalias !788 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.cz = extractvalue { i16, i16 } %i.cy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !784
  %i.da = trunc i16 %i.cz to i1
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.db = extractvalue { i16, i16 } %i.cy, 1
  br label %bb.k

bb.u:                                             ; preds = %bb.s
  %i.dc = invoke noundef nonnull align 8 ptr @_RINvMNtCsdsZTLzXv0lo_12clap_builder5errorNtB3_5Error3rawReECsh8EDedVkTYb_13tlsserver_mio(i8 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 54)
          to label %bb.k unwind label %bb.i, !noalias !788

bb.v:                                             ; preds = %bb.w, %bb.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.w ], [ %i.ce, %bb.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %.body.i unwind label %bb.ae, !noalias !788

bb.w:                                             ; preds = %bb.aa, %bb.k
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !784
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvXs2_Csh8EDedVkTYb_13tlsserver_mioNtB5_10ServerModeNtNtCsdsZTLzXv0lo_12clap_builder6derive14FromArgMatches20from_arg_matches_mut.exit.i.i unwind label %bb.y, !noalias !788

bb.y:                                             ; preds = %bb.x
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
end_hunk_0
begin_hunk_1_@_RNvCsh8EDedVkTYb_13tlsserver_mio4main:bb.a
.noexc19.i:                                       ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !780
  br label %.thread.i

bb.hn:                                            ; preds = %bb.hp, %bb.ho, %bb.hk, %bb.hh, %bb.he, %bb.hb, %bb.gy, %bb.gv, %bb.gt, %bb.go, %bb.gl, %bb.gi, %bb.gf, %bb.gc, %bb.fz, %bb.fw, %bb.ft, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %bb.ev, %bb.es, %bb.em, %.body221.i.i, %.body216.i.i, %.body210.i.i, %.body205.i.i, %.body199.i.i, %.body193.i.i, %.body189.i.i, %bb.de, %bb.da, %bb.cw, %.body184.i.i, %.body180.i.i, %.body177.i.i, %.body175.i.i, %bb.bz, %bb.br, %.body171.i.i, %.body.i.i, %bb.bb, %bb.at, %bb.al
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !789
  unreachable

bb.ho:                                            ; preds = %bb.cw
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #22
          to label %.body175.i.i unwind label %bb.hn, !noalias !789

bb.hp:                                            ; preds = %bb.br
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #22
          to label %.body.i.i unwind label %bb.hn, !noalias !789

.body.i:                                          ; preds = %bb.ht, %bb.hq, %bb.hk, %bb.gl, %bb.fk, %bb.ek, %.body221.i.i, %bb.cu, %.body184.i.i, %bb.bp, %.body171.i.i, %bb.al, %bb.ac, %bb.y, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.hz, %bb.ht ], [ %i.hv, %bb.hq ], [ %i.gm, %bb.ek ], [ %.pn.i.i.i, %bb.v ], [ %i.el, %bb.bp ], [ %i.fg, %bb.cu ], [ %i.dh, %bb.ac ], [ %i.de, %bb.y ], [ %.pn168.i.i, %bb.hk ], [ %.pn150.pn.pn.pn.pn.pn.pn.i.i, %bb.gl ], [ %.pn142.pn.pn.pn.pn.pn.pn.i.i, %bb.fk ], [ %.pn133.pn.pn.pn.pn.pn.pn.i.i, %.body221.i.i ], [ %.pn125.pn.pn.pn.pn.pn.i.i, %.body184.i.i ], [ %.pn120.pn.pn.i.i, %.body171.i.i ], [ %.pn.pn.i.i, %bb.al ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matches10ArgMatchesECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(56) %i.at) #22
          to label %common.resume unwind label %bb.hv, !noalias !769

bb.hq:                                            ; preds = %.thread.i, %bb.hm, %bb.gn, %bb.fm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsh8EDedVkTYb_13tlsserver_mio.exit225.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsh8EDedVkTYb_13tlsserver_mio.exit188.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsh8EDedVkTYb_13tlsserver_mio.exit174.i.i, %bb.ai, %.invoke.i, %.noexc10.i, %bb.ah, %.noexc7.i, %bb.ag, %.noexc5.i, %bb.af, %_RNvXs2_Csh8EDedVkTYb_13tlsserver_mioNtB5_10ServerModeNtNtCsdsZTLzXv0lo_12clap_builder6derive14FromArgMatches20from_arg_matches_mut.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsh8EDedVkTYb_13tlsserver_mio.exit22.i.i.i, %bb.e, %_RNvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.hr:                                            ; preds = %bb.gq
  %.sroa.0.i.sroa.0.0.copyload.i = load i64, ptr %i.ao, align 8, !noalias !780 ; 2 uses
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !noalias !780 ; 2 uses
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.hw = load i64, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i, align 8, !noalias !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !780
  %i.hx = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i, -1
  br i1 %i.hx, label %.thread.i, label %_RNvYNtCsh8EDedVkTYb_13tlsserver_mio4ArgsNtNtCsdsZTLzXv0lo_12clap_builder6derive6Parser5parseB4_.exit

.thread.i:                                        ; preds = %_RNvXs2_Csh8EDedVkTYb_13tlsserver_mioNtB5_10ServerModeNtNtCsdsZTLzXv0lo_12clap_builder6derive14FromArgMatches20from_arg_matches_mut.exit.thread.i.i, %.noexc4.i, %.invoke.i, %.noexc14.i, %.noexc15.i, %.noexc16.i, %.noexc17.i, %.noexc18.i, %.noexc19.i, %bb.hr
  %.sroa.13.034.i = phi ptr [ %.sroa.0.i.sroa.4.0.copyload.i, %bb.hr ], [ %i.dr, %.invoke.i ], [ %.sroa.13227.1.ph.i.i, %_RNvXs2_Csh8EDedVkTYb_13tlsserver_mioNtB5_10ServerModeNtNtCsdsZTLzXv0lo_12clap_builder6derive14FromArgMatches20from_arg_matches_mut.exit.thread.i.i ], [ %i.hm, %.noexc19.i ], [ %i.ha, %.noexc18.i ], [ %i.gq, %.noexc17.i ], [ %i.fm, %.noexc16.i ], [ %i.et, %.noexc15.i ], [ %i.ee, %.noexc14.i ], [ %.sroa.13227.0.i.i, %.noexc4.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.034.i) ]
  %i.hy = invoke noundef nonnull align 8 ptr @_RINvNtCsdsZTLzXv0lo_12clap_builder6derive12format_errorNtCsh8EDedVkTYb_13tlsserver_mio4ArgsEBT_(ptr noalias noundef nonnull align 8 %.sroa.13.034.i)
          to label %bb.hs unwind label %bb.hq, !noalias !769 ; 2 uses

bb.hs:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !769
  store ptr %i.hy, ptr %i.as, align 8, !noalias !769
  invoke void @_RNvMNtCsdsZTLzXv0lo_12clap_builder5errorNtB2_5Error4exitCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as) #26
          to label %bb.hu unwind label %bb.ht, !noalias !769

bb.ht:                                            ; preds = %bb.hs
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsZTLzXv0lo_12clap_builder5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr nonnull %i.hy) #22
          to label %.body.i unwind label %bb.hv, !noalias !769

bb.hu:                                            ; preds = %bb.hs
  unreachable

bb.hv:                                            ; preds = %bb.ht, %.body.i
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !769
  unreachable

_RNvYNtCsh8EDedVkTYb_13tlsserver_mio4ArgsNtNtCsdsZTLzXv0lo_12clap_builder6derive6Parser5parseB4_.exit: ; preds = %bb.hr
  %i.ib = extractvalue { i32, i32 } %i.hj, 1
  %i.ic = extractvalue { i16, i16 } %i.dk, 1
  store i64 %.sroa.0.i.sroa.0.0.copyload.i, ptr %i.bn, align 8, !alias.scope !769
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.0.i.sroa.4.0.copyload.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !769
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.hw, ptr %.sroa.25.0..sroa_idx.i, align 8, !alias.scope !769
  %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.2.i, i64 24, i1 false)
  %.sroa.25.sroa.3.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.3.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.3.i, i64 24, i1 false)
  %.sroa.25.sroa.4.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.4.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.4.i, i64 24, i1 false)
  %.sroa.25.sroa.5.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.5.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.5.i, i64 24, i1 false)
  %.sroa.25.sroa.6.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.6.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.6.i, i64 24, i1 false)
  %.sroa.25.sroa.7.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.7.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.7.i, i64 24, i1 false)
  %.sroa.25.sroa.8.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.8.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.sroa.8.i, i64 24, i1 false)
  %.sroa.2523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 192 ; 2 uses
  store i16 %.sroa.7.0.i.i, ptr %.sroa.2523.0..sroa_idx.i, align 8, !alias.scope !769
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 194 ; 2 uses
  store i16 %.sroa.11.0.i.i, ptr %.sroa.26.0..sroa_idx.i, align 2, !alias.scope !769
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 196
  store i32 %i.ib, ptr %.sroa.27.0..sroa_idx.i, align 4, !alias.scope !769
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 200 ; 2 uses
  store i16 %i.ic, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !769
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 202 ; 2 uses
  store i8 %i.dn, ptr %.sroa.29.0..sroa_idx.i, align 2, !alias.scope !769
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 203
  store i8 %i.fl, ptr %.sroa.30.0..sroa_idx.i, align 1, !alias.scope !769
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 204
  store i8 %i.gp, ptr %.sroa.31.0..sroa_idx.i, align 4, !alias.scope !769
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 205
  store i8 %i.gz, ptr %.sroa.32.0..sroa_idx.i, align 1, !alias.scope !769
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsZTLzXv0lo_12clap_builder6parser7matches11arg_matches10ArgMatchesECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(56) %i.at), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.8.i)
  %i.id = load i8, ptr %.sroa.29.0..sroa_idx.i, align 2, !range !385, !noundef !23
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.ic, %_RNvYNtCsh8EDedVkTYb_13tlsserver_mio4ArgsNtNtCsdsZTLzXv0lo_12clap_builder6derive6Parser5parseB4_.exit
  %i.if = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.ig = load i64, ptr %i.if, align 8, !noundef !23 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 384307168202282326
  call void @llvm.assume(i1 %i.ih)
  %i.ii = icmp ne i64 %i.ig, 0
  %i.ij = load i64, ptr %.sroa.25.sroa.8.0..sroa.25.0..sroa_idx.sroa_idx.i, align 8, !range !41
  %.not = icmp eq i64 %i.ij, -1
  %or.cond47 = select i1 %i.ii, i1 %.not, i1 false
  br i1 %or.cond47, label %bb.ie, label %bb.id

bb.hx:                                            ; preds = %_RNvYNtCsh8EDedVkTYb_13tlsserver_mio4ArgsNtNtCsdsZTLzXv0lo_12clap_builder6derive6Parser5parseB4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i64 0, ptr %i.ik, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 152
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.il, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 89
  store i8 0, ptr %.sroa.57.0..sroa_idx, align 1
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 90
  store i8 0, ptr %.sroa.68.0..sroa_idx, align 2
  store i64 1, ptr %i.bm, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 4, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr @26, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 1, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.09.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %.sroa.09.sroa.7.0..sroa_idx, align 8
  %.sroa.09.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i8 0, ptr %.sroa.09.sroa.11.0..sroa_idx, align 4
  %.sroa.09.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 37
  store i8 0, ptr %.sroa.09.sroa.12.0..sroa_idx, align 1
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr null, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i8 0, ptr %.sroa.612.0..sroa_idx, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  store i8 0, ptr %i.im, align 8
  %i.in = invoke noundef nonnull align 8 ptr @_RNvMNtCs5LCf9NGiMis_10env_logger6loggerNtB2_7Builder13parse_filters(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 5)
          to label %bb.hz unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hz, %bb.hx
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5LCf9NGiMis_10env_logger6logger7BuilderECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(168) %i.bm) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit unwind label %bb.jr

bb.hz:                                            ; preds = %bb.hx
  invoke void @_RNvMNtCs5LCf9NGiMis_10env_logger6loggerNtB2_7Builder4init(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.in)
          to label %bb.ia unwind label %bb.hy

bb.ia:                                            ; preds = %bb.hz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5LCf9NGiMis_10env_logger6logger7BuilderECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(168) %i.bm)
          to label %bb.ic unwind label %bb.ib

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.ju, %bb.jv, %bb.in, %.thread62, %bb.ib, %bb.hy
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.thread62 ], [ %i.io, %bb.hy ], [ %i.ip, %bb.ib ], [ %i.iz, %bb.in ], [ %.pn.pn.pn.pn.pn.pn.ph, %bb.jv ], [ %.pn.pn.pn.pn.pn.pn.ph, %bb.ju ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsh8EDedVkTYb_13tlsserver_mio4ArgsEBD_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.bn) #22
          to label %common.resume unwind label %bb.jr

bb.ib:                                            ; preds = %bb.ih, %bb.ii, %bb.ie, %bb.id, %bb.ia
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.hw

bb.id:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke void @_RNvXsa_NtNtCsj6eKBz9Db1c_4core3net6parserNtNtB7_11socket_addr10SocketAddrNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 8)
          to label %bb.ig unwind label %bb.ib

bb.ie:                                            ; preds = %bb.hw
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 95 to ptr))
          to label %bb.if unwind label %bb.ib

bb.if:                                            ; preds = %bb.ie
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsh8EDedVkTYb_13tlsserver_mio4ArgsEBD_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  ret void

bb.ig:                                            ; preds = %bb.id
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.iq = load i16, ptr %i.bk, align 4, !range !802, !alias.scope !800, !noalias !797, !noundef !23
  %i.ir = icmp eq i16 %i.iq, 2
  br i1 %i.ir, label %bb.ih, label %bb.ii, !prof !551

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !803
  %i.is = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.it = load i8, ptr %i.is, align 2, !range !804, !alias.scope !800, !noalias !797, !noundef !23
  store i8 %i.it, ptr %i.av, align 1, !noalias !803
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
          to label %.noexc unwind label %bb.ib

.noexc:                                           ; preds = %bb.ih
  unreachable

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bl, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bk, i64 32, i1 false), !alias.scope !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.iu = load i16, ptr %.sroa.28.0..sroa_idx.i, align 8, !noundef !23
  %i.iv = load i16, ptr %i.bl, align 4, !range !805, !noundef !23
  %i.iw = trunc nuw i16 %i.iv to i1
  %..sroa.sel.v = select i1 %i.iw, i64 28, i64 6
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %i.bl, i64 %..sroa.sel.v
  store i16 %i.iu, ptr %..sroa.sel, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %0 = invoke fastcc noundef nonnull ptr @_RNvCsh8EDedVkTYb_13tlsserver_mio11make_config(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.bn)
          to label %bb.ij unwind label %bb.ib     ; 3 uses

bb.ij:                                            ; preds = %bb.ii
  store ptr %0, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bg, ptr noundef nonnull align 4 dereferenceable(32) %i.bl, i64 32, i1 false)
  invoke void @_RNvMNtNtNtCsUoH6ltOcnV_3mio3net3tcp8listenerNtB2_11TcpListener4bind(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.bg)
          to label %bb.il unwind label %bb.ik

bb.ik:                                            ; preds = %bb.il, %bb.ij
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.il:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.iy = invoke fastcc noundef i32 @_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp8listener11TcpListenerNtNtNtB4_2io5error5ErrorE6expectCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.bh)
          to label %bb.im unwind label %bb.ik

bb.im:                                            ; preds = %bb.il
  store i32 %i.iy, ptr %i.bi, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %i.bl, ptr %i.bf, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @33, ptr noundef nonnull %i.bf)
          to label %bb.ip unwind label %bb.io

bb.in:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsh8EDedVkTYb_13tlsserver_mio.exit
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %.val = load i32, ptr %i.be, align 4, !range !270, !noundef !23
  %i.ja = call noundef i32 @close(i32 noundef %.val) #25 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit

bb.io:                                            ; preds = %bb.ip, %bb.im
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

bb.ip:                                            ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMNtCsUoH6ltOcnV_3mio4pollNtB2_4Poll3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bd)
          to label %bb.iq unwind label %bb.io

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.jc = load i32, ptr %i.bd, align 8, !range !657, !alias.scope !806, !noundef !23
  %i.jd = trunc nuw i32 %i.jc to i1
  br i1 %i.jd, label %bb.ir, label %bb.iv, !prof !551

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !806
  %i.je = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !806, !nonnull !23, !noundef !23
  store ptr %i.jf, ptr %i.aw, align 8, !noalias !806
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #26
          to label %bb.it unwind label %bb.is, !noalias !806

bb.is:                                            ; preds = %bb.ir
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #22
          to label %.thread58 unwind label %bb.iu, !noalias !806

bb.it:                                            ; preds = %bb.ir
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !806
  unreachable

bb.iv:                                            ; preds = %bb.iq
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !range !270, !alias.scope !806, !noundef !23
  store i32 %i.jj, ptr %i.be, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.jk = invoke noundef ptr @_RINvMs1_NtCsUoH6ltOcnV_3mio4pollNtB6_8Registry8registerNtNtNtNtB8_3net3tcp8listener11TcpListenerECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.be, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.bi, i64 noundef 0, i8 noundef 1)
          to label %bb.iw unwind label %.thread70 ; 2 uses

.thread70:                                        ; preds = %bb.iv
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %.val72 = load i32, ptr %i.be, align 4, !range !270, !noundef !23
  %i.jm = call noundef i32 @close(i32 noundef %.val72) #25 ; 0 uses
  br label %.thread58

bb.iw:                                            ; preds = %bb.iv
  %.not.i = icmp eq ptr %i.jk, null
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsh8EDedVkTYb_13tlsserver_mio.exit, label %bb.ix, !prof !572

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !809
  store ptr %i.jk, ptr %i.au, align 8, !noalias !809
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %bb.iz unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #22
          to label %.thread66 unwind label %bb.ja

bb.iz:                                            ; preds = %bb.ix
  unreachable

bb.ja:                                            ; preds = %bb.iy
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread66:                                        ; preds = %bb.iy
  %.val69 = load i32, ptr %i.be, align 4, !range !270, !noundef !23
  %i.jp = call noundef i32 @close(i32 noundef %.val69) #25 ; 0 uses
  br label %.thread58

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.jq = load i32, ptr %i.bi, align 4, !range !270, !noundef !23
  %i.jr = load i16, ptr %.sroa.2523.0..sroa_idx.i, align 8, !range !802, !noundef !23
  %i.js = load i16, ptr %.sroa.26.0..sroa_idx.i, align 2
  invoke fastcc void @_RNvMCsh8EDedVkTYb_13tlsserver_mioNtB2_9TlsServer3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bc, i32 noundef %i.jq, i16 noundef %i.jr, i16 %i.js, ptr noundef nonnull %0)
          to label %bb.jb unwind label %bb.in

bb.jb:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsh8EDedVkTYb_13tlsserver_mio.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvMNtNtCsUoH6ltOcnV_3mio5event6eventsNtB2_6Events13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, i64 noundef 256)
          to label %.preheader unwind label %bb.jd

.preheader:                                       ; preds = %bb.jb
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  br label %.backedge

bb.jc:                                            ; preds = %.thread73, %bb.jd
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.thread73 ], [ %i.jw, %bb.jd ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsh8EDedVkTYb_13tlsserver_mio9TlsServerEBD_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc) #22
          to label %.thread62 unwind label %bb.jr

.thread62:                                        ; preds = %bb.jc
  %.val65 = load i32, ptr %i.be, align 4, !range !270, !noundef !23
  %i.jv = call noundef i32 @close(i32 noundef %.val65) #25 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit

bb.jd:                                            ; preds = %bb.jb
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.jx = invoke noundef ptr @_RNvMNtCsUoH6ltOcnV_3mio4pollNtB2_4Poll4poll(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb, i64 undef, i32 noundef -1)
          to label %bb.je unwind label %.loopexit.split-lp ; 5 uses

.thread73:                                        ; preds = %.loopexit78, %.loopexit.split-lp, %bb.jp, %bb.jl, %bb.jt
  %.pn.pn = phi { ptr, i32 } [ %i.kn, %bb.jt ], [ %i.kj, %bb.jl ], [ %i.kl, %bb.jp ], [ %lpad.loopexit, %.loopexit78 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsUoH6ltOcnV_3mio5event6events6EventsECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #22
          to label %bb.jc unwind label %bb.jr

.loopexit78:                                      ; preds = %bb.jj, %bb.jh, %bb.ji
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

.loopexit.split-lp:                               ; preds = %.backedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

bb.je:                                            ; preds = %.backedge
  store ptr %i.jx, ptr %i.ba, align 8
  %.not38 = icmp eq ptr %i.jx, null
  br i1 %.not38, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.jy = invoke fastcc noundef i8 @_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind(ptr nonnull %i.jx)
          to label %bb.jm unwind label %bb.jt

bb.jg:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.jz = load i64, ptr %i.jt, align 8, !noundef !23
  %.not83 = icmp eq i64 %i.jz, 0
  br i1 %.not83, label %.backedge.backedge, label %.lr.ph

.backedge.backedge:                               ; preds = %bb.jk, %bb.jg, %bb.js
  br label %.backedge

.lr.ph:                                           ; preds = %bb.jg, %bb.jk
  %.sroa.034.082 = phi i64 [ %i.kc, %bb.jk ], [ 0, %bb.jg ] ; 2 uses
  %i.ka = load ptr, ptr %i.ju, align 8, !nonnull !23, !noundef !23
  %i.kb = getelementptr inbounds nuw [12 x i8], ptr %i.ka, i64 %.sroa.034.082 ; 2 uses
  %i.kc = add nuw i64 %.sroa.034.082, 1           ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.ke = load i64, ptr %i.kd, align 1, !noundef !23 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %.lr.ph
  %i.kg = invoke fastcc noundef ptr @_RNvMCsh8EDedVkTYb_13tlsserver_mioNtB2_9TlsServer6accept(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.be)
          to label %bb.jj unwind label %.loopexit78

bb.ji:                                            ; preds = %.lr.ph
  %.val52 = load i32, ptr %i.kb, align 1
  invoke fastcc void @_RNvMCsh8EDedVkTYb_13tlsserver_mioNtB2_9TlsServer10conn_event(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.be, i32 %.val52, i64 %i.ke)
          to label %bb.jk unwind label %.loopexit78

bb.jj:                                            ; preds = %bb.jh
  invoke fastcc void @_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCsh8EDedVkTYb_13tlsserver_mio(ptr noundef %i.kg)
          to label %bb.jk unwind label %.loopexit78

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.kh = load i64, ptr %i.jt, align 8, !noundef !23
  %i.ki = icmp ult i64 %i.kc, %i.kh
  br i1 %i.ki, label %.lr.ph, label %.backedge.backedge

bb.jl:                                            ; preds = %bb.jo
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

bb.jm:                                            ; preds = %bb.jf
  %i.kk = icmp eq i8 %i.jy, 35
  br i1 %i.kk, label %bb.jo, label %bb.jn, !prof !572

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.jx, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %i.ay, ptr %i.ax, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #26
          to label %bb.jq unwind label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %i.jx, ptr %i.az, align 8
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.js unwind label %bb.jl

bb.jp:                                            ; preds = %bb.jn
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #22
          to label %.thread73 unwind label %bb.jr

bb.jq:                                            ; preds = %bb.jn
  unreachable

bb.jr:                                            ; preds = %bb.jv, %bb.jt, %bb.jp, %.thread73, %bb.jc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit, %bb.hy
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.js:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.backedge.backedge

bb.jt:                                            ; preds = %bb.jf
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #22
          to label %.thread73 unwind label %bb.jr

.thread58:                                        ; preds = %bb.is, %bb.io, %.thread70, %.thread66
  %.pn.pn.pn.pn.pn61 = phi { ptr, i32 } [ %i.jn, %.thread66 ], [ %i.jl, %.thread70 ], [ %i.jb, %bb.io ], [ %i.jg, %bb.is ]
  %.val50 = load i32, ptr %i.bi, align 4, !range !270, !noundef !23
  %i.ko = call noundef i32 @close(i32 noundef %.val50) #25 ; 0 uses
  br label %bb.ju

bb.ju:                                            ; preds = %.thread58, %bb.ik
  %.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ix, %bb.ik ], [ %.pn.pn.pn.pn.pn61, %.thread58 ] ; 2 uses
  %i.kp = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !812
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.jv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit

bb.jv:                                            ; preds = %bb.ju
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEECsh8EDedVkTYb_13tlsserver_mio.exit unwind label %bb.jr
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCsh8EDedVkTYb_13tlsserver_mioNtB2_9TlsServer10conn_event(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, i32 %.0.val, i64 %.4.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 9 uses
  %i.p = alloca [1024 x i8], align 1              ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 14 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [64 x i8], align 8               ; 10 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [64 x i8], align 8               ; 6 uses
  %i.ai = alloca [64 x i8], align 8               ; 5 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 6 uses
  %i.an = alloca [1192 x i8], align 8             ; 8 uses
  %i.ao = alloca [8 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %.4.val, ptr %i.ao, align 8
  %i.ap = call noundef zeroext i1 @_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCsUoH6ltOcnV_3mio5token5TokenNtCsh8EDedVkTYb_13tlsserver_mio14OpenConnectionNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EB1n_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = call noundef align 8 ptr @_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCsUoH6ltOcnV_3mio5token5TokenNtCsh8EDedVkTYb_13tlsserver_mio14OpenConnectionNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE7get_mutBO_EB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao) ; 36 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.ej, label %bb.d, !prof !551

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsh8EDedVkTYb_13tlsserver_mio14OpenConnectionEEBZ_.exit, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCsUoH6ltOcnV_3mio5token5TokenNtCsh8EDedVkTYb_13tlsserver_mio14OpenConnectionNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getBO_EB1n_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.ar = and i32 %.0.val, 3
  %or.cond.not.i = icmp eq i32 %i.ar, 0
  br i1 %or.cond.not.i, label %_RNvMs_Csh8EDedVkTYb_13tlsserver_mioNtB4_14OpenConnection13try_back_read.exit.i, label %bb.e

_RNvMs_Csh8EDedVkTYb_13tlsserver_mioNtB4_14OpenConnection13try_back_read.exit.i: ; preds = %.sink.split.i.i, %_RNvMs_Csh8EDedVkTYb_13tlsserver_mioNtB4_14OpenConnection14try_plain_read.exit.i, %bb.d
  %i.as = and i32 %.0.val, 4
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.da, label %bb.db

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1180
  %i.au = call { i64, ptr } @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(1192) %i.aq, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @65), !noalias !823 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 9 uses
  %i.ax = trunc nuw i64 %i.av to i1
  br i1 %i.ax, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !825
  store ptr %i.aw, ptr %i.am, align 8, !noalias !825
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ay = ptrtoint ptr %i.aw to i64               ; 5 uses
  %i.az = and i64 %i.ay, 3
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 0, label %bb.i
    i64 1, label %bb.j
  ], !prof !110

default.unreachable:                              ; preds = %bb.dm, %bb.cv, %bb.cc, %bb.bw, %bb.y, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i unwind label %bb.x, !noalias !823

.noexc.i.i:                                       ; preds = %bb.g
  %i.bb = lshr i64 %i.ay, 32
  %i.bc = trunc nuw i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !823, !nonnull !23, !noundef !23
  %i.bf = invoke noundef i8 %i.be(i32 noundef %i.bc)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %bb.x, !noalias !823, !inline_history !826

bb.h:                                             ; preds = %bb.f
  %i.bg = lshr i64 %i.ay, 32
  %i.bh = icmp ult ptr %i.aw, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.bg to i8 ; 2 uses
  %i.bi = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.assume(i1 %i.bi)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !range !827, !noalias !823, !noundef !23
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.j:                                             ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %i.aw, i64 31
  %i.bm = load i8, ptr %i.bl, align 8, !range !827, !noalias !823, !noundef !23
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.k:                                             ; preds = %bb.e
  %i.bn = icmp eq ptr %i.aw, null
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !825 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 6
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ugt i64 %i.bo, 3
  br i1 %i.bq, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !825
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 1136
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 1080
  call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(1192) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bs), !noalias !823
  %i.bt = load i8, ptr %i.ai, align 8, !range !262, !noalias !825, !noundef !23
  %.not.i.i = icmp eq i8 %i.bt, -1
  br i1 %.not.i.i, label %bb.p, label %bb.r

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !825
  store ptr @52, ptr %i.aj, align 8, !noalias !825
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 13, ptr %i.bu, align 8, !noalias !825
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr @52, ptr %i.bv, align 8, !noalias !825
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 13, ptr %i.bw, align 8, !noalias !825
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr @67, ptr %i.bx, align 8, !noalias !825
  call void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECsh8EDedVkTYb_13tlsserver_mio(ptr noundef nonnull @66, ptr noundef nonnull inttoptr (i64 7 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj), !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !825
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 1188
  store i8 1, ptr %i.by, align 4, !alias.scope !828, !noalias !823
  br label %_RNvMs_Csh8EDedVkTYb_13tlsserver_mioNtB4_14OpenConnection11do_tls_read.exit.i

bb.p:                                             ; preds = %bb.v, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !825
  br label %_RNvMs_Csh8EDedVkTYb_13tlsserver_mioNtB4_14OpenConnection11do_tls_read.exit.i

bb.q:                                             ; preds = %bb.t, %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah) #22
          to label %common.resume unwind label %bb.w, !noalias !823

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false), !noalias !825
  %i.ca = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !825 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 6
  call void @llvm.assume(i1 %i.cb)
  %.not10.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not10.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !825
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !825
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !825
  store ptr @52, ptr %i.af, align 8, !noalias !825
end_hunk_1
