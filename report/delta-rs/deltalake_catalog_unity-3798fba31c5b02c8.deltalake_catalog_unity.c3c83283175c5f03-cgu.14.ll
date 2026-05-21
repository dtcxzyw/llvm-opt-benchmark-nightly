inline.NumInlined: 839
inline.NumDeleted: 369
begin_hunk_0_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a
bb.en:                                            ; preds = %.noexc158
  %i.ta = add nuw i64 %i.sy, 1
  store i64 %i.ta, ptr %i.sx, align 8
  %i.tb = icmp eq i64 %i.sy, 0
  br i1 %i.tb, label %bb.eq, label %bb.ev

bb.eo:                                            ; preds = %.noexc158
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
          to label %bb.es unwind label %bb.ep

bb.ep:                                            ; preds = %bb.er, %bb.eo
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 128 %i.sw) #26
          to label %.body.i.i.i unwind label %bb.et

bb.eq:                                            ; preds = %bb.en
  %i.td = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8, !nonnull !8, !noundef !8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 384
  %i.tg = load atomic i64, ptr %i.tf monotonic, align 8
  %i.th = or i64 %i.tg, 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sw, i64 2176
  %i.tj = cmpxchg ptr %i.ti, i64 0, i64 %i.th seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sw, i64 2088 ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !noundef !8 ; 2 uses
  %i.tm = add i64 %i.tl, 1
  store i64 %i.tm, ptr %i.tk, align 8
  %i.tn = and i64 %i.tl, 127
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %bb.er, label %bb.ev, !prof !361

bb.er:                                            ; preds = %bb.eq
  %i.tp = load ptr, ptr %i.td, align 8, !nonnull !8, !noundef !8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 128
  invoke void @_RNvMs5_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.tq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
          to label %bb.ev unwind label %bb.ep

bb.es:                                            ; preds = %bb.eo
  unreachable

bb.et:                                            ; preds = %bb.ep
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i.i.i:                                      ; preds = %bb.ep
  %i.ts = load i64, ptr %i.sx, align 8, !noundef !8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sw, i64 2080 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !noundef !8 ; 2 uses
  %i.tv = add i64 %i.tu, -1
  store i64 %i.tv, ptr %i.tt, align 8
  %i.tw = icmp eq i64 %i.ts, 0
  %i.tx = icmp eq i64 %i.tu, 1
  %or.cond.i.i.i.i.i.i = and i1 %i.tw, %i.tx
  br i1 %or.cond.i.i.i.i.i.i, label %bb.eu, label %.body155, !prof !697

bb.eu:                                            ; preds = %.body.i.i.i
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.sw)
          to label %.body155 unwind label %bb.ex

bb.ev:                                            ; preds = %bb.er, %bb.eq, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ty = load i64, ptr %i.sx, align 8, !noundef !8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sw, i64 2080 ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8, !noundef !8 ; 2 uses
  %i.ub = add i64 %i.ua, -1
  store i64 %i.ub, ptr %i.tz, align 8
  %i.uc = icmp eq i64 %i.ty, 0
  %i.ud = icmp eq i64 %i.ua, 1
  %or.cond.i.i.i3.i.i.i = and i1 %i.uc, %i.ud
  br i1 %or.cond.i.i.i3.i.i.i, label %bb.ew, label %_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit, !prof !697

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.sw)
          to label %_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit unwind label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.ue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ey:                                            ; preds = %bb.ej, %bb.ei, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit

bb.ez:                                            ; preds = %bb.ew, %.noexc157, %bb.em, %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %.body155

_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit: ; preds = %bb.ey, %bb.ev, %bb.ew
  %.sroa.0.0.i.i = phi ptr [ %.val.i.i.i, %bb.ey ], [ %i.sw, %bb.ev ], [ %i.sw, %bb.ew ] ; 6 uses
  store ptr %.sroa.0.0.i.i, ptr %i.ak, align 8
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit
  %i.ug = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.sroa.0.0.i.i) #26
          to label %.body155 unwind label %bb.o

bb.fb:                                            ; preds = %_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2072 ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !noundef !8 ; 2 uses
  %i.uj = add i64 %i.ui, -1
  store i64 %i.uj, ptr %i.uh, align 8
  %i.uk = icmp eq i64 %i.ui, 1
  br i1 %i.uk, label %bb.fc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.fc:                                            ; preds = %bb.fb
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2176
  store atomic i64 0, ptr %i.ul release, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2080
  %i.un = load i64, ptr %i.um, align 8, !noundef !8
  %i.uo = icmp eq i64 %i.un, 0
  br i1 %i.uo, label %bb.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !361

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.sroa.0.0.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.fe

.body155:                                         ; preds = %bb.ez, %bb.eu, %.body.i.i.i, %bb.eh, %bb.fa, %bb.fe
  %.pn88 = phi { ptr, i32 } [ %i.up, %bb.fe ], [ %i.ug, %bb.fa ], [ %i.uf, %bb.ez ], [ %i.sf, %bb.eh ], [ %i.tc, %bb.eu ], [ %i.tc, %.body.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.fe:                                            ; preds = %bb.fd
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body155

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.fc, %bb.fb, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 2 uses
  store i8 0, ptr %i.uq, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.us = load ptr, ptr %i.ur, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.ut = atomicrmw sub ptr %i.us, i64 1 release, align 8 ; 0 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  invoke fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.uu) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3mem4dropINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ff

bb.ff:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

_RINvNtCsbvkFyIu7lgC_4core3mem4dropINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.uw = load i8, ptr %i.px, align 8, !range !13, !noundef !8
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val96 = load ptr, ptr %i.ux, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.uy = atomicrmw sub ptr %.val96, i64 1 release, align 8 ; 0 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  invoke fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.uz) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit163 unwind label %bb.fg

bb.fg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3mem4dropINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit163: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3mem4dropINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  store i8 0, ptr %i.uq, align 1
  br label %common.ret

bb.fh:                                            ; preds = %bb.ai
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !nonnull !8, !align !12, !noundef !8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.ve = invoke noundef i64 @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2x_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.vd)
          to label %bb.fj unwind label %bb.fi     ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.fj:                                            ; preds = %bb.fh
  %.not = icmp eq i64 %i.ve, 0
  br i1 %.not, label %bb.fk, label %.thread723

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit, %bb.fj
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !nonnull !8, !align !12, !noundef !8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 32
  %i.vj = invoke noundef i64 @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.vi)
          to label %bb.go unwind label %bb.gn     ; 2 uses

.thread723:                                       ; preds = %bb.fj
  %i.vk = load ptr, ptr %i.vb, align 8, !nonnull !8, !align !12, !noundef !8
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.vk, ptr %i.vm, align 8
  %.sroa.7382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.vn = load <2 x ptr>, ptr %i.vl, align 8
  %i.vo = getelementptr i8, <2 x ptr> %i.vn, i64 16
  store <2 x ptr> %i.vo, ptr %.sroa.7382.0..sroa_idx, align 8
  %.sroa.9384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ve, ptr %.sroa.9384.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.fm

bb.fl:                                            ; preds = %bb.a
  %.phi.trans.insert578 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre579 = load i8, ptr %.phi.trans.insert578, align 8, !range !33, !noalias !698
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  switch i8 %.pre579, label %default.unreachable718 [
    i8 0, label %bb.fm
    i8 1, label %bb.fn
    i8 2, label %bb.fo
    i8 3, label %bb.fp
  ]

