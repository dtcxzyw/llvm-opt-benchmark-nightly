Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_async_client.unbuffered_async_client.8bc8a3765dce2620-cgu.01?download=true
inline.NumInlined: 405
inline.NumDeleted: 215
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client:bb.a
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ai

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit28.i: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EECsc044841uM34_23unbuffered_async_client.exit25.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !143, !nonnull !6, !noundef !6
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !144
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit28.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i unwind label %bb.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.u, %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %.pn8.i = phi { ptr, i32 } [ %i.ba, %bb.u ], [ %.pn6.i, %bb.q ], [ %.pn6.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !147, !nonnull !6, !noundef !6
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !148
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit28.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !151, !nonnull !6, !noundef !6
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !152
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i unwind label %bb.w

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.w, %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i
  %.pn10.i = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %.pn8.i, %bb.t ], [ %.pn8.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #16
          to label %.body36.i unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i: ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body36.i unwind label %bb.z

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body36.i:                                        ; preds = %bb.aa, %bb.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i ], [ %i.bl, %bb.aa ], [ %i.bi, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #16
          to label %.body39.i unwind label %bb.ai

bb.aa:                                            ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body39.i unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body39.i:                                        ; preds = %bb.af, %bb.ab, %.body36.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %.body36.i ], [ %i.bt, %bb.af ], [ %i.bn, %bb.ab ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !155, !nonnull !6, !noundef !6
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !156
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i

bb.ae:                                            ; preds = %.body39.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !159, !nonnull !6, !noundef !6
  %i.bw = atomicrmw add ptr %i.bv, i64 -1 release, align 8, !noalias !160
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsc044841uM34_23unbuffered_async_client.exit

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.ah

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.ah, %bb.ae, %.body39.i
  %.pn16.i = phi { ptr, i32 } [ %i.bz, %bb.ah ], [ %.pn14.i, %bb.ae ], [ %.pn14.i, %.body39.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.by) #16
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.ae, %.body36.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i
  resume { ptr, i32 } %.pn16.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i, %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.cb)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_EECsc044841uM34_23unbuffered_async_client(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #18
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #18
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit4

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeTbINtNtBI_3vec3VechEEEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTbINtNtB7_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTbINtNtBG_3vec3VechEEEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTbINtNtB7_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTbINtNtBG_3vec3VechEEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !alias.scope !163, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !alias.scope !166, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !6
  switch i64 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit [
    i64 0, label %bb.b
    i64 3, label %bb.f
    i64 4, label %bb.j
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split: ; preds = %bb.k, %bb.g, %bb.c
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.c ], [ %i.l, %bb.k ]
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sink)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split, %bb.j, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !5, !alias.scope !179, !noundef !6
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.e, %bb.d ], [ %i.o, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !5, !alias.scope !180, !noundef !6
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !5, !alias.scope !181, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.m

end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1165
  %i.b = load i8, ptr %i.a, align 1, !range !17, !noundef !6
  switch i8 %i.b, label %common.ret [
    i8 10, label %bb.c
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1168
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.d)
  br label %common.ret

.body:                                            ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, %bb.k
  %.pn8 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.s, %bb.l ], [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.e) #16
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !12, !noundef !6
  switch i64 %i.g, label %bb.d [
    i64 0, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
    i64 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i8 0, ptr %i.h, align 4
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i32, ptr %i.j, align 8, !alias.scope !200, !noundef !6 ; 2 uses
  %i.k = icmp eq i32 %.val2.i.i, -1
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef i32 @close(i32 noundef %.val2.i.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load i32, ptr %i.m, align 8, !alias.scope !200, !noundef !6 ; 2 uses
  %i.n = icmp eq i32 %.val.i.i, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef i32 @close(i32 noundef %.val.i.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i8 0, ptr %i.r, align 4
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #16
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !range !15, !noundef !6
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.c, align 8, !range !18, !noundef !6
  %i.d = tail call noundef i32 @close(i32 noundef %.val) #18 ; 0 uses
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i32, ptr %i.f, align 8, !alias.scope !205, !noundef !6 ; 2 uses
  %i.g = icmp eq i32 %.val2.i.i, -1
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef i32 @close(i32 noundef %.val2.i.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load i32, ptr %i.i, align 8, !alias.scope !205, !noundef !6 ; 2 uses
  %i.j = icmp eq i32 %.val.i.i, -1
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef i32 @close(i32 noundef %.val.i.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  resume { ptr, i32 } %i.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.f, %bb.g
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12common_state11CommonStateECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !214 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !214, !nonnull !6, !align !19, !noundef !6 ; 5 uses
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !214 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.e, !noalias !214

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !invariant.load !6, !noalias !214 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !6, !noalias !214
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #18, !noalias !214
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !6, !noalias !214 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !6, !noalias !214
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #18, !noalias !214
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !214
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !214, !nonnull !6, !align !19, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_EECsc044841uM34_23unbuffered_async_client(ptr %.val4.i, ptr nonnull %.val5.i) #16
          to label %.body unwind label %bb.l, !noalias !214

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.q, align 8, !alias.scope !214 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !214, !nonnull !6, !align !19, !noundef !6 ; 5 uses
  %i.s = load ptr, ptr %.val3.i, align 8, !invariant.load !6, !noalias !214 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.s, null
  br i1 %.not.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void %i.s(ptr noundef nonnull %.val2.i)
          to label %bb.h unwind label %bb.j, !noalias !214

bb.h:                                             ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !6, !noalias !214 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !11, !invariant.load !6, !noalias !214
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #18, !noalias !214
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !invariant.load !6, !noalias !214 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !11, !invariant.load !6, !noalias !214
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #18, !noalias !214
  br label %.body

bb.l:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !214
  unreachable

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %.body.i ], [ %i.y, %bb.j ], [ %i.y, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 728
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #16
          to label %.body10 unwind label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !215, !noundef !6
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body10 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.p

.body10:                                          ; preds = %bb.p, %bb.n, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.am, %bb.p ], [ %i.aj, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 752
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #16
          to label %.body12 unwind label %bb.ae

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !alias.scope !216, !noundef !6
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body12 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.t

.body12:                                          ; preds = %bb.t, %bb.r, %.body10
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body10 ], [ %i.at, %bb.t ], [ %i.aq, %bb.r ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.as) #16
          to label %.body15 unwind label %bb.ae

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %.body15 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.w

.body15:                                          ; preds = %bb.w, %bb.u, %.body12
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body12 ], [ %i.ay, %bb.w ], [ %i.av, %bb.u ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ax) #16
          to label %.body20 unwind label %bb.ae

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body15

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19 unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %.body20 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit23 unwind label %bb.z

.body20:                                          ; preds = %bb.z, %bb.x, %.body15
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body15 ], [ %i.bd, %bb.z ], [ %i.ba, %bb.x ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 776
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #16
          to label %.body24 unwind label %bb.ae

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit23: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !range !5, !alias.scope !217, !noundef !6
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit23
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body24 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.ad

.body24:                                          ; preds = %bb.ad, %bb.ab, %.body20
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body20 ], [ %i.bk, %bb.ad ], [ %i.bh, %bb.ab ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic4QuicECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(496) %i.bj) #16
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i
end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsc044841uM34_23unbuffered_async_client:bb.a
bb.bd:                                            ; preds = %bb.au
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !286, !nonnull !6, !noundef !6
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !286
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bt) #17
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.bf:                                            ; preds = %bb.ax
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

.body.i6:                                         ; preds = %bb.bf, %bb.aw
  %eh.lpad-body.i7 = phi { ptr, i32 } [ %i.bx, %bb.bf ], [ %i.bo, %bb.aw ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #16
          to label %common.resume unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i8: ; preds = %bb.ax
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsc044841uM34_23unbuffered_async_client.exit.i9 unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i8
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsc044841uM34_23unbuffered_async_client.exit.i9: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i8
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.bi:                                            ; preds = %.body3.i1, %.body.i6
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bj:                                            ; preds = %bb.bb
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i1

.body3.i1:                                        ; preds = %bb.bj, %bb.ba
  %eh.lpad-body4.i2 = phi { ptr, i32 } [ %i.cd, %bb.bj ], [ %i.br, %bb.ba ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #16
          to label %common.resume unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit5.i5: ; preds = %bb.bb
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit7.i unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit5.i5
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit7.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit5.i5
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.bm:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.bm
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !alias.scope !289, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsc044841uM34_23unbuffered_async_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.b = load i8, ptr %i.a, align 8, !range !9, !alias.scope !299, !noundef !6
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !299 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !299, !nonnull !6, !align !19, !noundef !6 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !299 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !299

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !6, !noalias !299 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !11, !invariant.load !6, !noalias !299
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #18, !noalias !299
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !6, !noalias !299 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !6, !noalias !299
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #18, !noalias !299
  br label %.body.i.i

bb.h:                                             ; preds = %bb.a
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %bb.g ], [ %i.l, %bb.f ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12common_state11CommonStateECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %0) #16
          to label %bb.j unwind label %bb.o

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.h, %bb.e, %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12common_state11CommonStateECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %0)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.t, %bb.k ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake17HandshakeDeframerECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #16
          to label %common.resume.i.i unwind label %bb.o

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls4conn26UnbufferedConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %common.resume.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %.pn.i.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.o:                                             ; preds = %bb.j, %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls4conn26UnbufferedConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !310, !nonnull !6, !noundef !6
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !310
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #17
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !313, !nonnull !6, !noundef !6
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !313
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #17
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake17HandshakeDeframerECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i32, ptr %i.b, align 8, !alias.scope !316, !noundef !6 ; 2 uses
  %i.c = icmp eq i32 %.val2.i, -1
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @close(i32 noundef %.val2.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.e, align 8, !alias.scope !316, !noundef !6 ; 2 uses
  %i.f = icmp eq i32 %.val.i, -1
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @close(i32 noundef %.val.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %bb.g unwind label %bb.f

end_hunk_2
begin_hunk_3_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client:bb.a
bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !341, !nonnull !6, !noundef !6
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !341
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !344, !nonnull !6, !noundef !6
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !344
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !347, !nonnull !6, !noundef !6
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !347
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #17
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !15, !noundef !6
  switch i8 %i.d, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.d
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !6, !align !19, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 4 uses
  %i.n = icmp ugt i64 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.e, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #19
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.i, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.e, ptr %i.q, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.p, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.o, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #19
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #19
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.r       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.p, %bb.j
  %storemerge = phi i8 [ 1, %bb.p ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %i.v = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = trunc nuw i64 %i.t to i1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.v)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.k
  store i64 %i.w, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @279, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ad = add i64 %i.ac, %i.w
  store i64 %i.ad, ptr %i.ab, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.sroa.3.0 = phi ptr [ %i.ai, %bb.s ], [ undef, %bb.o ]
  %.sroa.05.0 = phi ptr [ %i.ah, %bb.s ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.af, align 8
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.r, %bb.n
  %.pn12.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.ag, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn12.pn

bb.r:                                             ; preds = %bb.c, %bb.l, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.l
  %i.ah = extractvalue { ptr, ptr } %i.y, 0       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = extractvalue { ptr, ptr } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !15, !noundef !6
  switch i8 %i.c, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #19
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x ptr> %i.d, ptr %i.k, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #19
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #19
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.p       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %common.ret, label %bb.i

common.ret:                                       ; preds = %bb.h, %bb.n
  %storemerge18 = phi i64 [ 0, %bb.n ], [ 1, %bb.h ]
  %storemerge = phi i8 [ 1, %bb.n ], [ 3, %bb.h ]
  store i64 %storemerge18, ptr %0, align 8
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.p)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.k:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1j_NtCsj6eKBz9Db1c_4core3fmtQjNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @282, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !6, !align !19, !noundef !6
  store i64 0, ptr %i.t, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.sroa.3.0 = phi ptr [ %i.y, %bb.q ], [ undef, %bb.m ]
  %.sroa.04.0 = phi ptr [ %i.x, %bb.q ], [ null, %bb.m ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.v, align 8
  br label %common.ret

bb.o:                                             ; preds = %bb.p, %bb.l
  %.pn11.pn = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.w, %bb.p ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11.pn

bb.p:                                             ; preds = %bb.c, %bb.j, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onINtNtB9_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00ENtNtB7_6future6Future4pollB3n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.c = load ptr, ptr %.val, align 8, !noalias !352, !nonnull !6, !align !19, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NtNtCskruEhpekJ3V_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !351
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !352
  %i.e = load ptr, ptr %.val1, align 8, !noalias !352, !nonnull !6, !align !19, !noundef !6
  call void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !351
  %i.f = load i64, ptr %i.a, align 8, !range !20, !noalias !352, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !351
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !352
  store i64 2, ptr %0, align 8, !alias.scope !351
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %0, align 8, !alias.scope !351
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !noalias !352
  store <2 x ptr> %i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !352
  br label %_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit

_RNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00B2H_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.517.i.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.915.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.958.i.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.955.i.i.i.i = alloca [16 x i8], align 8  ; 11 uses
  %i.k = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.6.i.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 14 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 15 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 11 uses
  %i.ai = alloca [48 x i8], align 8               ; 15 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [56 x i8], align 8               ; 7 uses
  %i.an = alloca [72 x i8], align 8               ; 6 uses
  %i.ao = alloca [64 x i8], align 8               ; 23 uses
  %.sroa.6258.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.10255.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 13 uses
  %i.au = alloca [976 x i8], align 8              ; 10 uses
  %.sroa.8.i.i.i = alloca [64 x i8], align 8      ; 7 uses
  %i.av = alloca [360 x i8], align 8              ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 5 uses
  %i.ay = alloca [168 x i8], align 8              ; 5 uses
  %i.az = alloca [184 x i8], align 8              ; 5 uses
  %i.ba = alloca [344 x i8], align 8              ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !19, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.bd, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.be = load ptr, ptr %.val, align 8, !noalias !495, !nonnull !6, !align !19, !noundef !6
  %i.bf = tail call noundef zeroext i1 @_RNvXsa_NtNtCskruEhpekJ3V_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !494
  br i1 %i.bf, label %bb.b, label %bb.lr

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.bg = load ptr, ptr %.val1, align 8, !noalias !495, !nonnull !6, !align !19, !noundef !6 ; 194 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1393 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !range !15, !noalias !496, !noundef !6
  switch i8 %i.bi, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
  ]

default.unreachable:                              ; preds = %bb.ft, %bb.dq, %bb.dl, %bb.cd, %bb.bx, %bb.be, %bb.z, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1392 ; 3 uses
  store i8 0, ptr %i.bj, align 8, !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !497
  invoke void @_RNvXsw_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEINtNtCsj6eKBz9Db1c_4core7convert4FromRSBF_E4fromCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @247, i64 noundef 121)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.d, !noalias !498

bb.d:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !497
  br label %bb.w

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.c
  store i8 1, ptr %i.bj, align 8, !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !497
  store ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr %i.ax, align 8, !noalias !497
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig30builder_with_protocol_versions(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef 1)
          to label %bb.f unwind label %bb.e, !noalias !498

bb.e:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.f:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !497
  store i8 0, ptr %i.bj, align 8, !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !497
  invoke void @_RINvMs_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtBM_13WantsVerifierE22with_root_certificatesNtNtNtB9_6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.h unwind label %bb.g, !noalias !498

bb.g:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !497
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !497
  invoke void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtB5_15WantsClientCertE19with_no_client_auth(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(address) dereferenceable(344) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.az)
          to label %bb.k unwind label %bb.j, !noalias !498

bb.i:                                             ; preds = %bb.v, %bb.j
  %.pn6.i.i = phi { ptr, i32 } [ %i.bn, %bb.j ], [ %.pn.i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !497
  br label %.body.i.i

bb.j:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !499
  store i64 1, ptr %i.av, align 8, !noalias !499
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 1, ptr %i.bo, align 8, !noalias !499
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(344) %i.ba, i64 344, i1 false), !noalias !497
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !500
  %i.bq = call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef 8) #18, !noalias !500 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.l, label %bb.p, !prof !23

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #20
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !501

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_:bb.a

bb.y:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #19, !noalias !498
  unreachable

bb.z:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !497
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1221 ; 18 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !17, !noalias !506
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6258.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !497
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
    i8 7, label %bb.af
    i8 8, label %bb.ag
    i8 9, label %bb.ah
    i8 10, label %bb.ai
  ]

