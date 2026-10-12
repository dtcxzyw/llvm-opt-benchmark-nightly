Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_tls-f510980b9d127ff7.libp2p_tls.1beddeca30215923-cgu.0?download=true
inline.NumInlined: 284
inline.NumDeleted: 120
begin_hunk_0_@_RNvNtCs2oFjxwYQXCx_10libp2p_tls11certificate5parse:bb.a
          to label %.thread223.i unwind label %bb.aw, !noalias !321

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit184.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit189.i unwind label %.thread231.loopexit.split-lp.i, !noalias !321

bb.aw:                                            ; preds = %bb.au
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !321
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit189.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !320
  br label %.loopexit

.thread238.i:                                     ; preds = %bb.aj, %bb.ai, %.body.i.i, %bb.y
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.cl, %bb.ai ], [ %i.cl, %bb.aj ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #19
          to label %.body182.i unwind label %bb.ax, !noalias !321

bb.ax:                                            ; preds = %.thread209.i, %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i, %.thread238.i, %.body182.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !321
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit195.i: ; preds = %bb.bd, %.thread, %.loopexit
  %.sroa.12.0 = phi i64 [ -9223372036854775808, %bb.bd ], [ %.sroa.12.1.ph, %.loopexit ], [ %.sroa.12.176, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !320
  %i.dc = load i64, ptr %i.s, align 8, !range !4, !alias.scope !338, !noalias !320, !noundef !5
  %i.dd = icmp eq i64 %i.dc, -1
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1wFcY9xmr0L_7asn1_rs10asn1_types3oid3OidECs2oFjxwYQXCx_10libp2p_tls.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit195.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i190.i unwind label %bb.az, !noalias !321

bb.az:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.thread209.i unwind label %bb.ba, !noalias !321

bb.ba:                                            ; preds = %bb.az
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !321
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i190.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1wFcY9xmr0L_7asn1_rs10asn1_types3oid3OidECs2oFjxwYQXCx_10libp2p_tls.exit.i unwind label %.thread215.i, !noalias !321

.loopexit:                                        ; preds = %_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2oFjxwYQXCx_10libp2p_tls.exit173.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit189.i, %bb.v
  %.sroa.12.1.ph = phi i64 [ -9223372036854775798, %bb.v ], [ -9223372036854775777, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit189.i ], [ -9223372036854775774, %_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2oFjxwYQXCx_10libp2p_tls.exit173.thread.i ] ; 2 uses
  %.pr = load i64, ptr %i.q, align 8, !alias.scope !339, !noalias !320
  %i.dg = icmp eq i64 %.pr, 2
  br i1 %i.dg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit195.i, label %.thread

.thread:                                          ; preds = %_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2oFjxwYQXCx_10libp2p_tls.exit.i, %.loopexit
  %.sroa.12.176 = phi i64 [ %.sroa.12.1.ph, %.loopexit ], [ -9223372036854775808, %_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2oFjxwYQXCx_10libp2p_tls.exit.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit195.i unwind label %bb.bb, !noalias !321

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i: ; preds = %bb.bi, %.thread223.i, %bb.bb, %bb.s
  %.pn157.pn.i = phi { ptr, i32 } [ %i.dh, %bb.bb ], [ %lpad.thr_comm.split-lp230.i, %bb.s ], [ %.pn157222.i, %bb.bi ], [ %.pn157222.i, %.thread223.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1wFcY9xmr0L_7asn1_rs10asn1_types3oid3OidECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #19
          to label %.thread209.i unwind label %bb.ax, !noalias !321

bb.bb:                                            ; preds = %.thread
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i

bb.bc:                                            ; preds = %._crit_edge.i
  %.sroa.666.i.sroa.0.0.copyload = load i64, ptr %.sroa.551.0..sroa_idx52.i, align 8, !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.666.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.551.sroa.5.0..sroa.551.0..sroa_idx52.sroa_idx.i, i64 48, i1 false), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.868.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.653.0..sroa_idx54.i, i64 160, i1 false), !noalias !320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsczc01mt9THf_6webpki5error5ErrorECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.be unwind label %bb.s, !noalias !321

bb.bd:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.666.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.666.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.666.i.sroa.8.0..sroa_idx, i64 48, i1 false), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.660.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.666.i.sroa.8, i64 48, i1 false), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.666.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.660.i.sroa.8, i64 48, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.660.i.sroa.8)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit195.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1wFcY9xmr0L_7asn1_rs10asn1_types3oid3OidECs2oFjxwYQXCx_10libp2p_tls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i190.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit195.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !320
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshWNgLW1t7rn_11x509_parser11certificate15X509CertificateECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(656) %i.u), !noalias !321
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.660.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.666.i.sroa.8, i64 48, i1 false), !noalias !320
  %.sroa.21.64..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.21, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.21.64..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.868.i, i64 160, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.666.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.660.i.sroa.8, i64 48, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.660.i.sroa.8)
  %.sroa.21.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.21.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %i.u, i64 656, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !320
  %i.di = load i64, ptr %i.s, align 8, !range !4, !alias.scope !341, !noalias !320, !noundef !5
  %i.dj = icmp eq i64 %i.di, -1
  br i1 %i.dj, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i197.i unwind label %bb.bg, !noalias !321