bb.fm:                                            ; preds = %.thread723, %bb.fl
  %i.vr = phi ptr [ %i.vp, %.thread723 ], [ %i.vq, %bb.fl ]
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.vu = load <2 x ptr>, ptr %i.vs, align 8, !noalias !698
  %i.vv = load ptr, ptr %i.vs, align 8, !noalias !698, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store <2 x ptr> %i.vu, ptr %i.vt, align 8, !noalias !698
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.vy = load ptr, ptr %i.vx, align 8, !noalias !698, !nonnull !8, !align !12, !noundef !8
  store ptr %i.vy, ptr %i.vw, align 8, !noalias !698
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.wb = load i64, ptr %i.wa, align 8, !noalias !698, !noundef !8
  store i64 %i.wb, ptr %i.vz, align 8, !noalias !698
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 472 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 512
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 1000000001, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !698
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.wc, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !698
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.wc, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !698
  %.sroa.11.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %.sroa.11.0..sroa_idx.i169, align 8, !noalias !698
  %.sroa.12.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.wd, ptr %.sroa.12.0..sroa_idx.i170, align 8, !noalias !698
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
          to label %.noexc171 unwind label %.body173

.noexc171:                                        ; preds = %bb.fn
  unreachable

bb.fo:                                            ; preds = %bb.fl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
          to label %.noexc172 unwind label %.body173

.noexc172:                                        ; preds = %bb.fo
  unreachable

bb.fp:                                            ; preds = %bb.fm, %bb.fl
  %i.we = phi ptr [ %i.vr, %bb.fm ], [ %i.vq, %bb.fl ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.wg = invoke noundef zeroext i1 @_RINvXs1_NtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB6_8RawWriteNtCs4IjZJRxZMkw_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB11_11NonBlockingECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.wf, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i unwind label %bb.fq

.noexc.i:                                         ; preds = %bb.fp
  br i1 %i.wg, label %.thread497, label %bb.fr

.thread497:                                       ; preds = %.noexc.i
  store i8 3, ptr %i.we, align 8, !noalias !698
  br label %common.ret

bb.fq:                                            ; preds = %bb.fp
  %i.wh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.wf) #26
          to label %.body173.thread unwind label %bb.gk

bb.fr:                                            ; preds = %.noexc.i
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.wj = load ptr, ptr %i.wi, align 8, !noalias !701, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.wl = load ptr, ptr %i.wk, align 8, !noalias !701, !noundef !8 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.wf)
          to label %bb.ft unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %.body173.thread

bb.ft:                                            ; preds = %bb.fr
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8, !noalias !698, !nonnull !8, !align !12, !noundef !8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.wr = load i64, ptr %i.wq, align 8, !noalias !698, !noundef !8 ; 2 uses
  %.not.i164 = icmp eq i64 %i.wr, 0
  br i1 %.not.i164, label %.loopexit.i167, label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %bb.ft
  %i.ws = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.fu

bb.fu:                                            ; preds = %bb.gj, %.lr.ph.i165
  %.sroa.038.051.i = phi i64 [ 0, %.lr.ph.i165 ], [ %i.ww, %bb.gj ]
  %i.ww = add nuw i64 %.sroa.038.051.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !698
  invoke void @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wp)
          to label %bb.fx unwind label %bb.fw

.loopexit.i167:                                   ; preds = %bb.gj, %bb.fy, %bb.ft
  invoke void @_RNvMNtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8 %i.wj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit unwind label %bb.gm

bb.fv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i166, %bb.fw
  %.pn15.i = phi { ptr, i32 } [ %i.wx, %bb.fw ], [ %.pn13.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !698
  invoke void @_RNvMNtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8 %i.wj)
          to label %.body173.thread unwind label %bb.gk

bb.fw:                                            ; preds = %bb.gl, %bb.fu
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fx:                                            ; preds = %bb.fu
  %i.wy = load i8, ptr %i.af, align 8, !range !689, !noalias !698, !noundef !8
  switch i8 %i.wy, label %bb.gl [
    i8 2, label %bb.fy
    i8 0, label %bb.ga
  ]

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !698
  br label %.loopexit.i167

bb.fz:                                            ; preds = %bb.gg, %bb.gf, %bb.gb
  %.pn11.i = phi { ptr, i32 } [ %i.xk, %bb.gg ], [ %i.xj, %bb.gf ], [ %i.xe, %bb.gb ]
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i166 unwind label %bb.gk

bb.ga:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !698
  %i.wz = load ptr, ptr %i.ws, align 8, !noalias !698, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.wz, ptr %i.ae, align 8, !noalias !698
  %i.xa = load i8, ptr %i.wt, align 1, !range !13, !noalias !698, !noundef !8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 264
  %.val25.i = load ptr, ptr %i.xb, align 8, !nonnull !8, !noundef !8
  %i.xc = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %i.xd = load i64, ptr %i.xc, align 8, !noundef !8
  invoke void @_RNvMNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketchNtB2_15FrequencySketch9increment(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wl, i64 noundef %i.xd)
          to label %bb.gc unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gc:                                            ; preds = %bb.ga
  %i.xf = trunc nuw i8 %i.xa to i1
  br i1 %i.xf, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.ge, %bb.gc
  %i.xg = load ptr, ptr %i.wv, align 8, !noalias !698, !nonnull !8, !align !12, !noundef !8
  invoke void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE15move_to_back_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB26_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.xg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.gh unwind label %bb.gg