._crit_edge.i:                                    ; preds = %bb.z
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1200
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !506
  %.phi.trans.insert71.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1080
  %.pre72.i = load ptr, ptr %.phi.trans.insert71.i, align 8, !noalias !506
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1088
  %.pre74.i = load i64, ptr %.phi.trans.insert73.i, align 8, !noalias !506
  %.phi.trans.insert75.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1208
  %.pre76.i = load ptr, ptr %.phi.trans.insert75.i, align 8, !noalias !506
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i, %.thread.i.i
  %i.cm = phi ptr [ %i.cd, %.thread.i.i ], [ %.pre76.i, %._crit_edge.i ]
  %i.cn = phi i64 [ %.val19.i.i, %.thread.i.i ], [ %.pre74.i, %._crit_edge.i ]
  %i.co = phi ptr [ %.val.i.i, %.thread.i.i ], [ %.pre72.i, %._crit_edge.i ]
  %i.cp = phi ptr [ %i.bg, %.thread.i.i ], [ %.pre.i, %._crit_edge.i ]
  %i.cq = phi ptr [ %.sroa.14.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 4 uses
  %i.cr = phi ptr [ %i.ci, %.thread.i.i ], [ %i.cl, %._crit_edge.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 1220
  store i8 0, ptr %i.cs, align 4, !noalias !506
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store ptr %i.co, ptr %i.ct, align 8, !noalias !506
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store i64 %i.cn, ptr %i.cu, align 8, !noalias !506
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bg, i64 1096
  store ptr %i.cm, ptr %i.cv, align 8, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !507
  %.val146.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !508, !nonnull !6, !noundef !6 ; 2 uses
  %i.cw = atomicrmw add ptr %.val146.i.i.i, i64 1 monotonic, align 8, !noalias !508
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ab, label %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.hw

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ie

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.jj

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.jp

bb.ag:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ip

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.iz

bb.ai:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.en

_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.aa
  store ptr %.val146.i.i.i, ptr %i.at, align 8, !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !507
  invoke void @_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 11)
          to label %_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.aj, !noalias !508

bb.aj:                                            ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !507
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.cz = load ptr, ptr %i.at, align 8, !alias.scope !511, !noalias !507, !nonnull !6, !noundef !6
  %i.da = atomicrmw add ptr %i.cz, i64 -1 release, align 8, !noalias !512
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.ba, !noalias !508

_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %i.dc = load i8, ptr %i.as, align 8, !range !7, !alias.scope !513, !noalias !507, !noundef !6 ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 2
  br i1 %i.dd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !507
  %i.de = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorE4fromCsc044841uM34_23unbuffered_async_client()
          to label %bb.av unwind label %bb.ay, !noalias !508 ; 2 uses

bb.am:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %.sroa.8236.0..sroa_idx237.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.8236.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8236.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8236.0..sroa_idx237.i.i.i, i64 31, i1 false), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !507
  store i8 %i.dc, ptr %i.ar, align 8, !noalias !507
  %i.df = load ptr, ptr %i.at, align 8, !noalias !507, !nonnull !6, !noundef !6
  invoke void @_RNvMs3_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB5_26UnbufferedClientConnection3new(ptr noalias nofree noundef nonnull sret([976 x i8]) align 8 captures(address) dereferenceable(976) %i.au, ptr noundef nonnull %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ar)
          to label %bb.an unwind label %bb.ax, !noalias !508

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !507
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.dg = load i64, ptr %i.au, align 8, !range !515, !alias.scope !516, !noalias !507, !noundef !6 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i64 64, i1 false), !alias.scope !517, !noalias !507
  br i1 %i.dh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, i64 64, i1 false), !noalias !507
  %i.dj = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.as unwind label %bb.ar, !noalias !508 ; 2 uses

