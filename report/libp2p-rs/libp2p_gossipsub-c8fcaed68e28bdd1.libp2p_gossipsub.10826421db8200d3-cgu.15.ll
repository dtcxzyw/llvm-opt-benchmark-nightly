Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_gossipsub-c8fcaed68e28bdd1.libp2p_gossipsub.10826421db8200d3-cgu.15?download=true
inline.NumInlined: 350
inline.NumDeleted: 167
begin_hunk_0_@_RNvMs0_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_7Metrics3new:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtBG_7counter7CounterEEB1F_.exit unwind label %bb.hg

bb.en:                                            ; preds = %bb.ek
  %i.pt = extractvalue { ptr, ptr } %i.po, 0
  %i.pu = extractvalue { ptr, ptr } %i.po, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtB1p_7counter7CounterEEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 52, ptr noundef nonnull %i.pt, ptr noundef nonnull %i.pu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.eo unwind label %bb.el

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.pv = load <2 x ptr>, ptr %i.au, align 16
  store <2 x ptr> %i.pv, ptr %i.av, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.pw = invoke { ptr, ptr } @_RNvXs0_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtB7_5gauge5GaugeENtNtCskKLDkoKarTP_4core7default7Default7defaultB1c_()
          to label %bb.er unwind label %bb.eq     ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit, %bb.ew, %bb.es, %bb.et, %bb.eq
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qf, %bb.es ], [ %i.qa, %bb.eq ], [ %i.qf, %bb.et ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ew ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.px = load ptr, ptr %i.av, align 16, !alias.scope !585, !nonnull !4, !noundef !4
  %i.py = atomicrmw add ptr %i.px, i64 -1 release, align 8, !noalias !585
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtBG_7counter7CounterEEB1F_.exit

bb.ep:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtBG_7counter7CounterEEB1F_.exit unwind label %bb.hg

bb.eq:                                            ; preds = %bb.eo
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit

bb.er:                                            ; preds = %bb.eo
  %i.qb = extractvalue { ptr, ptr } %i.pw, 0
  %i.qc = extractvalue { ptr, ptr } %i.pw, 1
  store ptr %i.qb, ptr %i.as, align 16
  %i.qd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.qc, ptr %i.qd, align 8
  %i.qe = invoke { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtB7_5gauge5GaugeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %bb.eu unwind label %bb.es     ; 2 uses

bb.es:                                            ; preds = %bb.eu, %bb.er
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.qg = load ptr, ptr %i.as, align 16, !alias.scope !589, !nonnull !4, !noundef !4
  %i.qh = atomicrmw add ptr %i.qg, i64 -1 release, align 8, !noalias !589
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.et, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit

bb.et:                                            ; preds = %bb.es
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gauge5GaugeEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.as) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit unwind label %bb.hg

bb.eu:                                            ; preds = %bb.er
  %i.qj = extractvalue { ptr, ptr } %i.qe, 0
  %i.qk = extractvalue { ptr, ptr } %i.qe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtB1p_5gauge5GaugeEEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 42, ptr noundef nonnull %i.qj, ptr noundef nonnull %i.qk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ev unwind label %bb.es

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ql = load <2 x ptr>, ptr %i.as, align 16
  store <2 x ptr> %i.ql, ptr %i.at, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store <2 x double> <double 0.000000e+00, double 5.000000e+01>, ptr %i.aq, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16
  %i.qm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 10, ptr %i.qm, align 8
  %i.qn = invoke noundef nonnull ptr @_RINvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB6_9Histogram3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1n_3map3MapINtNtB1n_9enumerate9EnumerateINtNtNtB1p_7sources6repeat6RepeatuEENCNvB6_14linear_buckets0EEECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aq)
          to label %bb.ey unwind label %bb.ex     ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116, %bb.fb, %bb.ex
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qr, %bb.ex ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.fb ], [ %.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.qo = load ptr, ptr %i.at, align 16, !alias.scope !593, !nonnull !4, !noundef !4
  %i.qp = atomicrmw add ptr %i.qo, i64 -1 release, align 8, !noalias !593
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.ew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit

bb.ew:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gauge5GaugeEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtBG_5gauge5GaugeEEB1F_.exit unwind label %bb.hg

bb.ex:                                            ; preds = %bb.ev
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit

bb.ey:                                            ; preds = %bb.ev
  store ptr %i.qn, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.qs = atomicrmw add ptr %i.qn, i64 1 monotonic, align 8
  %i.qt = icmp slt i64 %i.qs, 0
  br i1 %i.qt, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qu = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_NtNtNtB5_7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 41, ptr noundef nonnull %i.qu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.fd unwind label %bb.fc

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit, %bb.fk, %bb.ff, %bb.fg, %bb.fc
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.re, %bb.ff ], [ %i.qy, %bb.fc ], [ %i.re, %bb.fg ], [ %.pn.pn.pn.pn.pn.pn, %bb.fk ], [ %.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.qv = load ptr, ptr %i.ar, align 8, !alias.scope !597, !nonnull !4, !noundef !4
  %i.qw = atomicrmw add ptr %i.qv, i64 -1 release, align 8, !noalias !597
  %i.qx = icmp eq i64 %i.qw, 1
  br i1 %i.qx, label %bb.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit

bb.fb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram5InnerEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramECs1pSuea8KFR7_16libp2p_gossipsub.exit unwind label %bb.hg

bb.fc:                                            ; preds = %bb.fd, %bb.ez
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116

bb.fd:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.qz = invoke { ptr, ptr } @_RNvXs0_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7counter7CounterENtNtCskKLDkoKarTP_4core7default7Default7defaultB1c_()
          to label %bb.fe unwind label %bb.fc     ; 2 uses

bb.fe:                                            ; preds = %bb.fd
  %i.ra = extractvalue { ptr, ptr } %i.qz, 0
  %i.rb = extractvalue { ptr, ptr } %i.qz, 1
  store ptr %i.ra, ptr %i.ao, align 16
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.rb, ptr %i.rc, align 8
  %i.rd = invoke { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7counter7CounterENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
          to label %bb.fh unwind label %bb.ff     ; 2 uses

bb.ff:                                            ; preds = %bb.fh, %bb.fe
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.rf = load ptr, ptr %i.ao, align 16, !alias.scope !601, !nonnull !4, !noundef !4
  %i.rg = atomicrmw add ptr %i.rf, i64 -1 release, align 8, !noalias !601
  %i.rh = icmp eq i64 %i.rg, 1
  br i1 %i.rh, label %bb.fg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116 unwind label %bb.hg

bb.fh:                                            ; preds = %bb.fe
  %i.ri = extractvalue { ptr, ptr } %i.rd, 0
  %i.rj = extractvalue { ptr, ptr } %i.rd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB1p_7counter7CounterEEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 67, ptr noundef nonnull %i.ri, ptr noundef nonnull %i.rj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.fi unwind label %bb.ff

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.rk = load <2 x ptr>, ptr %i.ao, align 16
  store <2 x ptr> %i.rk, ptr %i.ap, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !602
  %i.rl = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 24, i64 noundef 8) #22, !noalias !602 ; 7 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.fj, label %bb.fm, !prof !6

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc117 unwind label %bb.fl

.noexc117:                                        ; preds = %bb.fj
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128, %bb.ft, %bb.fp, %bb.fq, %bb.fl
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rt, %bb.fp ], [ %i.rq, %bb.fl ], [ %i.rt, %bb.fq ], [ %.pn.pn.pn.pn.pn, %bb.ft ], [ %.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.rn = load ptr, ptr %i.ap, align 16, !alias.scope !606, !nonnull !4, !noundef !4
  %i.ro = atomicrmw add ptr %i.rn, i64 -1 release, align 8, !noalias !606
  %i.rp = icmp eq i64 %i.ro, 1
  br i1 %i.rp, label %bb.fk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116

bb.fk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ap) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtBG_7counter7CounterEEB1F_.exit116 unwind label %bb.hg

