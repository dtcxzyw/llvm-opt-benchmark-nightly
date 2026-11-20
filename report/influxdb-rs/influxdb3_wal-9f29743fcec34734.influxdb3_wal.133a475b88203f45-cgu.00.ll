Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.00?download=true
inline.NumInlined: 873
inline.NumDeleted: 305
begin_hunk_0_@_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore12flush_buffer0B6_:bb.a
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dx
  %i.pd = landingpad { ptr, i32 }
          cleanup
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 536
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8 %i.pe) #25
          to label %.body365 unwind label %bb.eb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dw
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 536
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8 %i.pf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.jh

bb.eb:                                            ; preds = %bb.ea
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(72) %i.ph)
          to label %bb.ed unwind label %bb.ec

.body429:                                         ; preds = %bb.is, %bb.ec, %.body365, %.body427
  %.pn183.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn, %.body427 ], [ %.pn155.pn.pn.pn.pn, %.body365 ], [ %i.pk, %bb.ec ], [ %i.zt, %bb.is ] ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.pj = load i64, ptr %i.pi, align 8, !range !54, !noundef !47 ; 3 uses
  %.not191 = icmp eq i64 %i.pj, -1
  br i1 %.not191, label %bb.no, label %bb.nn

bb.ec:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit507, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.body429

bb.ed:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !range !54, !noundef !47
  %.not140 = icmp eq i64 %i.pm, -1
  br i1 %.not140, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 510
  store i8 0, ptr %i.pn, align 2
  br label %bb.dq

bb.ef:                                            ; preds = %bb.ed
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(72) %i.pl)
          to label %bb.ee unwind label %bb.en

.body368:                                         ; preds = %bb.ex, %bb.ey, %bb.en, %bb.ep, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs1ElB0qm0ygX_13influxdb3_wal.exit, %bb.nq, %bb.np, %bb.no, %bb.nn
  %.pn183.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn, %bb.np ], [ %.pn183.pn.pn.pn.pn.pn.pn, %bb.nq ], [ %.pn183.pn.pn.pn.pn.pn.pn, %bb.nn ], [ %.pn183.pn.pn.pn.pn.pn.pn, %bb.no ], [ %.pn72.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs1ElB0qm0ygX_13influxdb3_wal.exit ], [ %i.qe, %bb.ep ], [ %i.pz, %bb.en ], [ %i.qt, %bb.ey ], [ %i.qt, %bb.ex ]
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 510
  store i8 0, ptr %i.po, align 2
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsEEB1a_.exit

_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.dq
  %i.pp = invoke { ptr, i64 } @_RNvMs_NtCs1LivM9IBWqb_12object_store7payloadNtB4_10PutPayload10from_bytes(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ck)
          to label %bb.eh unwind label %bb.eg     ; 2 uses

bb.eg:                                            ; preds = %bb.dq, %_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.eh:                                            ; preds = %_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %i.pr = extractvalue { ptr, i64 } %i.pp, 0      ; 3 uses
  %i.ps = extractvalue { ptr, i64 } %i.pp, 1      ; 2 uses
  store ptr %i.pr, ptr %i.cl, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ps, ptr %i.pt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pu)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.nl

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !alias.scope !846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  invoke void @_RNvMs_NtCs6Y3vYp7Mdwn_18object_store_utils21self_verifying_createNtB4_19SelfVerifyingCreate11put_options(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.cj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.px = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.od, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe, ptr noundef nonnull %i.pr, i64 noundef %i.ps, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.cj)
          to label %bb.eo unwind label %bb.em     ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.en:                                            ; preds = %bb.ef, %bb.fd, %bb.mi, %bb.ml
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.body368

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.qa = extractvalue { ptr, ptr } %i.px, 0
  %i.qb = extractvalue { ptr, ptr } %i.px, 1
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr %i.qa, ptr %i.qc, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %i.qb, ptr %i.qd, align 8
  br label %bb.eq

bb.ep:                                            ; preds = %bb.eq
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.val252 = load ptr, ptr %i.qg, align 8
  %i.qf = getelementptr i8, ptr %1, i64 528
  %.val253 = load ptr, ptr %i.qf, align 8, !nonnull !47, !align !52, !noundef !47
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal(ptr %.val252, ptr nonnull %.val253) #25
          to label %.body368 unwind label %bb.ad

bb.eq:                                            ; preds = %bb.b, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 13 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.er unwind label %bb.ep

bb.er:                                            ; preds = %bb.eq
  %i.qh = load i64, ptr %i.cg, align 8, !range !65, !noundef !47
  %i.qi = icmp eq i64 %i.qh, -2
  br i1 %i.qi, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.qj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %common.ret

bb.et:                                            ; preds = %bb.er
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.qk, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i64 72, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 3 uses
  store i8 1, ptr %i.ql, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.val = load ptr, ptr %i.qg, align 8            ; 5 uses
  %i.qm = getelementptr i8, ptr %1, i64 528       ; 2 uses
  %.val251 = load ptr, ptr %i.qm, align 8, !nonnull !47, !align !52, !noundef !47 ; 5 uses
  %i.qn = load ptr, ptr %.val251, align 8, !invariant.load !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.qn, null
  br i1 %.not.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.qn(ptr noundef nonnull %.val)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.qo = getelementptr inbounds nuw i8, ptr %.val251, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, 0
  br i1 %i.qq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.qr = getelementptr inbounds nuw i8, ptr %.val251, i64 16
  %i.qs = load i64, ptr %i.qr, align 8, !range !49, !invariant.load !47
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.qp, i64 noundef range(i64 1, 536870913) %i.qs) #23
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.ex:                                            ; preds = %bb.eu
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.val251, i64 8
  %i.qv = load i64, ptr %i.qu, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %.body368, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.qx = getelementptr inbounds nuw i8, ptr %.val251, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !range !49, !invariant.load !47
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.qv, i64 noundef range(i64 1, 536870913) %i.qy) #23
  br label %.body368

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.ew, %bb.ev
  %i.qz = load i64, ptr %i.qk, align 8, !range !54, !noundef !47 ; 3 uses
  %.not = icmp eq i64 %i.qz, -1
  br i1 %.not, label %bb.fd, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit
  %4 = icmp ne i64 %i.qz, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.qz, -9223372036854775797
  br i1 %5, label %.noexc223, label %.noexc

bb.ez:                                            ; preds = %bb.fd
  store i8 0, ptr %i.ql, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 0, ptr %i.ra, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.rc, ptr noundef nonnull align 8 dereferenceable(96) %i.rb, i64 96, i1 false)
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 5 uses
  store i64 1, ptr %i.p, align 8, !noalias !847
  %i.re = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.re, align 8, !noalias !847
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !848
  %i.rf = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 56, 969) 112, i64 noundef 8) #23, !noalias !848 ; 5 uses
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %bb.fa, label %bb.fe, !prof !63

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22
          to label %.noexc.i370 unwind label %bb.fb, !noalias !847