bb.bg:                                            ; preds = %bb.bf
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %common.resume unwind label %bb.bh, !noalias !321

bb.bh:                                            ; preds = %bb.bg
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !321
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i197.i: ; preds = %bb.bf
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s), !noalias !321
  br label %bb.bk

.thread223.i:                                     ; preds = %bb.au, %.body182.i, %bb.an, %.thread231.loopexit.split-lp.i, %.thread231.loopexit.i
  %.pn157222.i = phi { ptr, i32 } [ %i.cu, %bb.an ], [ %i.cz, %bb.au ], [ %.pn154.i, %.body182.i ], [ %lpad.loopexit.i, %.thread231.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread231.loopexit.split-lp.i ] ; 2 uses
  %i.dm = load i64, ptr %i.q, align 8, !range !9, !alias.scope !342, !noalias !320, !noundef !5
  %i.dn = icmp eq i64 %i.dm, 2
  br i1 %i.dn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i, label %bb.bi

bb.bi:                                            ; preds = %.thread223.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i unwind label %bb.ax, !noalias !321

.thread209.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i, %bb.az, %.thread215.i
  %.pn160208.i = phi { ptr, i32 } [ %i.de, %bb.az ], [ %lpad.thr_comm.i, %.thread215.i ], [ %.pn157.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate12P2pExtensionEEB11_.exit204.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshWNgLW1t7rn_11x509_parser11certificate15X509CertificateECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(656) %i.u) #19
          to label %common.resume unwind label %bb.ax, !noalias !321

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5sLWz8gB0PX_3nom8internal3ErrNtNtCshWNgLW1t7rn_11x509_parser5error9X509ErrorEECs2oFjxwYQXCx_10libp2p_tls.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1wFcY9xmr0L_7asn1_rs10asn1_types3oid3OidECs2oFjxwYQXCx_10libp2p_tls.exit.i
  %.sroa.12.2.ph = phi i64 [ %.sroa.12.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1wFcY9xmr0L_7asn1_rs10asn1_types3oid3OidECs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ -9223372036854775808, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5sLWz8gB0PX_3nom8internal3ErrNtNtCshWNgLW1t7rn_11x509_parser5error9X509ErrorEECs2oFjxwYQXCx_10libp2p_tls.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.344.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.7, i64 48, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.2.ph, ptr %i.do, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  br label %bb.db

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i197.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.344.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.21, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.21.64..sroa_idx34, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.sroa.7, i64 48, i1 false)
  store i64 %.sroa.070.0.copyload.pre.i, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.666.i.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.v, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !345
  %i.dq = invoke { i64, i32 } @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime3now()
          to label %.noexc unwind label %bb.cw    ; 2 uses

.noexc:                                           ; preds = %bb.bk
  %i.dr = extractvalue { i64, i32 } %i.dq, 0
  %i.ds = extractvalue { i64, i32 } %i.dq, 1
  store i64 %i.dr, ptr %i.b, align 8, !noalias !345
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ds, ptr %i.dt, align 8, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !345
  invoke void @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
          to label %.noexc19 unwind label %bb.cw

