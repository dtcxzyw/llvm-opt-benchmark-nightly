inline.NumInlined: 839
inline.NumDeleted: 369
begin_hunk_0_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit50.i unwind label %bb.ck

bb.de:                                            ; preds = %.loopexit.i
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.pe = load ptr, ptr %i.pd, align 8, !noalias !604, !nonnull !8, !align !12, !noundef !8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  store i8 1, ptr %i.pf, align 8
  br label %bb.dk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i: ; preds = %bb.df, %.body.i
  store i8 0, ptr %i.hr, align 2, !noalias !604
  br label %bb.cu

bb.df:                                            ; preds = %.body.i
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 400
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i unwind label %bb.ck

bb.dg:                                            ; preds = %bb.be
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.pi = load ptr, ptr %i.ph, align 8, !alias.scope !688, !noalias !604, !nonnull !8, !noundef !8
  %i.pj = atomicrmw sub ptr %i.pi, i64 1 release, align 8, !noalias !688
  %i.pk = icmp eq i64 %i.pj, 1
  br i1 %i.pk, label %bb.dh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit53.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ph) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit53.i unwind label %bb.ck

bb.di:                                            ; preds = %bb.am, %bb.al
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.dj:                                            ; preds = %bb.cd, %bb.ap
  %i.pm = phi ptr [ %i.ha, %bb.ap ], [ %i.md, %bb.cd ]
  %.sink.i.ph = phi i8 [ 4, %bb.ap ], [ 3, %bb.cd ]
  store i8 %.sink.i.ph, ptr %i.pm, align 1, !noalias !604
  br label %common.ret

bb.dk:                                            ; preds = %.loopexit.i, %bb.de
  store i8 1, ptr %i.gl, align 1, !noalias !604
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17evict_lru_entries0EB2m_(ptr noundef nonnull align 8 %i.gm)
          to label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread: ; preds = %bb.dk, %bb.yj, %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pp = load i32, ptr %i.po, align 8, !noundef !8
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pr = load i32, ptr %i.pq, align 8, !noundef !8
  %.not84 = icmp ugt i32 %i.pp, %i.pr
  br i1 %.not84, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !nonnull !8, !align !12, !noundef !8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = invoke noundef i64 @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2x_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.pu)
          to label %bb.dp unwind label %bb.do

bb.dn:                                            ; preds = %bb.dp, %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread, %bb.ds
  %.sroa.022.1 = phi i8 [ 0, %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16weights_to_evictB1D_.exit.thread ], [ %i.qh, %bb.ds ], [ 1, %bb.dp ] ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.py = load i8, ptr %i.px, align 8, !range !13, !noundef !8
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.dt, label %bb.du

bb.do:                                            ; preds = %bb.dm
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.dp:                                            ; preds = %bb.dm
  %i.qb = icmp ugt i64 %i.pv, 63
  br i1 %i.qb, label %bb.dn, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qc = load ptr, ptr %i.ps, align 8, !nonnull !8, !align !12, !noundef !8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  %i.qe = invoke noundef i64 @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qd)
          to label %bb.ds unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.ds:                                            ; preds = %bb.dq
  %i.qg = icmp ugt i64 %i.qe, 63
  %i.qh = zext i1 %i.qg to i8
  br label %bb.dn

bb.dt:                                            ; preds = %bb.dn
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qj = load i64, ptr %i.qi, align 8, !noundef !8
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ql = load i64, ptr %i.qk, align 8, !noundef !8
  %i.qm = icmp ne i64 %i.qj, %i.ql
  br label %bb.du

bb.du:                                            ; preds = %bb.dn, %bb.dt
  %.sroa.024.0 = phi i1 [ %i.qm, %bb.dt ], [ false, %bb.dn ]
  %i.qn = trunc nuw i8 %.sroa.022.1 to i1
  %or.cond = or i1 %.sroa.024.0, %i.qn
  br i1 %or.cond, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qp = load i64, ptr %i.qo, align 8            ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qr = load i32, ptr %i.qq, align 8, !range !425, !noundef !8 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qt = load i64, ptr %i.qs, align 8
  %.not85 = icmp eq i32 %i.qr, 1000000000
  br i1 %.not85, label %bb.ai, label %bb.dx

bb.dw:                                            ; preds = %bb.ea, %bb.du
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !nonnull !8, !align !12, !noundef !8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 184
  %i.qx = load i64, ptr %i.pw, align 8, !noundef !8
  invoke void @_RNvMs2_NtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellyE5storeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.qw, i64 noundef %i.qx)
          to label %bb.ec unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dv
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qz = load i64, ptr %i.qy, align 8, !range !14, !noundef !8
  %i.ra = trunc nuw i64 %i.qz to i1
  br i1 %i.ra, label %bb.dy, label %bb.ai

