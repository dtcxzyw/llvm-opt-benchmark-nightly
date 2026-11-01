Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.00?download=true
inline.NumInlined: 871
inline.NumDeleted: 454
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvXs5_NtCs2TJrahNLnPN_22pingora_load_balancing12health_checkNtB7_14TcpHealthCheckNtB7_11HealthCheck5check0B9_:bb.a
  %.sroa.2.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1259
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutNCINvNtCskeugdADtBsi_12pingora_core10connectors16do_connect_innerNtNtNtB1o_9upstreams4peer9BasicPeerE0NtNtBE_12fast_timeout11FastTimeoutEECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.op)
          to label %bb.en unwind label %bb.gv, !noalias !1261

bb.en:                                            ; preds = %bb.em
  %i.ot = trunc nuw i64 %i.or to i1
  br i1 %i.ot, label %bb.eo, label %bb.ha

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1259
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1259
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.ou, ptr %i.g, align 8, !noalias !1259
  %.sroa.533.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer9BasicPeerNtB6_7Display3fmtCs2TJrahNLnPN_22pingora_load_balancing, ptr %.sroa.533.0..sroa_idx.i.i.i, align 8, !noalias !1259
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ov, ptr %i.ow, align 8, !noalias !1259
  %.sroa.535.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.535.0..sroa_idx.i.i.i, align 8, !noalias !1259
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @23, ptr noundef nonnull %i.g)
          to label %bb.eq unwind label %bb.ep, !noalias !1261

bb.ep:                                            ; preds = %bb.eo
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1259
  br label %.body.i.i31.i

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !1262, !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1263
  invoke void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %.noexc26.i.i.i unwind label %bb.eu, !noalias !1261

.noexc26.i.i.i:                                   ; preds = %bb.eq
  %i.oy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i16 0, ptr %i.oy, align 8, !noalias !1264
  %i.oz = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  store i8 3, ptr %i.oz, align 1, !noalias !1263
  %i.pa = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 0, ptr %i.pa, align 8, !noalias !1263
  %i.pb = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr null, ptr %i.pb, align 8, !noalias !1263
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1265
  %i.pc = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1825) 72, i64 noundef range(i64 1, 9) 8) #22, !noalias !1265 ; 3 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.er, label %bb.ev, !prof !29

bb.er:                                            ; preds = %.noexc26.i.i.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #26
          to label %.noexc.i.i.i.i.i.i unwind label %bb.es, !noalias !1266

.noexc.i.i.i.i.i.i:                               ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.er
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f) #23
          to label %.body.i.i31.i unwind label %bb.et, !noalias !1266

bb.et:                                            ; preds = %bb.es
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1266
  unreachable

.body.i.i31.i:                                    ; preds = %bb.eu, %bb.es, %bb.ep
  %.pn18.i.i.i = phi { ptr, i32 } [ %i.ox, %bb.ep ], [ %i.pg, %bb.eu ], [ %i.pe, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1259
  br label %bb.ea

bb.eu:                                            ; preds = %bb.eq
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i31.i

bb.ev:                                            ; preds = %.noexc26.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !1266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1259
  br label %bb.ha

bb.ew:                                            ; preds = %bb.gx, %.body30.i.i.i, %bb.ej
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1261
  unreachable

bb.ex:                                            ; preds = %bb.ed, %bb.dy
  %i.pi = phi ptr [ %i.ne, %bb.ed ], [ %i.ar, %bb.dy ] ; 4 uses
  %i.pj = phi ptr [ %i.nf, %bb.ed ], [ %i.aq, %bb.dy ] ; 3 uses
  %i.pk = phi ptr [ %i.ng, %bb.ed ], [ %.phi.trans.insert93.i, %bb.dy ] ; 4 uses
  %i.pl = phi ptr [ %i.nh, %bb.ed ], [ %i.kn, %bb.dy ] ; 3 uses
  %i.pm = phi ptr [ %i.nk, %bb.ed ], [ %.phi.trans.insert.i19.i, %bb.dy ] ; 4 uses
  %i.pn = phi ptr [ %i.nl, %bb.ed ], [ %i.nd, %bb.dy ] ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.540.i.i.i.i)
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.pq = load i8, ptr %i.pp, align 8, !range !16, !noalias !1267, !noundef !7
  switch i8 %i.pq, label %default.unreachable69 [
    i8 0, label %bb.ez
    i8 1, label %bb.fa
    i8 2, label %bb.fb
    i8 3, label %bb.ey
    i8 4, label %bb.ft
  ]

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1267
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 833
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 834
  store i8 0, ptr %i.ps, align 2, !noalias !1267
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 760
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.pv, i64 40, i1 false), !noalias !1267
  store i8 1, ptr %i.pr, align 1, !noalias !1267
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pw, ptr noundef nonnull align 8 dereferenceable(32) %i.po, i64 32, i1 false), !noalias !1267
  %i.px = load <2 x ptr>, ptr %i.pu, align 8, !noalias !1267
  %i.py = load ptr, ptr %i.pu, align 8, !noalias !1267, !nonnull !7, !align !6, !noundef !7
  store <2 x ptr> %i.px, ptr %i.pt, align 8, !noalias !1267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1267
  %.sroa.8.0..sroa_idx.i.i.i30.i = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %i.py, ptr %.sroa.8.0..sroa_idx.i.i.i30.i, align 8, !noalias !1267
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 978
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 2, !noalias !1267
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ex
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25
          to label %.noexc28.i.i.i unwind label %bb.gs, !noalias !1261