bb.ap:                                            ; preds = %bb.an
  %.sroa.10.0..sroa_idx233.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(904) %.sroa.10.0..sroa_idx233.i.i.i, i64 904, i1 false), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !507
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, i64 64, i1 false), !noalias !506
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store i64 %i.dg, ptr %i.dk, align 8, !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !507
  store ptr @251, ptr %i.ap, align 8, !noalias !507
  %.sroa.5250.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.5250.0..sroa_idx.i.i.i, align 8, !noalias !507
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr @252, ptr %i.dl, align 8, !noalias !507
  %.sroa.5252.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5252.0..sroa_idx.i.i.i, align 8, !noalias !507
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @253, ptr noundef nonnull %i.ap)
          to label %.thread.i.i.i unwind label %bb.aq, !noalias !508

bb.aq:                                            ; preds = %bb.ap
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !507
  br label %.body219.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !507
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !507
  %.sroa.8248.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248 ; 2 uses
  store i8 0, ptr %.sroa.8248.0..sroa_idx.i.i.i, align 8, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10255.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.bf

bb.ar:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.ao
  %i.dp = extractvalue { ptr, ptr } %i.dj, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dq = extractvalue { ptr, ptr } %i.dj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !518
  br label %bb.at

bb.at:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i, %bb.as
  %.sroa.031.0.pre-phi.i.i.i = phi ptr [ %i.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.dp, %bb.as ]
  %.sroa.16.0.pre-phi.i.i.i = phi ptr [ %i.ds, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.dq, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.kw

bb.au:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i, %bb.ar
  %.pn135.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i ], [ %i.do, %bb.ar ], [ %i.cy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.bb

bb.av:                                            ; preds = %bb.al
  %i.dr = extractvalue { ptr, ptr } %i.de, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.ds = extractvalue { ptr, ptr } %i.de, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.dt = load ptr, ptr %i.at, align 8, !alias.scope !521, !noalias !507, !nonnull !6, !noundef !6
  %i.du = atomicrmw add ptr %i.dt, i64 -1 release, align 8, !noalias !522
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.aw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i unwind label %bb.ax, !noalias !508

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn135.i.i.i = phi { ptr, i32 } [ %i.dw, %bb.ax ], [ %i.dx, %bb.ay ], [ %i.dx, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !507
  br label %bb.au

bb.ax:                                            ; preds = %bb.aw, %bb.am
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !507
  br label %bb.at

bb.ay:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.dy = load ptr, ptr %i.at, align 8, !alias.scope !525, !noalias !507, !nonnull !6, !noundef !6
  %i.dz = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !526
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i unwind label %bb.ba, !noalias !508

bb.ba:                                            ; preds = %bb.ku, %bb.ks, %bb.jy, %bb.hf, %.loopexit.split-lp416.i.i.i, %bb.fs, %.body219.i.i.i, %.body169.i.i.i, %bb.az, %bb.ak
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !508
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !507
  br label %bb.au

bb.bb:                                            ; preds = %bb.kj, %.body219.i.i.i, %bb.au
  %i.ec = phi ptr [ %i.cq, %bb.au ], [ %i.zm, %bb.kj ], [ %i.na, %.body219.i.i.i ]
  %i.ed = phi ptr [ %i.cr, %bb.au ], [ %i.zn, %bb.kj ], [ %i.nb, %.body219.i.i.i ]
  %.pn135.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.pn.pn.i.i.i, %bb.au ], [ %i.zo, %bb.kj ], [ %.pn128.pn.i.i.i, %.body219.i.i.i ]
  store i8 2, ptr %i.ec, align 1, !noalias !506
  br label %.body20.i.i

bb.bc:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #19
          to label %.noexc22.i.i unwind label %bb.kv, !noalias !498

.noexc22.i.i:                                     ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #19
          to label %.noexc23.i.i unwind label %bb.kv, !noalias !498

.noexc23.i.i:                                     ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.z
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248 ; 9 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !13, !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10255.i.i.i)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %bb.bf
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bg
    i8 4, label %bb.bx
  ]

bb.bf:                                            ; preds = %bb.be, %.thread.i.i.i
  %i.ef = phi ptr [ %i.cq, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %bb.be ] ; 2 uses
  %i.eg = phi ptr [ %i.cr, %.thread.i.i.i ], [ %i.cl, %bb.be ] ; 2 uses
  %i.eh = phi ptr [ %.sroa.8248.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.be ] ; 2 uses
  %i.ei = phi ptr [ %i.dn, %.thread.i.i.i ], [ %i.ee, %bb.be ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bg, i64 1250
  store i8 0, ptr %i.ej, align 2, !noalias !527
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bg, i64 1249
  store i8 0, ptr %i.ek, align 1, !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !528
  invoke void @_RINvNtNtCskruEhpekJ3V_5tokio3net4addr15to_socket_addrsNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bi unwind label %bb.bh, !noalias !529

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !528
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !528
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bi:                                            ; preds = %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %i.bg, i64 1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !528
  br label %bb.bl

bb.bj:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
          to label %.noexc167.i.i.i unwind label %bb.ef, !noalias !508

.noexc167.i.i.i:                                  ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
          to label %.noexc168.i.i.i unwind label %bb.ef, !noalias !508

.noexc168.i.i.i:                                  ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bi, %bb.bg
  %i.en = phi ptr [ %i.ef, %bb.bi ], [ %.phi.trans.insert.i.i, %bb.bg ] ; 6 uses
  %i.eo = phi ptr [ %i.eg, %bb.bi ], [ %i.cl, %bb.bg ] ; 5 uses
  %i.ep = phi ptr [ %i.eh, %bb.bi ], [ %.phi.trans.insert.i.i.i, %bb.bg ] ; 6 uses
  %i.eq = phi ptr [ %i.ei, %bb.bi ], [ %i.ee, %bb.bg ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !528
  %i.er = getelementptr inbounds nuw i8, ptr %i.bg, i64 1256 ; 4 uses
  invoke void @_RNvXNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.er, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bo unwind label %bb.bm, !noalias !529

bb.bm:                                            ; preds = %bb.bl
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !528
  %i.et = load i16, ptr %i.er, align 8, !range !14, !alias.scope !530, !noalias !527, !noundef !6
  %.not.i.i.i.i.i.i = icmp eq i16 %i.et, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 1264
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.bw, !noalias !529

bb.bo:                                            ; preds = %bb.bl
  %i.ev = load i32, ptr %i.l, align 8, !range !531, !noalias !528, !noundef !6 ; 3 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !528
  br label %bb.eg

bb.bq:                                            ; preds = %bb.bo
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.3.0.copyload.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !noalias !528
  %.sroa.4.0..sroa_idx.i166.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i166.i.i.i, align 8, !noalias !528 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !528
  %i.ex = load i16, ptr %i.er, align 8, !range !14, !alias.scope !532, !noalias !527, !noundef !6
  %.not.i.i15.i.i.i.i = icmp eq i16 %i.ex, -1
  br i1 %.not.i.i15.i.i.i.i, label %bb.br, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bg, i64 1264
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i unwind label %bb.bu, !noalias !529

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i: ; preds = %bb.br, %bb.bq
  %i.ez = icmp eq i32 %i.ev, 2
  br i1 %i.ez, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i
  %.sroa.648.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, i64 24, i1 false), !noalias !528
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bg, i64 1250
  store i32 %i.ev, ptr %i.n, align 8, !noalias !528
  %.sroa.447.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 4, !noalias !528
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
end_hunk_4
begin_hunk_5_@_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_:bb.a
  %i.ko = load i32, ptr %i.n, align 8, !range !16, !noalias !528
  %i.kp = icmp ne i32 %i.ko, 0
  %or.cond.not.i.i.i.i = select i1 %i.kn, i1 %i.kp, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.ee, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bg, i64 1249
  store i8 0, ptr %i.kr, align 1, !noalias !527
  br label %bb.eh

bb.dv:                                            ; preds = %bb.dn
  %i.ks = landingpad { ptr, i32 }
          cleanup
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bg, i64 1249
  store i8 1, ptr %i.kt, align 1, !noalias !527
  store ptr %.sroa.3.0.i71.i.i.i.i, ptr %i.jk, align 8, !noalias !527
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.dk
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bg, i64 1249
  store i8 1, ptr %i.ku, align 1, !noalias !527
  store ptr %.sroa.3.0.i71.i.i.i.i, ptr %i.jk, align 8, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !528
  br label %bb.bt

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.dx, %bb.dv, %bb.dh, %.body.i.i.i.i, %.body.thread.i.i.i.i
  %i.kv = phi ptr [ %i.fd, %bb.dx ], [ %i.jg, %bb.dv ], [ %.phi.trans.insert.i.i, %bb.dh ], [ %.phi.trans.insert.i.i, %.body.i.i.i.i ], [ %i.gd, %.body.thread.i.i.i.i ] ; 2 uses
  %i.kw = phi ptr [ %i.fe, %bb.dx ], [ %i.jh, %bb.dv ], [ %i.cl, %bb.dh ], [ %i.cl, %.body.i.i.i.i ], [ %i.ge, %.body.thread.i.i.i.i ] ; 2 uses
  %i.kx = phi ptr [ %i.ff, %bb.dx ], [ %i.ji, %bb.dv ], [ %.phi.trans.insert.i.i.i, %bb.dh ], [ %.phi.trans.insert.i.i.i, %.body.i.i.i.i ], [ %i.gf, %.body.thread.i.i.i.i ] ; 2 uses
  %i.ky = phi ptr [ %i.fg, %bb.dx ], [ %i.jj, %bb.dv ], [ %i.ee, %bb.dh ], [ %i.ee, %.body.i.i.i.i ], [ %i.gg, %.body.thread.i.i.i.i ] ; 2 uses
  %.pn4.pn.i.i.i.i = phi { ptr, i32 } [ %i.ld, %bb.dx ], [ %i.ks, %bb.dv ], [ %i.jd, %bb.dh ], [ %i.jd, %.body.i.i.i.i ], [ %.pn4.pn.i.i.i.i.i, %.body.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !528
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bg, i64 1264
  %i.la = load i32, ptr %i.kz, align 8, !range !16, !alias.scope !551, !noalias !527, !noundef !6
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bg, i64 1272
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.lc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i unwind label %bb.bw, !noalias !529

bb.dx:                                            ; preds = %bb.bt
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.dy:                                            ; preds = %bb.bt
  %i.le = load i16, ptr %i.k, align 4, !range !552, !noalias !528, !noundef !6
  %.not.i165.i.i.i = icmp eq i16 %i.le, 2
  br i1 %.not.i165.i.i.i, label %bb.dz, label %.thread.i.i.i.i

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !528
  %i.lf = load i32, ptr %i.fh, align 8, !range !16, !alias.scope !553, !noalias !527, !noundef !6
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1272
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.lh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i unwind label %bb.ec, !noalias !529

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %i.li = getelementptr inbounds nuw i8, ptr %i.bg, i64 1249 ; 2 uses
  store i8 0, ptr %i.li, align 1, !noalias !527
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1256
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !527, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i.i, label %bb.eb, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.eb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i
  %i.ll = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32) #17
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.ec, !noalias !529

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dp
  %i.lm = phi ptr [ %i.iv, %bb.dp ], [ %i.fd, %bb.ea ], [ %i.fd, %bb.eb ]
  %i.ln = phi ptr [ %i.iw, %bb.dp ], [ %i.fe, %bb.ea ], [ %i.fe, %bb.eb ]
  %i.lo = phi ptr [ %i.ix, %bb.dp ], [ %i.ff, %bb.ea ], [ %i.ff, %bb.eb ]
  %i.lp = phi ptr [ %i.iy, %bb.dp ], [ %i.fg, %bb.ea ], [ %i.fg, %bb.eb ]
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.eb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.lk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i ], [ %i.ll, %bb.eb ]
  store i8 0, ptr %i.li, align 1, !noalias !527
  br label %bb.eh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i: ; preds = %bb.ec, %bb.dw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.lr = phi ptr [ %i.lm, %bb.ec ], [ %i.kv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.kv, %bb.dw ] ; 2 uses
  %i.ls = phi ptr [ %i.ln, %bb.ec ], [ %i.kw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.kw, %bb.dw ] ; 2 uses
  %i.lt = phi ptr [ %i.lo, %bb.ec ], [ %i.kx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.kx, %bb.dw ] ; 2 uses
  %i.lu = phi ptr [ %i.lp, %bb.ec ], [ %i.ky, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.ky, %bb.dw ] ; 2 uses
  %.pn4.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.lq, %bb.ec ], [ %.pn4.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.pn4.pn.i.i.i.i, %bb.dw ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bg, i64 1249
  %i.lw = load i8, ptr %i.lv, align 1, !range !22, !noalias !527, !noundef !6
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.ed, label %bb.dt

.thread.i.i.i.i:                                  ; preds = %bb.dy
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bg, i64 1304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ly, ptr noundef nonnull align 4 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !527
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1384 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  br label %bb.by

bb.ed:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bg, i64 1256
  %.val.i.i.i.i = load ptr, ptr %i.lz, align 8, !noalias !527, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr %.val.i.i.i.i) #16
          to label %bb.dt unwind label %bb.bw, !noalias !529