.noexc.i370:                                      ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.fa
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsEEB1f_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.p) #25
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsEEB1a_.exit unwind label %bb.fc, !noalias !847

bb.fc:                                            ; preds = %bb.fb
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !847
  unreachable

bb.fd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(72) %i.qk)
          to label %bb.ez unwind label %bb.en

bb.fe:                                            ; preds = %bb.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.rf, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !847
  store ptr %i.rf, ptr %i.rd, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 72
  %i.rk = load i8, ptr %i.rj, align 8, !range !53, !noundef !47
  %.not75 = icmp eq i8 %i.rk, 2
  br i1 %.not75, label %.noexc229, label %.noexc226

.noexc229:                                        ; preds = %bb.fe
  %i.rl = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off826.a = add i64 %i.rl, -2
  %switch827.a = icmp ult i64 %.off826.a, 4
  br i1 %switch827.a, label %.thread778, label %bb.ff

bb.ff:                                            ; preds = %.noexc229
  %i.rm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s2_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.rn = icmp ult i8 %i.rm, 3
  br i1 %i.rn, label %bb.fh, label %bb.fg, !prof !64

bb.fg:                                            ; preds = %bb.ff
  %i.ro = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s2_10___CALLSITE)
          to label %bb.fh unwind label %bb.oq

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.sroa.0.0.i373 = phi i8 [ %i.rm, %bb.ff ], [ %i.ro, %bb.fg ] ; 2 uses
  %i.rp = icmp eq i8 %.sroa.0.0.i373, 0
  br i1 %i.rp, label %.thread778, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.rq = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.rr = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rq, i8 noundef %.sroa.0.0.i373)
          to label %bb.fj unwind label %bb.oq

bb.fj:                                            ; preds = %bb.fi
  br i1 %i.rr, label %bb.fu, label %.thread778

.thread778:                                       ; preds = %.noexc229, %bb.fh, %bb.fj
  %i.rs = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not825 = icmp eq i8 %i.rs, 0
  br i1 %.not825, label %bb.fk, label %bb.fx

bb.fk:                                            ; preds = %.thread778
  %i.rt = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ru = icmp ult i64 %i.rt, 6
  call void @llvm.assume(i1 %i.ru)
  %i.rv = icmp samesign ugt i64 %i.rt, 3
  br i1 %i.rv, label %bb.fl, label %bb.fx

bb.fl:                                            ; preds = %bb.fk
  %i.rw = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.rx = getelementptr i8, ptr %i.rw, i64 32
  %.val307 = load ptr, ptr %i.rx, align 8, !nonnull !47, !noundef !47
  %i.ry = getelementptr i8, ptr %i.rw, i64 40
  %.val308 = load i64, ptr %i.ry, align 8, !noundef !47
  store i64 4, ptr %i.an, align 8, !alias.scope !849
  %.sroa.6742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.val307, ptr %.sroa.6742.0..sroa_idx, align 8, !alias.scope !849
  %.sroa.8743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.val308, ptr %.sroa.8743.0..sroa_idx, align 8, !alias.scope !849
  %i.rz = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.fm unwind label %bb.fn     ; 2 uses

bb.fm:                                            ; preds = %bb.fl
  %i.sa = extractvalue { ptr, ptr } %i.rz, 0      ; 2 uses
  %i.sb = extractvalue { ptr, ptr } %i.rz, 1      ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !invariant.load !47, !nonnull !47
  %i.se = invoke noundef zeroext i1 %i.sd(ptr noundef %i.sa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.fo unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fl, %bb.fm
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fo:                                            ; preds = %bb.fm
  br i1 %i.se, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.fx

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.sg = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val316 = load ptr, ptr %i.rd, align 8, !nonnull !47, !noundef !47
  %i.si = getelementptr inbounds nuw i8, ptr %.val316, i64 104
  %.val319 = load i64, ptr %i.si, align 8, !noundef !47
  store i64 %.val319, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.aj, ptr %i.ai, align 8
  %.sroa.5745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5745.0..sroa_idx, align 8
  store ptr @18, ptr %i.ak, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ai, ptr %i.sj, align 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @11, ptr %i.sk, align 8
  store i64 1, ptr %i.am, align 8, !alias.scope !850
  %.sroa.4.0..sroa_idx.i379 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i379, align 8, !alias.scope !850
  %.sroa.5.0..sroa_idx.i380 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i380, align 8, !alias.scope !850
  %i.sl = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.sh, ptr %i.sl, align 8, !alias.scope !850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rw, ptr noundef nonnull %i.sa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.fp

bb.ft:                                            ; preds = %bb.fn, %bb.fr
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %i.sm, %bb.fr ], [ %i.sf, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.body540

bb.fu:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.sn = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.val315 = load ptr, ptr %i.rd, align 8, !nonnull !47, !noundef !47
  %i.sp = getelementptr inbounds nuw i8, ptr %.val315, i64 104
  %.val318 = load i64, ptr %i.sp, align 8, !noundef !47
  store i64 %.val318, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  %.sroa.5737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5737.0..sroa_idx, align 8
  store ptr @18, ptr %i.aq, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ao, ptr %i.sq, align 8
end_hunk_0
begin_hunk_1_@_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore12flush_buffer0B6_:bb.a

bb.ge:                                            ; preds = %bb.gd
  br i1 %i.tr, label %bb.gq, label %bb.gf

bb.gf:                                            ; preds = %.noexc226, %bb.gc, %bb.ge
  %i.ts = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not824 = icmp eq i8 %i.ts, 0
  br i1 %.not824, label %bb.gg, label %bb.gt

bb.gg:                                            ; preds = %bb.gf
  %i.tt = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.tu = icmp ult i64 %i.tt, 6
  call void @llvm.assume(i1 %i.tu)
  %i.tv = icmp samesign ugt i64 %i.tt, 2
  br i1 %i.tv, label %bb.gh, label %bb.gt

bb.gh:                                            ; preds = %bb.gg
  %i.tw = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.tx = getelementptr i8, ptr %i.tw, i64 32
  %.val305 = load ptr, ptr %i.tx, align 8, !nonnull !47, !noundef !47
  %i.ty = getelementptr i8, ptr %i.tw, i64 40
  %.val306 = load i64, ptr %i.ty, align 8, !noundef !47
  store i64 3, ptr %i.az, align 8, !alias.scope !851
  %.sroa.6714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val305, ptr %.sroa.6714.0..sroa_idx, align 8, !alias.scope !851
  %.sroa.8715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.val306, ptr %.sroa.8715.0..sroa_idx, align 8, !alias.scope !851
  %i.tz = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.gi unwind label %bb.gj     ; 2 uses

bb.gi:                                            ; preds = %bb.gh
  %i.ua = extractvalue { ptr, ptr } %i.tz, 0      ; 2 uses
  %i.ub = extractvalue { ptr, ptr } %i.tz, 1      ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8, !invariant.load !47, !nonnull !47
  %i.ue = invoke noundef zeroext i1 %i.ud(ptr noundef %i.ua, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.gk unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gk:                                            ; preds = %bb.gi
  br i1 %i.ue, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gt

bb.gm:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.ug = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr @19, ptr %i.aw, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 33 to ptr), ptr %i.ui, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.qg, ptr %i.av, align 8
  store ptr %i.aw, ptr %i.ax, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @11, ptr %i.uj, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.av, ptr %i.uk, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr @20, ptr %i.ul, align 8
  store i64 1, ptr %i.ay, align 8, !alias.scope !852
  %.sroa.4.0..sroa_idx.i389 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i389, align 8, !alias.scope !852
  %.sroa.5.0..sroa_idx.i390 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i390, align 8, !alias.scope !852
  %i.um = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.uh, ptr %i.um, align 8, !alias.scope !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tw, ptr noundef nonnull %i.ua, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ub, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %bb.go unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.gl

bb.gp:                                            ; preds = %bb.gj, %bb.gn
  %.pn95.pn.pn.pn = phi { ptr, i32 } [ %i.un, %bb.gn ], [ %i.uf, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %.body540

bb.gq:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.uo = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr @19, ptr %i.bb, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 33 to ptr), ptr %i.uq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.qg, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @11, ptr %i.ur, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.ba, ptr %i.us, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @20, ptr %i.ut, align 8
  store i64 1, ptr %i.bd, align 8
  %.sroa.7707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %.sroa.7707.0..sroa_idx, align 8
  %.sroa.8708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 2, ptr %.sroa.8708.0..sroa_idx, align 8
  %.sroa.9709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.up, ptr %.sroa.9709.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s1_0B8_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bd)
          to label %bb.gs unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %.body540

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gf, %bb.gg, %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.uw = load ptr, ptr %i.uv, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %.val322 = load ptr, ptr %i.ux, align 8, !nonnull !47, !noundef !47
  %i.uy = getelementptr i8, ptr %i.uw, i64 48
  %.val323 = load ptr, ptr %i.uy, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %.val327 = load ptr, ptr %i.rd, align 8, !nonnull !47, !noundef !47 ; 2 uses
  %i.uz = atomicrmw add ptr %.val327, i64 1 monotonic, align 8
  %i.va = icmp slt i64 %i.uz, 0
  br i1 %i.va, label %bb.gu, label %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBH_.exit393

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBH_.exit393: ; preds = %bb.gt
  %i.vb = getelementptr inbounds nuw i8, ptr %.val323, i64 16
  %i.vc = load i64, ptr %i.vb, align 8, !range !49, !invariant.load !47
  %i.vd = add nsw i64 %i.vc, -1
  %i.ve = and i64 %i.vd, -16
  %i.vf = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i64 40, i1 false)
  %i.vh = getelementptr inbounds nuw i8, ptr %.val323, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8, !invariant.load !47, !nonnull !47
  %i.vj = invoke { ptr, ptr } %i.vi(ptr noundef nonnull %i.vg, ptr noundef nonnull %.val327, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.at)
          to label %bb.gw unwind label %bb.gv     ; 2 uses