bb.ge:                                            ; preds = %bb.gc
  %i.xh = load ptr, ptr %i.wn, align 8, !noalias !698, !nonnull !8, !align !12, !noundef !8
  %i.xi = load ptr, ptr %i.wu, align 8, !noalias !698, !nonnull !8, !align !12, !noundef !8
  invoke void @_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18update_timer_wheelB1D_(ptr noundef nonnull align 8 %i.xh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.xi)
          to label %bb.gd unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gg:                                            ; preds = %bb.gd
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gh:                                            ; preds = %bb.gd
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit29.i unwind label %bb.gi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i166: ; preds = %bb.gi, %bb.fz
  %.pn13.i = phi { ptr, i32 } [ %i.xl, %bb.gi ], [ %.pn11.i, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !698
  br label %bb.fv

bb.gi:                                            ; preds = %bb.gh
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i166

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit29.i: ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !698
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !698
  %exitcond.not.i = icmp eq i64 %i.ww, %i.wr
  br i1 %exitcond.not.i, label %.loopexit.i167, label %bb.fu

bb.gk:                                            ; preds = %bb.fz, %bb.fv, %bb.fq
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.gl:                                            ; preds = %bb.fx
  %i.xn = load i64, ptr %i.ws, align 8, !noalias !698, !noundef !8
  invoke void @_RNvMNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketchNtB2_15FrequencySketch9increment(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wl, i64 noundef %i.xn)
          to label %bb.gj unwind label %bb.fw

.body173.thread:                                  ; preds = %bb.fq, %bb.fs, %bb.fv, %bb.gm
  %.pn19.i = phi { ptr, i32 } [ %i.xo, %bb.gm ], [ %.pn15.i, %bb.fv ], [ %i.wm, %bb.fs ], [ %i.wh, %bb.fq ]
  store i8 2, ptr %i.we, align 8, !noalias !698
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.gm:                                            ; preds = %.loopexit.i167
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body173.thread

.body173:                                         ; preds = %bb.fo, %bb.fn
  %i.xp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr535 = load i8, ptr %i.vq, align 8
  %cond.i362 = icmp eq i8 %.pr535, 3
  br i1 %cond.i362, label %bb.afi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit: ; preds = %.loopexit.i167
  store i8 1, ptr %i.we, align 8, !noalias !698
  br label %bb.fk

bb.gn:                                            ; preds = %bb.fk
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.go:                                            ; preds = %bb.fk
  %.not50 = icmp eq i64 %i.vj, 0
  br i1 %.not50, label %bb.qe, label %.thread724

.thread724:                                       ; preds = %bb.go
  %i.xr = load ptr, ptr %i.vg, align 8, !nonnull !8, !align !12, !noundef !8
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.xr, ptr %i.xu, align 8
  %.sroa.7395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.xv = load <2 x ptr>, ptr %i.xs, align 8
  %i.xw = getelementptr i8, <2 x ptr> %i.xv, i64 16
  store <2 x ptr> %i.xw, ptr %.sroa.7395.0..sroa_idx, align 8
  %.sroa.9397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.xt, ptr %.sroa.9397.0..sroa_idx, align 8
  %.sroa.10398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.vj, ptr %.sroa.10398.0..sroa_idx, align 8
  %.sroa.12400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %.sroa.12400.0..sroa_idx, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.gq

bb.gp:                                            ; preds = %bb.a
  %.phi.trans.insert581 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.pre582 = load i8, ptr %.phi.trans.insert581, align 8, !range !167, !noalias !704
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 11 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 10 uses
  switch i8 %.pre582, label %default.unreachable718 [
    i8 0, label %bb.gq
    i8 1, label %bb.gr
    i8 2, label %bb.gs
    i8 3, label %bb.gt
    i8 4, label %bb.hb
  ]

bb.gq:                                            ; preds = %.thread724, %bb.gp
  %i.yb = phi ptr [ %i.xy, %.thread724 ], [ %i.ya, %bb.gp ]
  %i.yc = phi ptr [ %i.xx, %.thread724 ], [ %i.xz, %bb.gp ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ye = load ptr, ptr %i.yc, align 8, !noalias !704, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  store ptr %i.ye, ptr %i.yd, align 8, !noalias !704
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.yh = load <2 x ptr>, ptr %i.yg, align 8, !noalias !704
  store <2 x ptr> %i.yh, ptr %i.yf, align 8, !noalias !704
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.yk = load i64, ptr %i.yj, align 8, !noalias !704, !noundef !8
  store i64 %i.yk, ptr %i.yi, align 8, !noalias !704
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.yn = load ptr, ptr %i.ym, align 8, !noalias !704, !nonnull !8, !align !12, !noundef !8
  store ptr %i.yn, ptr %i.yl, align 8, !noalias !704
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ye, i64 472
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ye, i64 504
  %i.yq = load atomic i64, ptr %i.yp acquire, align 8, !noalias !707
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ye, i64 512
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.yo, ptr %i.ys, align 8, !noalias !704
  %.sroa.754.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.yq, ptr %.sroa.754.0..sroa_idx.i, align 8, !noalias !704
  %.sroa.8.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %.sroa.8.0..sroa_idx.i191, align 8, !noalias !704
  %.sroa.9.0..sroa_idx.i192 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.yr, ptr %.sroa.9.0..sroa_idx.i192, align 8, !noalias !704
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
          to label %.noexc193 unwind label %bb.qb

.noexc193:                                        ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %bb.gp
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
          to label %.noexc194 unwind label %bb.qb

.noexc194:                                        ; preds = %bb.gs
  unreachable

bb.gt:                                            ; preds = %bb.gq, %bb.gp
  %i.yt = phi ptr [ %i.yb, %bb.gq ], [ %i.ya, %bb.gp ] ; 4 uses
  %i.yu = phi ptr [ %i.yc, %bb.gq ], [ %i.xz, %bb.gp ] ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.yw = invoke noundef zeroext i1 @_RINvXs_NtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB5_7RawReadNtCs4IjZJRxZMkw_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtBZ_11NonBlockingECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.yv, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i190 unwind label %bb.gu

.noexc.i190:                                      ; preds = %bb.gt
  br i1 %i.yw, label %bb.qc, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.yx = landingpad { ptr, i32 }
          cleanup
  %i.yy = getelementptr i8, ptr %0, i64 288
  %.val.i189 = load ptr, ptr %i.yy, align 8, !noalias !704, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i189)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ha

bb.gv:                                            ; preds = %.noexc.i190
  %i.yz = load ptr, ptr %i.yv, align 8, !noalias !710, !nonnull !8, !align !12, !noundef !8
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.zb = load ptr, ptr %i.za, align 8, !noalias !710, !noundef !8
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.yz, ptr %i.zc, align 8, !noalias !704
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.zb, ptr %i.zd, align 8, !noalias !704
  %i.ze = getelementptr i8, ptr %0, i64 288
  %.val26.i = load ptr, ptr %i.ze, align 8, !noalias !704, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val26.i)
          to label %bb.gx unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.gx:                                            ; preds = %bb.gv
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.zh = load ptr, ptr %i.zg, align 8, !noalias !704, !nonnull !8, !align !12, !noundef !8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 32
  store ptr %i.zi, ptr %i.yv, align 8, !noalias !704
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.zk = load i64, ptr %i.zj, align 8, !noalias !704, !noundef !8 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.zl, align 8, !noalias !704
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.zk, ptr %i.zm, align 8, !noalias !704
  br label %bb.gy