bb.ee:                                            ; preds = %bb.dt
  %i.ma = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ma)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.bw, !noalias !529

bb.ef:                                            ; preds = %bb.bk, %bb.bj
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i.i.i

.body169.i.i.i:                                   ; preds = %bb.ef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i
  %i.mc = phi ptr [ %.phi.trans.insert.i.i, %bb.ef ], [ %i.fk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ]
  %i.md = phi ptr [ %i.cl, %bb.ef ], [ %i.fl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ]
  %i.me = phi ptr [ %i.ee, %bb.ef ], [ %i.fn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ]
  %eh.lpad-body170.i.i.i = phi { ptr, i32 } [ %i.mb, %bb.ef ], [ %.pn10.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10255.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.me) #16
          to label %.body219.i.i.i unwind label %bb.ba, !noalias !508

bb.eg:                                            ; preds = %bb.di, %bb.bp
  %i.mf = phi ptr [ %i.en, %bb.bp ], [ %i.he, %bb.di ]
  %i.mg = phi ptr [ %i.ep, %bb.bp ], [ %i.hg, %bb.di ]
  %.sink.i.ph.i.i.i = phi i8 [ 3, %bb.bp ], [ 4, %bb.di ]
  store i8 %.sink.i.ph.i.i.i, ptr %i.mg, align 8, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10255.i.i.i)
  br label %bb.ls

bb.eh:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i, %bb.bv
  %i.mh = phi ptr [ %i.fd, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.en, %bb.bv ], [ %i.iv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 4 uses
  %i.mi = phi ptr [ %i.fe, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.eo, %bb.bv ], [ %i.iw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 5 uses
  %i.mj = phi ptr [ %i.ff, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.ep, %bb.bv ], [ %i.ix, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ]
  %i.mk = phi ptr [ %i.fg, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %i.eq, %bb.bv ], [ %i.iy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ]
  %.sroa.056.1.i.i.i.i = phi i64 [ 2, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ 2, %bb.bv ], [ %.sroa.024.0.i28.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 2 uses
  %.sroa.557.1.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.bv ], [ %.sroa.626.0.i29.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bg, i64 1250
  store i8 0, ptr %i.ml, align 2, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10255.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, i64 16, i1 false), !noalias !554
  store i8 1, ptr %i.mj, align 8, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6258.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10255.i.i.i, i64 16, i1 false), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10255.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.mk)
          to label %bb.ei unwind label %bb.ki, !noalias !508

bb.ei:                                            ; preds = %bb.eh
  %i.mm = icmp eq i64 %.sroa.056.1.i.i.i.i, 2
  br i1 %i.mm, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.1.i.i.i.i) ]
  %i.mn = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %.sroa.557.1.i.i.i.i)
          to label %bb.em unwind label %bb.ki, !noalias !508 ; 2 uses

bb.ek:                                            ; preds = %bb.ei
  %.sroa.5261.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5261.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6258.i.i.i, i64 16, i1 false), !noalias !506
  store i64 %.sroa.056.1.i.i.i.i, ptr %i.mi, align 8, !noalias !506
  %.sroa.4260.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  store ptr %.sroa.557.1.i.i.i.i, ptr %.sroa.4260.0..sroa_idx.i.i.i, align 8, !noalias !506
  %i.mo = getelementptr inbounds nuw i8, ptr %i.bg, i64 1104
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mo, i8 0, i64 24, i1 false), !noalias !506
  store i32 0, ptr %i.mp, align 8, !noalias !506
  br label %bb.el

bb.el:                                            ; preds = %bb.fe, %bb.ek
  %i.mq = phi ptr [ %i.nn, %bb.fe ], [ %i.mh, %bb.ek ] ; 26 uses
  %i.mr = phi ptr [ %i.no, %bb.fe ], [ %i.mi, %bb.ek ] ; 35 uses
  %i.ms = phi i8 [ %.pre493.i.i.i, %bb.fe ], [ 0, %bb.ek ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bg, i64 1217
  %i.mu = trunc nuw i8 %i.ms to i1
  br i1 %i.mu, label %bb.fh, label %bb.fi

bb.em:                                            ; preds = %bb.ej
  %i.mv = extractvalue { ptr, ptr } %i.mn, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mv) ]
  %i.mw = extractvalue { ptr, ptr } %i.mn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mw) ]
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i, %bb.em
  %i.mx = phi ptr [ %i.ry, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i ], [ %i.mh, %bb.em ] ; 2 uses
  %i.my = phi ptr [ %i.rz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i ], [ %i.mi, %bb.em ] ; 2 uses
  %.sroa.031.1.pre-phi.i.i.i = phi ptr [ %.pre495.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i ], [ %i.mv, %bb.em ]
  %.sroa.16.1.pre-phi.i.i.i = phi ptr [ %.pre494.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i ], [ %i.mw, %bb.em ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.mz)
          to label %bb.kw unwind label %bb.kj, !noalias !508

.body219.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i, %bb.ki, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.jy, %.body169.i.i.i, %bb.aq
  %i.na = phi ptr [ %i.ry, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i ], [ %i.ym, %bb.jy ], [ %i.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.zi, %bb.ki ], [ %i.mc, %.body169.i.i.i ], [ %i.cq, %bb.aq ]
  %i.nb = phi ptr [ %i.rz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i ], [ %i.yn, %bb.jy ], [ %i.mr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.zj, %bb.ki ], [ %i.md, %.body169.i.i.i ], [ %i.cr, %bb.aq ]
  %.pn128.pn.i.i.i = phi { ptr, i32 } [ %i.zs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i ], [ %.pn126.i.i.i, %bb.jy ], [ %i.yz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.zk, %bb.ki ], [ %eh.lpad-body170.i.i.i, %.body169.i.i.i ], [ %i.dm, %bb.aq ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.nc) #16
          to label %bb.bb unwind label %bb.ba, !noalias !508