bb.gv:                                            ; preds = %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBH_.exit393
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.body534

bb.gw:                                            ; preds = %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBH_.exit393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.vl = extractvalue { ptr, ptr } %i.vj, 0
  %i.vm = extractvalue { ptr, ptr } %i.vj, 1
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 560
  store ptr %i.vl, ptr %i.vn, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr %i.vm, ptr %i.vo, align 8
  br label %bb.ns

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsEEB1a_.exit: ; preds = %bb.fb, %.body540, %bb.oz, %bb.pr, %.body368
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn, %.body368 ], [ %.pn117.pn.pn.pn.pn, %.body540 ], [ %i.amq, %bb.pr ], [ %.pn117.pn.pn.pn.pn, %bb.oz ], [ %i.rh, %bb.fb ]
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils21self_verifying_create8PutNonceECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24) %i.vp) #25
          to label %.body508 unwind label %bb.ad

.noexc223:                                        ; preds = %3
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qg, ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 24, i1 false)
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.vt = load <2 x ptr>, ptr %i.vs, align 8
  store <2 x ptr> %i.vt, ptr %i.vr, align 8
  %i.vu = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.vv = icmp eq i64 %i.vu, 5
  br i1 %i.vv, label %bb.hc, label %bb.gx

bb.gx:                                            ; preds = %.noexc223
  %i.vw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.vx = icmp ult i8 %i.vw, 3
  br i1 %i.vx, label %bb.gz, label %bb.gy, !prof !64

bb.gy:                                            ; preds = %bb.gx
  %i.vy = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_10___CALLSITE)
          to label %bb.gz unwind label %bb.il

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.sroa.0.0.i394 = phi i8 [ %i.vw, %bb.gx ], [ %i.vy, %bb.gy ] ; 2 uses
  %i.vz = icmp eq i8 %.sroa.0.0.i394, 0
  br i1 %i.vz, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.wa = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.wb = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wa, i8 noundef %.sroa.0.0.i394)
          to label %bb.hb unwind label %bb.il

bb.hb:                                            ; preds = %bb.ha
  br i1 %i.wb, label %bb.hn, label %bb.hc

bb.hc:                                            ; preds = %.noexc223, %bb.gz, %bb.hb
  %i.wc = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not822.a = icmp eq i8 %i.wc, 0
  br i1 %.not822.a, label %bb.hd, label %bb.hq

bb.hd:                                            ; preds = %bb.hc
  %i.wd = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.we = icmp ult i64 %i.wd, 6
  call void @llvm.assume(i1 %i.we)
  %.not823.a = icmp eq i64 %i.wd, 0
  br i1 %.not823.a, label %bb.hq, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.wf = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.wg = getelementptr i8, ptr %i.wf, i64 32
  %.val303 = load ptr, ptr %i.wg, align 8, !nonnull !47, !noundef !47
  %i.wh = getelementptr i8, ptr %i.wf, i64 40
  %.val304 = load i64, ptr %i.wh, align 8, !noundef !47
  store i64 1, ptr %i.cb, align 8, !alias.scope !853
  %.sroa.6652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.val303, ptr %.sroa.6652.0..sroa_idx, align 8, !alias.scope !853
  %.sroa.8653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.val304, ptr %.sroa.8653.0..sroa_idx, align 8, !alias.scope !853
  %i.wi = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.hf unwind label %bb.hg     ; 2 uses