.noexc28.i.i.i:                                   ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.ex
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25
          to label %.noexc29.i.i.i unwind label %bb.gs, !noalias !1261

.noexc29.i.i.i:                                   ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1267
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  invoke fastcc void @_RNCINvNtNtCskeugdADtBsi_12pingora_core10connectors2l47connectNtNtNtB8_9upstreams4peer9BasicPeerE0Cs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(address) dereferenceable(344) %i.d, ptr noundef nonnull align 8 %i.pz, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.fe unwind label %bb.fd, !noalias !1268

bb.fd:                                            ; preds = %bb.fc
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1267
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCskeugdADtBsi_12pingora_core10connectors2l47connectNtNtNtBK_9upstreams4peer9BasicPeerE0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.pz) #23
          to label %bb.fs unwind label %bb.fr, !noalias !1268

bb.fe:                                            ; preds = %bb.fc
  %i.qb = load i64, ptr %i.d, align 8, !range !33, !noalias !1267, !noundef !7 ; 3 uses
  %i.qc = icmp eq i64 %i.qb, -3
  br i1 %i.qc, label %bb.gt, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1267 ; 3 uses
  %.sroa.540.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.540.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.540.0..sroa_idx.i.i.i.i, i64 328, i1 false), !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1267
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCskeugdADtBsi_12pingora_core10connectors2l47connectNtNtNtBK_9upstreams4peer9BasicPeerE0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.pz)
          to label %bb.fg unwind label %bb.fp, !noalias !1268

bb.fg:                                            ; preds = %bb.ff
  %i.qd = icmp eq i64 %i.qb, -2
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 834 ; 4 uses
  br i1 %i.qd, label %bb.fq, label %bb.fi

bb.fh:                                            ; preds = %bb.gg, %.body17.i.i.i.i, %.body.i.i.i28.i
  %.pn6.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.qo, %.body.i.i.i28.i ], [ %eh.lpad-body18.i.i.i.i, %.body17.i.i.i.i ], [ %i.rr, %bb.gg ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 834
  %i.qg = load i8, ptr %i.qf, align 2, !range !17, !noalias !1267, !noundef !7
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.gq, label %bb.fs

bb.fi:                                            ; preds = %bb.fg
  %.sroa.543.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.543.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.540.i.i.i.i, i64 328, i1 false), !noalias !1267
  store i8 1, ptr %i.qe, align 2, !noalias !1267
  store i64 %i.qb, ptr %i.e, align 8, !noalias !1267
  %.sroa.442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.442.0..sroa_idx.i.i.i.i, align 8, !noalias !1267
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !1267, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 416
  %.val.i.i.i.i = load i64, ptr %i.qk, align 8, !noalias !1268, !noundef !7 ; 2 uses
  %i.ql = icmp sgt i64 %.val.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ql)
  %.not.i27.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i27.i.i.i, label %bb.fj, label %.thread.i.i.i27.i

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1267
  store i8 0, ptr %i.qe, align 2, !noalias !1267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull align 8 dereferenceable(344) %i.e, i64 344, i1 false), !noalias !1267
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1269
  %i.qm = call noundef align 8 dereferenceable_or_null(344) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1825) 344, i64 noundef range(i64 1, 9) 8) #22, !noalias !1269 ; 3 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %bb.fk, label %bb.fn, !prof !29

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 344) #26
          to label %.noexc.i.i.i29.i unwind label %bb.fl, !noalias !1268