bb.gy:                                            ; preds = %bb.pp, %bb.gx
  %i.zn = phi ptr [ %i.bce, %bb.pp ], [ %i.yt, %bb.gx ] ; 6 uses
  %i.zo = phi ptr [ %i.bcf, %bb.pp ], [ %i.yu, %bb.gx ] ; 5 uses
  %i.zp = phi i64 [ %.pre99.i, %bb.pp ], [ %i.zk, %bb.gx ]
  %i.zq = phi i64 [ %.pre.i179, %bb.pp ], [ 0, %bb.gx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.zr = icmp ult i64 %i.zq, %i.zp
  br i1 %i.zr, label %bb.pr, label %bb.ps

bb.gz:                                            ; preds = %.body.i176, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188, %bb.pq, %bb.po
  %i.zs = phi ptr [ %i.zn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188 ], [ %i.zn, %bb.pq ], [ %i.bbz, %bb.po ], [ %i.bef, %.body.i176 ]
  %i.zt = phi ptr [ %i.zo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188 ], [ %i.zo, %bb.pq ], [ %i.bca, %bb.po ], [ %i.beg, %.body.i176 ]
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188 ], [ %i.bcg, %bb.pq ], [ %i.bcd, %bb.po ], [ %.pn17.i, %.body.i176 ]
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val28.i = load ptr, ptr %i.zu, align 8, !noalias !704, !nonnull !8, !align !12, !noundef !8
  invoke void @_RNvMNtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB2_9RawRwLock11read_unlock(ptr noundef nonnull align 8 %.val28.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ha

bb.ha:                                            ; preds = %.body.i176, %bb.pw, %bb.gz, %bb.gu
  %i.zv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.qa, %bb.gz, %bb.gw, %bb.gu
  %i.zw = phi ptr [ %i.zn, %bb.qa ], [ %i.yt, %bb.gu ], [ %i.yt, %bb.gw ], [ %i.zs, %bb.gz ]
  %i.zx = phi ptr [ %i.zo, %bb.qa ], [ %i.yu, %bb.gu ], [ %i.yu, %bb.gw ], [ %i.zt, %bb.gz ]
  %.pn24.i = phi { ptr, i32 } [ %i.bee, %bb.qa ], [ %i.yx, %bb.gu ], [ %i.zf, %bb.gw ], [ %.pn21.pn.i, %bb.gz ]
  store i8 2, ptr %i.zw, align 8, !noalias !704
  br label %.body195

bb.hb:                                            ; preds = %bb.gp
  %.phi.trans.insert100.i = getelementptr inbounds nuw i8, ptr %0, i64 1195 ; 8 uses
  %.pre101.i = load i8, ptr %.phi.trans.insert100.i, align 1, !range !190, !noalias !718
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !704
  switch i8 %.pre101.i, label %default.unreachable718 [
    i8 0, label %._crit_edge583
    i8 1, label %bb.kb
    i8 2, label %bb.kc
    i8 3, label %bb.kd
    i8 4, label %bb.kt
    i8 5, label %bb.hc
    i8 6, label %bb.hd
    i8 7, label %bb.od
    i8 8, label %bb.ou
  ]

._crit_edge583:                                   ; preds = %bb.hb
  %.phi.trans.insert584 = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %.pre585 = load ptr, ptr %.phi.trans.insert584, align 8, !noalias !718
  %.phi.trans.insert586 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.pre587 = load ptr, ptr %.phi.trans.insert586, align 8, !noalias !718
  %.phi.trans.insert588 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.pre589 = load i64, ptr %.phi.trans.insert588, align 8, !noalias !718
  %.phi.trans.insert590 = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.pre591 = load ptr, ptr %.phi.trans.insert590, align 8, !noalias !718
  %.phi.trans.insert592 = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %.pre593 = load i16, ptr %.phi.trans.insert592, align 4, !noalias !718
  %.phi.trans.insert594 = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %.pre595 = load i32, ptr %.phi.trans.insert594, align 8, !noalias !718
  %.phi.trans.insert596 = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %.pre597 = load i32, ptr %.phi.trans.insert596, align 4, !noalias !718
  %.phi.trans.insert598 = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.pre599 = load ptr, ptr %.phi.trans.insert598, align 8, !noalias !718
  %.phi.trans.insert600 = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %.pre601 = load ptr, ptr %.phi.trans.insert600, align 8, !noalias !718
  %.phi.trans.insert602 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.pre603 = load ptr, ptr %.phi.trans.insert602, align 8, !noalias !718
  %.phi.trans.insert604 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %.pre605 = load ptr, ptr %.phi.trans.insert604, align 8, !noalias !718
  br label %bb.he

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !718
  br label %bb.mz

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !718
end_hunk_0
begin_hunk_1_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a
  store i8 0, ptr %.sroa.1577.0..sroa_idx.i, align 1, !noalias !995
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 0, ptr %.sroa.1678.0..sroa_idx.i, align 2, !noalias !995
  br label %bb.xo

.body.i265:                                       ; preds = %bb.xf, %.body49.i.i
  %i.ccy = phi ptr [ %i.bsh, %.body49.i.i ], [ %i.bqb, %bb.xf ]
  %i.ccz = phi ptr [ %i.bsi, %.body49.i.i ], [ %i.bqa, %bb.xf ]
  %i.cda = phi ptr [ %i.bsk, %.body49.i.i ], [ %i.brj, %bb.xf ]
  %.pn11.i266 = phi { ptr, i32 } [ %.pn33.pn.i.i, %.body49.i.i ], [ %i.ccc, %bb.xf ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_wo0EB2m_(ptr noundef nonnull align 8 %i.cda) #26
          to label %bb.ub unwind label %bb.xn

bb.xn:                                            ; preds = %bb.yb, %bb.xv, %bb.xp, %.body.i265
  %i.cdb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.xo:                                            ; preds = %bb.xm, %bb.tz
  %i.cdc = phi ptr [ %i.ccg, %bb.xm ], [ %i.bqb, %bb.tz ] ; 4 uses
  %i.cdd = phi ptr [ %i.cch, %bb.xm ], [ %i.bqa, %bb.tz ] ; 3 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cdf = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_(ptr noundef nonnull align 8 %i.cde, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.xq unwind label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cdg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0EB2m_(ptr noundef nonnull align 8 %i.cde) #26
          to label %bb.ub unwind label %bb.xn

bb.xq:                                            ; preds = %bb.xo
  br i1 %i.cdf, label %bb.yg, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0EB2m_(ptr noundef nonnull align 8 %i.cde)
          to label %bb.xt unwind label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.cdh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

bb.xt:                                            ; preds = %bb.xr
  %i.cdi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cdj = load ptr, ptr %i.cdi, align 8, !noalias !995, !nonnull !8, !align !12, !noundef !8
  %i.cdk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cdl = load ptr, ptr %i.cdk, align 8, !noalias !995, !nonnull !8, !align !12, !noundef !8
  %.val37.i259 = load ptr, ptr %i.cdl, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cdm = getelementptr inbounds nuw i8, ptr %.val37.i259, i64 16
  %i.cdn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cdo = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.cdp = load i32, ptr %i.cdo, align 4, !noalias !995, !noundef !8
  %i.cdq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cdr = load i64, ptr %i.cdq, align 8, !noalias !995, !noundef !8
  %.sroa.792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.cdr, ptr %.sroa.792.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.994.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.cdj, ptr %.sroa.994.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.1095.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.cdm, ptr %.sroa.1095.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.1196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cds = load <2 x ptr>, ptr %i.cdn, align 8, !noalias !995
  store <2 x ptr> %i.cds, ptr %.sroa.1196.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.1398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.cdp, ptr %.sroa.1398.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.15100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15100.0..sroa_idx.i, align 1, !noalias !995
  %.sroa.16101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 1, ptr %.sroa.16101.0..sroa_idx.i, align 2, !noalias !995
  br label %bb.xu

bb.xu:                                            ; preds = %bb.xt, %bb.tz
  %i.cdt = phi ptr [ %i.cdc, %bb.xt ], [ %i.bqb, %bb.tz ] ; 4 uses
  %i.cdu = phi ptr [ %i.cdd, %bb.xt ], [ %i.bqa, %bb.tz ] ; 3 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cdw = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_(ptr noundef nonnull align 8 %i.cdv, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.xw unwind label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.cdx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0EB2m_(ptr noundef nonnull align 8 %i.cdv) #26
          to label %bb.ub unwind label %bb.xn

bb.xw:                                            ; preds = %bb.xu
  br i1 %i.cdw, label %bb.yg, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0EB2m_(ptr noundef nonnull align 8 %i.cdv)
          to label %bb.xz unwind label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.cdy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

bb.xz:                                            ; preds = %bb.xx
  %i.cdz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cea = load ptr, ptr %i.cdz, align 8, !noalias !995, !nonnull !8, !align !12, !noundef !8
  %i.ceb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cec = load ptr, ptr %i.ceb, align 8, !noalias !995, !nonnull !8, !align !12, !noundef !8
  %.val36.i258 = load ptr, ptr %i.cec, align 8, !nonnull !8, !align !12, !noundef !8
  %i.ced = getelementptr inbounds nuw i8, ptr %.val36.i258, i64 16
  %i.cee = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cef = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ceg = load i32, ptr %i.cef, align 4, !noalias !995, !noundef !8
  %i.ceh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cei = load i64, ptr %i.ceh, align 8, !noalias !995, !noundef !8
  %.sroa.7116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.cei, ptr %.sroa.7116.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.cea, ptr %.sroa.9118.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.10119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.ced, ptr %.sroa.10119.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.11120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cej = load <2 x ptr>, ptr %i.cee, align 8, !noalias !995
  store <2 x ptr> %i.cej, ptr %.sroa.11120.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.13122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.ceg, ptr %.sroa.13122.0..sroa_idx.i, align 8, !noalias !995
  %.sroa.15124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15124.0..sroa_idx.i, align 1, !noalias !995
  %.sroa.16125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 2, ptr %.sroa.16125.0..sroa_idx.i, align 2, !noalias !995
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.tz
  %i.cek = phi ptr [ %i.cdt, %bb.xz ], [ %i.bqb, %bb.tz ] ; 4 uses
  %i.cel = phi ptr [ %i.cdu, %bb.xz ], [ %i.bqa, %bb.tz ] ; 2 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cen = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_(ptr noundef nonnull align 8 %i.cem, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.yc unwind label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.ceo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0EB2m_(ptr noundef nonnull align 8 %i.cem) #26
          to label %bb.ub unwind label %bb.xn

bb.yc:                                            ; preds = %bb.ya
  br i1 %i.cen, label %bb.yg, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0EB2m_(ptr noundef nonnull align 8 %i.cem)
          to label %bb.yh unwind label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.cep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

bb.yf:                                            ; preds = %bb.ue, %bb.ud
  %i.ceq = landingpad { ptr, i32 }
          cleanup
  br label %.body292

bb.yg:                                            ; preds = %bb.xw, %bb.xq, %bb.xg, %bb.yc
  %i.cer = phi ptr [ %i.cek, %bb.yc ], [ %i.ccd, %bb.xg ], [ %i.cdc, %bb.xq ], [ %i.cdt, %bb.xw ]
  %.sink.i256.ph = phi i8 [ 6, %bb.yc ], [ 3, %bb.xg ], [ 4, %bb.xq ], [ 5, %bb.xw ]
  store i8 %.sink.i256.ph, ptr %i.cer, align 8, !noalias !995
  br label %common.ret

bb.yh:                                            ; preds = %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE15has_valid_afterB1D_.exit.i, %bb.yd
  %i.ces = phi ptr [ %i.ccg, %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE15has_valid_afterB1D_.exit.i ], [ %i.cek, %bb.yd ]
  store i8 1, ptr %i.ces, align 8, !noalias !995
  br label %bb.ty

bb.yi:                                            ; preds = %bb.ty
  %i.cet = invoke noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE8is_emptyB1L_(ptr noundef nonnull align 8 %i.bpo)
          to label %bb.yl unwind label %bb.yk

bb.yj:                                            ; preds = %bb.yl, %bb.afc, %bb.ty
  %i.ceu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cev = load ptr, ptr %i.ceu, align 8, !nonnull !8, !align !12, !noundef !8 ; 3 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cex = load i64, ptr %i.cev, align 8, !range !14, !noundef !8
  %i.cey = trunc nuw i64 %i.cex to i1
  br i1 %i.cey, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread

bb.yk:                                            ; preds = %bb.yi
  %i.cez = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.yl:                                            ; preds = %bb.yi
  br i1 %i.cet, label %bb.yj, label %.thread728

.thread728:                                       ; preds = %bb.yl
  %i.cfa = load ptr, ptr %i.bpm, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cfb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cfc = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cfd = load i32, ptr %i.cfc, align 4, !noundef !8
  %i.cfe = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.7455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 832
  store ptr %i.cfa, ptr %.sroa.7455.0..sroa_idx, align 8
  %.sroa.8456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr %i.bpo, ptr %.sroa.8456.0..sroa_idx, align 8
  %.sroa.9457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.cff = load <2 x ptr>, ptr %i.cfb, align 8
  %i.cfg = getelementptr i8, <2 x ptr> %i.cff, i64 16
  store <2 x ptr> %i.cfg, ptr %.sroa.9457.0..sroa_idx, align 8
  %.sroa.11459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.cfe, ptr %.sroa.11459.0..sroa_idx, align 8
  %.sroa.12460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i32 %i.cfd, ptr %.sroa.12460.0..sroa_idx, align 8
  %.sroa.14462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 877
  store i8 0, ptr %.sroa.14462.0..sroa_idx, align 1
  %i.cfh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cfi = getelementptr inbounds nuw i8, ptr %0, i64 877
  br label %bb.yn

bb.ym:                                            ; preds = %bb.a
  %.phi.trans.insert639 = getelementptr inbounds nuw i8, ptr %0, i64 877
  %.pre640 = load i8, ptr %.phi.trans.insert639, align 1, !range !33, !noalias !1092
  %i.cfj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  %i.cfk = getelementptr inbounds nuw i8, ptr %0, i64 877 ; 12 uses
  switch i8 %.pre640, label %default.unreachable718 [
    i8 0, label %bb.yn
    i8 1, label %bb.aaa
    i8 2, label %bb.aab
    i8 3, label %bb.aac
  ]

bb.yn:                                            ; preds = %.thread728, %bb.ym
  %i.cfl = phi ptr [ %i.cfi, %.thread728 ], [ %i.cfk, %bb.ym ] ; 12 uses
  %i.cfm = phi ptr [ %i.cfh, %.thread728 ], [ %i.cfj, %bb.ym ] ; 2 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 4 uses
  store i8 0, ptr %i.cfn, align 4, !noalias !1092
  %i.cfo = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cfp = load ptr, ptr %i.cfo, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.cfs = load <2 x ptr>, ptr %i.cfr, align 8, !noalias !1092
  store <2 x ptr> %i.cfs, ptr %i.cfq, align 8, !noalias !1092
  %i.cft = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cfu = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cfv = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cfw = load i32, ptr %i.cfv, align 8, !noalias !1092, !noundef !8 ; 4 uses
  %i.cfx = load <2 x ptr>, ptr %i.cfu, align 8, !noalias !1092
  store <2 x ptr> %i.cfx, ptr %i.cft, align 8, !noalias !1092
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfp, i64 72
  %i.cfz = invoke noundef i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cfy)
          to label %bb.yp unwind label %bb.yo

.body347.thread:                                  ; preds = %bb.yo, %bb.yr, %.body40.i
  %i.cga = phi ptr [ %i.cfl, %bb.yr ], [ %i.cgj, %.body40.i ], [ %i.cfl, %bb.yo ]
  %.pn33.i = phi { ptr, i32 } [ %i.cgi, %bb.yr ], [ %.pn27.pn.pn.pn.pn.i, %.body40.i ], [ %i.cgb, %bb.yo ]
  store i8 2, ptr %i.cga, align 1, !noalias !1092
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.yo:                                            ; preds = %bb.yn
  %i.cgb = landingpad { ptr, i32 }
          cleanup
  br label %.body347.thread

bb.yp:                                            ; preds = %bb.yn
  %i.cgc = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cgd = load ptr, ptr %i.cgc, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8 ; 6 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cgd, i64 144 ; 9 uses
  %i.cgf = getelementptr i8, ptr %i.cgd, i64 160
  %.val36.i333 = load i64, ptr %i.cgf, align 8, !noundef !8
  %i.cgg = icmp eq i64 %.val36.i333, 0
  br i1 %i.cgg, label %bb.yq, label %bb.yt

bb.yq:                                            ; preds = %bb.yp
  %i.cgh = load ptr, ptr %i.cfq, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  invoke void @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE35remove_predicates_registered_beforeB1L_(ptr noundef nonnull align 8 %i.cgh, i64 noundef %i.cfz)
          to label %bb.afc unwind label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cgi = landingpad { ptr, i32 }
          cleanup
  br label %.body347.thread

.body40.i:                                        ; preds = %bb.afa, %bb.zz, %bb.zw, %bb.ys
  %i.cgj = phi ptr [ %i.cjh, %bb.afa ], [ %i.cjh, %bb.zz ], [ %i.cfl, %bb.ys ], [ %i.cfl, %bb.zw ]
  %.pn27.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn27.pn.pn.pn.i, %bb.afa ], [ %.pn27.pn.pn.pn.i, %bb.zz ], [ %i.cgl, %bb.ys ], [ %i.cjc, %bb.zw ]
  %i.cgk = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.cgk, align 4, !noalias !1092
  br label %.body347.thread

bb.ys:                                            ; preds = %bb.zx
  %i.cgl = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

bb.yt:                                            ; preds = %bb.yp
  %i.cgm = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 9 uses
  store i64 0, ptr %i.cgm, align 8, !alias.scope !1095, !noalias !1092
  %i.cgn = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cgn, align 8, !alias.scope !1095, !noalias !1092
  %i.cgo = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  store i64 0, ptr %i.cgo, align 8, !alias.scope !1095, !noalias !1092
  store i8 1, ptr %i.cfn, align 4, !noalias !1092
  %.not101.i = icmp eq i32 %i.cfw, 0
  br i1 %.not101.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgd, i64 152 ; 10 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgd, i64 168 ; 2 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cfp, i64 200 ; 2 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.cgu = load i64, ptr %i.cge, align 8, !range !14, !noalias !8, !noundef !8
  %.not.i.i.peel.i = icmp eq i64 %i.cgu, 0
  br i1 %.not.i.i.peel.i, label %bb.yw, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %.pr.i.i.peel.i = load ptr, ptr %i.cgp, align 8, !noalias !1098 ; 2 uses
  store i64 0, ptr %i.cge, align 8, !noalias !1098
  %i.cgv = icmp eq ptr %.pr.i.i.peel.i, null
  br i1 %i.cgv, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %bb.yx

bb.yw:                                            ; preds = %bb.yu
  %i.cgw = load ptr, ptr %i.cgq, align 8, !noalias !1098, !noundef !8 ; 3 uses
  %.not4.i.i.peel.i = icmp eq ptr %i.cgw, null
  br i1 %.not4.i.i.peel.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %.thread7.i.i.peel.i

.thread7.i.i.peel.i:                              ; preds = %bb.yw
  store ptr %i.cgw, ptr %i.cgp, align 8, !noalias !1098
  br label %bb.yx

bb.yx:                                            ; preds = %.thread7.i.i.peel.i, %bb.yv
  %i.cgx = phi ptr [ %i.cgw, %.thread7.i.i.peel.i ], [ %.pr.i.i.peel.i, %bb.yv ] ; 4 uses
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cgx, i64 8
  %i.cgz = load ptr, ptr %i.cgy, align 8, !noalias !1098, !noundef !8
  store i64 1, ptr %i.cge, align 8, !noalias !1098
  store ptr %i.cgz, ptr %i.cgp, align 8, !noalias !1098
  %i.cha = invoke noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE8is_dirtyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cgx)
          to label %bb.yy unwind label %.loopexit.split-lp.i334

bb.yy:                                            ; preds = %bb.yx
  br i1 %i.cha, label %bb.zf, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.chb = invoke { i64, i64 } @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE13last_modifiedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cgx)
          to label %bb.za unwind label %.loopexit.split-lp105.i ; 2 uses

bb.za:                                            ; preds = %bb.yz
  %i.chc = extractvalue { i64, i64 } %i.chb, 0
  %i.chd = extractvalue { i64, i64 } %i.chb, 1
  %i.che = trunc nuw i64 %i.chc to i1
  br i1 %i.che, label %bb.zb, label %bb.zf

bb.zb:                                            ; preds = %bb.za
  %.val35.peel.i = load ptr, ptr %i.cgx, align 8, !nonnull !8, !noundef !8
  %i.chf = getelementptr inbounds nuw i8, ptr %.val35.peel.i, i64 8 ; 2 uses
  %.val.peel.i = load ptr, ptr %i.chf, align 8, !nonnull !8, !noundef !8
  %i.chg = getelementptr inbounds nuw i8, ptr %.val.peel.i, i64 16
  %i.chh = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cgr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.chg)
          to label %_RINvMsb_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4hashBY_EB1E_.exit.peel.i unwind label %.loopexit.split-lp105.i