bb.hf:                                            ; preds = %bb.he
  %i.wj = extractvalue { ptr, ptr } %i.wi, 0      ; 2 uses
  %i.wk = extractvalue { ptr, ptr } %i.wi, 1      ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !invariant.load !47, !nonnull !47
  %i.wn = invoke noundef zeroext i1 %i.wm(ptr noundef %i.wj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.hh unwind label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hh:                                            ; preds = %bb.hf
  br i1 %i.wn, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.hq

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.wp = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store ptr @21, ptr %i.by, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr inttoptr (i64 577 to ptr), ptr %i.wr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.vr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bz, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @11, ptr %i.ws, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.qg, ptr %i.wt, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr @12, ptr %i.wu, align 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr %i.bx, ptr %i.wv, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr @22, ptr %i.ww, align 8
  store i64 1, ptr %i.ca, align 8, !alias.scope !854
  %.sroa.4.0..sroa_idx.i399 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i399, align 8, !alias.scope !854
  %.sroa.5.0..sroa_idx.i400 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i400, align 8, !alias.scope !854
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.wq, ptr %i.wx, align 8, !alias.scope !854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wf, ptr noundef nonnull %i.wj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ca)
          to label %bb.hl unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.wy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.hi

bb.hm:                                            ; preds = %bb.hg, %bb.hk
  %.pn165.pn.pn.pn = phi { ptr, i32 } [ %i.wy, %bb.hk ], [ %i.wo, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.iu

bb.hn:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.wz = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr @21, ptr %i.cd, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr inttoptr (i64 577 to ptr), ptr %i.xb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store ptr %i.vr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.ce, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @11, ptr %i.xc, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.qg, ptr %i.xd, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr @12, ptr %i.xe, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr %i.cc, ptr %i.xf, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr @22, ptr %i.xg, align 8
  store i64 1, ptr %i.cf, align 8
  %.sroa.7645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %.sroa.7645.0..sroa_idx, align 8
  %.sroa.8646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 3, ptr %.sroa.8646.0..sroa_idx, align 8
  %.sroa.9647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.xa, ptr %.sroa.9647.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s_0B8_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.cf)
          to label %bb.hp unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.iu

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hi, %bb.hd, %bb.hc, %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.xj = load ptr, ptr %i.xi, align 8, !nonnull !47, !align !52, !noundef !47
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 96
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %i.xk, ptr %i.xl, align 8
  %.sroa.8660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 656
  store i8 0, ptr %.sroa.8660.0..sroa_idx, align 8
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hs
  %i.xm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs8_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtBJ_5MutexNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferE4lock0EB1y_(ptr noundef nonnull align 8 %i.xn) #25
          to label %.body412 unwind label %bb.ad

end_hunk_1
begin_hunk_2_@_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore12flush_buffer0B6_:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a: ; preds = %bb.ih, %bb.ii
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #25
          to label %bb.jd unwind label %bb.ij, !noalias !857

_RNvXsh_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_19WalBufferErrorStateNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit.i.i: ; preds = %bb.ih
  br i1 %i.yw, label %bb.ii, label %bb.iv, !prof !63

bb.ii:                                            ; preds = %_RNvXsh_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_19WalBufferErrorStateNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #22
          to label %.noexc.i.i421 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a, !noalias !857

.noexc.i.i421:                                    ; preds = %bb.ii
  unreachable

bb.ij:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a
  %i.yx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !857
  unreachable

._crit_edge837:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB12_.exit, %bb.ig
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit425 unwind label %bb.ik

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit: ; preds = %.body432, %bb.ik
  %.pn183.pn.pn = phi { ptr, i32 } [ %i.yy, %bb.ik ], [ %.pn183, %.body432 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.iu

bb.ik:                                            ; preds = %._crit_edge837
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit425: ; preds = %._crit_edge837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.za = load ptr, ptr %i.yz, align 8, !nonnull !47, !align !52, !noundef !47
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 56
  invoke void @_RNvMs4_NtNtCs1a9RECLZJLX_10tokio_util4sync18cancellation_tokenNtB5_17CancellationToken6cancel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zb)
          to label %bb.im unwind label %bb.il

bb.il:                                            ; preds = %bb.ha, %bb.gy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit425
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.im:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit425
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val268 = load ptr, ptr %i.zd, align 8         ; 5 uses
  %i.ze = getelementptr i8, ptr %1, i64 672
  %.val269 = load ptr, ptr %i.ze, align 8, !nonnull !47, !align !52, !noundef !47 ; 5 uses
  %i.zf = load ptr, ptr %.val269, align 8, !invariant.load !47 ; 2 uses
  %.not.i426 = icmp eq ptr %i.zf, null
  br i1 %.not.i426, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val268) ]
  invoke void %i.zf(ptr noundef nonnull %.val268)
          to label %bb.io unwind label %bb.iq

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.zg = getelementptr inbounds nuw i8, ptr %.val269, i64 8
  %i.zh = load i64, ptr %i.zg, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.zi = icmp eq i64 %i.zh, 0
  br i1 %i.zi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.zj = getelementptr inbounds nuw i8, ptr %.val269, i64 16
  %i.zk = load i64, ptr %i.zj, align 8, !range !49, !invariant.load !47
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val268) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val268, i64 noundef range(i64 1, -9223372036854775808) %i.zh, i64 noundef range(i64 1, 536870913) %i.zk) #23
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.iq:                                            ; preds = %bb.in
  %i.zl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.val269, i64 8
  %i.zn = load i64, ptr %i.zm, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.zo = icmp eq i64 %i.zn, 0
  br i1 %i.zo, label %.body427, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.zp = getelementptr inbounds nuw i8, ptr %.val269, i64 16
  %i.zq = load i64, ptr %i.zp, align 8, !range !49, !invariant.load !47
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val268, i64 noundef range(i64 1, -9223372036854775808) %i.zn, i64 noundef range(i64 1, 536870913) %i.zq) #23
  br label %.body427

.body427:                                         ; preds = %bb.ir, %bb.iq, %bb.iu
  %.pn183.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn, %bb.iu ], [ %i.zl, %bb.iq ], [ %i.zl, %bb.ir ]
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zr) #25
          to label %.body429 unwind label %bb.ad

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.ip, %bb.io
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i unwind label %bb.is

bb.is:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit
  %i.zt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zs)
          to label %.body429 unwind label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.zu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.ec

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit507
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.zw = load i64, ptr %i.zv, align 8, !range !54, !noundef !47 ; 3 uses
  %.not180 = icmp eq i64 %i.zw, -1
  br i1 %.not180, label %bb.mi, label %bb.mh

bb.iu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit, %bb.hm, %bb.ho, %bb.il, %.body412
  %.pn183.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn.pn, %bb.hm ], [ %i.zc, %bb.il ], [ %.pn178, %.body412 ], [ %i.xh, %bb.ho ], [ %.pn183.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit ]
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val266 = load ptr, ptr %i.zx, align 8
  %i.zy = getelementptr i8, ptr %1, i64 672
  %.val267 = load ptr, ptr %i.zy, align 8, !nonnull !47, !align !52, !noundef !47
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal(ptr %.val266, ptr nonnull %.val267) #25
          to label %.body427 unwind label %bb.ad