.noexc.i.i.i29.i:                                 ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %bb.fk
  %i.qo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream6StreamECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.c) #23
          to label %.body.i.i.i28.i unwind label %bb.fm, !noalias !1268

bb.fm:                                            ; preds = %bb.fl
  %i.qp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1268
  unreachable

.body.i.i.i28.i:                                  ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1267
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.qm, ptr noundef nonnull align 8 dereferenceable(344) %i.e, i64 344, i1 false), !noalias !1268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1267
  br label %bb.fo

bb.fo:                                            ; preds = %bb.gf, %bb.fn
  %.sroa.054.0.i.i.i.i = phi ptr [ %i.qm, %bb.fn ], [ inttoptr (i64 1 to ptr), %bb.gf ]
  %.sroa.455.0.i.i.i.i = phi ptr [ @34, %bb.fn ], [ @44, %bb.gf ]
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 834
  store i8 0, ptr %i.qq, align 2, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1267
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 833 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !range !17, !noalias !1267, !noundef !7
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.gh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i

.thread.i.i.i27.i:                                ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.044.i.i.i.i)
  store i8 0, ptr %i.qe, align 2, !noalias !1267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.044.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.e, i64 344, i1 false), !noalias !1267
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 833
  store i8 0, ptr %i.qu, align 1, !noalias !1267
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %.sroa.044.344..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.044.i.i.i.i, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.044.344..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.qv, i64 32, i1 false), !noalias !1267
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 824
  %3 = load ptr, ptr %2, align 8, !noalias !1267, !nonnull !7, !noundef !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.qv, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.044.i.i.i.i, i64 376, i1 false), !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.044.i.i.i.i)
  %.sroa.650.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store ptr %i.qj, ptr %.sroa.650.0..sroa_idx.i.i.i.i, align 8, !noalias !1267
  %.sroa.751.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr %3, ptr %.sroa.751.0..sroa_idx.i.i.i.i, align 8, !noalias !1267
  %.sroa.852.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i8 0, ptr %.sroa.852.0..sroa_idx.i.i.i.i, align 8, !noalias !1267
  br label %bb.fu

bb.fp:                                            ; preds = %bb.ff
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i) ]
  store i8 0, ptr %i.qe, align 2, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1267
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 833 ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !range !17, !noalias !1267, !noundef !7
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.gm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit29.i.i.i.i

bb.fr:                                            ; preds = %bb.gr, %bb.gq, %.body17.i.i.i.i, %bb.fd
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1268
  unreachable

bb.fs:                                            ; preds = %bb.gq, %bb.fp, %bb.fh, %bb.fd
  %.pn12.pn.i.i.i.i = phi { ptr, i32 } [ %.pn6.pn.pn.i.i.i.i, %bb.fh ], [ %.pn6.pn.pn.i.i.i.i, %bb.gq ], [ %i.qw, %bb.fp ], [ %i.qa, %bb.fd ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 834
  store i8 0, ptr %i.rb, align 2, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1267
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 833
  %i.rd = load i8, ptr %i.rc, align 1, !range !17, !noalias !1267, !noundef !7
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.gr, label %.body21.i.i.i.i

bb.ft:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1267
  %.phi.trans.insert.i.i.i21.i = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.pre.i.i.i22.i = load i8, ptr %.phi.trans.insert.i.i.i21.i, align 8, !range !21, !noalias !1267
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  switch i8 %.pre.i.i.i22.i, label %default.unreachable69 [
    i8 0, label %bb.fu
    i8 1, label %bb.gc
    i8 2, label %bb.gd
  ]

bb.fu:                                            ; preds = %bb.ft, %.thread.i.i.i27.i
  %i.rg = phi ptr [ %i.qv, %.thread.i.i.i27.i ], [ %i.rf, %bb.ft ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull align 8 dereferenceable(344) %i.rg, i64 344, i1 false), !noalias !1267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1267
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ri, i64 32, i1 false), !noalias !1267
  %i.rj = load i64, ptr %i.a, align 8, !range !15, !alias.scope !1270, !noalias !1267, !noundef !7
  switch i64 %i.rj, label %bb.fv [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
    i64 -9223372036854775806, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
    i64 -9223372036854775807, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
    i64 -9223372036854775808, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
  ]

bb.fv:                                            ; preds = %bb.fu
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i unwind label %bb.fw, !noalias !1268

bb.fw:                                            ; preds = %bb.fv
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i.i.i.i26.i unwind label %bb.fx, !noalias !1268