bb.en:                                            ; preds = %bb.jh, %bb.ai
  %i.nd = phi ptr [ %i.mq, %bb.jh ], [ %.phi.trans.insert.i.i, %bb.ai ] ; 4 uses
  %i.ne = phi ptr [ %i.mr, %bb.jh ], [ %i.cl, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !507
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.nf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ep unwind label %bb.eo, !noalias !508

bb.eo:                                            ; preds = %bb.en
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !507
  br label %bb.he

bb.ep:                                            ; preds = %bb.en
  %i.nh = load i64, ptr %i.t, align 8, !range !20, !noalias !507, !noundef !6
  %i.ni = trunc nuw i64 %i.nh to i1
  br i1 %i.ni, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.er:                                            ; preds = %bb.ep
  %i.nj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !507
  %.not.i172.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i172.i.i.i, label %bb.es, label %bb.kk

bb.es:                                            ; preds = %bb.jt, %bb.je, %bb.it, %bb.ii, %bb.ib, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %bb.fv, %bb.ft, %bb.er
  %i.nn = phi ptr [ %i.xv, %bb.jt ], [ %i.wj, %bb.je ], [ %i.vo, %bb.it ], [ %i.uj, %bb.ii ], [ %i.tr, %bb.ib ], [ %i.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.mq, %bb.fv ], [ %i.mq, %bb.ft ], [ %i.nd, %bb.er ] ; 6 uses
  %i.no = phi ptr [ %i.xw, %bb.jt ], [ %i.wk, %bb.je ], [ %i.vp, %bb.it ], [ %i.uk, %bb.ii ], [ %i.ts, %bb.ib ], [ %i.mr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.mr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.mr, %bb.fv ], [ %i.mr, %bb.ft ], [ %i.ne, %bb.er ] ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.bg, i64 1136 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !range !12, !noalias !506, !noundef !6
  switch i64 %i.nq, label %bb.et [
    i64 0, label %bb.eu
    i64 4, label %bb.eu
    i64 5, label %bb.eu
    i64 7, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.np)
          to label %bb.eu unwind label %bb.fa, !noalias !508

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.es, %bb.es, %bb.es
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bg, i64 1128 ; 3 uses
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !506, !noundef !6 ; 3 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bg, i64 1104 ; 3 uses
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !506, !noundef !6 ; 2 uses
  %.not100.i.i.i = icmp ugt i64 %i.ns, %i.nv
  br i1 %.not100.i.i.i, label %bb.ex, label %bb.ey, !prof !23

bb.ew:                                            ; preds = %bb.fd, %bb.eu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bg, i64 1120 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !506, !noundef !6
  %i.ny = add i64 %i.nx, 1                        ; 2 uses
  store i64 %i.ny, ptr %i.nw, align 8, !noalias !506
  %i.nz = icmp ult i64 %i.ny, 20
  br i1 %i.nz, label %bb.fe, label %bb.ff

bb.ex:                                            ; preds = %bb.ev
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #20
          to label %bb.ez unwind label %bb.fa, !noalias !508

bb.ey:                                            ; preds = %bb.ev
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !506, !nonnull !6, !noundef !6 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.od = load i64, ptr %i.oc, align 8, !noalias !506, !noundef !6
  %i.oe = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client(i64 noundef range(i64 1, 0) %i.ns, i64 noundef range(i64 1, 0) %i.nv, i64 noundef range(i64 0, -9223372036854775808) %i.od, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %bb.fb unwind label %bb.fa, !noalias !508 ; 2 uses

bb.ez:                                            ; preds = %bb.fx, %bb.ff, %bb.ex
  unreachable

bb.fa:                                            ; preds = %bb.kl, %bb.ey, %bb.ex, %bb.et
  %i.of = phi ptr [ %i.nn, %bb.et ], [ %i.ry, %bb.kl ], [ %i.nn, %bb.ey ], [ %i.nn, %bb.ex ]
  %i.og = phi ptr [ %i.no, %bb.et ], [ %i.rz, %bb.kl ], [ %i.no, %bb.ey ], [ %i.no, %bb.ex ]
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fb:                                            ; preds = %bb.ey
  %i.oi = extractvalue { i64, i64 } %i.oe, 1
  %i.oj = extractvalue { i64, i64 } %i.oe, 0      ; 2 uses
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oj
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr nonnull align 1 %i.ol, i64 %i.ok, i1 false), !alias.scope !555, !noalias !508
  %i.om = load i64, ptr %i.nr, align 8, !noalias !506, !noundef !6
  %i.on = load i64, ptr %i.nu, align 8, !noalias !506, !noundef !6
  %i.oo = sub i64 %i.on, %i.om
  store i64 %i.oo, ptr %i.nu, align 8, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !507
  store ptr %i.nr, ptr %i.s, align 8, !noalias !507
  %.sroa.5397.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5397.0..sroa_idx.i.i.i, align 8, !noalias !507
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @258, ptr noundef nonnull %i.s)
          to label %bb.fd unwind label %bb.fc, !noalias !508

bb.fc:                                            ; preds = %bb.fb
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !507
  br label %.body.i.i.i

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !507
  br label %bb.ew

bb.fe:                                            ; preds = %bb.ew
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1220
  store i8 0, ptr %i.oq, align 4, !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  %.phi.trans.insert492.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1217
  %.pre493.i.i.i = load i8, ptr %.phi.trans.insert492.i.i.i, align 1, !range !22, !noalias !506
  br label %bb.el

bb.ff:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !507
  store ptr @259, ptr %i.r, align 8, !noalias !507
  %.sroa.5399.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5399.0..sroa_idx.i.i.i, align 8, !noalias !507
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @260, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #20
          to label %bb.ez unwind label %bb.fg, !noalias !508

bb.fg:                                            ; preds = %bb.ff
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !507
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ks, %bb.jw, %bb.he, %bb.he, %bb.he, %bb.he, %bb.fo, %bb.fg, %bb.fc, %bb.fa
  %i.os = phi ptr [ %i.of, %bb.fa ], [ %i.nn, %bb.fg ], [ %i.nn, %bb.fc ], [ %i.mq, %bb.fo ], [ %i.sc, %bb.ks ], [ %i.sc, %bb.he ], [ %i.sc, %bb.he ], [ %i.sc, %bb.he ], [ %i.sc, %bb.he ], [ %i.mq, %bb.jw ]
  %i.ot = phi ptr [ %i.og, %bb.fa ], [ %i.no, %bb.fg ], [ %i.no, %bb.fc ], [ %i.mr, %bb.fo ], [ %i.sd, %bb.ks ], [ %i.sd, %bb.he ], [ %i.sd, %bb.he ], [ %i.sd, %bb.he ], [ %i.sd, %bb.he ], [ %i.mr, %bb.jw ]
  %.pn123.pn.i.i.i = phi { ptr, i32 } [ %i.oh, %bb.fa ], [ %i.or, %bb.fg ], [ %i.op, %bb.fc ], [ %i.pm, %bb.fo ], [ %.pn119.pn.i.i.i, %bb.ks ], [ %.pn119.pn.i.i.i, %bb.he ], [ %.pn119.pn.i.i.i, %bb.he ], [ %.pn119.pn.i.i.i, %bb.he ], [ %.pn119.pn.i.i.i, %bb.he ], [ %i.pq, %bb.jw ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.bg, i64 1220 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 4, !range !22, !noalias !506, !noundef !6
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.ku, label %bb.kt

bb.fh:                                            ; preds = %bb.el
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bg, i64 1218
  %i.oy = load i8, ptr %i.ox, align 2, !range !22, !noalias !506, !noundef !6
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.jx, label %.invoke550.i.i.i, !prof !556

bb.fi:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !507
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bg, i64 88 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 4 uses
  %i.pc = load i64, ptr %i.pb, align 8, !noalias !506, !noundef !6 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bg, i64 1104 ; 4 uses
  %i.pe = load i64, ptr %i.pd, align 8, !noalias !506, !noundef !6 ; 3 uses
  %.not.i.i176.i.i.i = icmp ugt i64 %i.pe, %i.pc
  br i1 %.not.i.i176.i.i.i, label %bb.fj, label %bb.fk, !prof !23

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.pe, i64 noundef range(i64 0, -9223372036854775808) %i.pc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #19
          to label %.noexc177.i.i.i unwind label %bb.fl, !noalias !508

.noexc177.i.i.i:                                  ; preds = %bb.fj
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %i.pf = load ptr, ptr %i.pa, align 8, !noalias !506, !nonnull !6, !noundef !6
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB4_26UnbufferedConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_tls_records(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %i.pg, ptr noalias nofree noundef nonnull %i.pf, i64 noundef %i.pe)
          to label %bb.fm unwind label %bb.fl, !noalias !508

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.ph = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_:bb.a
  %i.sc = phi ptr [ %i.mq, %.body180.i.i.i ], [ %i.mq, %.body203.i.i.i ], [ %i.tr, %bb.hx ], [ %i.mq, %bb.hq ], [ %i.mq, %bb.ht ], [ %i.uj, %bb.if ], [ %i.xg, %bb.jk ], [ %i.xv, %bb.jq ], [ %i.nd, %bb.eo ], [ %i.vo, %bb.iq ], [ %i.wj, %bb.ja ], [ %i.mq, %bb.iw ] ; 5 uses
  %i.sd = phi ptr [ %i.mr, %.body180.i.i.i ], [ %i.mr, %.body203.i.i.i ], [ %i.ts, %bb.hx ], [ %i.mr, %bb.hq ], [ %i.mr, %bb.ht ], [ %i.uk, %bb.if ], [ %i.xh, %bb.jk ], [ %i.xw, %bb.jq ], [ %i.ne, %bb.eo ], [ %i.vp, %bb.iq ], [ %i.wk, %bb.ja ], [ %i.mr, %bb.iw ] ; 5 uses
  %.pn119.pn.i.i.i = phi { ptr, i32 } [ %.pn119.i.i.i, %.body180.i.i.i ], [ %.pn97.i.i.i, %.body203.i.i.i ], [ %i.tu, %bb.hx ], [ %i.sw, %bb.hq ], [ %i.tk, %bb.ht ], [ %i.um, %bb.if ], [ %i.xj, %bb.jk ], [ %i.xy, %bb.jq ], [ %i.ng, %bb.eo ], [ %i.vr, %bb.iq ], [ %i.wm, %bb.ja ], [ %i.wb, %bb.iw ] ; 5 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.bg, i64 1136 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8, !range !12, !noalias !506, !noundef !6
  switch i64 %i.sf, label %bb.ks [
    i64 0, label %.body.i.i.i
    i64 4, label %.body.i.i.i
    i64 5, label %.body.i.i.i
    i64 7, label %.body.i.i.i
  ]

bb.hf:                                            ; preds = %bb.fw
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !507
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad) #16
          to label %.body203.i.i.i unwind label %bb.ba, !noalias !508