_RINvMsb_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4hashBY_EB1E_.exit.peel.i: ; preds = %bb.zb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1092
  %.val37.peel.i = load ptr, ptr %i.chf, align 8, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %i.chi = atomicrmw add ptr %.val37.peel.i, i64 1 monotonic, align 8, !noalias !1101
  %i.chj = icmp slt i64 %i.chi, 0
  br i1 %i.chj, label %.loopexit109.i, label %bb.zc

bb.zc:                                            ; preds = %_RINvMsb_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4hashBY_EB1E_.exit.peel.i
  store ptr %.val37.peel.i, ptr %i.k, align 8, !alias.scope !1101, !noalias !1092
  store i64 %i.chh, ptr %i.cgs, align 8, !alias.scope !1101, !noalias !1092
  store i64 %i.chd, ptr %i.cgt, align 8, !alias.scope !1101, !noalias !1092
  %i.chk = load i64, ptr %i.cgo, align 8, !alias.scope !1104, !noalias !1109, !noundef !8 ; 3 uses
  %i.chl = load i64, ptr %i.cgm, align 8, !range !9, !alias.scope !1104, !noalias !1109, !noundef !8
  %i.chm = icmp eq i64 %i.chk, %i.chl
  br i1 %i.chm, label %bb.zd, label %bb.ze