.noexc19:                                         ; preds = %.noexc
  %i.du = load i64, ptr %i.a, align 8, !range !13, !noalias !345, !noundef !5
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !345, !noundef !5 ; 14 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !range !346, !noalias !345, !noundef !5 ; 3 uses
  %i.ea = urem i64 %i.dx, 60                      ; 4 uses
  %i.eb = udiv i64 %i.dx, 60
  %i.ec = urem i64 %i.eb, 60                      ; 4 uses
  br i1 %i.dv, label %bb.bl, label %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i

bb.bl:                                            ; preds = %.noexc19
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = udiv i64 %i.dx, 3600
  %i.ef = urem i64 %i.ee, 24                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i, label %.thread.i.i.i.i, label %.thread.i.i.thread.i.i, !prof !18

.thread.i.i.thread.i.i:                           ; preds = %bb.bl
  %i.eg = sub nuw nsw i32 1000000000, %i.dz
  %i.eh = xor i64 %i.ea, -1
  br label %.thread43.i.i.thread.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bl
  %i.ei = sub nsw i64 0, %i.ea
  %.not63.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not63.i.i, label %.thread43.i.i.i.i, label %.thread43.i.i.thread.i.i, !prof !347

.thread43.i.i.thread.i.i:                         ; preds = %.thread.i.i.i.i, %.thread.i.i.thread.i.i
  %.sroa.04.040.i.i28.i.i = phi i32 [ %i.eg, %.thread.i.i.thread.i.i ], [ 0, %.thread.i.i.i.i ]
  %.sroa.09.041.i.i26.i.i = phi i64 [ %i.eh, %.thread.i.i.thread.i.i ], [ %i.ei, %.thread.i.i.i.i ]
  %i.ej = add nsw i64 %.sroa.09.041.i.i26.i.i, 60
  %i.ek = xor i64 %i.ec, -1
  br label %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i

.thread43.i.i.i.i:                                ; preds = %.thread.i.i.i.i
  %.not64.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not64.i.i, label %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i, label %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i, !prof !347

_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i: ; preds = %.thread43.i.i.i.i, %.thread43.i.i.thread.i.i
  %.sroa.09.150.i.i36.i.i = phi i64 [ %i.ej, %.thread43.i.i.thread.i.i ], [ 0, %.thread43.i.i.i.i ]
  %.sroa.016.051.i.i34.i.i = phi i64 [ %i.ek, %.thread43.i.i.thread.i.i ], [ %i.ed, %.thread43.i.i.i.i ]
  %.sroa.04.040.i.i2733.i.i = phi i32 [ %.sroa.04.040.i.i28.i.i, %.thread43.i.i.thread.i.i ], [ 0, %.thread43.i.i.i.i ]
  %i.el = add nsw i64 %.sroa.016.051.i.i34.i.i, 60
  %i.em = icmp ugt i64 %i.dx, 185542587187199
  br i1 %i.em, label %.invoke, label %bb.br

_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i: ; preds = %.thread43.i.i.i.i
  %.not65.i.i = icmp eq i64 %i.ef, 0
  %i.en = icmp ugt i64 %i.dx, 185542587187199     ; 2 uses
  br i1 %.not65.i.i, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i
  br i1 %i.en, label %.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eo = icmp samesign ult i64 %i.dx, 86400
  br i1 %i.eo, label %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ep = icmp samesign ugt i64 %i.dx, 377705203199
  br i1 %i.ep, label %.invoke, label %bb.bp, !prof !348