bb.fl:                                            ; preds = %bb.fj
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit

bb.fm:                                            ; preds = %bb.fi
  store i64 1, ptr %i.rl, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %i.rl, ptr %i.am, align 8
  %i.rr = atomicrmw add ptr %i.rl, i64 1 monotonic, align 8
  %i.rs = icmp slt i64 %i.rr, 0
  br i1 %i.rs, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_NtNtNtB5_7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 65, ptr noundef nonnull %i.rl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.fr unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.trap()
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.ru = load ptr, ptr %i.am, align 8, !alias.scope !610, !nonnull !4, !noundef !4
  %i.rv = atomicrmw add ptr %i.ru, i64 -1 release, align 8, !noalias !610
  %i.rw = icmp eq i64 %i.rv, 1
  br i1 %i.rw, label %bb.fq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit unwind label %bb.hg

bb.fr:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.rx = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  store ptr %i.rx, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !611
  %i.ry = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 24, i64 noundef 8) #22, !noalias !611 ; 7 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %bb.fs, label %bb.fv, !prof !6

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc123 unwind label %bb.fu

.noexc123:                                        ; preds = %bb.fs
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136, %bb.gc, %bb.fy, %bb.fz, %bb.fu
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sg, %bb.fy ], [ %i.sd, %bb.fu ], [ %i.sg, %bb.fz ], [ %.pn.pn.pn.pn, %bb.gc ], [ %.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.sa = load ptr, ptr %i.an, align 8, !alias.scope !615, !nonnull !4, !noundef !4
  %i.sb = atomicrmw add ptr %i.sa, i64 -1 release, align 8, !noalias !615
  %i.sc = icmp eq i64 %i.sb, 1
  br i1 %i.sc, label %bb.ft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit

bb.ft:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit unwind label %bb.hg

bb.fu:                                            ; preds = %bb.fs
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128

bb.fv:                                            ; preds = %bb.fr
  store i64 1, ptr %i.ry, align 8
  %.sroa.4.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i121, align 8
  %.sroa.5.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i122, align 8
  store ptr %i.ry, ptr %i.ak, align 8
  %i.se = atomicrmw add ptr %i.ry, i64 1 monotonic, align 8
  %i.sf = icmp slt i64 %i.se, 0
  br i1 %i.sf, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_NtNtNtB5_7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 88, ptr noundef nonnull %i.ry, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ga unwind label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  call void @llvm.trap()
  unreachable

bb.fy:                                            ; preds = %bb.fw
  %i.sg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.sh = load ptr, ptr %i.ak, align 8, !alias.scope !619, !nonnull !4, !noundef !4
  %i.si = atomicrmw add ptr %i.sh, i64 -1 release, align 8, !noalias !619
  %i.sj = icmp eq i64 %i.si, 1
  br i1 %i.sj, label %bb.fz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128

bb.fz:                                            ; preds = %bb.fy
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128 unwind label %bb.hg

bb.ga:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.sk = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  store ptr %i.sk, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !620
  %i.sl = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 24, i64 noundef 8) #22, !noalias !620 ; 7 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.gb, label %bb.ge, !prof !6