bb.zd:                                            ; preds = %bb.zc
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cgm)
          to label %bb.ze unwind label %.loopexit.split-lp111.i, !noalias !1112

bb.ze:                                            ; preds = %bb.zd, %bb.zc
  %i.chn = load ptr, ptr %i.cgn, align 8, !alias.scope !1104, !noalias !1109, !nonnull !8, !noundef !8
  %i.cho = getelementptr inbounds nuw [24 x i8], ptr %i.chn, i64 %i.chk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cho, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.chp = add i64 %i.chk, 1
  store i64 %i.chp, ptr %i.cgo, align 8, !alias.scope !1104, !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1092
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %bb.za, %bb.yy
  %.sroa.02.1.peel.i = phi i32 [ 0, %bb.yy ], [ 1, %bb.ze ], [ 0, %bb.za ] ; 2 uses
  %i.chq = icmp ult i32 %.sroa.02.1.peel.i, %i.cfw
  br i1 %i.chq, label %.peel.next.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i

.peel.next.i:                                     ; preds = %bb.zf, %bb.zm
  %.sroa.02.093.i = phi i32 [ %.sroa.02.1.i, %bb.zm ], [ %.sroa.02.1.peel.i, %bb.zf ] ; 5 uses
  %i.chr = load i64, ptr %i.cge, align 8, !range !14, !noalias !8, !noundef !8
  %.not.i.i.i340 = icmp eq i64 %i.chr, 0
  br i1 %.not.i.i.i340, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %.peel.next.i
  %i.chs = load ptr, ptr %i.cgq, align 8, !noalias !1113, !noundef !8 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.chs, null
  br i1 %.not4.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %.thread7.i.i.i