bb.bp:                                            ; preds = %bb.bo
  %i.eq = udiv i64 %i.dx, 86400
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %i.es = sub nuw nsw i32 869850581, %i.er        ; 2 uses
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = mul nuw nsw i64 %i.et, 3853261555       ; 2 uses
  %i.ev = lshr i64 %i.eu, 15
  %i.ew = lshr i64 %i.eu, 47
  %i.ex = trunc nuw nsw i64 %i.ew to i32          ; 3 uses
  %i.ey = trunc i64 %i.ev to i32
  %i.ez = icmp ugt i32 %i.ey, 42920275
  %i.fa = and i32 %i.ex, 3
  %i.fb = icmp eq i32 %i.fa, 0
  %.sroa.0.0.i.i.i.i.i.i = or i1 %i.ez, %i.fb     ; 2 uses
  %i.fc = lshr i32 %i.ex, 2
  %i.fd = add nuw nsw i32 %i.es, %i.ex
  %i.fe = sub nuw nsw i32 %i.fd, %i.fc
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = mul nuw nsw i64 %i.ff, 3010298776       ; 2 uses
  %i.fh = lshr i64 %i.fg, 8
  %i.fi = lshr i64 %i.fg, 40
  %i.fj = trunc nuw nsw i64 %i.fi to i32          ; 2 uses
  %i.fk = and i64 %i.fh, 4294967295
  %i.fl = mul nuw nsw i64 %i.fk, 1461
  %i.fm = lshr i64 %i.fl, 34
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %i.fo = zext i1 %.sroa.0.0.i.i.i.i.i.i to i32
  %i.fp = add nuw nsw i32 %i.fn, %i.fo
  %i.fq = and i32 %i.fj, 3
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = and i1 %.sroa.0.0.i.i.i.i.i.i, %i.fr
  %i.ft = shl nuw i32 %i.fj, 10
  %i.fu = add nsw i32 %i.ft, 1858256896
  %i.fv = select i1 %i.fs, i32 512, i32 0
  %i.fw = or disjoint i32 %i.fv, %i.fu
  %i.fx = or i32 %i.fw, %i.fp                     ; 2 uses
  %i.fy = icmp ne i32 %i.fx, 0
  call void @llvm.assume(i1 %i.fy)
  br label %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i

bb.bq:                                            ; preds = %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i
  br i1 %i.en, label %.invoke, label %bb.br

bb.br:                                            ; preds = %bb.bq, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i
  %.sroa.09.150.i.i354353.i.i = phi i64 [ %.sroa.09.150.i.i36.i.i, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.bq ] ; 2 uses
  %.sroa.04.040.i.i27324552.i.i = phi i32 [ %.sroa.04.040.i.i2733.i.i, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.bq ] ; 2 uses
  %.sroa.016.1.i.i4751.i.i = phi i64 [ %i.el, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.bq ] ; 2 uses
  %.pn.i.i = phi i64 [ 23, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 24, %bb.bq ] ; 2 uses
  %i.fz = udiv i64 %i.dx, 86400
  %i.ga = trunc nuw nsw i64 %i.fz to i32          ; 2 uses
  %i.gb = icmp samesign ult i64 %i.dx, 86400
  br i1 %i.gb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gc = sub nuw nsw i32 2017281, %i.ga
  br label %_RNvMNtCscSncaK1wFM2_4time4dateNtB2_4Date15checked_sub_std.exit22.i.i.i

bb.bt:                                            ; preds = %bb.br
  %or.cond.i.i19.i.i.i = icmp samesign ugt i64 %i.dx, 377705203199
  br i1 %or.cond.i.i19.i.i.i, label %.invoke, label %bb.bu, !prof !348

bb.bu:                                            ; preds = %bb.bt
  %i.gd = sub nuw nsw i32 869850581, %i.ga        ; 2 uses
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = mul nuw nsw i64 %i.ge, 3853261555       ; 2 uses
  %i.gg = lshr i64 %i.gf, 15
  %i.gh = lshr i64 %i.gf, 47
  %i.gi = trunc nuw nsw i64 %i.gh to i32          ; 3 uses
  %i.gj = trunc i64 %i.gg to i32
  %i.gk = icmp ugt i32 %i.gj, 42920275
  %i.gl = and i32 %i.gi, 3
  %i.gm = icmp eq i32 %i.gl, 0
  %.sroa.0.0.i.i.i20.i.i.i = or i1 %i.gk, %i.gm   ; 2 uses
  %i.gn = lshr i32 %i.gi, 2
  %i.go = add nuw nsw i32 %i.gd, %i.gi
  %i.gp = sub nuw nsw i32 %i.go, %i.gn
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = mul nuw nsw i64 %i.gq, 3010298776       ; 2 uses
  %i.gs = lshr i64 %i.gr, 8
  %i.gt = lshr i64 %i.gr, 40
  %i.gu = trunc nuw nsw i64 %i.gt to i32          ; 2 uses
  %i.gv = and i64 %i.gs, 4294967295
  %i.gw = mul nuw nsw i64 %i.gv, 1461
  %i.gx = lshr i64 %i.gw, 34
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = zext i1 %.sroa.0.0.i.i.i20.i.i.i to i32
  %i.ha = add nuw nsw i32 %i.gy, %i.gz
  %i.hb = and i32 %i.gu, 3
  %i.hc = icmp eq i32 %i.hb, 0
  %i.hd = and i1 %.sroa.0.0.i.i.i20.i.i.i, %i.hc
  %i.he = shl nuw i32 %i.gu, 10
  %i.hf = add nsw i32 %i.he, 1858256896
  %i.hg = select i1 %i.hd, i32 512, i32 0
  %i.hh = or disjoint i32 %i.hg, %i.hf
  %i.hi = or i32 %i.hh, %i.ha                     ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  call void @llvm.assume(i1 %i.hj)
  br label %_RNvMNtCscSncaK1wFM2_4time4dateNtB2_4Date15checked_sub_std.exit22.i.i.i