bb.hg:                                            ; preds = %bb.fw
  %i.sh = load ptr, ptr %i.ac, align 8, !alias.scope !572, !noalias !507, !noundef !6 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !alias.scope !572, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !507
  %.not94.i.i.i = icmp eq ptr %i.sh, null
  br i1 %.not94.i.i.i, label %bb.hh, label %bb.hm

bb.hh:                                            ; preds = %bb.hg
  %i.sk = load i64, ptr %i.ad, align 8, !range !5, !alias.scope !573, !noalias !507, !noundef !6
  %i.sl = icmp eq i64 %i.sk, -1
  br i1 %i.sl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i.i.i unwind label %bb.hj, !noalias !508

bb.hj:                                            ; preds = %bb.hi
  %i.sm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body203.i.i.i unwind label %bb.hk, !noalias !508

bb.hk:                                            ; preds = %bb.hj
  %i.sn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !508
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i.i.i: ; preds = %bb.hi
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.hl, !noalias !508

.body203.i.i.i:                                   ; preds = %bb.ho, %bb.hl, %bb.hj, %bb.hf
  %.pn97.i.i.i = phi { ptr, i32 } [ %i.sg, %bb.hf ], [ %i.sm, %bb.hj ], [ %i.so, %bb.hl ], [ %i.ss, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !507
  br label %bb.he

bb.hl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i.i.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %.body203.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i.i.i, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !507
  br label %bb.es

bb.hm:                                            ; preds = %bb.hg
  %i.sp = icmp ne i64 %i.sj, 0
  call void @llvm.assume(i1 %i.sp)
  %i.sq = load i64, ptr %i.ad, align 8, !range !5, !alias.scope !574, !noalias !575, !noundef !6
  %i.sr = icmp eq i64 %i.sq, -1
  br i1 %i.sr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.ho, !noalias !508

bb.ho:                                            ; preds = %bb.hn
  %i.ss = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body203.i.i.i unwind label %bb.hp, !noalias !508

bb.hp:                                            ; preds = %bb.ho
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !508
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.hn
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.hl, !noalias !498

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.hm
  %i.su = insertvalue { ptr, ptr } poison, ptr %i.sh, 0
  %.sink1.i.i.i.i = inttoptr i64 %i.sj to ptr
  %i.sv = insertvalue { ptr, ptr } %i.su, ptr %.sink1.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !507
  br label %bb.hd

bb.hq:                                            ; preds = %bb.ik, %bb.fx
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hr:                                            ; preds = %bb.ft
  %i.sx = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  %i.sy = getelementptr inbounds nuw i8, ptr %i.bg, i64 1144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6 ; 3 uses
  store ptr %i.sz, ptr %i.sx, align 8, !noalias !506
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 822
  %i.tb = load i8, ptr %i.ta, align 2, !range !22, !noalias !508, !noundef !6
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !507
  store ptr %i.sz, ptr %i.ab, align 8, !noalias !507
  %i.td = getelementptr inbounds nuw i8, ptr %i.bg, i64 1096
  %i.te = load ptr, ptr %i.td, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 8
  %.val.i.i.i = load ptr, ptr %i.tf, align 8, !noalias !508, !nonnull !6, !noundef !6
  %i.tg = getelementptr i8, ptr %i.te, i64 16
  %.val143.i.i.i = load i64, ptr %i.tg, align 8, !noalias !508, !noundef !6
  %i.th = getelementptr inbounds nuw i8, ptr %i.bg, i64 1218
  %i.ti = getelementptr inbounds nuw i8, ptr %i.bg, i64 1112
  %i.tj = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.th, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias nofree noundef nonnull %.val.i.i.i, i64 noundef %.val143.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ti)
          to label %bb.hu unwind label %bb.ht, !noalias !508 ; 0 uses

bb.ht:                                            ; preds = %bb.hs
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !507
  br label %bb.he

bb.hu:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !507
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.hr
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1096
  %i.tm = load ptr, ptr %i.tl, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tm, i64 8
  %.val152.i.i.i = load ptr, ptr %i.tn, align 8, !noalias !508, !nonnull !6, !noundef !6
  %i.to = getelementptr i8, ptr %i.tm, i64 16
  %.val153.i.i.i = load i64, ptr %i.to, align 8, !noalias !508, !noundef !6
  %i.tp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1112
  %i.tq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %i.mr, ptr %i.tq, align 8, !noalias !506
  %.sroa.8304.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store ptr %.val152.i.i.i, ptr %.sroa.8304.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9305.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store i64 %.val153.i.i.i, ptr %.sroa.9305.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10306.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1256
  store ptr %i.tp, ptr %.sroa.10306.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12308.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1296
  store i8 0, ptr %.sroa.12308.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.ac
  %i.tr = phi ptr [ %i.mq, %bb.hv ], [ %.phi.trans.insert.i.i, %bb.ac ] ; 4 uses
  %i.ts = phi ptr [ %i.mr, %bb.hv ], [ %i.cl, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !507
  %i.tt = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %i.tt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hy unwind label %bb.hx, !noalias !508

bb.hx:                                            ; preds = %bb.hw
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !507
  br label %bb.he

bb.hy:                                            ; preds = %bb.hw
  %i.tv = load i64, ptr %i.aa, align 8, !range !20, !noalias !507, !noundef !6
  %i.tw = trunc nuw i64 %i.tv to i1
  br i1 %i.tw, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.ia:                                            ; preds = %bb.hy
  %i.tx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !507
  %.not.i206.i.i.i = icmp eq ptr %i.ty, null
  br i1 %.not.i206.i.i.i, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  %i.uc = load ptr, ptr %i.ub, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 968
  store i8 0, ptr %i.ud, align 8, !alias.scope !576, !noalias !508
  br label %bb.es

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ua) ]
  %i.ue = insertvalue { ptr, ptr } poison, ptr %i.ty, 0
  %i.uf = insertvalue { ptr, ptr } %i.ue, ptr %i.ua, 1
  br label %bb.hd

bb.id:                                            ; preds = %bb.ft
  %i.ug = load ptr, ptr %i.pa, align 8, !noalias !506, !nonnull !6, !noundef !6
  %i.uh = load i64, ptr %i.pb, align 8, !noalias !506, !noundef !6
  %i.ui = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  store ptr %i.mr, ptr %i.ui, align 8, !noalias !506
  %.sroa.8318.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %i.ug, ptr %.sroa.8318.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9319.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i64 %i.uh, ptr %.sroa.9319.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10320.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store ptr %i.pd, ptr %.sroa.10320.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12322.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1288
  store i8 0, ptr %.sroa.12322.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ad
  %i.uj = phi ptr [ %i.mq, %bb.id ], [ %.phi.trans.insert.i.i, %bb.ad ] ; 4 uses
  %i.uk = phi ptr [ %i.mr, %bb.id ], [ %i.cl, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !507
  %i.ul = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %i.ul, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ig unwind label %bb.if, !noalias !508

bb.if:                                            ; preds = %bb.ie
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !507
  br label %bb.he

bb.ig:                                            ; preds = %bb.ie
  %i.un = load i64, ptr %i.z, align 8, !range !20, !noalias !507, !noundef !6
  %i.uo = trunc nuw i64 %i.un to i1
  br i1 %i.uo, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.ii:                                            ; preds = %bb.ig
  %i.up = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !507
  %.not.i208.i.i.i = icmp eq ptr %i.uq, null
  br i1 %.not.i208.i.i.i, label %bb.es, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.us) ]
  %i.ut = insertvalue { ptr, ptr } poison, ptr %i.uq, 0
  %i.uu = insertvalue { ptr, ptr } %i.ut, ptr %i.us, 1
  br label %bb.hd

bb.ik:                                            ; preds = %bb.ft
  %i.uv = getelementptr inbounds nuw i8, ptr %i.bg, i64 1192 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bg, i64 1144
  %i.ux = load ptr, ptr %i.uw, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6
  store ptr %i.ux, ptr %i.uv, align 8, !noalias !506
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bg, i64 1096 ; 4 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 8
  %.val144.i.i.i = load ptr, ptr %i.va, align 8, !noalias !508, !nonnull !6, !noundef !6
  %i.vb = getelementptr i8, ptr %i.uz, i64 16
  %.val145.i.i.i = load i64, ptr %i.vb, align 8, !noalias !508, !noundef !6
  %i.vc = getelementptr inbounds nuw i8, ptr %i.bg, i64 1218
  %i.vd = getelementptr inbounds nuw i8, ptr %i.bg, i64 1112 ; 4 uses
  %i.ve = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.vc, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uv, ptr noalias nofree noundef nonnull %.val144.i.i.i, i64 noundef %.val145.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vd)
          to label %bb.il unwind label %bb.hq, !noalias !508

bb.il:                                            ; preds = %bb.ik
  br i1 %i.ve, label %bb.ji, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.vf = getelementptr inbounds nuw i8, ptr %i.bg, i64 1219
  %i.vg = load i8, ptr %i.vf, align 1, !range !22, !noalias !506, !noundef !6
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.vi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1216
  %i.vj = load i8, ptr %i.vi, align 8, !range !22, !noalias !506, !noundef !6
  %i.vk = trunc nuw i8 %i.vj to i1
  br i1 %i.vk, label %bb.jh, label %bb.iv