bb.iv:                                            ; preds = %_RNvXsh_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_19WalBufferErrorStateNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !857
  invoke void @_RNvMs_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB4_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultE4sendBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noundef %i.yv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bs)
          to label %bb.ix unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.jc

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.aaa = load i64, ptr %i.bu, align 8, !range !858, !alias.scope !859, !noundef !47
  %switch.i = icmp ugt i64 %i.aaa, -3
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB12_.exit, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body432 unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i: ; preds = %bb.iy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB12_.exit unwind label %bb.jb

.body432:                                         ; preds = %bb.jb, %bb.iz, %bb.jc
  %.pn183 = phi { ptr, i32 } [ %.pn181796, %bb.jc ], [ %i.aad, %bb.jb ], [ %i.aab, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB2d_.exit unwind label %bb.ad

bb.jb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %.body432

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB12_.exit: ; preds = %bb.ix, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.aae = load ptr, ptr %.sroa.7665.0..sroa_idx, align 8, !alias.scope !860, !nonnull !47, !noundef !47
  %i.aaf = load ptr, ptr %.sroa.5663.0..sroa_idx, align 8, !alias.scope !860, !nonnull !47, !noundef !47 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.aae
  br i1 %i.aag, label %._crit_edge837, label %bb.ih

bb.jc:                                            ; preds = %bb.iw, %bb.jd
  %.pn181796 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.a, %bb.jd ], [ %i.zz, %bb.iw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %.body432

bb.jd:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_(ptr noalias noundef align 8 dereferenceable(8) %i.bt) #25
          to label %bb.jc unwind label %bb.ad

.noexc:                                           ; preds = %3
  store i8 0, ptr %i.ql, align 2
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aah, ptr noundef nonnull align 8 dereferenceable(72) %i.qk, i64 72, i1 false)
  %i.aai = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aaj = icmp eq i64 %i.aai, 5
  br i1 %i.aaj, label %bb.jk, label %bb.je

bb.je:                                            ; preds = %.noexc
  %i.aak = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.aal = icmp ult i8 %i.aak, 3
  br i1 %i.aal, label %bb.jg, label %bb.jf, !prof !64

bb.jf:                                            ; preds = %bb.je
  %i.aam = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE)
          to label %bb.jg unwind label %bb.jh

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %.sroa.0.0.i435 = phi i8 [ %i.aak, %bb.je ], [ %i.aam, %bb.jf ] ; 2 uses
  %i.aan = icmp eq i8 %.sroa.0.0.i435, 0
  br i1 %i.aan, label %bb.jk, label %bb.ji

bb.jh:                                            ; preds = %bb.mg, %bb.kw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i, %bb.jf, %bb.ji
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %.body365

bb.ji:                                            ; preds = %bb.jg
  %i.aap = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.aaq = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aap, i8 noundef %.sroa.0.0.i435)
          to label %bb.jj unwind label %bb.jh

bb.jj:                                            ; preds = %bb.ji
  br i1 %i.aaq, label %bb.jw, label %bb.jk

bb.jk:                                            ; preds = %.noexc, %bb.jg, %bb.jj
  %i.aar = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not820 = icmp eq i8 %i.aar, 0
  br i1 %.not820, label %bb.jl, label %bb.jv

bb.jl:                                            ; preds = %bb.jk
  %i.aas = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aat = icmp ult i64 %i.aas, 6
  call void @llvm.assume(i1 %i.aat)
  %.not821 = icmp eq i64 %i.aas, 0
  br i1 %.not821, label %bb.jv, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aau = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.aav = getelementptr i8, ptr %i.aau, i64 32
  %.val301 = load ptr, ptr %i.aav, align 8, !nonnull !47, !noundef !47
  %i.aaw = getelementptr i8, ptr %i.aau, i64 40
  %.val302 = load i64, ptr %i.aaw, align 8, !noundef !47
  store i64 1, ptr %i.bn, align 8, !alias.scope !861
  %.sroa.6679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.val301, ptr %.sroa.6679.0..sroa_idx, align 8, !alias.scope !861
  %.sroa.8680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.val302, ptr %.sroa.8680.0..sroa_idx, align 8, !alias.scope !861
  %i.aax = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.jn unwind label %bb.jo     ; 2 uses

bb.jn:                                            ; preds = %bb.jm
  %i.aay = extractvalue { ptr, ptr } %i.aax, 0    ; 2 uses
  %i.aaz = extractvalue { ptr, ptr } %i.aax, 1    ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8, !invariant.load !47, !nonnull !47
  %i.abc = invoke noundef zeroext i1 %i.abb(ptr noundef %i.aay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.jp unwind label %bb.jo

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.jp:                                            ; preds = %bb.jn
  br i1 %i.abc, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.jv

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.abe = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr @23, ptr %i.bk, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.abg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.aah, ptr %i.bj, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.abh = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @11, ptr %i.abh, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bj, ptr %i.abi, align 8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr @24, ptr %i.abj, align 8
  store i64 1, ptr %i.bm, align 8, !alias.scope !862
  %.sroa.4.0..sroa_idx.i440 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx.i440, align 8, !alias.scope !862
  %.sroa.5.0..sroa_idx.i441 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i441, align 8, !alias.scope !862
  %i.abk = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.abf, ptr %i.abk, align 8, !alias.scope !862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aau, ptr noundef nonnull %i.aay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aaz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm)
          to label %bb.jt unwind label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.abl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.jq

bb.ju:                                            ; preds = %bb.jo, %bb.js
  %.pn127.pn.pn.pn = phi { ptr, i32 } [ %i.abl, %bb.js ], [ %i.abd, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %.body365

bb.jv:                                            ; preds = %bb.jq, %bb.jl, %bb.jk, %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_0B8_.exit
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 8, !noundef !47
  %i.abo = add i32 %i.abn, 1                      ; 2 uses
  store i32 %i.abo, ptr %i.abm, align 8
  %i.abp = icmp sgt i32 %i.abo, 100
  br i1 %i.abp, label %bb.ke, label %bb.kb

bb.jw:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.abq = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr @23, ptr %i.bp, align 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.abs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %i.aah, ptr %i.bo, align 8
  store ptr %i.bp, ptr %i.bq, align 8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @11, ptr %i.abt, align 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.bo, ptr %i.abu, align 8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr @24, ptr %i.abv, align 8
  store i64 1, ptr %i.br, align 8
  %.sroa.7672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %.sroa.7672.0..sroa_idx, align 8
  %.sroa.8673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 2, ptr %.sroa.8673.0..sroa_idx, align 8
  %.sroa.9674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.abr, ptr %.sroa.9674.0..sroa_idx, align 8
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %.noexc446 unwind label %bb.ka

.noexc446:                                        ; preds = %bb.jw
  %i.abw = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !863
  %i.abx = icmp eq i8 %i.abw, 0
  br i1 %i.abx, label %bb.jx, label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_0B8_.exit

bb.jx:                                            ; preds = %.noexc446
  %i.aby = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !863 ; 2 uses
  %i.abz = icmp ult i64 %i.aby, 6
  call void @llvm.assume(i1 %i.abz)
  %.not.i444 = icmp eq i64 %i.aby, 0
  br i1 %.not.i444, label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_0B8_.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aca = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore12flush_buffer0s0_10___CALLSITE, align 8, !noalias !863, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !863
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  %i.acc = load ptr, ptr %i.acb, align 8, !nonnull !47, !noundef !47
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 40
  %i.ace = load i64, ptr %i.acd, align 8, !noundef !47
  store i64 1, ptr %i.m, align 8, !noalias !863
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.acc, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !863
  %.sroa.5.0..sroa_idx.i445 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ace, ptr %.sroa.5.0..sroa_idx.i445, align 8, !noalias !863
  %i.acf = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc447 unwind label %bb.ka ; 2 uses

.noexc447:                                        ; preds = %bb.jy
  %i.acg = extractvalue { ptr, ptr } %i.acf, 0    ; 2 uses
  %i.ach = extractvalue { ptr, ptr } %i.acf, 1    ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
end_hunk_2
begin_hunk_3_@_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore25remove_snapshot_wal_files0B6_:bb.a
  %i.ji = atomicrmw add ptr %i.jh, i64 -1 release, align 8, !noalias !1007
  %i.jj = icmp eq i64 %i.ji, 1
  br i1 %i.jj, label %bb.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 296
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8 %i.jl) #25
          to label %.body228 unwind label %bb.bk

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 296
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8 %i.jm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.cn