_RNvMNtCscSncaK1wFM2_4time4dateNtB2_4Date15checked_sub_std.exit22.i.i.i: ; preds = %bb.bu, %bb.bs
  %.sroa.0.0.i21.i.i.i = phi i32 [ %i.gc, %bb.bs ], [ %i.hi, %bb.bu ] ; 4 uses
  %i.hk = and i32 %.sroa.0.0.i21.i.i.i, 511
  %.not.i.i.i.i18 = icmp eq i32 %i.hk, 1
  br i1 %.not.i.i.i.i18, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %_RNvMNtCscSncaK1wFM2_4time4dateNtB2_4Date15checked_sub_std.exit22.i.i.i
  %i.hl = icmp eq i32 %.sroa.0.0.i21.i.i.i, -10238975
  br i1 %i.hl, label %.invoke, label %bb.bx

bb.bw:                                            ; preds = %_RNvMNtCscSncaK1wFM2_4time4dateNtB2_4Date15checked_sub_std.exit22.i.i.i
  %i.hm = add i32 %.sroa.0.0.i21.i.i.i, -1        ; 2 uses
  %i.hn = icmp ne i32 %i.hm, 0
  call void @llvm.assume(i1 %i.hn)
  br label %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ho = ashr i32 %.sroa.0.0.i21.i.i.i, 10       ; 3 uses
  %i.hp = add nsw i32 %i.ho, -1                   ; 2 uses
  %i.hq = icmp slt i32 %i.ho, 1
  %i.hr = sub nsw i32 1, %i.ho
  %.sroa.07.0.i.i.i.i = select i1 %i.hq, i32 %i.hr, i32 %i.hp
  %i.hs = mul i32 %.sroa.07.0.i.i.i.i, 33555415
  %i.ht = and i32 %i.hs, 100695055
  %i.hu = icmp samesign ult i32 %i.ht, 31745      ; 2 uses
  %i.hv = select i1 %i.hu, i32 512, i32 0
  %.sroa.04.0.i.i.i.i = select i1 %i.hu, i32 366, i32 365
  %i.hw = shl i32 %i.hp, 10
  %i.hx = or disjoint i32 %i.hv, %i.hw
  %i.hy = or disjoint i32 %i.hx, %.sroa.04.0.i.i.i.i
  br label %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i

_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i: ; preds = %bb.bx, %bb.bw, %bb.bp, %bb.bn
  %.pn66.i.i = phi i64 [ 0, %bb.bp ], [ %.pn.i.i, %bb.bw ], [ %.pn.i.i, %bb.bx ], [ 0, %bb.bn ]
  %.sroa.016.1.i.i46.i.i = phi i64 [ 0, %bb.bp ], [ %.sroa.016.1.i.i4751.i.i, %bb.bw ], [ %.sroa.016.1.i.i4751.i.i, %bb.bx ], [ 0, %bb.bn ]
  %.sroa.04.040.i.i273244.i.i = phi i32 [ 0, %bb.bp ], [ %.sroa.04.040.i.i27324552.i.i, %bb.bw ], [ %.sroa.04.040.i.i27324552.i.i, %bb.bx ], [ 0, %bb.bn ]
  %.sroa.09.150.i.i3542.i.i = phi i64 [ 0, %bb.bp ], [ %.sroa.09.150.i.i354353.i.i, %bb.bw ], [ %.sroa.09.150.i.i354353.i.i, %bb.bx ], [ 0, %bb.bn ]
  %.sroa.02.0.i.i.i = phi i32 [ %i.fx, %bb.bp ], [ %i.hm, %bb.bw ], [ %i.hy, %bb.bx ], [ 2017281, %bb.bn ]
  %spec.select.i.i48.i.i = sub nsw i64 %.pn66.i.i, %i.ef
  %.sroa.4.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i48.i.i, 48
  %.sroa.3.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.016.1.i.i46.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i.i = shl nuw nsw i64 %.sroa.09.150.i.i3542.i.i, 32
  %.sroa.2.0.insert.shift.i.i.i.i.i = and i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 1095216660480
  %.sroa.2.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.insert.i.i.i.i.i
  br label %_RNvMs2_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit.i