.thread7.i.i.i:                                   ; preds = %bb.zg
  store ptr %i.chs, ptr %i.cgp, align 8, !noalias !1113
end_hunk_1
begin_hunk_2_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1092
  store ptr %.sroa.011.i.sroa.4.0.copyload.i, ptr %i.j, align 8, !noalias !1092
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %.sroa.011.i.sroa.4.0.copyload.i, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.011.i.sroa.0.0.copyload.i, ptr %.sroa.671.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.cxt, ptr %.sroa.772.0..sroa_idx.i, align 8, !noalias !1092
  %i.cxu = icmp eq i64 %.sroa.011.i.sroa.5.0.copyload.i, 0
  br i1 %i.cxu, label %._crit_edge.i, label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %bb.ael
  %i.cxv = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cxw = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cxx = getelementptr inbounds nuw i8, ptr %0, i64 800
  br label %bb.aem

bb.aem:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55.i, %.lr.ph100.i
  %i.cxy = phi ptr [ %.sroa.011.i.sroa.4.0.copyload.i, %.lr.ph100.i ], [ %i.czb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxy, i64 16
  store ptr %i.cxz, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !1207, !noalias !1092
  %i.cya = load ptr, ptr %i.cxy, align 8, !noalias !1207, !nonnull !8, !noundef !8
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxy, i64 8
  %i.cyc = load ptr, ptr %i.cyb, align 8, !noalias !1207, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1092
  store ptr %i.cya, ptr %i.i, align 8, !noalias !1092
  %i.cyd = load ptr, ptr %i.cxv, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  %i.cye = load ptr, ptr %i.cxw, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  %i.cyf = load ptr, ptr %i.cxx, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  invoke void @_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_removeB1D_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.cyd, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cye, ptr noundef nonnull %i.cyc, i16 noundef 0, i16 undef, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cyf)
          to label %bb.aew unwind label %bb.aeu