bb.gb:                                            ; preds = %bb.ga
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc131 unwind label %bb.gd

.noexc131:                                        ; preds = %bb.gb
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit, %bb.gk, %bb.gh, %bb.gi, %bb.gd
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.st, %bb.gh ], [ %i.sq, %bb.gd ], [ %i.st, %bb.gi ], [ %.pn.pn.pn, %bb.gk ], [ %.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.sn = load ptr, ptr %i.al, align 8, !alias.scope !624, !nonnull !4, !noundef !4
  %i.so = atomicrmw add ptr %i.sn, i64 -1 release, align 8, !noalias !624
  %i.sp = icmp eq i64 %i.so, 1
  br i1 %i.sp, label %bb.gc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128

bb.gc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit128 unwind label %bb.hg

bb.gd:                                            ; preds = %bb.gb
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136

bb.ge:                                            ; preds = %bb.ga
  store i64 1, ptr %i.sl, align 8
  %.sroa.4.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i129, align 8
  %.sroa.5.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i130, align 8
  store ptr %i.sl, ptr %i.ai, align 8
  %i.sr = atomicrmw add ptr %i.sl, i64 1 monotonic, align 8
  %i.ss = icmp slt i64 %i.sr, 0
  br i1 %i.ss, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_NtNtNtB5_7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 77, ptr noundef nonnull %i.sl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.gj unwind label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.trap()
  unreachable

bb.gh:                                            ; preds = %bb.gf
  %i.st = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.su = load ptr, ptr %i.ai, align 8, !alias.scope !628, !nonnull !4, !noundef !4
  %i.sv = atomicrmw add ptr %i.su, i64 -1 release, align 8, !noalias !628
  %i.sw = icmp eq i64 %i.sv, 1
  br i1 %i.sw, label %bb.gi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136 unwind label %bb.hg

bb.gj:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.sx = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4
  store ptr %i.sx, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.sy = invoke { ptr, ptr } @_RNvMs1_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB7_9histogram9HistogramE20new_with_constructorB1c_(ptr noundef nonnull @_RNvYNCNvMs0_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtBa_7Metrics3new0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.gm unwind label %bb.gl     ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141, %bb.gn, %bb.gl
  %.pn.pn.pn = phi { ptr, i32 } [ %i.tc, %bb.gl ], [ %.pn.pn, %bb.gn ], [ %.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.sz = load ptr, ptr %i.aj, align 8, !alias.scope !632, !nonnull !4, !noundef !4
  %i.ta = atomicrmw add ptr %i.sz, i64 -1 release, align 8, !noalias !632
  %i.tb = icmp eq i64 %i.ta, 1
  br i1 %i.tb, label %bb.gk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136

bb.gk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit136 unwind label %bb.hg

bb.gl:                                            ; preds = %bb.gj
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit

bb.gm:                                            ; preds = %bb.gj
  %i.td = extractvalue { ptr, ptr } %i.sy, 0
  %i.te = extractvalue { ptr, ptr } %i.sy, 1
  store ptr %i.td, ptr %i.ah, align 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.te, ptr %i.tf, align 8
  %i.tg = invoke { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB7_9histogram9HistogramENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.gp unwind label %bb.go     ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147, %bb.gs, %bb.go
  %.pn.pn = phi { ptr, i32 } [ %i.tk, %bb.go ], [ %.pn, %bb.gs ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.th = load ptr, ptr %i.ah, align 16, !alias.scope !636, !nonnull !4, !noundef !4
  %i.ti = atomicrmw add ptr %i.th, i64 -1 release, align 8, !noalias !636
  %i.tj = icmp eq i64 %i.ti, 1
  br i1 %i.tj, label %bb.gn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit

bb.gn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit unwind label %bb.hg

bb.go:                                            ; preds = %bb.gq, %bb.gp, %bb.gm
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141

bb.gp:                                            ; preds = %bb.gm
  %i.tl = extractvalue { ptr, ptr } %i.tg, 0
  %i.tm = extractvalue { ptr, ptr } %i.tg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB1p_9histogram9HistogramEEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 33, ptr noundef nonnull %i.tl, ptr noundef nonnull %i.tm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.gq unwind label %bb.go

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.tn = invoke { ptr, ptr } @_RNvMs1_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB7_9histogram9HistogramE20new_with_constructorB1c_(ptr noundef nonnull @_RNvYNCNvMs0_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtBa_7Metrics3news_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.gr unwind label %bb.go     ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.to = extractvalue { ptr, ptr } %i.tn, 0
  %i.tp = extractvalue { ptr, ptr } %i.tn, 1
  store ptr %i.to, ptr %i.ag, align 16
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.tp, ptr %i.tq, align 8
  %i.tr = invoke { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB7_9histogram9HistogramENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.gu unwind label %bb.gt     ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147: ; preds = %bb.hd, %bb.he, %bb.ha, %bb.hb, %bb.gt
  %.pn = phi { ptr, i32 } [ %i.uc, %bb.ha ], [ %i.tv, %bb.gt ], [ %i.uc, %bb.hb ], [ %i.ui, %bb.he ], [ %i.ui, %bb.hd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.ts = load ptr, ptr %i.ag, align 16, !alias.scope !640, !nonnull !4, !noundef !4
  %i.tt = atomicrmw add ptr %i.ts, i64 -1 release, align 8, !noalias !640
  %i.tu = icmp eq i64 %i.tt, 1
  br i1 %i.tu, label %bb.gs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141

bb.gs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api6rwlock6RwLockNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramEEE9drop_slowB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtBG_9histogram9HistogramEEB1F_.exit141 unwind label %bb.hg

bb.gt:                                            ; preds = %bb.gw, %bb.gu, %bb.gr
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147

bb.gu:                                            ; preds = %bb.gr
  %i.tw = extractvalue { ptr, ptr } %i.tr, 0
  %i.tx = extractvalue { ptr, ptr } %i.tr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB1p_9histogram9HistogramEEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 45, ptr noundef nonnull %i.tw, ptr noundef nonnull %i.tx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.gv unwind label %bb.gt

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !641
  %i.ty = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 24, i64 noundef 8) #22, !noalias !641 ; 7 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %bb.gw, label %bb.gx, !prof !6

bb.gw:                                            ; preds = %bb.gv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc144 unwind label %bb.gt

.noexc144:                                        ; preds = %bb.gw
  unreachable

bb.gx:                                            ; preds = %bb.gv
  store i64 1, ptr %i.ty, align 8
  %.sroa.4.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i142, align 8
  %.sroa.5.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i143, align 8
  store ptr %i.ty, ptr %i.ae, align 8
  %i.ua = atomicrmw add ptr %i.ty, i64 1 monotonic, align 8
  %i.ub = icmp slt i64 %i.ua, 0
  br i1 %i.ub, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  invoke void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_NtNtNtB5_7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 72, ptr noundef nonnull %i.ty, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.hc unwind label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.trap()
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.uc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.ud = load ptr, ptr %i.ae, align 8, !alias.scope !645, !nonnull !4, !noundef !4
  %i.ue = atomicrmw add ptr %i.ud, i64 -1 release, align 8, !noalias !645
  %i.uf = icmp eq i64 %i.ue, 1
  br i1 %i.uf, label %bb.hb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147

bb.hb:                                            ; preds = %bb.ha
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147 unwind label %bb.hg

bb.hc:                                            ; preds = %bb.gy
  %i.ug = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  store ptr %i.ug, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.uh = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @65)
          to label %bb.hf unwind label %bb.hd     ; 2 uses

bb.hd:                                            ; preds = %bb.hc
  %i.ui = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.uj = load ptr, ptr %i.af, align 8, !alias.scope !649, !nonnull !4, !noundef !4
  %i.uk = atomicrmw add ptr %i.uj, i64 -1 release, align 8, !noalias !649
  %i.ul = icmp eq i64 %i.uk, 1
  br i1 %i.ul, label %bb.he, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147

bb.he:                                            ; preds = %bb.hd
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterECs1pSuea8KFR7_16libp2p_gossipsub.exit147 unwind label %bb.hg

bb.hf:                                            ; preds = %bb.hc
  %i.um = extractvalue { i64, i64 } %i.uh, 0
  %i.un = extractvalue { i64, i64 } %i.uh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.uo = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.up = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.uq = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ur = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.us = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 504
  store <2 x i64> %i.cn, ptr %i.ut, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uu, ptr noundef nonnull align 8 dereferenceable(32) @67, i64 32, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.um, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.un, ptr %.sroa.57.0..sroa_idx, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.da, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.db, ptr %i.uw, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ds, ptr %i.ux, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.dt, ptr %i.uy, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ek, ptr %i.uz, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.el, ptr %i.va, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.fc, ptr %i.vb, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fd, ptr %i.vc, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.fu, ptr %i.vd, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.fv, ptr %i.ve, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.gm, ptr %i.vf, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.gn, ptr %i.vg, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.he, ptr %i.vh, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.hf, ptr %i.vi, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.hw, ptr %i.vj, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.hx, ptr %i.vk, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.io, ptr %i.vl, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ip, ptr %i.vm, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.jg, ptr %i.vn, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.jh, ptr %i.vo, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.kq, ptr %i.vp, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.kr, ptr %i.vq, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.li, ptr %i.vr, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.lj, ptr %i.vs, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.jy, ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.jz, ptr %i.vu, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ma, ptr %i.vv, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.mb, ptr %i.vw, align 8
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.vy = load <2 x ptr>, ptr %i.bi, align 16
  store <2 x ptr> %i.vy, ptr %i.vx, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.wa = load <2 x ptr>, ptr %i.bg, align 16
  store <2 x ptr> %i.wa, ptr %i.vz, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.wc = load <2 x ptr>, ptr %i.be, align 16
  store <2 x ptr> %i.wc, ptr %i.wb, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.we = load <2 x ptr>, ptr %i.bc, align 16
  store <2 x ptr> %i.we, ptr %i.wd, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.wg = load <2 x ptr>, ptr %i.ba, align 16
  store <2 x ptr> %i.wg, ptr %i.wf, align 8
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.wi = load <2 x ptr>, ptr %i.av, align 16
  store <2 x ptr> %i.wi, ptr %i.wh, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.wk = load <2 x ptr>, ptr %i.at, align 16
  store <2 x ptr> %i.wk, ptr %i.wj, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.wm = load <2 x ptr>, ptr %i.ap, align 16
  %i.wn = insertelement <4 x ptr> poison, ptr %i.uo, i64 0
  %i.wo = insertelement <4 x ptr> %i.wn, ptr %i.up, i64 1
  %i.wp = shufflevector <2 x ptr> %i.wm, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wq = shufflevector <4 x ptr> %i.wo, <4 x ptr> %i.wp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.wq, ptr %i.wl, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ws = load <2 x ptr>, ptr %i.ah, align 16
  %i.wt = insertelement <4 x ptr> poison, ptr %i.uq, i64 0
  %i.wu = insertelement <4 x ptr> %i.wt, ptr %i.ur, i64 1
  %i.wv = shufflevector <2 x ptr> %i.ws, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ww = shufflevector <4 x ptr> %i.wu, <4 x ptr> %i.wv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ww, ptr %i.wr, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.wy = load <2 x ptr>, ptr %i.ag, align 16
  store <2 x ptr> %i.wy, ptr %i.wx, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.us, ptr %i.wz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char:bb.a

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !778
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !784
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !785, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !785, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !785
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !785
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB4_6ConfigNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 72, i64 noundef 8) #22 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x double> <double -1.600000e+04, double -8.000000e+03>, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double -4.000000e+03, double -2.000000e+03>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double -1.000000e+03, double 0.000000e+00>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> <double 1.000000e+00, double 1.000000e+01>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 1.000000e+02, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 300, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 50, ptr %i.h, align 8
  store i64 9, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gaugeNtB4_5GaugeNtNtCskKLDkoKarTP_4core7default7Default7defaultCs1pSuea8KFR7_16libp2p_gossipsub() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !788
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 24, i64 noundef 8) #22, !noalias !788 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23, !noalias !788
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counterNtB4_7CounterNtNtCskKLDkoKarTP_4core7default7Default7defaultCs1pSuea8KFR7_16libp2p_gossipsub() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !791
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 24, i64 noundef 8) #22, !noalias !791 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23, !noalias !791
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsf_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_5ChurnNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !7, !noundef !4
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 2)
  br i1 %i.b, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 8)
  br i1 %i.c, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5)
  br i1 %i.d, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5)
  br i1 %i.e, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 6)
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g
  %.sroa.0.0 = phi i1 [ true, %bb.e ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTE10init_frontB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !798
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !798, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !798
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %.noexc1.i unwind label %bb.g, !noalias !797

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !798
  store ptr %i.k, ptr %i.a, align 8, !noalias !798
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !797

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1I_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_.exit unwind label %bb.g, !noalias !797 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !797
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_7PenaltyNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !4
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 12)
  br i1 %i.b, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 13)
  br i1 %i.c, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 14)
  br i1 %i.d, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 12)
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ false, %bb.f ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsz_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_11MessageTypeNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 11)
  br i1 %i.c, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsn_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17LabelValueEncoderNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 8)
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noalias !803, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1pSuea8KFR7_16libp2p_gossipsub.exit, label %bb.b, !prof !804

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1pSuea8KFR7_16libp2p_gossipsub(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1pSuea8KFR7_16libp2p_gossipsub.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1pSuea8KFR7_16libp2p_gossipsub.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvMs0_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtBa_7Metrics3new0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBc_() unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x double> <double 0.000000e+00, double 5.000000e+01>, ptr %i.a, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 100, ptr %i.b, align 8
  %i.c = call noundef nonnull ptr @_RINvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB6_9Histogram3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1n_3map3MapINtNtB1n_9enumerate9EnumerateINtNtNtB1p_7sources6repeat6RepeatuEENCNvB6_14linear_buckets0EEECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvMs0_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtBa_7Metrics3news_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBc_() unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double 5.000000e+00, double 1.000000e+01>, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double 2.500000e+01, double 5.000000e+01>, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> <double 7.500000e+01, double 1.000000e+02>, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> <double 2.500000e+02, double 5.000000e+02>, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x double> <double 1.000000e+03, double 2.000000e+03>, ptr %i.f, align 16
  %i.g = call noundef nonnull ptr @_RINvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB6_9Histogram3newAdjc_ECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs1pSuea8KFR7_16libp2p_gossipsub.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @112, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !805
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1pSuea8KFR7_16libp2p_gossipsub(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1A_ECs1pSuea8KFR7_16libp2p_gossipsub(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types8PeerInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types8PeerInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEE32forget_allocation_drop_remainingCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types8PeerInfoE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsE32forget_allocation_drop_remainingB16_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbbEE32forget_allocation_drop_remainingB11_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4IterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2N_6ValuesBL_bEB1D_4foldjNCINvNtNtB1J_8adapters3map8map_foldRbjjNCINvNvXs1_NtB46_6filterINtB4N_6FilterppEB1D_5count8to_usizeB4y_NCNvMs0_NtBP_7metricsNtB5M_7Metrics29non_subscription_topics_count0E0NCINvXsK_NtB1H_5accumjNtB6U_3Sum3sumINtB44_3MapB3w_B4C_EE0E0E0EBP_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB6_9Histogram3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1n_3map3MapINtNtB1n_9enumerate9EnumerateINtNtNtB1p_7sources6repeat6RepeatuEENCNvB6_14linear_buckets0EEECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB6_9Histogram3newAdjc_ECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvB1V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics10ChurnLabelNtNtB7_7counter7CounterE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics14InclusionLabelNtNtB7_7counter7CounterE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7counter7CounterE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_EBS_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB13_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_5gauge5GaugeE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13MeshPeerLabelNtNtB7_5gauge5GaugeE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtB7_7counter7CounterE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13ProtocolLabelNtNtB7_5gauge5GaugeE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_9histogram9HistogramNtNtB1c_7metrics11HistBuilderE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB5_9Histogram7observe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gaugeINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicxEINtB5_6AtomicxE3get(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics16MessageTypeLabelNtNtB7_9histogram9HistogramE13get_or_createB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterBR_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs0_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_5gauge5GaugeENtNtCskKLDkoKarTP_4core7default7Default7defaultB1c_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_5gauge5GaugeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB1p_5gauge5GaugeEEB1U_(ptr noalias nofree noundef align 8 dereferenceable(120), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs0_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7counter7CounterENtNtCskKLDkoKarTP_4core7default7Default7defaultB1c_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7counter7CounterENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB1p_7counter7CounterEEB1U_(ptr noalias nofree noundef align 8 dereferenceable(120), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs0_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13MeshPeerLabelNtNtB7_5gauge5GaugeENtNtCskKLDkoKarTP_4core7default7Default7defaultB1c_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs4_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13MeshPeerLabelNtNtB7_5gauge5GaugeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB3_8Registry13priv_registerReB1e_INtNtNtB5_7metrics6family6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics13MeshPeerLabelNtNtB1p_5gauge5GaugeEEB1U_(ptr noalias nofree noundef align 8 dereferenceable(120), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs0_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics14InclusionLabelNtNtB7_7counter7CounterENtNtCskKLDkoKarTP_4core7default7Default7defaultB1c_() unnamed_addr #0
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!599 = !{!349}
!600 = !{!351}
!601 = !{!351, !349, !347}
!602 = !{!353}
!603 = !{!355}
!604 = !{!357}
!605 = !{!359}
!606 = !{!359, !357, !355}
!607 = !{!361}
!608 = !{!363}
!609 = !{!365}
!610 = !{!365, !363, !361}
!611 = !{!367}
!612 = !{!369}
!613 = !{!371}
!614 = !{!373}
!615 = !{!373, !371, !369}
!616 = !{!375}
!617 = !{!377}
!618 = !{!379}
!619 = !{!379, !377, !375}
!620 = !{!381}
!621 = !{!383}
!622 = !{!385}
!623 = !{!387}
!624 = !{!387, !385, !383}
!625 = !{!389}
!626 = !{!391}
!627 = !{!393}
!628 = !{!393, !391, !389}
!629 = !{!395}
!630 = !{!397}
!631 = !{!399}
!632 = !{!399, !397, !395}
!633 = !{!401}
!634 = !{!403}
!635 = !{!405}
!636 = !{!405, !403, !401}
!637 = !{!407}
!638 = !{!409}
!639 = !{!411}
!640 = !{!411, !409, !407}
!641 = !{!413}
!642 = !{!415}
!643 = !{!417}
!644 = !{!419}
!645 = !{!419, !417, !415}
!646 = !{!421}
!647 = !{!423}
!648 = !{!425}
!649 = !{!425, !423, !421}
!650 = distinct !{!650, i1 true, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_"}
!651 = distinct !{!651, !650, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 1"}
!652 = distinct !{!652, !650, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 0"}
!653 = distinct !{!653, i1 true, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_"}
!654 = distinct !{!654, !653, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 1"}
!655 = distinct !{!655, !653, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 0"}
!656 = !{!652, !651}
!657 = !{!652}
!658 = !{!655, !654}
!659 = !{!655}
!660 = distinct !{!660, i1 true, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_"}
!661 = distinct !{!661, !660, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 1"}
!662 = distinct !{!662, !660, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 0"}
!663 = distinct !{!663, i1 true, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_"}
!664 = distinct !{!664, !663, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 1"}
!665 = distinct !{!665, !663, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 0"}
!666 = !{!662, !661}
!667 = !{!662}
!668 = !{!665, !664}
!669 = !{!665}
!670 = distinct !{!670, i1 true, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_"}
!671 = distinct !{!671, !670, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 1"}
!672 = distinct !{!672, !670, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtB5_12SpecToString14spec_to_stringBC_: argument 0"}
!673 = !{!672, !671}
!674 = !{!672}
!675 = distinct !{!675, i1 true, !"_RNvXsI_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_10ChurnLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq"}
!676 = distinct !{!676, !675, !"_RNvXsI_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_10ChurnLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 0"}
!677 = distinct !{!677, !675, !"_RNvXsI_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_10ChurnLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 1"}
!678 = !{!676}
!679 = !{!677}
!680 = !{!676, !677}
!681 = distinct !{!681, i1 true, !"_RNvXs1b_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12RpcSentLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq"}
!682 = distinct !{!682, !681, !"_RNvXs1b_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12RpcSentLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 0"}
!683 = distinct !{!683, !681, !"_RNvXs1b_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12RpcSentLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 1"}
!684 = !{!682}
!685 = !{!683}
!686 = !{!682, !683}
!687 = distinct !{!687, i1 true, !"_RNvXs1i_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_13MeshPeerLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq"}
!688 = distinct !{!688, !687, !"_RNvXs1i_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_13MeshPeerLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 0"}
!689 = distinct !{!689, !687, !"_RNvXs1i_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_13MeshPeerLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 1"}
!690 = !{!688}
!691 = !{!689}
!692 = !{!688, !689}
!693 = distinct !{!693, i1 true, !"_RNvXsB_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_14InclusionLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq"}
!694 = distinct !{!694, !693, !"_RNvXsB_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_14InclusionLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 0"}
!695 = distinct !{!695, !693, !"_RNvXsB_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_14InclusionLabelNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 1"}
!696 = !{!694}
!697 = !{!695}
!698 = !{!694, !695}
!699 = distinct !{!699, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs1pSuea8KFR7_16libp2p_gossipsub"}
!700 = distinct !{!700, !699, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!701 = distinct !{!701, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs1pSuea8KFR7_16libp2p_gossipsub"}
!702 = distinct !{!702, !701, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!703 = !{!700}
!704 = !{!702}
!705 = distinct !{!705, i1 true, !"_RNvXsz_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_11MessageTypeNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode"}
!706 = distinct !{!706, !705, !"_RNvXsz_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_11MessageTypeNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode: argument 0"}
!707 = !{!706}
!708 = distinct !{!708, i1 true, !"_RNvXs8_NtCs1pSuea8KFR7_16libp2p_gossipsub5errorNtB5_12PublishErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!709 = distinct !{!709, !708, !"_RNvXs8_NtCs1pSuea8KFR7_16libp2p_gossipsub5errorNtB5_12PublishErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!710 = distinct !{!710, !708, !"_RNvXs8_NtCs1pSuea8KFR7_16libp2p_gossipsub5errorNtB5_12PublishErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!711 = !{!709}
!712 = !{i64 0, i64 -9223372036854775802}
!713 = !{!709, !710}
!714 = !{i8 0, i8 9}
!715 = distinct !{!715, i1 true, !"_RNvXs9_NtCs1pSuea8KFR7_16libp2p_gossipsub5errorNtB5_17SubscriptionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!716 = distinct !{!716, !715, !"_RNvXs9_NtCs1pSuea8KFR7_16libp2p_gossipsub5errorNtB5_17SubscriptionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!717 = distinct !{!717, !715, !"_RNvXs9_NtCs1pSuea8KFR7_16libp2p_gossipsub5errorNtB5_17SubscriptionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!718 = !{!716}
!719 = !{i64 -1, i64 -9223372036854775802}
!720 = !{!716, !717}
!721 = distinct !{!721, i1 true, !"_RNvXsN_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_10ChurnLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!722 = distinct !{!722, !721, !"_RNvXsN_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_10ChurnLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!723 = distinct !{!723, !721, !"_RNvXsN_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_10ChurnLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!724 = !{!723, !722}
!725 = distinct !{!725, i1 true, !"_RNvXs11_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12PenaltyLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!726 = distinct !{!726, !725, !"_RNvXs11_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12PenaltyLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!727 = distinct !{!727, !725, !"_RNvXs11_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12PenaltyLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!728 = !{!727, !726}
!729 = distinct !{!729, i1 true, !"_RNvXs1g_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12RpcSentLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!730 = distinct !{!730, !729, !"_RNvXs1g_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12RpcSentLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!731 = distinct !{!731, !729, !"_RNvXs1g_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_12RpcSentLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!732 = !{!731, !730}
!733 = distinct !{!733, i1 true, !"_RNvXs1n_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_13MeshPeerLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!734 = distinct !{!734, !733, !"_RNvXs1n_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_13MeshPeerLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!735 = distinct !{!735, !733, !"_RNvXs1n_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_13MeshPeerLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!736 = !{!735, !734}
!737 = distinct !{!737, i1 true, !"_RNvXsT_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_13ProtocolLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!738 = distinct !{!738, !737, !"_RNvXsT_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_13ProtocolLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!739 = distinct !{!739, !737, !"_RNvXsT_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_13ProtocolLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!740 = !{!739, !738}
!741 = distinct !{!741, i1 true, !"_RNvXsG_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_14InclusionLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!742 = distinct !{!742, !741, !"_RNvXsG_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_14InclusionLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!743 = distinct !{!743, !741, !"_RNvXsG_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_14InclusionLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!744 = !{!743, !742}
!745 = distinct !{!745, i1 true, !"_RNvXs18_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_16MessageTypeLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!746 = distinct !{!746, !745, !"_RNvXs18_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_16MessageTypeLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!747 = distinct !{!747, !745, !"_RNvXs18_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB6_16MessageTypeLabelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!748 = !{!747, !746}
!749 = distinct !{!749, i1 true, !"_RNvXs8_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB5_12SigningErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!750 = distinct !{!750, !749, !"_RNvXs8_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB5_12SigningErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!751 = distinct !{!751, !749, !"_RNvXs8_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB5_12SigningErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!752 = !{!751, !750}
!753 = distinct !{!753, i1 true, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!754 = distinct !{!754, !753, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!755 = !{!754}
!756 = distinct !{!756, i1 true, !"_RNvXsc_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gaugeNtB5_5GaugeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub"}
!757 = distinct !{!757, !756, !"_RNvXsc_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gaugeNtB5_5GaugeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub: argument 1"}
!758 = distinct !{!758, !756, !"_RNvXsc_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gaugeNtB5_5GaugeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!759 = !{!758, !757}
!760 = distinct !{!760, i1 true, !"_RNvXsa_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counterNtB5_7CounterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub"}
!761 = distinct !{!761, !760, !"_RNvXsa_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counterNtB5_7CounterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub: argument 1"}
!762 = distinct !{!762, !760, !"_RNvXsa_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counterNtB5_7CounterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!763 = !{!762, !761}
!764 = distinct !{!764, i1 true, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub"}
!765 = distinct !{!765, !764, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!766 = distinct !{!766, i1 true, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!767 = distinct !{!767, !766, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!768 = distinct !{!768, !764, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs1pSuea8KFR7_16libp2p_gossipsub: argument 1"}
!769 = !{!765}
!770 = !{!767}
!771 = !{!765, !768}
!772 = !{!767, !765}
!773 = distinct !{!773, i1 true, !"_RNvXsq_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_7PenaltyNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode"}
!774 = distinct !{!774, !773, !"_RNvXsq_NtCs1pSuea8KFR7_16libp2p_gossipsub7metricsNtB5_7PenaltyNtNtCsf6yrgnUmEzM_17prometheus_client8encoding16EncodeLabelValue6encode: argument 0"}
!775 = !{!774}
!776 = distinct !{!776, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!777 = distinct !{!777, !776, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!778 = !{!777}
!779 = distinct !{!779, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str"}
!780 = distinct !{!780, !779, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 1"}
!781 = distinct !{!781, !779, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 0"}
!782 = distinct !{!782, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs1pSuea8KFR7_16libp2p_gossipsub"}
!783 = distinct !{!783, !782, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!784 = !{!780}
!785 = !{!783, !781}
!786 = distinct !{!786, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicxEEE3newCs1pSuea8KFR7_16libp2p_gossipsub"}
!787 = distinct !{!787, !786, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicxEEE3newCs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!788 = !{!787}
!789 = distinct !{!789, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEEE3newCs1pSuea8KFR7_16libp2p_gossipsub"}
!790 = distinct !{!790, !789, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEEE3newCs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!791 = !{!790}
!792 = distinct !{!792, i1 true, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_"}
!793 = distinct !{!793, !792, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2H_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1V_: argument 0"}
!794 = distinct !{!794, i1 true, !"_RNCNvMsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B1X_"}
!795 = distinct !{!795, !794, !"_RNCNvMsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B1X_: argument 1"}
!796 = distinct !{!796, !794, !"_RNCNvMsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B1X_: argument 0"}
!797 = !{!793}
!798 = !{!796, !795, !793}
!799 = distinct !{!799, i1 true, !"_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1pSuea8KFR7_16libp2p_gossipsub"}
!800 = distinct !{!800, !799, !"_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!801 = distinct !{!801, i1 true, !"_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2c_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1pSuea8KFR7_16libp2p_gossipsub"}
!802 = distinct !{!802, !801, !"_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2c_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1pSuea8KFR7_16libp2p_gossipsub: argument 0"}
!803 = !{!802, !800}
!804 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!805 = distinct !{null}
end_hunk_2