_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i: ; preds = %.noexc19
  %i.hz = udiv i64 %i.dx, 3600
  %i.ia = urem i64 %i.hz, 24
  %i.ib = icmp ugt i64 %i.dx, 185542587187199
  br i1 %i.ib, label %.invoke, label %bb.by

bb.by:                                            ; preds = %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i
  %i.ic = udiv i64 %i.dx, 86400
  %i.id = trunc nuw nsw i64 %i.ic to i32          ; 2 uses
  %i.ie = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.id, i32 1) ; 2 uses
  %i.if = extractvalue { i32, i1 } %i.ie, 0       ; 2 uses
  %i.ig = extractvalue { i32, i1 } %i.ie, 1
  %or.cond.i.i5.i.i = icmp ugt i32 %i.if, 365
  %or.cond.not.i.i = or i1 %i.ig, %or.cond.i.i5.i.i
  br i1 %or.cond.not.i.i, label %bb.ca, label %bb.bz, !prof !349

bb.bz:                                            ; preds = %bb.by
  %i.ih = or disjoint i32 %i.if, 2017280
  br label %_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i

bb.ca:                                            ; preds = %bb.by
  %i.ii = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.id, i32 2440588) ; 2 uses
  %i.ij = extractvalue { i32, i1 } %i.ii, 1
  br i1 %i.ij, label %.invoke, label %bb.cb, !prof !15

bb.cb:                                            ; preds = %bb.ca
  %i.ik = extractvalue { i32, i1 } %i.ii, 0       ; 2 uses
  %i.il = add nsw i32 %i.ik, -5373485
  %or.cond.i.i.i6.i.i = icmp ult i32 %i.il, -7304484
  br i1 %or.cond.i.i.i6.i.i, label %.invoke, label %bb.cc, !prof !348

bb.cc:                                            ; preds = %bb.cb
  %i.im = add nuw nsw i32 %i.ik, 867409993        ; 2 uses
  %i.in = zext nneg i32 %i.im to i64
  %i.io = mul nuw nsw i64 %i.in, 3853261555       ; 2 uses
  %i.ip = lshr i64 %i.io, 15
  %i.iq = lshr i64 %i.io, 47
  %i.ir = trunc nuw nsw i64 %i.iq to i32          ; 3 uses
  %i.is = trunc i64 %i.ip to i32
  %i.it = icmp ugt i32 %i.is, 42920275
  %i.iu = and i32 %i.ir, 3
  %i.iv = icmp eq i32 %i.iu, 0
  %.sroa.0.0.i.i.i.i7.i.i = or i1 %i.it, %i.iv    ; 2 uses
  %i.iw = lshr i32 %i.ir, 2
  %i.ix = add nuw nsw i32 %i.im, %i.ir
  %i.iy = sub nuw nsw i32 %i.ix, %i.iw
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = mul nuw nsw i64 %i.iz, 3010298776       ; 2 uses
  %i.jb = lshr i64 %i.ja, 8
  %i.jc = lshr i64 %i.ja, 40
  %i.jd = trunc nuw nsw i64 %i.jc to i32          ; 2 uses
  %i.je = and i64 %i.jb, 4294967295
  %i.jf = mul nuw nsw i64 %i.je, 1461
  %i.jg = lshr i64 %i.jf, 34
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = zext i1 %.sroa.0.0.i.i.i.i7.i.i to i32
  %i.jj = add nuw nsw i32 %i.jh, %i.ji
  %i.jk = and i32 %i.jd, 3
  %i.jl = icmp eq i32 %i.jk, 0
  %i.jm = and i1 %.sroa.0.0.i.i.i.i7.i.i, %i.jl
  %i.jn = shl nuw i32 %i.jd, 10
  %i.jo = add nsw i32 %i.jn, 1858256896
  %i.jp = select i1 %i.jm, i32 512, i32 0
  %i.jq = or disjoint i32 %i.jp, %i.jo
  %i.jr = or i32 %i.jq, %i.jj
  br label %_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i