bb.fx:                                            ; preds = %bb.fw
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1268
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i: ; preds = %bb.fv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i unwind label %bb.fy, !noalias !1268

.body.i.i.i.i26.i:                                ; preds = %bb.fy, %bb.fw
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.rk, %bb.fw ], [ %i.rm, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1267
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream6StreamECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.b) #23
          to label %bb.fz unwind label %bb.gb, !noalias !1268

bb.fy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i26.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i, %bb.fu, %bb.fu, %bb.fu, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1267
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream6StreamECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.b)
          to label %bb.gf unwind label %bb.ga, !noalias !1268

bb.fz:                                            ; preds = %bb.ga, %.body.i.i.i.i26.i
  %.pn2.i.i.i.i.i = phi { ptr, i32 } [ %i.rn, %bb.ga ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1267
  store i8 2, ptr %i.rh, align 8, !noalias !1267
  br label %.body17.i.i.i.i

bb.ga:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gb:                                            ; preds = %.body.i.i.i.i26.i
  %i.ro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1268
  unreachable

bb.gc:                                            ; preds = %bb.ft
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #25
          to label %.noexc19.i.i.i.i unwind label %bb.ge, !noalias !1268

.noexc19.i.i.i.i:                                 ; preds = %bb.gc
  unreachable

bb.gd:                                            ; preds = %bb.ft
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #25
          to label %.noexc20.i.i.i.i unwind label %bb.ge, !noalias !1268

.noexc20.i.i.i.i:                                 ; preds = %bb.gd
  unreachable

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i.i.i

.body17.i.i.i.i:                                  ; preds = %bb.ge, %bb.fz
  %i.rq = phi ptr [ %i.rf, %bb.ge ], [ %i.rg, %bb.fz ]
  %eh.lpad-body18.i.i.i.i = phi { ptr, i32 } [ %i.rp, %bb.ge ], [ %.pn2.i.i.i.i.i, %bb.fz ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls8noop_tls10connectors7connectNtNtNtBM_2l46stream6StreamNtNtNtBO_9upstreams4peer9BasicPeerE0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.rq) #23
          to label %bb.fh unwind label %bb.fr, !noalias !1268

bb.gf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1267
  store i8 1, ptr %i.rh, align 8, !noalias !1267
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls8noop_tls10connectors7connectNtNtNtBM_2l46stream6StreamNtNtNtBO_9upstreams4peer9BasicPeerE0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.rg)
          to label %bb.fo unwind label %bb.gg, !noalias !1268

bb.gg:                                            ; preds = %bb.gf
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i, %bb.gh, %bb.gh, %bb.gh, %bb.gh, %bb.fo
  store i8 0, ptr %i.qr, align 1, !noalias !1267
  br label %bb.gu

bb.gh:                                            ; preds = %bb.fo
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  %i.rt = load i64, ptr %i.rs, align 8, !range !15, !alias.scope !1271, !noalias !1267, !noundef !7
  switch i64 %i.rt, label %bb.gi [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
    i64 -9223372036854775806, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
    i64 -9223372036854775807, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
    i64 -9223372036854775808, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
  ]

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i unwind label %bb.gj, !noalias !1268

bb.gj:                                            ; preds = %bb.gi
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rs)
          to label %.body21.i.i.i.i unwind label %bb.gk, !noalias !1268

bb.gk:                                            ; preds = %bb.gj
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1268
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i: ; preds = %bb.gi
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i unwind label %bb.gl, !noalias !1268

.body21.i.i.i.i:                                  ; preds = %bb.gr, %bb.go, %bb.gl, %bb.gj, %bb.fs
  %.pn15.i.i.i.i = phi { ptr, i32 } [ %.pn12.pn.i.i.i.i, %bb.fs ], [ %.pn12.pn.i.i.i.i, %bb.gr ], [ %i.ru, %bb.gj ], [ %i.rx, %bb.gl ], [ %i.sa, %bb.go ]
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 833
  store i8 0, ptr %i.rw, align 1, !noalias !1267
  store i8 2, ptr %i.pp, align 8, !noalias !1267
  br label %.body30.i.i.i

bb.gl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i25.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing.exit29.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i25.i.i.i.i, %bb.gm, %bb.gm, %bb.gm, %bb.gm, %bb.fq
  store i8 0, ptr %i.qx, align 1, !noalias !1267
  br label %bb.gu

end_hunk_0