._crit_edge.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55.i, %bb.ael
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB9_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2c_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit52.i unwind label %bb.aen

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313, %bb.aen
  %.pn22.pn.pn.i = phi { ptr, i32 } [ %i.cyg, %bb.aen ], [ %.pn22.i314, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1092
  br label %bb.zz

bb.aen:                                           ; preds = %._crit_edge.i
  %i.cyg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit52.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1092
  br i1 %i.cvv, label %bb.aep, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aep, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit52.i
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cyi = load ptr, ptr %i.cyh, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  %i.cyj = invoke noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE8is_emptyB1L_(ptr noundef nonnull align 8 %i.cyi)
          to label %bb.aer unwind label %bb.aeq

bb.aep:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit52.i
  %i.cyk = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cyl = load ptr, ptr %i.cyk, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyl, i64 144
  store i64 0, ptr %i.cym, align 8, !alias.scope !1210
  br label %bb.aeo

bb.aeq:                                           ; preds = %bb.aeo
  %i.cyn = landingpad { ptr, i32 }
          cleanup
  br label %bb.zz

bb.aer:                                           ; preds = %bb.aeo
  br i1 %i.cyj, label %bb.aet, label %bb.aes

bb.aes:                                           ; preds = %bb.aer
  %i.cyo = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.cyp = load ptr, ptr %i.cyo, align 8, !noalias !1092, !nonnull !8, !align !12, !noundef !8
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyp, i64 32
  store i8 1, ptr %i.cyq, align 8
  br label %bb.aet

bb.aet:                                           ; preds = %bb.aes, %bb.aer
  %i.cyr = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.cyr, align 4, !noalias !1092
  br label %bb.afc

bb.aeu:                                           ; preds = %bb.aem
  %i.cys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.cyt = load ptr, ptr %i.i, align 8, !alias.scope !1219, !noalias !1092, !nonnull !8, !noundef !8
  %i.cyu = atomicrmw sub ptr %i.cyt, i64 1 release, align 8, !noalias !1219
  %i.cyv = icmp eq i64 %i.cyu, 1
  br i1 %i.cyv, label %bb.aev, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313

bb.aev:                                           ; preds = %bb.aeu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313 unwind label %bb.aez

bb.aew:                                           ; preds = %bb.aem
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.cyw = load ptr, ptr %i.i, align 8, !alias.scope !1226, !noalias !1092, !nonnull !8, !noundef !8
  %i.cyx = atomicrmw sub ptr %i.cyw, i64 1 release, align 8, !noalias !1226
  %i.cyy = icmp eq i64 %i.cyx, 1
  br i1 %i.cyy, label %bb.aex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55.i

bb.aex:                                           ; preds = %bb.aew
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55.i unwind label %bb.aey

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313: ; preds = %bb.aey, %bb.aev, %bb.aeu
  %.pn22.i314 = phi { ptr, i32 } [ %i.cyz, %bb.aey ], [ %i.cys, %bb.aev ], [ %i.cys, %bb.aeu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1092
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB9_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2c_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtBN_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_.exit.i unwind label %bb.aez

bb.aey:                                           ; preds = %bb.aex
  %i.cyz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55.i: ; preds = %bb.aex, %bb.aew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1092
  %i.cza = load ptr, ptr %.sroa.772.0..sroa_idx.i, align 8, !alias.scope !1227, !noalias !1092, !nonnull !8, !noundef !8
  %i.czb = load ptr, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !1227, !noalias !1092, !nonnull !8, !noundef !8 ; 2 uses
  %i.czc = icmp eq ptr %i.czb, %i.cza
  br i1 %i.czc, label %._crit_edge.i, label %bb.aem

bb.aez:                                           ; preds = %bb.afa, %.body46.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i313, %bb.aev
  %i.czd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body46.i:                                        ; preds = %bb.aeh, %.body64.i.i
  %i.cze = phi ptr [ %i.cwa, %.body64.i.i ], [ %i.cfk, %bb.aeh ]
  %i.czf = phi ptr [ %i.cwb, %.body64.i.i ], [ %i.cfj, %bb.aeh ]
  %.pn17.i308 = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn.pn.pn.pn.i.i, %.body64.i.i ], [ %i.cxn, %bb.aeh ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtBO_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19scan_and_invalidate0EB2u_(ptr noundef nonnull align 8 %i.czf) #26
          to label %bb.zz unwind label %bb.aez

bb.afa:                                           ; preds = %bb.zz
  %i.czg = getelementptr inbounds nuw i8, ptr %0, i64 808
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.czg) #26
          to label %.body40.i unwind label %bb.aez

.body347:                                         ; preds = %bb.aab, %bb.aaa
  %i.czh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.cfk, align 1
  %cond.i354 = icmp eq i8 %.pr, 3
  br i1 %cond.i354, label %bb.afd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.afb:                                           ; preds = %.thread.i317, %bb.aei
  %i.czi = phi ptr [ %i.cxo, %.thread.i317 ], [ %i.cmh, %bb.aei ]
  store i8 3, ptr %i.czi, align 1, !noalias !1092
  br label %common.ret

bb.afc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.yq, %bb.aet
  %i.czj = phi ptr [ %i.cfl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.cfl, %bb.yq ], [ %i.cmh, %bb.aet ]
  store i8 1, ptr %i.czj, align 1, !noalias !1092
  br label %bb.yj

bb.afd:                                           ; preds = %.body347
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtBO_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19scan_and_invalidate0EB2u_(ptr noundef nonnull align 8 %i.cfj)
          to label %bb.aff unwind label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  %i.czk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.czl = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.czl, align 4
  br label %.body355

bb.aff:                                           ; preds = %bb.afd
  %i.czm = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.czm, align 4
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit: ; preds = %bb.yj
  %i.czn = getelementptr i8, ptr %0, i64 104
  %.val123 = load i64, ptr %i.czn, align 8        ; 2 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cev, i64 8
  %i.czp = load i64, ptr %i.czo, align 8          ; 2 uses
  %.not77.not = icmp ugt i64 %.val123, %i.czp
  br i1 %.not77.not, label %.thread722, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread

.thread722:                                       ; preds = %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit
  %i.czq = sub nuw i64 %.val123, %i.czp
  %i.czr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.czs = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.czt = load i32, ptr %i.czs, align 4, !noundef !8
  %.sroa.7475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.czq, ptr %.sroa.7475.0..sroa_idx, align 8
  %.sroa.9477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.cev, ptr %.sroa.9477.0..sroa_idx, align 8
  %.sroa.10478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.czu = load <2 x ptr>, ptr %i.czr, align 8
  %i.czv = getelementptr i8, <2 x ptr> %i.czu, i64 16
  store <2 x ptr> %i.czv, ptr %.sroa.10478.0..sroa_idx, align 8
  %.sroa.12480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.cew, ptr %.sroa.12480.0..sroa_idx, align 8
  %.sroa.13481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.czt, ptr %.sroa.13481.0..sroa_idx, align 8
  %.sroa.15483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 383
  store i8 0, ptr %.sroa.15483.0..sroa_idx, align 1
  %i.czw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.czx = getelementptr inbounds nuw i8, ptr %0, i64 383
  br label %bb.ak

.body292:                                         ; preds = %bb.yf, %bb.ub
  %i.czy = phi ptr [ %i.bqt, %bb.ub ], [ %i.bqa, %bb.yf ]
  %.pn66 = phi { ptr, i32 } [ %.pn33.pn.i, %bb.ub ], [ %i.ceq, %bb.yf ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE32evict_expired_entries_using_deqs0EB2m_(ptr noundef nonnull align 8 %i.czy) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

.body251:                                         ; preds = %bb.ts, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_4sync3ArcNtNtBN_6string6StringEybEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.czz = phi ptr [ %i.bjk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_4sync3ArcNtNtBN_6string6StringEybEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bit, %bb.ts ]
  %.pn60 = phi { ptr, i32 } [ %.pn29.pn.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtBN_4sync3ArcNtNtBN_6string6StringEybEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bpe, %bb.ts ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0EB2m_(ptr noundef nonnull align 8 %i.czz) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

bb.afg:                                           ; preds = %.body217
  %i.daa = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.dab = load i8, ptr %i.daa, align 4, !range !33, !noundef !8
  %cond.i.i359 = icmp eq i8 %i.dab, 3
  br i1 %cond.i.i359, label %bb.afh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.afh:                                           ; preds = %bb.afg
  %i.dac = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

.body195:                                         ; preds = %bb.qb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dad = phi ptr [ %i.zx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.xz, %bb.qb ]
  %.pn51 = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bei, %bb.qb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12apply_writes0EB2m_(ptr noundef nonnull align 8 %i.dad) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

bb.afi:                                           ; preds = %.body173
  %i.dae = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

.body148:                                         ; preds = %bb.di, %.body42.i
  %i.daf = phi ptr [ %i.fm, %.body42.i ], [ %i.fj, %bb.di ]
  %.pn80 = phi { ptr, i32 } [ %.pn31.pn.i, %.body42.i ], [ %i.pl, %bb.di ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17evict_lru_entries0EB2m_(ptr noundef nonnull align 8 %i.daf) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364 unwind label %bb.o

bb.afj:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.dag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.dag, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.dah = atomicrmw sub ptr %.val, i64 1 release, align 8 ; 0 uses
  %i.dai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvMs5_CseKAYRfgxGTE_14event_listenerNtB6_5Event6notifylECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dai) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuardINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !167, !noundef !8
  switch i8 %i.g, label %default.unreachable103 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.bc
    i8 4, label %bb.f
  ]

default.unreachable103:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 250
  %i.n = load i8, ptr %i.m, align 2, !range !33, !noundef !8
  store i8 %i.n, ptr %i.l, align 4
  %i.o = load <2 x ptr>, ptr %i.k, align 8
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !8, !align !12, !noundef !8 ; 3 uses
  store <2 x ptr> %i.o, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !align !12, !noundef !8
  store ptr %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.u = load i32, ptr %i.t, align 8, !noundef !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !8, !align !12, !noundef !8
  store ptr %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr i8, ptr %i.p, i64 120
  %.val41 = load i64, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.p, i64 128
  %.val42 = load i32, ptr %i.ac, align 8, !range !425, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %.val41, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.val42, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  %i.ah = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ag)
          to label %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit unwind label %bb.c ; 2 uses

.body49:                                          ; preds = %bb.aj, %bb.ai, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit67, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit64, %bb.c
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit64 ], [ %.pn29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit67 ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55 ], [ %i.ef, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.dt, %bb.ad ], [ %i.ai, %bb.c ]
  store i8 2, ptr %i.f, align 1
  resume { ptr, i32 } %.pn33.pn

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body49

_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit: ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.ah, 0
  %i.al = extractvalue { i64, i64 } %i.ah, 1
  store i64 %i.ak, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.aj, ptr %i.an, align 8
  %i.ao = load i8, ptr %i.l, align 4, !range !33, !noundef !8 ; 2 uses
  %i.ap = zext nneg i8 %i.ao to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_, i64 %i.ap
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.aq = zext nneg i8 %i.ao to i64
  %switch.gep105 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0B1F_.127, i64 %i.aq
  %switch.load106 = load ptr, ptr %switch.gep105, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %switch.load106, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %switch.load, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 245
  store i8 1, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.u, ptr %i.av, align 4
  br label %.preheader

.preheader:                                       ; preds = %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.aw = phi i32 [ %i.u, %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit ], [ %.pre95, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  %i.ax = phi i32 [ 0, %_RNvMsa_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11valid_afterB1D_.exit ], [ %.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 148
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.ba = icmp ult i32 %i.ax, %i.aw
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 245 ; 3 uses
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.bq
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bj = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_13EvictionStateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20notify_entry_removal0B1O_(ptr noundef nonnull align 8 %i.bi, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
end_hunk_2