.invoke:                                          ; preds = %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i, %bb.ca, %bb.cb, %bb.bv, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i, %bb.bq, %bb.bt, %bb.bm, %bb.bo
  %i.js = phi ptr [ @44, %bb.bv ], [ @45, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ @45, %bb.bm ], [ @45, %bb.bo ], [ @45, %bb.bt ], [ @45, %bb.bq ], [ @43, %bb.cb ], [ @43, %bb.ca ], [ @43, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  %i.jt = phi i64 [ 31, %bb.bv ], [ 39, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 39, %bb.bm ], [ 39, %bb.bo ], [ 39, %bb.bt ], [ 39, %bb.bq ], [ 32, %bb.cb ], [ 32, %bb.ca ], [ 32, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  %i.ju = phi ptr [ @24, %bb.bv ], [ @24, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ @24, %bb.bm ], [ @24, %bb.bo ], [ @24, %bb.bt ], [ @24, %bb.bq ], [ @23, %bb.cb ], [ @23, %bb.ca ], [ @23, %_RNvMs2_NtCscSncaK1wFM2_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.js, i64 noundef %i.jt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ju) #22
          to label %.cont unwind label %bb.cw

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i: ; preds = %bb.cc, %bb.bz
  %.sroa.02.0.i8.i.i = phi i32 [ %i.jr, %bb.cc ], [ %i.ih, %bb.bz ]
  %.sroa.4.0.insert.shift.i.i.i10.i.i = shl nuw nsw i64 %i.ia, 48
  %.sroa.3.0.insert.shift.i.i.i12.i.i = shl nuw nsw i64 %i.ec, 40
  %.sroa.3.0.insert.insert.i.i.i13.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i10.i.i, %.sroa.3.0.insert.shift.i.i.i12.i.i
  %.sroa.2.0.insert.shift.i.i.i15.i.i = shl nuw nsw i64 %i.ea, 32
  %.sroa.2.0.insert.insert.i.i.i16.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i13.i.i, %.sroa.2.0.insert.shift.i.i.i15.i.i
  br label %_RNvMs2_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit.i

_RNvMs2_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit.i: ; preds = %_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i, %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i
  %.sink.i.i = phi i32 [ %i.dz, %_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i ], [ %.sroa.04.040.i.i273244.i.i, %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i ]
  %.sroa.2.0.insert.insert.i.i.i16.sink.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i16.i.i, %_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i ], [ %.sroa.2.0.insert.insert.i.i.i.i.i, %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i ]
  %.sroa.02.0.i8.sink.i.i = phi i32 [ %.sroa.02.0.i8.i.i, %_RNvXsb_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit.i.i ], [ %.sroa.02.0.i.i.i, %_RNvXsf_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit.i.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i17.i.i = zext nneg i32 %.sink.i.i to i64
  %.sroa.0.0.insert.insert.i.i.i18.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i16.sink.i.i, %.sroa.0.0.insert.ext.i.i.i17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !345
  %i.jv = icmp sgt i32 %.sroa.02.0.i8.sink.i.i, 2099199
  store i64 %.sroa.0.0.insert.insert.i.i.i18.i.i, ptr %i.e, align 8, !noalias !344
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.02.0.i8.sink.i.i, ptr %.sroa.4.0..sroa_idx.i12, align 8, !noalias !344
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @21, i64 12), i64 3, i1 false), !noalias !344
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jx = zext i1 %i.jv to i8                     ; 3 uses
  store i8 %i.jx, ptr %i.jw, align 8, !noalias !344
  %i.jy = call fastcc noundef i8 @_RNvXs0_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(40) %i.dp) #23, !noalias !350 ; 2 uses
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_RNvMs2_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.v, i64 672
  %i.kb = load i8, ptr %i.ka, align 8, !range !14, !alias.scope !351, !noalias !352, !noundef !5
  %i.kc = sub nsw i8 %i.jx, %i.kb
  %i.kd = icmp eq i8 %i.kc, -1
  br i1 %i.kd, label %_RNvMsc_NtCshWNgLW1t7rn_11x509_parser11certificateNtB5_8Validity11is_valid_at.exit.thread.i, label %.thread.i.i