bb.dy:                                            ; preds = %bb.dx
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !8, !align !12, !noundef !8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 72
  %i.re = invoke noundef i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.rd)
          to label %bb.ea unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.ea:                                            ; preds = %bb.dy
  %i.rg = call i64 @llvm.usub.sat.i64(i64 %i.re, i64 %i.qt) ; 2 uses
  %i.rh = udiv i64 %i.rg, 1000000000              ; 2 uses
  %i.ri = urem i64 %i.rg, 1000000000
  %i.rj = trunc nuw nsw i64 %i.ri to i32
  %i.rk = icmp eq i64 %i.rh, %i.qp
  %i.rl = icmp samesign ule i32 %i.qr, %i.rj
  %i.rm = icmp uge i64 %i.rh, %i.qp
  %i.rn = select i1 %i.rk, i1 %i.rl, i1 %i.rm
  br i1 %i.rn, label %bb.dw, label %bb.ai

bb.eb:                                            ; preds = %bb.dw
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.ec:                                            ; preds = %bb.dw
  %i.rp = load ptr, ptr %i.qu, align 8, !nonnull !8, !align !12, !noundef !8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 192
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.rs = load i64, ptr %i.rr, align 8, !noundef !8
  invoke void @_RNvMs2_NtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellyE5storeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.rq, i64 noundef %i.rs)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ru = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load i8, ptr %i.rv, align 8, !range !689, !noalias !690, !noundef !8
  %i.rx = icmp eq i8 %i.rw, 1
  br i1 %i.rx, label %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i, label %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, !prof !579

_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.ee
  %i.ry = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsee2lL6QbnsJ_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.ru, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc154 unwind label %bb.ez ; 2 uses

.noexc154:                                        ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %bb.em, label %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i

_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i: ; preds = %.noexc154, %bb.ee
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.ry, %.noexc154 ], [ %i.ru, %bb.ee ]
  %.val.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noundef !8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.val.i.i.i, ptr %i.ah, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 2072 ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !noundef !8 ; 3 uses
  %i.sc = icmp eq i64 %i.sb, -1
  br i1 %i.sc, label %bb.eg, label %bb.ef, !prof !361

bb.ef:                                            ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i
  %i.sd = add nuw i64 %i.sb, 1
  store i64 %i.sd, ptr %i.sa, align 8
  %i.se = icmp eq i64 %i.sb, 0
  br i1 %i.se, label %bb.ei, label %bb.ey

bb.eg:                                            ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
          to label %bb.ek unwind label %bb.eh

bb.eh:                                            ; preds = %bb.ej, %bb.eg
  %i.sf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 128 %.val.i.i.i) #26
          to label %.body155 unwind label %bb.el

bb.ei:                                            ; preds = %bb.ef
  %i.sg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !nonnull !8, !noundef !8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 384
  %i.sj = load atomic i64, ptr %i.si monotonic, align 8
  %i.sk = or i64 %i.sj, 1
  %i.sl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 2176
  %i.sm = cmpxchg ptr %i.sl, i64 0, i64 %i.sk seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.sn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 2088 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !noundef !8 ; 2 uses
  %i.sp = add i64 %i.so, 1
  store i64 %i.sp, ptr %i.sn, align 8
  %i.sq = and i64 %i.so, 127
  %i.sr = icmp eq i64 %i.sq, 0
  br i1 %i.sr, label %bb.ej, label %bb.ey, !prof !361

bb.ej:                                            ; preds = %bb.ei
  %i.ss = load ptr, ptr %i.sg, align 8, !nonnull !8, !noundef !8
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 128
  invoke void @_RNvMs5_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.st, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %bb.ey unwind label %bb.eh

bb.ek:                                            ; preds = %bb.eg
  unreachable

bb.el:                                            ; preds = %bb.eh
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.em:                                            ; preds = %.noexc154
  %i.sv = invoke noundef nonnull align 8 ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default9collector()
          to label %.noexc157 unwind label %bb.ez

.noexc157:                                        ; preds = %bb.em
  %i.sw = invoke noundef ptr @_RNvMs1_NtCsee2lL6QbnsJ_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sv)
          to label %.noexc158 unwind label %bb.ez ; 13 uses

.noexc158:                                        ; preds = %.noexc157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.sw, ptr %i.ag, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 2072 ; 4 uses
  %i.sy = load i64, ptr %i.sx, align 8, !noundef !8 ; 3 uses
  %i.sz = icmp eq i64 %i.sy, -1
  br i1 %i.sz, label %bb.eo, label %bb.en, !prof !361

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sw) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
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
  %i.vo = getelementptr inbounds nuw i8, <2 x ptr> %i.vn, i64 16
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
end_hunk_0