bb.io:                                            ; preds = %bb.im
  %i.vl = load ptr, ptr %i.pa, align 8, !noalias !506, !nonnull !6, !noundef !6
  %i.vm = load i64, ptr %i.pb, align 8, !noalias !506, !noundef !6
  %i.vn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  store ptr %i.mr, ptr %i.vn, align 8, !noalias !506
  %.sroa.8360.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %i.vl, ptr %.sroa.8360.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9361.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i64 %i.vm, ptr %.sroa.9361.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10362.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store ptr %i.pd, ptr %.sroa.10362.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12364.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1288
  store i8 0, ptr %.sroa.12364.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.ag
  %i.vo = phi ptr [ %i.mq, %bb.io ], [ %.phi.trans.insert.i.i, %bb.ag ] ; 4 uses
  %i.vp = phi ptr [ %i.mr, %bb.io ], [ %i.cl, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !507
  %i.vq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.vq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ir unwind label %bb.iq, !noalias !508

bb.iq:                                            ; preds = %bb.ip
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !507
  br label %bb.he

bb.ir:                                            ; preds = %bb.ip
  %i.vs = load i64, ptr %i.w, align 8, !range !20, !noalias !507, !noundef !6
  %i.vt = trunc nuw i64 %i.vs to i1
  br i1 %i.vt, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.it:                                            ; preds = %bb.ir
  %i.vu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !507
  %.not.i210.i.i.i = icmp eq ptr %i.vv, null
  br i1 %.not.i210.i.i.i, label %bb.es, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vx) ]
  %i.vy = insertvalue { ptr, ptr } poison, ptr %i.vv, 0
  %i.vz = insertvalue { ptr, ptr } %i.vy, ptr %i.vx, 1
  br label %bb.hd

bb.iv:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !507
  %i.wa = load ptr, ptr %i.uy, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6
  invoke void @_RINvCsc044841uM34_23unbuffered_async_client23try_or_resize_and_retryNtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered12EncryptErrorNCNCNvB2_8converse0s0_0NCB22_s1_0EB2_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.wa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vd)
          to label %bb.ix unwind label %bb.iw, !noalias !508

bb.iw:                                            ; preds = %bb.iv
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !507
  br label %bb.he

bb.ix:                                            ; preds = %bb.iv
  %i.wc = load ptr, ptr %i.v, align 8, !alias.scope !577, !noalias !507, !noundef !6 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !577, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !507
  %.not55.i.i.i = icmp eq ptr %i.wc, null
  br i1 %.not55.i.i.i, label %bb.iy, label %bb.jg

bb.iy:                                            ; preds = %bb.ix
  %i.wf = load ptr, ptr %i.uy, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wf, i64 8
  %.val148.i.i.i = load ptr, ptr %i.wg, align 8, !noalias !508, !nonnull !6, !noundef !6
  %i.wh = getelementptr i8, ptr %i.wf, i64 16
  %.val149.i.i.i = load i64, ptr %i.wh, align 8, !noalias !508, !noundef !6
  %i.wi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  store ptr %i.mr, ptr %i.wi, align 8, !noalias !506
  %.sroa.8376.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %.val148.i.i.i, ptr %.sroa.8376.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9377.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i64 %.val149.i.i.i, ptr %.sroa.9377.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10378.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store ptr %i.vd, ptr %.sroa.10378.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12380.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1288
  store i8 0, ptr %.sroa.12380.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ah
  %i.wj = phi ptr [ %i.mq, %bb.iy ], [ %.phi.trans.insert.i.i, %bb.ah ] ; 4 uses
  %i.wk = phi ptr [ %i.mr, %bb.iy ], [ %i.cl, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !507
  %i.wl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.wl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jb unwind label %bb.ja, !noalias !508

bb.ja:                                            ; preds = %bb.iz
  %i.wm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !507
  br label %bb.he

bb.jb:                                            ; preds = %bb.iz
  %i.wn = load i64, ptr %i.u, align 8, !range !20, !noalias !507, !noundef !6
  %i.wo = trunc nuw i64 %i.wn to i1
  br i1 %i.wo, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.jd:                                            ; preds = %bb.jb
  %i.wp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !507
  %.not.i213.i.i.i = icmp eq ptr %i.wq, null
  br i1 %.not.i213.i.i.i, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bg, i64 1216
  store i8 1, ptr %i.wt, align 8, !noalias !506
  br label %bb.es

bb.jf:                                            ; preds = %bb.jd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ws) ]
  %i.wu = insertvalue { ptr, ptr } poison, ptr %i.wq, 0
  %i.wv = insertvalue { ptr, ptr } %i.wu, ptr %i.ws, 1
  br label %bb.hd

bb.jg:                                            ; preds = %bb.ix
  %.sink1.i212.i.i.i = inttoptr i64 %i.we to ptr
  %i.ww = icmp ne i64 %i.we, 0
  call void @llvm.assume(i1 %i.ww)
  %i.wx = insertvalue { ptr, ptr } poison, ptr %i.wc, 0
  %i.wy = insertvalue { ptr, ptr } %i.wx, ptr %.sink1.i212.i.i.i, 1
  br label %bb.hd

bb.jh:                                            ; preds = %bb.in
  %i.wz = load ptr, ptr %i.pa, align 8, !noalias !506, !nonnull !6, !noundef !6
  %i.xa = load i64, ptr %i.pb, align 8, !noalias !506, !noundef !6
  %i.xb = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  store ptr %i.mr, ptr %i.xb, align 8, !noalias !506
  %.sroa.8390.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %i.wz, ptr %.sroa.8390.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9391.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i64 %i.xa, ptr %.sroa.9391.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10392.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store ptr %i.pd, ptr %.sroa.10392.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12394.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1288
  store i8 0, ptr %.sroa.12394.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.en

bb.ji:                                            ; preds = %bb.il
  %i.xc = load ptr, ptr %i.uy, align 8, !noalias !506, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.xd = getelementptr i8, ptr %i.xc, i64 8
  %.val150.i.i.i = load ptr, ptr %i.xd, align 8, !noalias !508, !nonnull !6, !noundef !6
  %i.xe = getelementptr i8, ptr %i.xc, i64 16
  %.val151.i.i.i = load i64, ptr %i.xe, align 8, !noalias !508, !noundef !6
  %i.xf = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  store ptr %i.mr, ptr %i.xf, align 8, !noalias !506
  %.sroa.8332.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %.val150.i.i.i, ptr %.sroa.8332.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9333.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i64 %.val151.i.i.i, ptr %.sroa.9333.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10334.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store ptr %i.vd, ptr %.sroa.10334.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12336.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1288
  store i8 0, ptr %.sroa.12336.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.ae
  %i.xg = phi ptr [ %i.mq, %bb.ji ], [ %.phi.trans.insert.i.i, %bb.ae ] ; 4 uses
  %i.xh = phi ptr [ %i.mr, %bb.ji ], [ %i.cl, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !507
  %i.xi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224 ; 2 uses
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.xi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jl unwind label %bb.jk, !noalias !508

bb.jk:                                            ; preds = %bb.jj
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !507
  br label %bb.he

bb.jl:                                            ; preds = %bb.jj
  %i.xk = load i64, ptr %i.y, align 8, !range !20, !noalias !507, !noundef !6
  %i.xl = trunc nuw i64 %i.xk to i1
  br i1 %i.xl, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.jn:                                            ; preds = %bb.jl
  %i.xm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !507
  %.not.i215.i.i.i = icmp eq ptr %i.xn, null
  br i1 %.not.i215.i.i.i, label %bb.jo, label %bb.jv

bb.jo:                                            ; preds = %bb.jn
  %i.xq = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.xr = load ptr, ptr %i.xq, align 8, !noalias !506, !nonnull !6, !noundef !6
  %i.xs = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.xt = load i64, ptr %i.xs, align 8, !noalias !506, !noundef !6
  %i.xu = getelementptr inbounds nuw i8, ptr %i.bg, i64 1104
  store ptr %i.xh, ptr %i.xi, align 8, !noalias !506
  %.sroa.8346.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %i.xr, ptr %.sroa.8346.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.9347.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i64 %i.xt, ptr %.sroa.9347.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.10348.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1248
  store ptr %i.xu, ptr %.sroa.10348.0..sroa_idx.i.i.i, align 8, !noalias !506
  %.sroa.12350.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1288
  store i8 0, ptr %.sroa.12350.0..sroa_idx.i.i.i, align 8, !noalias !506
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.af
  %i.xv = phi ptr [ %i.xg, %bb.jo ], [ %.phi.trans.insert.i.i, %bb.af ] ; 4 uses
  %i.xw = phi ptr [ %i.xh, %bb.jo ], [ %i.cl, %bb.af ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !507
  %i.xx = getelementptr inbounds nuw i8, ptr %i.bg, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.xx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jr unwind label %bb.jq, !noalias !508

bb.jq:                                            ; preds = %bb.jp
  %i.xy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !507
  br label %bb.he

bb.jr:                                            ; preds = %bb.jp
  %i.xz = load i64, ptr %i.x, align 8, !range !20, !noalias !507, !noundef !6
  %i.ya = trunc nuw i64 %i.xz to i1
  br i1 %i.ya, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.ls

bb.jt:                                            ; preds = %bb.jr
  %i.yb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !noalias !507, !noundef !6 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !noalias !507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !507
  %.not.i217.i.i.i = icmp eq ptr %i.yc, null
  br i1 %.not.i217.i.i.i, label %bb.es, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ye) ]
  %i.yf = insertvalue { ptr, ptr } poison, ptr %i.yc, 0
  %i.yg = insertvalue { ptr, ptr } %i.yf, ptr %i.ye, 1
  br label %bb.hd

bb.jv:                                            ; preds = %bb.jn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xp) ]
  %i.yh = insertvalue { ptr, ptr } poison, ptr %i.xn, 0
  %i.yi = insertvalue { ptr, ptr } %i.yh, ptr %i.xp, 1
  br label %bb.hd

bb.jw:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !507
  br label %.body.i.i.i

bb.jx:                                            ; preds = %bb.fh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1219
  %i.yk = load i8, ptr %i.yj, align 1, !range !22, !noalias !506, !noundef !6
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %bb.jz, label %.invoke550.i.i.i, !prof !556

bb.jy:                                            ; preds = %bb.kt, %bb.kh, %bb.fl
  %i.ym = phi ptr [ %i.mq, %bb.kh ], [ %i.mq, %bb.fl ], [ %i.os, %bb.kt ]
  %i.yn = phi ptr [ %i.mr, %bb.kh ], [ %i.mr, %bb.fl ], [ %i.ot, %bb.kt ] ; 2 uses
  %.pn126.i.i.i = phi { ptr, i32 } [ %i.zh, %bb.kh ], [ %i.ph, %bb.fl ], [ %.pn123.pn.i.i.i, %bb.kt ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.yn) #16
          to label %.body219.i.i.i unwind label %bb.ba, !noalias !508