bb.ce:                                            ; preds = %_RNvMs2_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc.exit.i
  %i.ke = icmp sgt i8 %i.jy, -1
  br i1 %i.ke, label %.thread.i.i, label %_RNvMsc_NtCshWNgLW1t7rn_11x509_parser11certificateNtB5_8Validity11is_valid_at.exit.thread.i

.thread.i.i:                                      ; preds = %bb.ce, %bb.cd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.v, i64 676
  %i.kg = call fastcc noundef i8 @_RNvXs0_NtCscSncaK1wFM2_4time16offset_date_timeNtB5_14OffsetDateTimeNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.e, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.kf) #23, !noalias !350 ; 2 uses
  %i.kh = icmp eq i8 %i.kg, 0
  %i.ki = getelementptr inbounds nuw i8, ptr %i.v, i64 692
  %i.kj = load i8, ptr %i.ki, align 4, !range !14, !alias.scope !343, !noalias !350
  %i.kk = sub nsw i8 %i.jx, %i.kj
  %.sroa.05.0.i.i = select i1 %i.kh, i8 %i.kk, i8 %i.kg
  %i.kl = icmp slt i8 %.sroa.05.0.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !344
  br i1 %i.kl, label %bb.cf, label %bb.cx

_RNvMsc_NtCshWNgLW1t7rn_11x509_parser11certificateNtB5_8Validity11is_valid_at.exit.thread.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !344
  br label %bb.cx

bb.cf:                                            ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !344
  invoke fastcc void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate16signature_scheme(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.v)
          to label %.noexc24 unwind label %bb.cw

.noexc24:                                         ; preds = %bb.cf
  %i.km = load i64, ptr %i.h, align 8, !range !16, !noalias !344, !noundef !5 ; 2 uses
  %.not.i13 = icmp eq i64 %i.km, -1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ko = load i16, ptr %i.kn, align 8, !noalias !344 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.kq = load i16, ptr %i.kp, align 2, !noalias !344 ; 2 uses
  br i1 %.not.i13, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.noexc24
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.1236, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.621.0..sroa_idx.i, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !344
  br label %bb.cx

bb.ch:                                            ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !344
  %i.kr = getelementptr inbounds nuw i8, ptr %i.v, i64 696
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !343, !noalias !350, !nonnull !5, !noundef !5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.v, i64 704
  %i.ku = load i64, ptr %i.kt, align 8, !alias.scope !343, !noalias !350, !noundef !5
  %.sroa.011.0.in.i = getelementptr inbounds nuw i8, ptr %i.v, i64 840
  %.sroa.011.0.i = load ptr, ptr %.sroa.011.0.in.i, align 8, !alias.scope !343, !noalias !350, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.v, i64 848
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !343, !noalias !350, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !344
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate16verify_signature(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.v, i16 noundef %i.ko, i16 %i.kq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ks, i64 noundef %i.ku, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.011.0.i, i64 noundef %.sroa.3.0.i)
          to label %.noexc25 unwind label %bb.cw

.noexc25:                                         ; preds = %bb.ch
  %i.kv = load i64, ptr %i.g, align 8, !range !16, !noalias !344, !noundef !5
  %.not56.i = icmp eq i64 %i.kv, -1
  br i1 %.not56.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !344
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsczc01mt9THf_6webpki5error5ErrorECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.noexc26 unwind label %bb.cw

.noexc26:                                         ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !344
  br label %bb.cx

bb.cj:                                            ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !344
  %i.kw = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !343, !noalias !350, !nonnull !5, !noundef !5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 456
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !343, !noalias !350, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !344
  store i64 0, ptr %i.f, align 8, !noalias !344
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.la, align 8, !noalias !344
  %i.lb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %i.lb, align 8, !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !344
  store i64 0, ptr %i.c, align 8, !noalias !344
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 21, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !344
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %.sroa.550.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(21) @20, i64 21, i1 false), !noalias !344
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterhKj15_EECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.cl unwind label %bb.ck, !noalias !350

bb.ck:                                            ; preds = %bb.cn, %bb.cl, %bb.cj
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %.body unwind label %bb.cv, !noalias !350

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !344
end_hunk_0