bb.bk:                                            ; preds = %bb.bj
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val161 = load ptr, ptr %i.jo, align 8         ; 5 uses
  %i.jp = getelementptr i8, ptr %0, i64 272
  %.val162 = load ptr, ptr %i.jp, align 8, !nonnull !47, !align !52, !noundef !47 ; 5 uses
  %i.jq = load ptr, ptr %.val162, align 8, !invariant.load !47 ; 2 uses
  %.not.i230 = icmp eq ptr %i.jq, null
  br i1 %.not.i230, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val161) ]
  invoke void %i.jq(ptr noundef nonnull %.val161)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs1ElB0qm0ygX_13influxdb3_wal.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %.val162, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ju = getelementptr inbounds nuw i8, ptr %.val162, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !range !49, !invariant.load !47
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val161) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val161, i64 noundef range(i64 1, -9223372036854775808) %i.js, i64 noundef range(i64 1, 536870913) %i.jv) #23
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.bo:                                            ; preds = %bb.bl
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val162, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %.body231, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ka = getelementptr inbounds nuw i8, ptr %.val162, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !range !49, !invariant.load !47
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val161, i64 noundef range(i64 1, -9223372036854775808) %i.jy, i64 noundef range(i64 1, 536870913) %i.kb) #23
  br label %.body231

.body231:                                         ; preds = %bb.bp, %bb.bo, %.body228, %bb.eg
  %.pn100 = phi { ptr, i32 } [ %.pn78, %bb.eg ], [ %.pn97.pn, %.body228 ], [ %i.jw, %bb.bo ], [ %i.jw, %bb.bp ] ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !range !54, !noundef !47 ; 3 uses
  %.not102 = icmp eq i64 %i.kd, -1
  br i1 %.not102, label %.body233, label %bb.fn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.bn, %bb.bm
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !range !54, !noundef !47 ; 3 uses
  %.not103 = icmp eq i64 %i.kf, -1
  br i1 %.not103, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit
  %i.kg = icmp ne i64 %i.kf, -9223372036854775800
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp eq i64 %i.kf, -9223372036854775802
  br i1 %i.kh, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.ki, align 8
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.kj, align 8
  br label %bb.br

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(72) %i.ke)
          to label %bb.bs unwind label %bb.bv

.body233:                                         ; preds = %bb.cf, %bb.cg, %bb.bv, %bb.bx, %bb.fp, %bb.fo, %bb.fn, %.body231
  %.pn104 = phi { ptr, i32 } [ %i.kv, %bb.bx ], [ %.pn100, %bb.fo ], [ %.pn100, %bb.fp ], [ %.pn100, %bb.fn ], [ %.pn100, %.body231 ], [ %i.kq, %bb.bv ], [ %i.lj, %bb.cg ], [ %i.lj, %bb.cf ]
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.kk, align 8
  br label %bb.fk

bb.bu:                                            ; preds = %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s0_0B8_.exit, %.thread365, %bb.ev, %bb.fa, %bb.br
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.km = load ptr, ptr %i.kl, align 8, !nonnull !47, !align !52, !noundef !47
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.kp = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ko)
          to label %bb.bw unwind label %bb.bv     ; 2 uses

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body233

bb.bw:                                            ; preds = %bb.bu
  %i.kr = extractvalue { ptr, ptr } %i.kp, 0
  %i.ks = extractvalue { ptr, ptr } %i.kp, 1
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.kr, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.ks, ptr %i.ku, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.by
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val202 = load ptr, ptr %i.kx, align 8
  %i.kw = getelementptr i8, ptr %0, i64 256
  %.val203 = load ptr, ptr %i.kw, align 8, !nonnull !47, !align !52, !noundef !47
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal(ptr %.val202, ptr nonnull %.val203) #25
          to label %.body233 unwind label %bb.fm

bb.by:                                            ; preds = %bb.bw, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.ky = load i64, ptr %i.ak, align 8, !range !65, !noundef !47
  %i.kz = icmp eq i64 %i.ky, -2
  br i1 %i.kz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.cb:                                            ; preds = %bb.bz
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.la, ptr noundef nonnull align 8 dereferenceable(72) %i.ak, i64 72, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store i8 1, ptr %i.lb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val200 = load ptr, ptr %i.kx, align 8         ; 5 uses
  %i.lc = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %.val201 = load ptr, ptr %i.lc, align 8, !nonnull !47, !align !52, !noundef !47 ; 5 uses
  %i.ld = load ptr, ptr %.val201, align 8, !invariant.load !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val200) ]
  invoke void %i.ld(ptr noundef nonnull %.val200)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.le = getelementptr inbounds nuw i8, ptr %.val201, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lh = getelementptr inbounds nuw i8, ptr %.val201, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !range !49, !invariant.load !47
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val200) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val200, i64 noundef range(i64 1, -9223372036854775808) %i.lf, i64 noundef range(i64 1, 536870913) %i.li) #23
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.cf:                                            ; preds = %bb.cc
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val201, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !range !48, !invariant.load !47 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %.body233, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ln = getelementptr inbounds nuw i8, ptr %.val201, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !range !49, !invariant.load !47
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val200, i64 noundef range(i64 1, -9223372036854775808) %i.ll, i64 noundef range(i64 1, 536870913) %i.lo) #23
  br label %.body233

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.ce, %bb.cd
  %i.lp = load i64, ptr %i.la, align 8, !range !54, !noundef !47 ; 3 uses
  %.not = icmp eq i64 %i.lp, -1
  br i1 %.not, label %bb.ch, label %2

2:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit
  %3 = icmp ne i64 %i.lp, -9223372036854775800
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.lp, -9223372036854775802
  br i1 %4, label %.noexc135, label %.noexc132

bb.ch:                                            ; preds = %bb.ei, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs1ElB0qm0ygX_13influxdb3_wal.exit
  store i8 0, ptr %i.lb, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %.body unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs1ElB0qm0ygX_13influxdb3_wal.exit_crit_edge unwind label %bb.en

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs1ElB0qm0ygX_13influxdb3_wal.exit_crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1008
  %.phi.trans.insert378 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre379 = load i64, ptr %.phi.trans.insert378, align 8, !alias.scope !1009
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs1ElB0qm0ygX_13influxdb3_wal.exit

.noexc135:                                        ; preds = %2
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.lu = load ptr, ptr %i.lt, align 8, !nonnull !47, !noundef !47
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.lw = load i64, ptr %i.lv, align 8, !noundef !47
  store ptr %i.lu, ptr %i.kx, align 8
  store i64 %i.lw, ptr %i.lc, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.lz = load <2 x ptr>, ptr %i.ly, align 8
  store <2 x ptr> %i.lz, ptr %i.lx, align 8
  %i.ma = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.mb = icmp eq i64 %i.ma, 5
  br i1 %i.mb, label %bb.cq, label %bb.ck

bb.ck:                                            ; preds = %.noexc135
  %i.mc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.md = icmp ult i8 %i.mc, 3
  br i1 %i.md, label %bb.cm, label %bb.cl, !prof !64

bb.cl:                                            ; preds = %bb.ck
  %i.me = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sroa.0.0.i238 = phi i8 [ %i.mc, %bb.ck ], [ %i.me, %bb.cl ] ; 2 uses
  %i.mf = icmp eq i8 %.sroa.0.0.i238, 0
  br i1 %i.mf, label %bb.cq, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs1ElB0qm0ygX_13influxdb3_wal.exit.i, %bb.cl, %bb.co
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body228

bb.co:                                            ; preds = %bb.cm
  %i.mh = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.mi = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mh, i8 noundef %.sroa.0.0.i238)
          to label %bb.cp unwind label %bb.cn

bb.cp:                                            ; preds = %bb.co
  br i1 %i.mi, label %bb.db, label %bb.cq

bb.cq:                                            ; preds = %.noexc135, %bb.cm, %bb.cp
  %i.mj = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not372.a = icmp eq i8 %i.mj, 0
  br i1 %.not372.a, label %bb.cr, label %bb.dg

bb.cr:                                            ; preds = %bb.cq
  %i.mk = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ml = icmp ult i64 %i.mk, 6
  call void @llvm.assume(i1 %i.ml)
  %.not373 = icmp eq i64 %i.mk, 0
  br i1 %.not373, label %bb.dg, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mm = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.mn = getelementptr i8, ptr %i.mm, i64 32
  %.val192 = load ptr, ptr %i.mn, align 8, !nonnull !47, !noundef !47
  %i.mo = getelementptr i8, ptr %i.mm, i64 40
  %.val193 = load i64, ptr %i.mo, align 8, !noundef !47
  store i64 1, ptr %i.ae, align 8, !alias.scope !1010
  %.sroa.6329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.val192, ptr %.sroa.6329.0..sroa_idx, align 8, !alias.scope !1010
  %.sroa.8330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.val193, ptr %.sroa.8330.0..sroa_idx, align 8, !alias.scope !1010
  %i.mp = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ct unwind label %bb.cu     ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.mq = extractvalue { ptr, ptr } %i.mp, 0      ; 2 uses
  %i.mr = extractvalue { ptr, ptr } %i.mp, 1      ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !invariant.load !47, !nonnull !47
  %i.mu = invoke noundef zeroext i1 %i.mt(ptr noundef %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cv:                                            ; preds = %bb.ct
  br i1 %i.mu, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.dg

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.mw = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr @33, ptr %i.ab, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.my, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.kx, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.lx, ptr %i.z, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @11, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aa, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @34, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.z, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr @35, ptr %i.nd, align 8
  store i64 1, ptr %i.ad, align 8, !alias.scope !1011
  %.sroa.4.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i243, align 8, !alias.scope !1011
  %.sroa.5.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i244, align 8, !alias.scope !1011
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.mx, ptr %i.ne, align 8, !alias.scope !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mm, ptr noundef nonnull %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cw

bb.da:                                            ; preds = %bb.cu, %bb.cy
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nf, %bb.cy ], [ %i.mv, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.body228

bb.db:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ng = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr @33, ptr %i.ah, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.ni, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.kx, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.lx, ptr %i.af, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @11, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ag, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @34, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.af, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr @35, ptr %i.nn, align 8
  store i64 1, ptr %i.aj, align 8
  %.sroa.8322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.8322.0..sroa_idx, align 8
  %.sroa.9323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 3, ptr %.sroa.9323.0..sroa_idx, align 8
  %.sroa.10324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.nh, ptr %.sroa.10324.0..sroa_idx, align 8
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ng, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc250 unwind label %bb.df

.noexc250:                                        ; preds = %bb.db
  %i.no = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1012
  %i.np = icmp eq i8 %i.no, 0
  br i1 %i.np, label %bb.dc, label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_0B8_.exit

bb.dc:                                            ; preds = %.noexc250
  %i.nq = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1012 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 6
  call void @llvm.assume(i1 %i.nr)
  %.not.i247 = icmp eq i64 %i.nq, 0
  br i1 %.not.i247, label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_0B8_.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ns = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_10___CALLSITE, align 8, !noalias !1012, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1012
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !nonnull !47, !noundef !47
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.nw = load i64, ptr %i.nv, align 8, !noundef !47
  store i64 1, ptr %i.g, align 8, !noalias !1012
  %.sroa.3.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.nu, ptr %.sroa.3.0..sroa_idx.i248, align 8, !noalias !1012
  %.sroa.5.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.nw, ptr %.sroa.5.0..sroa_idx.i249, align 8, !noalias !1012
  %i.nx = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc251 unwind label %bb.df ; 2 uses

.noexc251:                                        ; preds = %bb.dd
  %i.ny = extractvalue { ptr, ptr } %i.nx, 0      ; 2 uses
  %i.nz = extractvalue { ptr, ptr } %i.nx, 1      ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !invariant.load !47, !nonnull !47
  %i.oc = invoke noundef zeroext i1 %i.ob(ptr noundef %i.ny, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %.noexc252 unwind label %bb.df, !inline_history !965

.noexc252:                                        ; preds = %.noexc251
  br i1 %i.oc, label %bb.de, label %.noexc253

bb.de:                                            ; preds = %.noexc252
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ns, ptr noundef nonnull %i.ny, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc253 unwind label %bb.df

.noexc253:                                        ; preds = %bb.de, %.noexc252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1012
  br label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_0B8_.exit

bb.df:                                            ; preds = %bb.de, %.noexc251, %bb.dd, %bb.db
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %.body228

_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_0B8_.exit: ; preds = %.noexc253, %bb.dc, %.noexc250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.dg

bb.dg:                                            ; preds = %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s1_0B8_.exit, %bb.cq, %bb.cr, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvNtNtCseCDlJsl44RV_5tokio4time5sleep5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.y, i64 noundef 1, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.body228

bb.di:                                            ; preds = %bb.dg
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.of, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bc

.body228:                                         ; preds = %bb.bb, %bb.dh, %bb.bj, %bb.da, %bb.cn, %bb.df
  %.pn97.pn = phi { ptr, i32 } [ %i.mg, %bb.cn ], [ %i.od, %bb.df ], [ %.pn84.pn.pn.pn.pn, %bb.da ], [ %i.oe, %bb.dh ], [ %i.iy, %bb.bb ], [ %i.jk, %bb.bj ]
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.og, align 8
  %i.oh = getelementptr i8, ptr %0, i64 272
  %.val160 = load ptr, ptr %i.oh, align 8, !nonnull !47, !align !52, !noundef !47
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs1ElB0qm0ygX_13influxdb3_wal(ptr %.val, ptr nonnull %.val160) #25
          to label %.body231 unwind label %bb.fm

.noexc132:                                        ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 0, ptr %i.lb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.la, i64 72, i1 false)
  %i.oi = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.oj = icmp eq i64 %i.oi, 5
  br i1 %i.oj, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %.noexc132
  %i.ok = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ol = icmp ult i8 %i.ok, 3
  br i1 %i.ol, label %bb.dl, label %bb.dk, !prof !64

bb.dk:                                            ; preds = %bb.dj
  %i.om = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.0.0.i254 = phi i8 [ %i.ok, %bb.dj ], [ %i.om, %bb.dk ] ; 2 uses
  %i.on = icmp eq i8 %.sroa.0.0.i254, 0
  br i1 %i.on, label %bb.dp, label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.dn
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.dn:                                            ; preds = %bb.dl
  %i.op = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.oq = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.op, i8 noundef %.sroa.0.0.i254)
          to label %bb.do unwind label %bb.dm