.invoke550.i.i.i:                                 ; preds = %bb.jx, %bb.fh
  %i.yo = phi ptr [ @270, %bb.fh ], [ @272, %bb.jx ]
  %i.yp = phi i64 [ 30, %bb.fh ], [ 35, %bb.jx ]
  %i.yq = phi ptr [ @271, %bb.fh ], [ @273, %bb.jx ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yo, i64 noundef %i.yp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yq) #20
          to label %.cont551.i.i.i unwind label %bb.kh, !noalias !508

.cont551.i.i.i:                                   ; preds = %.invoke550.i.i.i
  unreachable

bb.jz:                                            ; preds = %bb.jx
  %i.yr = getelementptr inbounds nuw i8, ptr %i.bg, i64 1104 ; 2 uses
  %i.ys = load i64, ptr %i.yr, align 8, !noalias !506, !noundef !6
  %i.yt = icmp eq i64 %i.ys, 0
  br i1 %i.yt, label %bb.ka, label %.invoke.i.i.i, !prof !556

.invoke.i.i.i:                                    ; preds = %bb.ka, %bb.jz
  %i.yu = phi ptr [ %i.yr, %bb.jz ], [ %i.yw, %bb.ka ]
  %i.yv = phi ptr [ @275, %bb.jz ], [ @276, %bb.ka ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.yu, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yv) #20
          to label %.cont.i.i.i unwind label %bb.kh, !noalias !508

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.yw = getelementptr inbounds nuw i8, ptr %i.bg, i64 1112 ; 2 uses
  %i.yx = load i64, ptr %i.yw, align 8, !noalias !506, !noundef !6
  %i.yy = icmp eq i64 %i.yx, 0
  br i1 %i.yy, label %bb.kb, label %.invoke.i.i.i, !prof !556

bb.kb:                                            ; preds = %bb.ka
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mr)
          to label %bb.ke unwind label %bb.kc, !noalias !508

bb.kc:                                            ; preds = %bb.kb
  %i.yz = landingpad { ptr, i32 }
          cleanup
  %i.za = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %.val2.i.i.i.i.i = load i32, ptr %i.za, align 8, !alias.scope !578, !noalias !506, !noundef !6 ; 2 uses
  %i.zb = icmp eq i32 %.val2.i.i.i.i.i, -1
  br i1 %i.zb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.zc = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i) #18, !noalias !508 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i

bb.ke:                                            ; preds = %bb.kb
  %i.zd = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %.val.i.i.i.i.i = load i32, ptr %i.zd, align 8, !alias.scope !578, !noalias !506, !noundef !6 ; 2 uses
  %i.ze = icmp eq i32 %.val.i.i.i.i.i, -1
  br i1 %i.ze, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.zf = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #18, !noalias !508 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i: ; preds = %bb.kd, %bb.kc
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mr) #16
          to label %.body219.i.i.i unwind label %bb.kg, !noalias !508

bb.kg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %i.zg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !508
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.kf, %bb.ke
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mr)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.ki, !noalias !508

bb.kh:                                            ; preds = %.invoke.i.i.i, %.invoke550.i.i.i
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.ki:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.ej, %bb.eh
  %i.zi = phi ptr [ %i.mh, %bb.eh ], [ %i.mh, %bb.ej ], [ %i.ry, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i ], [ %i.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ]
  %i.zj = phi ptr [ %i.mi, %bb.eh ], [ %i.mi, %bb.ej ], [ %i.rz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i ], [ %i.mr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ]
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %.body219.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.zl)
          to label %bb.kw unwind label %bb.kj, !noalias !508

bb.kj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i
  %i.zm = phi ptr [ %i.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.mx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ]
  %i.zn = phi ptr [ %i.mr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ]
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.kk:                                            ; preds = %bb.er
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nm) ]
  %i.zp = insertvalue { ptr, ptr } poison, ptr %i.nk, 0
  %i.zq = insertvalue { ptr, ptr } %i.zp, ptr %i.nm, 1
  br label %bb.hd

bb.kl:                                            ; preds = %bb.hd
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.sa)
          to label %bb.km unwind label %bb.fa, !noalias !508

bb.km:                                            ; preds = %bb.kl, %bb.hd, %bb.hd, %bb.hd, %bb.hd
  %i.zr = getelementptr inbounds nuw i8, ptr %i.bg, i64 1220
  store i8 0, ptr %i.zr, align 4, !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rz)
          to label %bb.kp unwind label %bb.kn, !noalias !508

bb.kn:                                            ; preds = %bb.km
  %i.zs = landingpad { ptr, i32 }
          cleanup
  %i.zt = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %.val2.i.i222.i.i.i = load i32, ptr %i.zt, align 8, !alias.scope !579, !noalias !506, !noundef !6 ; 2 uses
  %i.zu = icmp eq i32 %.val2.i.i222.i.i.i, -1
  br i1 %i.zu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.zv = call noundef i32 @close(i32 noundef %.val2.i.i222.i.i.i) #18, !noalias !508 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i

bb.kp:                                            ; preds = %bb.km
  %i.zw = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %.val.i.i224.i.i.i = load i32, ptr %i.zw, align 8, !alias.scope !579, !noalias !506, !noundef !6 ; 2 uses
  %i.zx = icmp eq i32 %.val.i.i224.i.i.i, -1
  br i1 %i.zx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.zy = call noundef i32 @close(i32 noundef %.val.i.i224.i.i.i) #18, !noalias !508 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i: ; preds = %bb.ko, %bb.kn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rz) #16
          to label %.body219.i.i.i unwind label %bb.kr, !noalias !508

bb.kr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i
  %i.zz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !508
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i: ; preds = %bb.kq, %bb.kp
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i unwind label %bb.ki, !noalias !508

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i
  %.pre494.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 1
  %.pre495.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i

bb.ks:                                            ; preds = %bb.he
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.se) #16
          to label %.body.i.i.i unwind label %bb.ba, !noalias !508

bb.kt:                                            ; preds = %bb.ku, %.body.i.i.i
  store i8 0, ptr %i.ou, align 4, !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !507
  br label %bb.jy

bb.ku:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtB14_6client11client_conn20ClientConnectionDataENtNtB14_5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ao) #16
          to label %bb.kt unwind label %bb.ba, !noalias !508

bb.kv:                                            ; preds = %bb.bd, %bb.bc
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

.body20.i.i:                                      ; preds = %bb.kv, %bb.bb
  %i.aab = phi ptr [ %i.cl, %bb.kv ], [ %i.ed, %bb.bb ]
  %eh.lpad-body21.i.i = phi { ptr, i32 } [ %i.aaa, %bb.kv ], [ %.pn135.pn.pn.pn.pn.i.i.i, %bb.bb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.aab) #16
          to label %bb.u unwind label %bb.lp, !noalias !498

bb.kw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i, %bb.at
  %i.aac = phi ptr [ %i.mx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ], [ %i.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.cq, %bb.at ]
  %i.aad = phi ptr [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ], [ %i.mr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %i.cr, %bb.at ]
  %.sroa.16.0.i.i = phi ptr [ %.sroa.16.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.16.0.pre-phi.i.i.i, %bb.at ] ; 3 uses
  %.sroa.1456.0.i.i = phi ptr [ %.sroa.031.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.031.0.pre-phi.i.i.i, %bb.at ] ; 2 uses
  store i8 1, ptr %i.aac, align 1, !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6258.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !497
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.aad)
          to label %bb.kx unwind label %bb.lg, !noalias !498

bb.kx:                                            ; preds = %bb.kw
  %.not.i.i.i = icmp eq ptr %.sroa.1456.0.i.i, null
  br i1 %.not.i.i.i, label %bb.ky, label %bb.lh

bb.ky:                                            ; preds = %bb.kx
  %i.aae = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aae)
          to label %bb.la unwind label %bb.kz, !noalias !498

bb.kz:                                            ; preds = %bb.ky
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aae)
          to label %.body25.i.i unwind label %bb.lb, !noalias !498

bb.la:                                            ; preds = %bb.ky
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.t, !noalias !498

bb.lb:                                            ; preds = %bb.kz
  %i.aag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !498
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.la
  %i.aah = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aah)
          to label %bb.ld unwind label %bb.lc, !noalias !498

bb.lc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.aai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aah)
          to label %.body29.i.i unwind label %bb.le, !noalias !498

bb.ld:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aah)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i unwind label %bb.r, !noalias !498

bb.le:                                            ; preds = %bb.lc
  %i.aaj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !498
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i: ; preds = %bb.ld
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.aak = load ptr, ptr %i.bg, align 8, !alias.scope !582, !noalias !496, !nonnull !6, !noundef !6
  %i.aal = atomicrmw add ptr %i.aak, i64 -1 release, align 8, !noalias !583
  %i.aam = icmp eq i64 %i.aal, 1
  br i1 %i.aam, label %bb.lf, label %bb.lt

bb.lf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #17
          to label %bb.lt unwind label %bb.o, !noalias !498

bb.lg:                                            ; preds = %bb.kw
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.lh:                                            ; preds = %bb.kx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.i.i) ]
  %i.aao = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aao)
          to label %bb.lj unwind label %bb.li, !noalias !498

bb.li:                                            ; preds = %bb.lh
  %i.aap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aao)
          to label %.body25.i.i unwind label %bb.lk, !noalias !498

bb.lj:                                            ; preds = %bb.lh
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aao)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i unwind label %bb.t, !noalias !498

bb.lk:                                            ; preds = %bb.li
  %i.aaq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !498
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i: ; preds = %bb.lj
  %i.aar = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aar)
          to label %bb.lm unwind label %bb.ll, !noalias !498

bb.ll:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  %i.aas = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aar)
          to label %.body29.i.i unwind label %bb.ln, !noalias !498

bb.lm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i unwind label %bb.r, !noalias !498

bb.ln:                                            ; preds = %bb.ll
  %i.aat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !498
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i: ; preds = %bb.lm
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
end_hunk_6