bb.do:                                            ; preds = %bb.dn
  br i1 %i.oq, label %bb.eb, label %bb.dp

bb.dp:                                            ; preds = %.noexc132, %bb.dl, %bb.do
  %i.or = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not370 = icmp eq i8 %i.or, 0
  br i1 %.not370, label %bb.dq, label %bb.ea

bb.dq:                                            ; preds = %bb.dp
  %i.os = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ot = icmp ult i64 %i.os, 6
  call void @llvm.assume(i1 %i.ot)
  %.not371 = icmp eq i64 %i.os, 0
  br i1 %.not371, label %bb.ea, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ou = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ov = getelementptr i8, ptr %i.ou, i64 32
  %.val190 = load ptr, ptr %i.ov, align 8, !nonnull !47, !noundef !47
  %i.ow = getelementptr i8, ptr %i.ou, i64 40
  %.val191 = load i64, ptr %i.ow, align 8, !noundef !47
  store i64 1, ptr %i.s, align 8, !alias.scope !1013
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val190, ptr %.sroa.6341.0..sroa_idx, align 8, !alias.scope !1013
  %.sroa.8342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val191, ptr %.sroa.8342.0..sroa_idx, align 8, !alias.scope !1013
  %i.ox = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ds unwind label %bb.dt     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.oy = extractvalue { ptr, ptr } %i.ox, 0      ; 2 uses
  %i.oz = extractvalue { ptr, ptr } %i.ox, 1      ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8, !invariant.load !47, !nonnull !47
  %i.pc = invoke noundef zeroext i1 %i.pb(ptr noundef %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.du:                                            ; preds = %bb.ds
  br i1 %i.pc, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ea

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.pe = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @33, ptr %i.p, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.pg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.x, ptr %i.o, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @11, ptr %i.ph, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.o, ptr %i.pi, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @24, ptr %i.pj, align 8
  store i64 1, ptr %i.r, align 8, !alias.scope !1014
  %.sroa.4.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i259, align 8, !alias.scope !1014
  %.sroa.5.0..sroa_idx.i260 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i260, align 8, !alias.scope !1014
  %i.pk = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.pf, ptr %i.pk, align 8, !alias.scope !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ou, ptr noundef nonnull %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dv

bb.dz:                                            ; preds = %bb.dt, %bb.dx
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %i.pl, %bb.dx ], [ %i.pd, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.fl

bb.ea:                                            ; preds = %bb.dv, %bb.dq, %bb.dp, %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_0B8_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(72) %i.x)
          to label %bb.ei unwind label %bb.eh

bb.eb:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.pm = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @33, ptr %i.u, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.po, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @11, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.t, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @24, ptr %i.pr, align 8
  store i64 1, ptr %i.w, align 8
  %.sroa.7334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.7334.0..sroa_idx, align 8
  %.sroa.8335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 2, ptr %.sroa.8335.0..sroa_idx, align 8
  %.sroa.9336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.pn, ptr %.sroa.9336.0..sroa_idx, align 8
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %.noexc266 unwind label %bb.ef

.noexc266:                                        ; preds = %bb.eb
  %i.ps = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1015
  %i.pt = icmp eq i8 %i.ps, 0
  br i1 %i.pt, label %bb.ec, label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_0B8_.exit

bb.ec:                                            ; preds = %.noexc266
  %i.pu = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1015 ; 2 uses
  %i.pv = icmp ult i64 %i.pu, 6
  call void @llvm.assume(i1 %i.pv)
  %.not.i263 = icmp eq i64 %i.pu, 0
  br i1 %.not.i263, label %_RNCNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_0B8_.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pw = load ptr, ptr @_RNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB6_14WalObjectStore25remove_snapshot_wal_files0s2_10___CALLSITE, align 8, !noalias !1015, !nonnull !47, !align !52, !noundef !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1015
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 32
  %i.py = load ptr, ptr %i.px, align 8, !nonnull !47, !noundef !47
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !47
  store i64 1, ptr %i.f, align 8, !noalias !1015
  %.sroa.3.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.py, ptr %.sroa.3.0..sroa_idx.i264, align 8, !noalias !1015
  %.sroa.5.0..sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.qa, ptr %.sroa.5.0..sroa_idx.i265, align 8, !noalias !1015
  %i.qb = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc267 unwind label %bb.ef ; 2 uses

.noexc267:                                        ; preds = %bb.ed
  %i.qc = extractvalue { ptr, ptr } %i.qb, 0      ; 2 uses
  %i.qd = extractvalue { ptr, ptr } %i.qb, 1      ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !invariant.load !47, !nonnull !47
  %i.qg = invoke noundef zeroext i1 %i.qf(ptr noundef %i.qc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc268 unwind label %bb.ef, !inline_history !973

end_hunk_3
