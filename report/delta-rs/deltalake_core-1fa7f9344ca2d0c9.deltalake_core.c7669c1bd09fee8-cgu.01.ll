inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0B7_:bb.a
bb.ia:                                            ; preds = %bb.hy
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

.thread681:                                       ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0464, ptr noundef nonnull align 8 dereferenceable(168) %i.bq, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(840) %i.sy, ptr noundef nonnull align 8 dereferenceable(840) %.sroa.0464, i64 840, i1 false)
  %.sroa.8465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store i8 0, ptr %.sroa.8465.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8469)
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 1816
  br label %bb.it

bb.ib:                                            ; preds = %bb.hx, %bb.hs
  %.pn71 = phi { ptr, i32 } [ %i.sw, %bb.hx ], [ %.pn69, %bb.hs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.hz

bb.ic:                                            ; preds = %bb.ht
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20TableProviderBuilderEBM_(ptr noalias noundef align 8 dereferenceable(168) %i.bn) #44
          to label %bb.hs unwind label %bb.aw

bb.id:                                            ; preds = %bb.pn, %bb.pk, %.body240, %bb.hz
  %.pn86 = phi { ptr, i32 } [ %i.afp, %bb.pk ], [ %i.aft, %bb.pn ], [ %eh.lpad-body241, %.body240 ], [ %.pn73, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0464)
  br label %.body243

bb.ie:                                            ; preds = %bb.hr
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit258

bb.if:                                            ; preds = %bb.hr
  store i64 37, ptr %i.bd, align 16, !alias.scope !25095, !noalias !25105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit: ; preds = %bb.qt, %bb.qr, %bb.if
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 769
  store i8 0, ptr %i.td, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.te)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.te)
          to label %.body218 unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.te)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.qf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit258: ; preds = %bb.hp, %bb.ie, %bb.rg, %bb.qu, %.body243
  %.pn89.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.rg ], [ %i.aid, %bb.qu ], [ %.pn86.pn, %.body243 ], [ %i.tc, %bb.ie ], [ %i.sh, %bb.hp ]
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 769
  store i8 0, ptr %i.th, align 1
  br label %bb.ii

bb.ii:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit258, %bb.hn
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit258 ], [ %i.sd, %bb.hn ]
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.ti) #44
          to label %.body218 unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_.exit: ; preds = %bb.hk, %bb.hj, %bb.ij, %bb.hc
  %.pn93 = phi { ptr, i32 } [ %i.tj, %bb.ij ], [ %i.rg, %bb.hc ], [ %i.rw, %bb.hj ], [ %i.rw, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %.body218

bb.ij:                                            ; preds = %bb.hh
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_.exit

bb.ik:                                            ; preds = %bb.hh
  store i64 37, ptr %i.bd, align 16, !alias.scope !25063, !noalias !25107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ik
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBM_5types14StringViewTypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %bb.im unwind label %bb.il

bb.il:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBT_5types14StringViewTypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %.body222 unwind label %bb.in

bb.im:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBT_5types14StringViewTypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1k_5types14StringViewTypeEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.qv

bb.in:                                            ; preds = %bb.il
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.body218:                                         ; preds = %bb.qf, %bb.ig, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_.exit, %bb.ii
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_.exit ], [ %.pn89.pn.pn, %bb.ii ], [ %i.ahg, %bb.qf ], [ %i.tf, %bb.ig ] ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 771
  %i.to = load i8, ptr %i.tn, align 1, !range !89, !noundef !8
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.rh, label %.body222

.body222:                                         ; preds = %bb.qv, %bb.il, %bb.rh, %.body218, %bb.hb
  %.pn96 = phi { ptr, i32 } [ %i.rf, %bb.hb ], [ %.pn93.pn, %bb.rh ], [ %.pn93.pn, %.body218 ], [ %i.aie, %bb.qv ], [ %i.tl, %bb.il ]
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 771
  store i8 0, ptr %i.tq, align 1
  br label %bb.io

bb.io:                                            ; preds = %.body222, %bb.gt
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body222 ], [ %i.qy, %bb.gt ]
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.tr) #44
          to label %.body199 unwind label %bb.aw

bb.ip:                                            ; preds = %bb.gr
  %i.ts = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.sroa.0110.1.i, ptr %i.ts, align 8, !alias.scope !25109
  %.sroa.2423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.4111.1.i, ptr %.sroa.2423.0..sroa_idx, align 16, !alias.scope !25109
  %.sroa.3424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %.sroa.7113.1.i, ptr %.sroa.3424.0..sroa_idx, align 8, !alias.scope !25109
  %.sroa.4425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %.sroa.8115.1.i, ptr %.sroa.4425.0..sroa_idx, align 16, !alias.scope !25109
  %.sroa.5426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %.sroa.9.1.i, ptr %.sroa.5426.0..sroa_idx, align 8, !alias.scope !25109
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split

.body199:                                         ; preds = %.noexc186, %.body191, %bb.gq, %bb.qh, %bb.gx, %bb.io
  %.pn99.pn = phi { ptr, i32 } [ %i.rb, %bb.gx ], [ %.pn96.pn, %bb.io ], [ %i.ahi, %bb.qh ], [ %i.qv, %bb.gq ], [ %eh.lpad-body192, %.body191 ], [ %i.ma, %.noexc186 ] ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 772
  %i.tu = load i8, ptr %i.tt, align 4, !range !89, !noundef !8
  %i.tv = trunc nuw i8 %i.tu to i1
  br i1 %i.tv, label %bb.ri, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260

bb.iq:                                            ; preds = %bb.jp, %bb.jo
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %.body240

.body240:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit224.i, %bb.iq
  %i.tx = phi ptr [ %i.ty, %bb.iq ], [ %i.aeg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit224.i ]
  %eh.lpad-body241 = phi { ptr, i32 } [ %i.tw, %bb.iq ], [ %.pn99.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit224.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8469)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtBO_20TableProviderBuilder5build0EBS_(ptr noundef nonnull align 8 %i.tx) #44
          to label %bb.id unwind label %bb.aw

bb.ir:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0464)
  %.phi.trans.insert640 = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %.pre641 = load i8, ptr %.phi.trans.insert640, align 8, !range !3878, !noalias !25113
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8469)
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 2 uses
  switch i8 %.pre641, label %default.unreachable680 [
    i8 0, label %bb.it
    i8 1, label %bb.jo
    i8 2, label %bb.jp
    i8 3, label %bb.is
  ]

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !25113
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9238.i)
  br label %bb.jr

bb.it:                                            ; preds = %.thread681, %bb.ir
  %i.ua = phi ptr [ %i.ta, %.thread681 ], [ %i.tz, %bb.ir ] ; 7 uses
  %i.ub = phi ptr [ %i.sz, %.thread681 ], [ %i.ty, %bb.ir ] ; 8 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 1817 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 1821
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 1822
  %.sroa.0.0.copyload.i233 = load i64, ptr %i.ub, align 8, !noalias !25113 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 984
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !25113
  %.sroa.9.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %1, i64 992
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i234, align 16, !noalias !25113
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !25113
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.sroa.16.0.copyload.i = load ptr, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !25113 ; 3 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.sroa.17.0.copyload.i = load ptr, ptr %.sroa.17.0..sroa_idx.i, align 16, !noalias !25113 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 1144 ; 3 uses
  %i.ug = load <2 x ptr>, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !25113
  store <2 x ptr> %i.ug, ptr %i.uf, align 8, !noalias !25113
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 1160 ; 2 uses
  store i64 %.sroa.9.0.copyload.i, ptr %i.uh, align 8, !noalias !25113
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 1168 ; 2 uses
  store ptr %.sroa.10.0.copyload.i, ptr %i.ui, align 16, !noalias !25113
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store ptr %.sroa.16.0.copyload.i, ptr %i.uj, align 8, !noalias !25113
  %i.uk = getelementptr i8, ptr %1, i64 1184
  store ptr %.sroa.17.0.copyload.i, ptr %i.uk, align 16, !noalias !25113
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx.i, i64 24, i1 false), !noalias !25113
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 1216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.um, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i, i64 24, i1 false), !noalias !25113
  store <6 x i8> <i8 0, i8 1, i8 1, i8 1, i8 1, i8 1>, ptr %i.uc, align 1, !noalias !25113
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.un, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.13.0..sroa_idx.i, i64 56, i1 false), !noalias !25113
  %.not.i.i235 = icmp eq ptr %.sroa.16.0.copyload.i, null
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25117)
  br i1 %.not.i.i235, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.17.0.copyload.i, i64 16
  %i.uq = load i64, ptr %i.up, align 8, !range !2991, !invariant.load !8, !noalias !25120
  %i.ur = add nsw i64 %i.uq, -1
  %i.us = and i64 %i.ur, -16
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload.i, i64 %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_15DeltaScanConfig16new_from_session(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.uo, ptr noundef nonnull %i.uu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.17.0.copyload.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EE11map_or_elseNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigNvMs1_B2u_B2s_3newNCNCNvMs5_B2u_NtB2u_20TableProviderBuilder5build00EB2y_.exit.i unwind label %bb.iw, !noalias !25124

bb.iv:                                            ; preds = %bb.it
  store i64 -9223372036854775808, ptr %i.uo, align 16, !alias.scope !25125, !noalias !25130
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store i8 1, ptr %i.uv, align 16, !alias.scope !25125, !noalias !25130
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 1329
  store i8 1, ptr %i.uw, align 1, !alias.scope !25125, !noalias !25130
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 1330
  store i8 1, ptr %i.ux, align 2, !alias.scope !25125, !noalias !25130
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr null, ptr %i.uy, align 8, !alias.scope !25125, !noalias !25130
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EE11map_or_elseNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigNvMs1_B2u_B2s_3newNCNCNvMs5_B2u_NtB2u_20TableProviderBuilder5build00EB2y_.exit.i

bb.iw:                                            ; preds = %bb.iu
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EE11map_or_elseNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigNvMs1_B2u_B2s_3newNCNCNvMs5_B2u_NtB2u_20TableProviderBuilder5build00EB2y_.exit.i: ; preds = %bb.iv, %bb.iu
  store i8 1, ptr %i.uc, align 1, !noalias !25113
  %i.va = load i64, ptr %i.ul, align 8, !range !65, !noalias !25113, !noundef !8
  %.not.i236 = icmp eq i64 %i.va, -9223372036854775808
  br i1 %.not.i236, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EE11map_or_elseNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigNvMs1_B2u_B2s_3newNCNCNvMs5_B2u_NtB2u_20TableProviderBuilder5build00EB2y_.exit.i
  store i8 0, ptr %i.ud, align 1, !noalias !25113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ul, i64 24, i1 false), !noalias !25113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !25113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !25113
  store i8 0, ptr %i.uc, align 1, !noalias !25113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 16 dereferenceable(40) %i.uo, i64 40, i1 false), !noalias !25113
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB6_15DeltaScanConfig21with_file_column_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringEBa_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.ja unwind label %bb.iz, !noalias !25124

bb.iy:                                            ; preds = %bb.ja, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EE11map_or_elseNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigNvMs1_B2u_B2s_3newNCNCNvMs5_B2u_NtB2u_20TableProviderBuilder5build00EB2y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !25113
  %i.vb = load i64, ptr %i.uh, align 8, !range !3023, !noalias !25113, !noundef !8 ; 3 uses
  %.not20.i = icmp eq i64 %i.vb, 2
  br i1 %.not20.i, label %bb.jd, label %bb.jc

bb.iz:                                            ; preds = %bb.ix
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25113
  br label %bb.jb

bb.ja:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25113
  store i8 1, ptr %i.uc, align 1, !noalias !25113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.uo, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !25113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25113
  br label %bb.iy

bb.jb:                                            ; preds = %bb.jm, %bb.iz
  %i.vd = phi ptr [ %i.wg, %bb.jm ], [ %i.ua, %bb.iz ] ; 2 uses
  %i.ve = phi ptr [ %i.wh, %bb.jm ], [ %i.ub, %bb.iz ] ; 2 uses
  %.pn81.pn.i = phi { ptr, i32 } [ %.pn81.i, %bb.jm ], [ %i.vc, %bb.iz ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 1817
  %i.vg = load i8, ptr %i.vf, align 1, !range !89, !noalias !25113, !noundef !8
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.or, label %bb.jn

bb.jc:                                            ; preds = %bb.iy
  store i8 0, ptr %i.ue, align 2, !noalias !25113
  %i.vi = load ptr, ptr %i.ui, align 16, !noalias !25113, !noundef !8 ; 2 uses
  store i64 %i.vb, ptr %i.ah, align 8, !noalias !25113
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.vi, ptr %i.vj, align 8, !noalias !25113
  br label %bb.kb

bb.jd:                                            ; preds = %bb.iy
  %i.vk = load ptr, ptr %i.uf, align 8, !alias.scope !25131, !noalias !25113, !noundef !8
  %.not.i109.i = icmp eq ptr %i.vk, null
  br i1 %.not.i109.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9238.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !25113
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2_16DeltaTableConfigNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ag)
          to label %bb.ji unwind label %bb.jh, !noalias !25124

bb.jf:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25134
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) 80, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc111.i unwind label %bb.jk, !noalias !25124

.noexc111.i:                                      ; preds = %bb.jf
  %i.vl = load i64, ptr %i.f, align 8, !range !64, !noalias !25134, !noundef !8
  %i.vm = trunc nuw i64 %i.vl to i1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !range !65, !noalias !25134, !noundef !8 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.vm, label %bb.jg, label %bb.jl, !prof !3

bb.jg:                                            ; preds = %.noexc111.i
  %i.vq = load i64, ptr %i.vp, align 8, !noalias !25134
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.vo, i64 %i.vq) #43
          to label %.noexc112.i unwind label %bb.jk, !noalias !25124

.noexc112.i:                                      ; preds = %bb.jg
  unreachable

bb.jh:                                            ; preds = %bb.je
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !25113
  br label %.body.i224

bb.ji:                                            ; preds = %bb.je
  %i.vs = trunc nuw i64 %.sroa.0.0.copyload.i233 to i1
  %spec.select3.i.i = select i1 %i.vs, i64 %.sroa.8.0.copyload.i, i64 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9238.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !25113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !25113
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 1336
  store i64 %.sroa.0.0.copyload.i233, ptr %i.vt, align 8, !noalias !25113
  %.sroa.8237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store i64 %spec.select3.i.i, ptr %.sroa.8237.0..sroa_idx.i, align 16, !noalias !25113
  %.sroa.9238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9238.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9238.i, i64 72, i1 false), !noalias !25113
  %.sroa.10239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1424
  store ptr %i.uf, ptr %.sroa.10239.0..sroa_idx.i, align 16, !noalias !25113
  %.sroa.11240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr @377, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !25113
  %.sroa.13242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1808
  store i8 0, ptr %.sroa.13242.0..sroa_idx.i, align 16, !noalias !25113
  br label %bb.jr

bb.jj:                                            ; preds = %bb.pg, %bb.pd, %bb.pa, %bb.oz, %bb.ov, %bb.ot, %bb.or, %bb.nv, %bb.no, %bb.nm, %bb.nc, %.body195.i, %bb.lz, %bb.lj, %.body147.i, %.body126.i, %.body132.i, %.body136.i, %bb.kj, %bb.jq
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !25124
  unreachable

.body.i224:                                       ; preds = %bb.jy, %bb.jw, %bb.jq, %bb.jh
  %i.vv = phi ptr [ %i.ua, %bb.jh ], [ %i.wp, %bb.jq ], [ %i.wp, %bb.jy ], [ %i.wp, %bb.jw ]
  %i.vw = phi ptr [ %i.ub, %bb.jh ], [ %i.wq, %bb.jq ], [ %i.wq, %bb.jy ], [ %i.wq, %bb.jw ]
  %.pn26.i = phi { ptr, i32 } [ %i.vr, %bb.jh ], [ %i.wo, %bb.jq ], [ %i.xf, %bb.jy ], [ %i.wy, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9238.i)
  br label %bb.jm

bb.jk:                                            ; preds = %bb.jg, %bb.jf
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jl:                                            ; preds = %.noexc111.i
  %i.vy = load ptr, ptr %i.vp, align 8, !noalias !25134, !nonnull !8, !noundef !8 ; 2 uses
  %i.vz = icmp ugt i64 %i.vo, 79
  call void @llvm.assume(i1 %i.vz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.vy, ptr noundef nonnull readonly align 1 dereferenceable(80) @386, i64 range(i64 0, -9223372036854775808) 80, i1 false), !noalias !25144
  %i.wa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 7, ptr %i.wa, align 8, !noalias !25113
  %.sroa.5.0..sroa_idx.i237 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.vo, ptr %.sroa.5.0..sroa_idx.i237, align 8, !noalias !25113
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.vy, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !25113
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 80, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !25113
  store i64 2, ptr %i.g, align 8, !noalias !25113
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_.exit.i: ; preds = %bb.nz, %bb.nl, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.jl
  %i.wb = phi ptr [ %i.wp, %bb.nz ], [ %i.xj, %bb.nl ], [ %i.xj, %bb.ly ], [ %i.xj, %bb.lx ], [ %i.xj, %bb.lw ], [ %i.xj, %bb.lv ], [ %i.ua, %bb.jl ] ; 7 uses
  %i.wc = phi ptr [ %i.wq, %bb.nz ], [ %i.xk, %bb.nl ], [ %i.xk, %bb.ly ], [ %i.xk, %bb.lx ], [ %i.xk, %bb.lw ], [ %i.xk, %bb.lv ], [ %i.ub, %bb.jl ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !25113
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 1817 ; 2 uses
  %i.we = load i8, ptr %i.wd, align 1, !range !89, !noalias !25113, !noundef !8
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %bb.oc, label %bb.oa

bb.jm:                                            ; preds = %.thread.i229, %bb.ny, %.body147.i, %bb.jk, %.body.i224
  %i.wg = phi ptr [ %i.xj, %bb.ny ], [ %i.xj, %.body147.i ], [ %i.xj, %.thread.i229 ], [ %i.ua, %bb.jk ], [ %i.vv, %.body.i224 ]
  %i.wh = phi ptr [ %i.xk, %bb.ny ], [ %i.xk, %.body147.i ], [ %i.xk, %.thread.i229 ], [ %i.ub, %bb.jk ], [ %i.vw, %.body.i224 ]
  %.pn81.i = phi { ptr, i32 } [ %i.acp, %bb.ny ], [ %.pn76.pn.i, %.body147.i ], [ %.pn57.pn.i, %.thread.i229 ], [ %i.vx, %bb.jk ], [ %.pn26.i, %.body.i224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !25113
  br label %bb.jb

bb.jn:                                            ; preds = %bb.or, %bb.od, %bb.jb, %bb.iw
  %i.wi = phi ptr [ %i.wb, %bb.od ], [ %i.vd, %bb.or ], [ %i.vd, %bb.jb ], [ %i.ua, %bb.iw ] ; 3 uses
  %i.wj = phi ptr [ %i.wc, %bb.od ], [ %i.ve, %bb.or ], [ %i.ve, %bb.jb ], [ %i.ub, %bb.iw ] ; 3 uses
  %.pn84.i = phi { ptr, i32 } [ %i.acv, %bb.od ], [ %.pn81.pn.i, %bb.or ], [ %.pn81.pn.i, %bb.jb ], [ %i.uz, %bb.iw ] ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 1817
end_hunk_0
begin_hunk_1_@_RNvXsBQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CreateUserNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !range !28367, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.j, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.o, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #44
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i8, ptr %i.p, align 8, !range !89, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.t = load i8, ptr %i.s, align 2, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.c) #44
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load i8, ptr %i.w, align 8, !range !89, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.f, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.h, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.t, ptr %i.ac, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33999
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33999
  %i.b = load i64, ptr %i.a, align 8, !range !64, !noalias !33999, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !65, !noalias !33999, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !33999
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #43, !noalias !33999
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !33999, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33999
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs21_NtCs6Po7BT7Nknu_5alloc6stringeNtB6_12SpecToString14spec_to_string.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !34004
  br label %_RNvXs21_NtCs6Po7BT7Nknu_5alloc6stringeNtB6_12SpecToString14spec_to_string.exit

_RNvXs21_NtCs6Po7BT7Nknu_5alloc6stringeNtB6_12SpecToString14spec_to_string.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  store i64 %i.e, ptr %0, align 8, !alias.scope !33996, !noalias !34005
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !33996, !noalias !34005
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !33996, !noalias !34005
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvXs0_NvXNvNtCs14kWLkQVSKO_14deltalake_core8protocols9_1__NtBg_14DeltaOperationNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_sb_14___FieldVisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @739, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXsBw_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MemberOfNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34006)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core(), !noalias !34006, !inline_history !33276 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !34006, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34009
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.e) #46
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !inline_history !33280

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 328, i64 noundef 8) #48, !noalias !34006
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !34009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34009
  store ptr %i.d, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34012)
  %i.g = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc unwind label %bb.d, !inline_history !33276 ; 3 uses

.noexc:                                           ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !34012, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34015
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.i) #46
          to label %bb.e unwind label %bb.c, !inline_history !33280

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 328, i64 noundef 8) #48, !noalias !34012
  br label %.body

bb.d:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #44
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.g, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !34015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.g, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsCU_NtCs4lawaffTVVK_9sqlparser3astNtB6_15VacuumStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2 = load <5 x i8>, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !65, !noundef !8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !3153, !noundef !8
  %.not4 = icmp eq i64 %i.f, -9223372036854775787
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.h ], [ -9223372036854775787, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.h = load i8, ptr %i.g, align 1, !range !89, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <5 x i8> %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.h, ptr %i.k, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsD_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB5_10WhitespaceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !6042, !noundef !8 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775805
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.d, %bb.c
  ret void

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #44
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvXs0_NvXNvNtCs14kWLkQVSKO_14deltalake_core8protocols9_1__NtBg_14DeltaOperationNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_sb_9___VisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1216, i64 noundef 38)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsE_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !8293, !noundef !8
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1217, i64 noundef 4)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1218, i64 noundef 5)
  br label %bb.at

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1219, i64 noundef 5)
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1220, i64 noundef 6)
  br label %bb.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1222, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1221)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1223, i64 noundef 5)
  br label %bb.at
end_hunk_1
begin_hunk_2_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ly, i64 32, i1 false), !alias.scope !35234
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  store i32 %i.lx, ptr %i.ma, align 8, !alias.scope !35229, !noalias !35232
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mb, ptr noundef nonnull align 8 dereferenceable(64) %i.kl, i64 64, i1 false)
  store i64 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  br label %bb.ed

bb.j:                                             ; preds = %bb.a
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35238)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.kk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mc)
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.me = load i32, ptr %i.md, align 8, !range !28367, !alias.scope !35238, !noalias !35235, !noundef !8
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mf, i64 32, i1 false), !alias.scope !35240
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  store i32 %i.me, ptr %i.mh, align 8, !alias.scope !35235, !noalias !35238
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mi, ptr noundef nonnull align 8 dereferenceable(64) %i.kk, i64 64, i1 false)
  store i64 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  br label %bb.ed

bb.k:                                             ; preds = %bb.a
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mm = load i8, ptr %i.ml, align 8, !range !89, !noundef !8
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.mo = load i8, ptr %i.mn, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kj)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mj)
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.mq = load i8, ptr %i.mp, align 2, !range !5036, !noundef !8
  %i.mr = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mk)
          to label %bb.er unwind label %bb.eq

bb.l:                                             ; preds = %bb.a
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  call fastcc void @_RNvXs9l_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CaseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1232) %i.ki, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1232) %i.ms) #46
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.mt, ptr noundef nonnull align 8 dereferenceable(1232) %i.ki, i64 1232, i1 false)
  store i64 13, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  br label %bb.ed

bb.m:                                             ; preds = %bb.a
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  call fastcc void @_RNvXs9v_NtCs4lawaffTVVK_9sqlparser3astNtB6_11IfStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1520) %i.kh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1520) %i.mu) #46
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %i.mv, ptr noundef nonnull align 8 dereferenceable(1520) %i.kh, i64 1520, i1 false)
  store i64 14, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  br label %bb.ed

bb.n:                                             ; preds = %bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg)
  call fastcc void @_RNvXs9P_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(704) %i.kg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.mw) #46, !noalias !8
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %i.mx, ptr noundef nonnull align 8 dereferenceable(704) %i.kg, i64 704, i1 false)
  store i64 15, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  br label %bb.ed

bb.o:                                             ; preds = %bb.a
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !range !3023, !alias.scope !35241, !noalias !35244, !noundef !8
  %.not.i = icmp eq i64 %i.mz, 2
  br i1 %.not.i, label %_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @_RNvXsat_NtCs4lawaffTVVK_9sqlparser3astNtB6_19RaiseStatementValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(336) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.my) #46, !inline_history !35246
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  br label %_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ 2, %bb.o ]
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.na, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %i.kf, i64 328, i1 false)
  store i64 16, ptr %0, align 8
  br label %bb.ed

bb.q:                                             ; preds = %bb.a
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  call fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.ke, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.nb) #46
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.nc, ptr noundef nonnull align 8 dereferenceable(328) %i.ke, i64 328, i1 false)
  store i64 17, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ke)
  br label %bb.ed

bb.r:                                             ; preds = %bb.a
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  call fastcc void @_RNvXspw_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopySourceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.kd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nd) #46
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ni = load i8, ptr %i.nh, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  invoke fastcc void @_RNvXspG_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopyTargetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ne)
          to label %bb.eu unwind label %bb.et

bb.s:                                             ; preds = %bb.a
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val386 = load i8, ptr %i.nj, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jy)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jx)
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !range !65, !noundef !8
  %.not346 = icmp eq i64 %i.np, -9223372036854775808
  br i1 %.not346, label %bb.fe, label %bb.fd

bb.t:                                             ; preds = %bb.a
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nq)
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ns = load i32, ptr %i.nr, align 8, !range !28367, !alias.scope !35247, !noalias !35250, !noundef !8
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.nt, i64 32, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nu, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false)
  %.sroa.4511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ns, ptr %.sroa.4511.0..sroa_idx, align 8
  store i64 20, ptr %0, align 8
  br label %bb.ed

bb.u:                                             ; preds = %bb.a
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !range !65, !alias.scope !35252, !noalias !35255, !noundef !8
  %.not.i419 = icmp eq i64 %i.nw, -9223372036854775808
  br i1 %.not.i419, label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i418, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nv)
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ny = load i32, ptr %i.nx, align 8, !range !28367, !alias.scope !35252, !noalias !35255, !noundef !8
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %.sroa.0.i418, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i420, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.nz, i64 32, i1 false)
  %.sroa.0513.0.copyload514 = load i64, ptr %.sroa.0.i418, align 8
  br label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.u, %bb.v
  %.sroa.0513.0 = phi i64 [ %.sroa.0513.0.copyload514, %bb.v ], [ -9223372036854775808, %bb.u ]
  %.sroa.5516.0 = phi i32 [ %i.ny, %bb.v ], [ undef, %bb.u ]
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0513.0, ptr %i.oa, align 8
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.jn, i64 48, i1 false)
  %.sroa.5516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.5516.0, ptr %.sroa.5516.0..sroa_idx, align 8
  store i64 21, ptr %0, align 8
  br label %bb.ed

bb.w:                                             ; preds = %bb.a
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 1336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jm)
  call fastcc void @_RNvXs5p_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(640) %i.jm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.ob) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jl)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc)
          to label %bb.hk unwind label %bb.hj

bb.x:                                             ; preds = %bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh)
  call fastcc void @_RNvXsb_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6DeleteNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(784) %i.jh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.od) #46
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.oe, ptr noundef nonnull align 8 dereferenceable(784) %i.jh, i64 784, i1 false)
  store i64 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  br label %bb.ed

bb.y:                                             ; preds = %bb.a
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %2 = load i8, ptr %i.oj, align 8, !range !89, !noundef !8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 305
  %4 = load i8, ptr %3, align 1, !range !89, !noundef !8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 306
  %6 = load i8, ptr %5, align 2, !range !89, !noundef !8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 307
  %8 = load i8, ptr %7, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jg)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of)
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.ol = load i8, ptr %i.ok, align 4, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.og)
          to label %bb.ij unwind label %bb.ii

bb.z:                                             ; preds = %bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz)
  call fastcc void @_RNvXs8w_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2280) %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2280) %i.om) #46
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2280) %i.on, ptr noundef nonnull align 8 dereferenceable(2280) %i.iz, i64 2280, i1 false)
  store i64 25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  br label %bb.ed

bb.aa:                                            ; preds = %bb.a
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oo)
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.or = load i8, ptr %i.oq, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix)
  call void @llvm.experimental.noalias.scope.decl(metadata !35257)
  call void @llvm.experimental.noalias.scope.decl(metadata !35260)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ix, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.op)
          to label %bb.jk unwind label %bb.jj

bb.ab:                                            ; preds = %bb.a
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  call fastcc void @_RNvXs8m_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(568) %i.iv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(568) %i.os) #46
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.ot, ptr noundef nonnull align 8 dereferenceable(568) %i.iv, i64 568, i1 false)
  store i64 27, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  br label %bb.ed

bb.ac:                                            ; preds = %bb.a
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 1112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ou)
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.pb = load <4 x i8>, ptr %i.pa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.it)
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !range !3024, !noundef !8 ; 2 uses
  %.not311 = icmp eq i64 %i.pd, 70
  br i1 %.not311, label %bb.jp, label %bb.jn

bb.ad:                                            ; preds = %bb.a
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ph = load i8, ptr %i.pg, align 8, !range !89, !noundef !8
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.pj = load i8, ptr %i.pi, align 2, !range !466, !noundef !8
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.pl = load i8, ptr %i.pk, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il)
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !range !65, !noundef !8
  %.not306 = icmp eq i64 %i.pn, -9223372036854775808
  br i1 %.not306, label %bb.ky, label %bb.kx

bb.ae:                                            ; preds = %bb.a
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih)
  call fastcc void @_RNvXsny_NtCs4lawaffTVVK_9sqlparser3astNtB6_21CreateServerStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(208) %i.ih, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.po) #46
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.pp, ptr noundef nonnull align 8 dereferenceable(208) %i.ih, i64 208, i1 false)
  store i64 30, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih)
  br label %bb.ed

bb.af:                                            ; preds = %bb.a
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35265)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pq)
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.pt = load i32, ptr %i.ps, align 8, !range !28367, !alias.scope !35265, !noalias !35262, !noundef !8
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pv, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pu, i64 32, i1 false), !alias.scope !35267
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  store i32 %i.pt, ptr %i.pw, align 8, !alias.scope !35262, !noalias !35265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pr)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.lm

bb.ag:                                            ; preds = %bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  call fastcc void @_RNvXs90_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15CreateConnectorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.ic, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.px) #46
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.py, ptr noundef nonnull align 8 dereferenceable(176) %i.ic, i64 176, i1 false)
  store i64 32, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic)
  br label %bb.ed

bb.ah:                                            ; preds = %bb.a
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ib, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz)
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.qd = load i8, ptr %i.qc, align 8, !range !89, !noundef !8
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.qf = load i8, ptr %i.qe, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qa)
          to label %bb.mf unwind label %bb.me

bb.ai:                                            ; preds = %bb.a
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
  call fastcc void @_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11AlterSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.qg) #46
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qh, ptr noundef nonnull align 8 dereferenceable(56) %i.hw, i64 56, i1 false)
  store i64 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  br label %bb.ed

bb.aj:                                            ; preds = %bb.a
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qj)
          to label %_RNvXs23_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterIndexOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.mu

bb.ak:                                            ; preds = %bb.a
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ht)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql)
          to label %bb.mx unwind label %bb.mw

bb.al:                                            ; preds = %bb.a
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp)
  call fastcc void @_RNvXs2d_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(168) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.qn) #46
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qo, ptr noundef nonnull align 8 dereferenceable(168) %i.hp, i64 168, i1 false)
  store i64 37, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp)
  br label %bb.ed

bb.am:                                            ; preds = %bb.a
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35271)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ho, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qp)
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.qs = load i32, ptr %i.qr, align 8, !range !28367, !alias.scope !35271, !noalias !35268, !noundef !8
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qt, i64 32, i1 false), !alias.scope !35273
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  store i32 %i.qs, ptr %i.qv, align 8, !alias.scope !35268, !noalias !35271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn)
  invoke fastcc void @_RNvXsx_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_18AlterRoleOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(376) %i.hn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.qq)
          to label %bb.ne unwind label %bb.nd

bb.an:                                            ; preds = %bb.a
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35277)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.hm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qw)
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.qz = load i32, ptr %i.qy, align 8, !range !28367, !alias.scope !35277, !noalias !35274, !noundef !8
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.rb = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ra, i64 32, i1 false), !alias.scope !35279
  %i.rc = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  store i32 %i.qz, ptr %i.rc, align 8, !alias.scope !35274, !noalias !35277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qx)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit422 unwind label %bb.ng

end_hunk_2
begin_hunk_3_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35335)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.vn)
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.vp = load i32, ptr %i.vo, align 8, !range !28367, !alias.scope !35335, !noalias !35332, !noundef !8
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.vq, i64 32, i1 false), !alias.scope !35337
  %i.vs = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  store i32 %i.vp, ptr %i.vs, align 8, !alias.scope !35332, !noalias !35335
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.vu = load i8, ptr %i.vt, align 8, !range !89, !noundef !8
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 201
  %i.vw = load i8, ptr %i.vv, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.vy = load i64, ptr %i.vx, align 8, !range !65, !noundef !8
  %.not266 = icmp eq i64 %i.vy, -9223372036854775808
  br i1 %.not266, label %bb.os, label %bb.or

bb.bc:                                            ; preds = %bb.a
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vz)
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wb = load i8, ptr %i.wa, align 8, !range !89, !noundef !8
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.wd = load i8, ptr %i.wc, align 1, !range !4919, !noundef !8
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.we, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.wb, ptr %i.wf, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.wd, ptr %i.wg, align 1
  store i64 54, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  br label %bb.ed

bb.bd:                                            ; preds = %bb.a
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35341)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.wh)
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.wk = load i32, ptr %i.wj, align 8, !range !28367, !alias.scope !35341, !noalias !35338, !noundef !8
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.wm = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.wl, i64 32, i1 false), !alias.scope !35343
  %i.wn = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i32 %i.wk, ptr %i.wn, align 8, !alias.scope !35338, !noalias !35341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  invoke fastcc void @_RNvXseP_NtCs4lawaffTVVK_9sqlparser3astNtB6_14FetchDirectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.gm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wi)
          to label %bb.pe unwind label %bb.pc

bb.be:                                            ; preds = %bb.a
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val393 = load i8, ptr %i.wo, align 1, !range !35344, !noundef !8
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.wr = load i8, ptr %i.wq, align 2, !range !466, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl)
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.wt = load i64, ptr %i.ws, align 8, !range !65, !noundef !8
  %.not261 = icmp eq i64 %i.wt, -9223372036854775808
  br i1 %.not261, label %bb.pi, label %bb.ph

bb.bf:                                            ; preds = %bb.a
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val394 = load i8, ptr %i.wu, align 8, !range !3878, !noundef !8
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.val394, ptr %i.wv, align 8
  store i64 57, ptr %0, align 8
  br label %bb.ed

bb.bg:                                            ; preds = %bb.a
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !range !3088, !noundef !8
  %.not259 = icmp eq i64 %i.wx, 73
  br i1 %.not259, label %bb.pn, label %bb.pm

bb.bh:                                            ; preds = %bb.a
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wy)
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wz, ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 24, i1 false)
  store i64 59, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  br label %bb.ed

bb.bi:                                            ; preds = %bb.a
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.xb = load i64, ptr %i.xa, align 8, !range !3088, !noundef !8
  %.not258 = icmp eq i64 %i.xb, 73
  br i1 %.not258, label %bb.pp, label %bb.po

bb.bj:                                            ; preds = %bb.a
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !range !3088, !noundef !8
  %.not257 = icmp eq i64 %i.xd, 73
  br i1 %.not257, label %bb.pr, label %bb.pq

bb.bk:                                            ; preds = %bb.a
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val395 = load i8, ptr %i.xe, align 8, !range !4919, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xf)
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.val395, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xh, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false)
  store i64 62, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  br label %bb.ed

bb.bl:                                            ; preds = %bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.xk = load i8, ptr %i.xj, align 8, !range !89, !noundef !8
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.xm = load i8, ptr %i.xl, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.xi) #46
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.xk, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.xm, ptr %i.xo, align 1
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.xp, ptr noundef nonnull align 8 dereferenceable(792) %i.ge, i64 792, i1 false)
  store i64 63, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br label %bb.ed

bb.bm:                                            ; preds = %bb.a
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.xs = load i8, ptr %i.xr, align 8, !range !89, !noundef !8
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.xu = load i8, ptr %i.xt, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.xq) #46
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.xs, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.xu, ptr %i.xw, align 1
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.xx, ptr noundef nonnull align 8 dereferenceable(792) %i.gd, i64 792, i1 false)
  store i64 64, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  br label %bb.ed

bb.bn:                                            ; preds = %bb.a
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ya = load i8, ptr %i.xz, align 8, !range !89, !noundef !8
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.yc = load i8, ptr %i.yb, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.xy) #46
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.ya, ptr %i.yd, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.yc, ptr %i.ye, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yf, ptr noundef nonnull align 8 dereferenceable(792) %i.gc, i64 792, i1 false)
  store i64 65, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  br label %bb.ed

bb.bo:                                            ; preds = %bb.a
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call fastcc void @_RNvXsy2_NtCs4lawaffTVVK_9sqlparser3astNtB6_11ShowCharsetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(336) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.yg) #46
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.yh, ptr noundef nonnull align 8 dereferenceable(336) %i.gb, i64 336, i1 false)
  store i64 66, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  br label %bb.ed

bb.bp:                                            ; preds = %bb.a
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0517)
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.yk = load i8, ptr %i.yj, align 8, !range !89, !alias.scope !35345, !noalias !35348, !noundef !8
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %.sroa.0517, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(800) %i.yi) #46, !noalias !8
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yl, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.0517, i64 792, i1 false)
  %.sroa.4518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.yk, ptr %.sroa.4518.0..sroa_idx, align 8
  store i64 67, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0517)
  br label %bb.ed

bb.bq:                                            ; preds = %bb.a
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 800
  %9 = load <5 x i8>, ptr %i.yn, align 8
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.ga, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.ym) #46
  store <5 x i8> %9, ptr %i.yo, align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yp, ptr noundef nonnull align 8 dereferenceable(792) %i.ga, i64 792, i1 false)
  store i64 68, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  br label %bb.ed

bb.br:                                            ; preds = %bb.a
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ys = load i8, ptr %i.yr, align 8, !range !89, !noundef !8
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.yu = load i8, ptr %i.yt, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.yq) #46
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.ys, ptr %i.yv, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.yu, ptr %i.yw, align 1
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yx, ptr noundef nonnull align 8 dereferenceable(792) %i.fz, i64 792, i1 false)
  store i64 69, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  br label %bb.ed

bb.bs:                                            ; preds = %bb.a
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.yz = load i64, ptr %i.yy, align 8, !range !3088, !noundef !8
  %.not256 = icmp eq i64 %i.yz, 73
  br i1 %.not256, label %bb.pt, label %bb.ps

bb.bt:                                            ; preds = %bb.a
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  call fastcc void @_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_3UseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.za) #46
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i64 32, i1 false)
  store i64 71, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  br label %bb.ed

bb.bu:                                            ; preds = %bb.a
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zc)
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.zf = load i8, ptr %i.ze, align 8, !range !89, !noundef !8
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.zh = load i8, ptr %i.zg, align 2, !range !466, !noundef !8
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.zj = load i8, ptr %i.zi, align 1, !range !4919, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zd)
          to label %bb.pw unwind label %bb.pv

bb.bv:                                            ; preds = %bb.a
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val396 = load i8, ptr %i.zk, align 1, !range !3476, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.576)
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.zn = load i64, ptr %i.zm, align 8, !range !65, !noundef !8
  %.not250 = icmp eq i64 %i.zn, -9223372036854775808
  br i1 %.not250, label %bb.qc, label %bb.qb

bb.bw:                                            ; preds = %bb.a
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zp = load i8, ptr %i.zo, align 8, !range !89, !noundef !8
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.zr = load i8, ptr %i.zq, align 1, !range !89, !noundef !8
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.zt = load i8, ptr %i.zs, align 2, !range !4919, !noundef !8
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.zp, ptr %i.zu, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.zr, ptr %i.zv, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.zt, ptr %i.zw, align 2
  store i64 74, ptr %0, align 8
  br label %bb.ed

bb.bx:                                            ; preds = %bb.a
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.zy = load i8, ptr %i.zx, align 8, !range !89, !noundef !8
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aaa = load i64, ptr %i.zz, align 8, !range !65, !noundef !8
  %.not248 = icmp eq i64 %i.aaa, -9223372036854775808
  br i1 %.not248, label %bb.qg, label %bb.qf

bb.by:                                            ; preds = %bb.a
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  call fastcc void @_RNvXsuO_NtCs4lawaffTVVK_9sqlparser3astNtB6_10SchemaNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aab) #46
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.aad = load i8, ptr %i.aac, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !range !65, !noundef !8
  %.not240 = icmp eq i64 %i.aaf, -9223372036854775808
  br i1 %.not240, label %bb.qi, label %bb.qh

bb.bz:                                            ; preds = %bb.a
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aag)
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aai = load i8, ptr %i.aah, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !range !65, !noundef !8
  %.not216 = icmp eq i64 %i.aak, -9223372036854775808
  br i1 %.not216, label %bb.rd, label %bb.rc

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  call fastcc void @_RNvXs8Q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %1) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull align 8 dereferenceable(2688) %i.fd, i64 2688, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br label %bb.ed

bb.cb:                                            ; preds = %bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call fastcc void @_RNvXs9E_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_13CreateTriggerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(720) %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(720) %i.aal) #46
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.aam, ptr noundef nonnull align 8 dereferenceable(720) %i.fc, i64 720, i1 false)
  store i64 79, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.ed

bb.cc:                                            ; preds = %bb.a
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call fastcc void @_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aan) #46
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aao, ptr noundef nonnull align 8 dereferenceable(56) %i.fb, i64 56, i1 false)
  store i64 80, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  br label %bb.ed

bb.cd:                                            ; preds = %bb.a
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aas = load i8, ptr %i.aar, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 8, !range !65, !noundef !8
  %.not211 = icmp eq i64 %i.aau, -9223372036854775808
  br i1 %.not211, label %bb.to, label %bb.tn

bb.ce:                                            ; preds = %bb.a
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.aay = load i8, ptr %i.aax, align 8, !range !89, !noundef !8
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.aba = load i8, ptr %i.aaz, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aav)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 8, !range !65, !noundef !8
  %.not208 = icmp eq i64 %i.abc, -9223372036854775808
  br i1 %.not208, label %bb.uc, label %bb.ub

bb.cf:                                            ; preds = %bb.a
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.abi = load i8, ptr %i.abh, align 8, !range !89, !noundef !8
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.abk = load i8, ptr %i.abj, align 1, !range !89, !noundef !8
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.abm = load i8, ptr %i.abl, align 2, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  invoke fastcc void @_RNvXs3_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.abe)
          to label %bb.ul unwind label %bb.uk

bb.cg:                                            ; preds = %bb.a
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.abn) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.abp = load i64, ptr %i.abo, align 8, !range !3090, !noundef !8
  %.not201 = icmp eq i64 %i.abp, 69
  br i1 %.not201, label %bb.va, label %bb.uz

bb.ch:                                            ; preds = %bb.a
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35350)
  %i.abs = load i64, ptr %i.abq, align 8, !range !65, !alias.scope !35353, !noalias !35350, !noundef !8
  %.not.i424 = icmp eq i64 %i.abs, -9223372036854775808
  br i1 %.not.i424, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abq)
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.abq, i64 24, i1 false), !alias.scope !35355
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.abu = load i64, ptr %i.abt, align 8, !range !5990, !noundef !8
  %.not192 = icmp eq i64 %i.abu, 28
  br i1 %.not192, label %bb.ve, label %bb.vd

bb.ck:                                            ; preds = %bb.a
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call fastcc void @_RNvXsgV_NtCs4lawaffTVVK_9sqlparser3astNtB6_13DenyStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.abv) #46
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.abw, ptr noundef nonnull align 8 dereferenceable(176) %i.ej, i64 176, i1 false)
  store i64 86, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.ed

bb.cl:                                            ; preds = %bb.a
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35356)
  %i.abz = load i64, ptr %i.abx, align 8, !range !65, !alias.scope !35359, !noalias !35356, !noundef !8
  %.not.i425 = icmp eq i64 %i.abz, -9223372036854775808
  br i1 %.not.i425, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abx)
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.abx, i64 24, i1 false), !alias.scope !35361
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426

_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.acb = load i64, ptr %i.aca, align 8, !range !5990, !noundef !8
  %.not185 = icmp eq i64 %i.acb, 28
  br i1 %.not185, label %bb.vx, label %bb.vw

bb.co:                                            ; preds = %bb.a
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35365)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.acc)
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ace = load i32, ptr %i.acd, align 8, !range !28367, !alias.scope !35365, !noalias !35362, !noundef !8
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.acf, i64 32, i1 false), !alias.scope !35367
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  store i32 %i.ace, ptr %i.ach, align 8, !alias.scope !35362, !noalias !35365
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.acj = load i8, ptr %i.aci, align 8, !range !89, !noundef !8
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ack, ptr noundef nonnull align 8 dereferenceable(64) %i.ef, i64 64, i1 false)
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.acj, ptr %i.acl, align 8
  store i64 88, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.ed

bb.cp:                                            ; preds = %bb.a
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !range !65, !noundef !8
  %.not181 = icmp eq i64 %i.acq, -9223372036854775808
  br i1 %.not181, label %bb.wk, label %bb.wj

bb.cq:                                            ; preds = %bb.a
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35371)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.acr)
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.acu = load i32, ptr %i.act, align 8, !range !28367, !alias.scope !35371, !noalias !35368, !noundef !8
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.acv, i64 32, i1 false), !alias.scope !35373
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store i32 %i.acu, ptr %i.acx, align 8, !alias.scope !35368, !noalias !35371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acs)
          to label %bb.ww unwind label %bb.wv

bb.cr:                                            ; preds = %bb.a
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acz = load i8, ptr %i.acy, align 8, !range !3878, !noundef !8
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adb = load i64, ptr %i.ada, align 8, !noundef !8
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.acz, ptr %i.adc, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.adb, ptr %i.add, align 8
  store i64 91, ptr %0, align 8
  br label %bb.ed

bb.cs:                                            ; preds = %bb.a
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val401 = load i8, ptr %i.ade, align 1, !range !466, !noundef !8
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.adh = load i8, ptr %i.adg, align 2, !range !466, !noundef !8
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adj = load i8, ptr %i.adi, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adf)
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.val401, ptr %i.adk, align 1
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.adh, ptr %i.adl, align 2
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.adj, ptr %i.adm, align 8
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adn, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  store i64 92, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.ed

bb.ct:                                            ; preds = %bb.a
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 42
  %10 = load <5 x i8>, ptr %i.adp, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.adq = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ado) #46 ; 2 uses
  store ptr %i.adq, ptr %i.dx, align 8
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ads = load i8, ptr %i.adr, align 8, !range !466, !noundef !8 ; 2 uses
  %.not175 = icmp eq i8 %i.ads, 2
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val416 = load i8, ptr %i.adt, align 1
  %.sroa.5106.0 = select i1 %.not175, i8 undef, i8 %.val416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5109)
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8, !range !65, !noundef !8
  %.not176 = icmp eq i64 %i.adv, -9223372036854775808
  br i1 %.not176, label %bb.xb, label %bb.xa

bb.cu:                                            ; preds = %bb.a
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35377)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.adw)
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ady = load i32, ptr %i.adx, align 8, !range !28367, !alias.scope !35377, !noalias !35374, !noundef !8
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aea = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aea, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.adz, i64 32, i1 false), !alias.scope !35379
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store i32 %i.ady, ptr %i.aeb, align 8, !alias.scope !35374, !noalias !35377
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aec, ptr noundef nonnull align 8 dereferenceable(64) %i.dw, i64 64, i1 false)
  store i64 94, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %bb.ed

bb.cv:                                            ; preds = %bb.a
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35383)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aed)
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aef = load i32, ptr %i.aee, align 8, !range !28367, !alias.scope !35383, !noalias !35380, !noundef !8
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aeh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aeg, i64 32, i1 false), !alias.scope !35385
  %i.aei = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  store i32 %i.aef, ptr %i.aei, align 8, !alias.scope !35380, !noalias !35383
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aej, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false)
  store i64 95, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.ed

bb.cw:                                            ; preds = %bb.a
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.aeo = load i8, ptr %i.aen, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.aek) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  invoke fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.ael)
          to label %bb.xf unwind label %bb.xe

bb.cx:                                            ; preds = %bb.a
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aes = load i64, ptr %i.aer, align 8, !range !65, !noundef !8
  %.not165 = icmp eq i64 %i.aes, -9223372036854775808
  br i1 %.not165, label %bb.xr, label %bb.xq

bb.cy:                                            ; preds = %bb.a
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aet)
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aev = load i8, ptr %i.aeu, align 8, !range !89, !noundef !8
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aew, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false)
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.aev, ptr %i.aex, align 8
  store i64 98, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.ed

bb.cz:                                            ; preds = %bb.a
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.afb = load i8, ptr %i.afa, align 8, !range !89, !noundef !8
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.afd = load i8, ptr %i.afc, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aey)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aff = load i8, ptr %i.afe, align 8, !range !3161, !noundef !8
  %.not160 = icmp eq i8 %i.aff, 116
  br i1 %.not160, label %bb.yc, label %bb.yb

bb.da:                                            ; preds = %bb.a
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call fastcc void @_RNvXs8G_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_12CreateDomainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(496) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.afg) #46
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.afh, ptr noundef nonnull align 8 dereferenceable(496) %i.dj, i64 496, i1 false)
  store i64 100, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.ed

bb.db:                                            ; preds = %bb.a
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  invoke fastcc void @_RNvXs7y_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_29UserDefinedTypeRepresentationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.afj)
          to label %bb.yo unwind label %bb.yn

bb.dc:                                            ; preds = %bb.a
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afk)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5122)
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.afm = load i64, ptr %i.afl, align 8, !range !3153, !noundef !8
  %.not159 = icmp eq i64 %i.afm, -9223372036854775787
  br i1 %.not159, label %bb.yq, label %bb.yp

bb.dd:                                            ; preds = %bb.a
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afn)
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afo, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  store i64 103, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.ed

bb.de:                                            ; preds = %bb.a
  store i64 104, ptr %0, align 8
  br label %bb.ed

bb.df:                                            ; preds = %bb.a
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !align !216, !noundef !8
  %.not151 = icmp eq ptr %i.aft, null
  br i1 %.not151, label %bb.yu, label %bb.yt

bb.dg:                                            ; preds = %bb.a
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !range !65, !noundef !8
  %.not145 = icmp eq i64 %i.afw, -9223372036854775808
  br i1 %.not145, label %bb.zr, label %bb.zq

bb.dh:                                            ; preds = %bb.a
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35389)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.afx)
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.afz = load i32, ptr %i.afy, align 8, !range !28367, !alias.scope !35389, !noalias !35386, !noundef !8
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.agb = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aga, i64 32, i1 false), !alias.scope !35391
  %i.agc = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i32 %i.afz, ptr %i.agc, align 8, !alias.scope !35386, !noalias !35389
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agd, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  store i64 107, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.ed

bb.di:                                            ; preds = %bb.a
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35395)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.age)
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.agg = load i32, ptr %i.agf, align 8, !range !28367, !alias.scope !35395, !noalias !35392, !noundef !8
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.agi = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.agh, i64 32, i1 false), !alias.scope !35397
  %i.agj = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store i32 %i.agg, ptr %i.agj, align 8, !alias.scope !35392, !noalias !35395
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agk, ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i64 64, i1 false)
  store i64 108, ptr %0, align 8
end_hunk_3
begin_hunk_4_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.ia:                                            ; preds = %bb.hz
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ee, !inline_history !5485

bb.ib:                                            ; preds = %bb.hw
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.ic:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.hy

bb.id:                                            ; preds = %bb.ie
  %i.amo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ji) #44
          to label %bb.hz unwind label %bb.ee

bb.ie:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.amj)
          to label %bb.ig unwind label %bb.id

bb.if:                                            ; preds = %bb.hy, %bb.ig
  %.sroa.09.0 = phi i64 [ %.sroa.09.0.copyload10, %bb.ig ], [ 69, %bb.hy ]
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.amp, ptr noundef nonnull align 8 dereferenceable(640) %i.jm, i64 640, i1 false)
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amq, ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 24, i1 false)
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amr, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, i64 32, i1 false)
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ams, ptr noundef nonnull align 8 dereferenceable(328) %i.jj, i64 328, i1 false)
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amt, ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i64 24, i1 false)
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i8 %i.ami, ptr %i.amu, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store i64 %.sroa.09.0, ptr %i.amv, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511, i64 320, i1 false)
  store i64 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  br label %bb.ed

bb.ig:                                            ; preds = %bb.ie
  %.sroa.09.0.copyload10 = load i64, ptr %i.bn, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511.0..sroa_idx12, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.if

bb.ih:                                            ; preds = %bb.ik, %bb.ii
  %.pn329.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn.pn.pn, %bb.ik ], [ %i.amw, %bb.ii ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jg) #44
          to label %bb.ef unwind label %bb.ee

bb.ii:                                            ; preds = %bb.y
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ij:                                            ; preds = %bb.y
  %i.amx = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  %i.amy = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.amx)
          to label %bb.im unwind label %bb.il     ; 2 uses

bb.ik:                                            ; preds = %bb.in, %bb.il
  %.pn329.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn.pn, %bb.in ], [ %i.amz, %bb.il ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.jf) #44
          to label %bb.ih unwind label %bb.ee

bb.il:                                            ; preds = %bb.ij
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ik

bb.im:                                            ; preds = %bb.ij
  store ptr %i.amy, ptr %i.je, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  invoke fastcc void @_RNvXsb7_NtCs4lawaffTVVK_9sqlparser3astNtB6_18CreateTableOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.jd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oh)
          to label %bb.ip unwind label %bb.io

bb.in:                                            ; preds = %bb.iq, %bb.io
  %.pn329.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn, %bb.iq ], [ %i.ana, %bb.io ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.je) #44
          to label %bb.ik unwind label %bb.ee

bb.io:                                            ; preds = %bb.im
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.ip:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oi)
          to label %bb.is unwind label %bb.ir

bb.iq:                                            ; preds = %bb.iw, %bb.ir
  %.pn329.pn.pn = phi { ptr, i32 } [ %.pn329.pn, %bb.iw ], [ %i.anb, %bb.ir ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast18CreateTableOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.jd) #44
          to label %bb.in unwind label %bb.ee

bb.ir:                                            ; preds = %bb.ip
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.is:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.and = load i64, ptr %i.anc, align 8, !range !65, !noundef !8
  %.not326 = icmp eq i64 %i.and, -9223372036854775808
  br i1 %.not326, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anc)
          to label %bb.iy unwind label %bb.ix

bb.iu:                                            ; preds = %bb.is
  store i64 -9223372036854775808, ptr %i.jb, align 8
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iy, %bb.iu
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 309
  %i.anf = load i8, ptr %i.ane, align 1, !range !89, !noundef !8
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 310
  %i.anh = load i8, ptr %i.ang, align 2, !range !89, !noundef !8
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 311
  %i.anj = load i8, ptr %i.ani, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ja)
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.anl = load i64, ptr %i.ank, align 8, !range !65, !noundef !8
  %.not327 = icmp eq i64 %i.anl, -9223372036854775808
  br i1 %.not327, label %bb.ja, label %bb.iz

bb.iw:                                            ; preds = %bb.jc, %bb.ix
  %.pn329.pn = phi { ptr, i32 } [ %.pn329, %bb.jc ], [ %i.anm, %bb.ix ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jc) #44
          to label %bb.iq unwind label %bb.ee

bb.ix:                                            ; preds = %bb.it
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.iy:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.iv

bb.iz:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ank)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit439 unwind label %bb.jd

bb.ja:                                            ; preds = %bb.iv
  store i64 -9223372036854775808, ptr %i.ja, align 8
  br label %bb.jb

bb.jb:                                            ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit439, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515)
  %i.ann = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ano = load i64, ptr %i.ann, align 8, !range !3042, !noundef !8
  %.not328 = icmp eq i64 %i.ano, -9223372036854775806
  br i1 %.not328, label %bb.jf, label %bb.je

bb.jc:                                            ; preds = %bb.jg, %bb.jd
  %.pn329 = phi { ptr, i32 } [ %i.aod, %bb.jg ], [ %i.anp, %bb.jd ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jb) #44
          to label %bb.iw unwind label %bb.ee

bb.jd:                                            ; preds = %bb.iz
  %i.anp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit439: ; preds = %bb.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.jb

bb.je:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke fastcc void @_RNvXsw6_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ann)
          to label %bb.jh unwind label %bb.jg

bb.jf:                                            ; preds = %bb.jb, %bb.jh
  %.sroa.013.0 = phi i64 [ %.sroa.013.0.copyload14, %bb.jh ], [ -9223372036854775806, %bb.jb ]
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %2, ptr %i.anq, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 %4, ptr %11, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 306
  store i8 %6, ptr %12, align 2
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 307
  store i8 %8, ptr %13, align 1
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anr, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false)
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 %i.ol, ptr %i.ans, align 4
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ant, ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 24, i1 false)
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.amy, ptr %i.anu, align 8
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anv, ptr noundef nonnull align 8 dereferenceable(32) %i.jd, i64 32, i1 false)
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anw, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i64 24, i1 false)
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anx, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 24, i1 false)
  %i.any = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.anf, ptr %i.any, align 1
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 310
  store i8 %i.anh, ptr %i.anz, align 2
  %i.aoa = getelementptr inbounds nuw i8, ptr %0, i64 311
  store i8 %i.anj, ptr %i.aoa, align 1
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aob, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false)
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.013.0, ptr %i.aoc, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515, i64 128, i1 false)
  store i64 24, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  br label %bb.ed

bb.jg:                                            ; preds = %bb.je
  %i.aod = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ja) #44
          to label %bb.jc unwind label %bb.ee

bb.jh:                                            ; preds = %bb.je
  %.sroa.013.0.copyload14 = load i64, ptr %i.bk, align 8
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515.0..sroa_idx16, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.jf

bb.ji:                                            ; preds = %bb.jl, %bb.jj
  %.pn324 = phi { ptr, i32 } [ %i.aol, %bb.jl ], [ %i.aoe, %bb.jj ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iy) #44
          to label %bb.ef unwind label %bb.ee

bb.jj:                                            ; preds = %bb.aa
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.jk:                                            ; preds = %bb.aa
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aog = load i32, ptr %i.aof, align 8, !range !28367, !alias.scope !35260, !noalias !35257, !noundef !8
  %i.aoh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aoh, i64 32, i1 false), !alias.scope !35436
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  store i32 %i.aog, ptr %i.aoj, align 8, !alias.scope !35257, !noalias !35260
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aok)
          to label %bb.jm unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aol = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ix) #44
          to label %bb.ji unwind label %bb.ee

bb.jm:                                            ; preds = %bb.jk
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aom, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i64 24, i1 false)
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.or, ptr %i.aon, align 8
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aoo, ptr noundef nonnull align 8 dereferenceable(64) %i.ix, i64 64, i1 false)
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aop, ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 24, i1 false)
  store i64 26, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  br label %bb.ed

bb.jn:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5525)
  %i.aoq = icmp eq i64 %i.pd, 69
  br i1 %i.aoq, label %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35437
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.pc) #46
          to label %.noexc440 unwind label %bb.jr, !inline_history !35441

.noexc440:                                        ; preds = %bb.jo
  %.sroa.0523.0.copyload524 = load i64, ptr %i.c, align 8, !noalias !35442
  %.sroa.5525.0..sroa_idx526 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525.0..sroa_idx526, i64 320, i1 false), !noalias !35442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35437
  br label %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.jp:                                            ; preds = %bb.ac
  store i64 70, ptr %i.it, align 8
  br label %bb.jq

bb.jq:                                            ; preds = %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.jp
  %i.aor = phi i1 [ %i.aox, %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ], [ true, %bb.jp ]
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 1164
  %i.aot = load <4 x i8>, ptr %i.aos, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is)
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aov = load i64, ptr %i.aou, align 8, !range !3090, !noundef !8
  %.not312 = icmp eq i64 %i.aov, 69
  br i1 %.not312, label %bb.jt, label %bb.js

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit443, %bb.jv, %bb.jr
  %.pn315.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aow, %bb.jr ], [ %.pn315.pn.pn.pn.pn.pn.pn, %bb.jv ], [ %.pn315.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit443 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iu) #44
          to label %bb.ef unwind label %bb.ee

bb.jr:                                            ; preds = %bb.jo
  %i.aow = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc440, %bb.jn
  %.sroa.0523.0 = phi i64 [ %.sroa.0523.0.copyload524, %.noexc440 ], [ 69, %bb.jn ] ; 2 uses
  store i64 %.sroa.0523.0, ptr %i.it, align 8
  %.sroa.5525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5525)
  %i.aox = icmp samesign ugt i64 %.sroa.0523.0, 68
  br label %bb.jq

bb.js:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aou)
          to label %bb.jx unwind label %bb.jw

bb.jt:                                            ; preds = %bb.jq
  store i64 69, ptr %i.is, align 8
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jx, %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir)
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.aoz = load i64, ptr %i.aoy, align 8, !range !3090, !noundef !8
  %.not313 = icmp eq i64 %i.aoz, 69
  br i1 %.not313, label %bb.jz, label %bb.jy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit443: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit445, %bb.kb, %bb.jw
  %.pn315.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.apa, %bb.jw ], [ %.pn315.pn.pn.pn.pn.pn, %bb.kb ], [ %.pn315.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit445 ] ; 2 uses
  br i1 %i.aor, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit443
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.it)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ee, !inline_history !35443

bb.jw:                                            ; preds = %bb.js
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit443

bb.jx:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.is, ptr noundef nonnull align 8 dereferenceable(328) %i.bj, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ju

bb.jy:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aoy)
          to label %bb.kd unwind label %bb.kc

bb.jz:                                            ; preds = %bb.ju
  store i64 69, ptr %i.ir, align 8
  br label %bb.ka

bb.ka:                                            ; preds = %bb.kd, %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iq)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ov)
          to label %bb.kh unwind label %bb.kg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit445: ; preds = %bb.ke, %bb.kf, %bb.kc
  %.pn315.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.apd, %bb.kc ], [ %.pn315.pn.pn.pn.pn, %bb.kf ], [ %.pn315.pn.pn.pn.pn, %bb.ke ] ; 2 uses
  %i.apb = load i64, ptr %i.is, align 8, !range !3090, !alias.scope !35444, !noundef !8
  %i.apc = icmp eq i64 %i.apb, 69
  br i1 %i.apc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit443, label %bb.kb

bb.kb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit445
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.is)
end_hunk_4
begin_hunk_5_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.wb:                                            ; preds = %bb.wh, %bb.wd
  %.pn188.pn = phi { ptr, i32 } [ %i.bfv, %bb.wh ], [ %i.bfl, %bb.wd ] ; 2 uses
  %i.bfj = load i64, ptr %i.eh, align 8, !range !5990, !alias.scope !35551, !noundef !8
  %i.bfk = icmp eq i64 %i.bfj, 28
  br i1 %i.bfk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsEECs14kWLkQVSKO_14deltalake_core.exit492, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsEECs14kWLkQVSKO_14deltalake_core.exit492 unwind label %bb.ee

bb.wd:                                            ; preds = %bb.vy
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  br label %bb.wb

bb.we:                                            ; preds = %bb.vy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5541)
  %i.bfm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bfn = load i64, ptr %i.bfm, align 8, !range !65, !noundef !8
  %.not186 = icmp eq i64 %i.bfn, -9223372036854775808
  br i1 %.not186, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !35554)
  call void @llvm.experimental.noalias.scope.decl(metadata !35557)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bfm)
          to label %bb.wi unwind label %bb.wh

bb.wg:                                            ; preds = %bb.we, %bb.wi
  %.sroa.0539.0 = phi i64 [ %.sroa.0539.0.copyload, %bb.wi ], [ -9223372036854775808, %bb.we ]
  %i.bfo = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bfp = load i8, ptr %i.bfo, align 8, !range !466, !noundef !8
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bfq, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bfr, ptr noundef nonnull align 8 dereferenceable(56) %i.eh, i64 56, i1 false)
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bfs, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.0539.0, ptr %i.bft, align 8
  %.sroa.5541.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541.0..sroa_idx542, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541, i64 56, i1 false)
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bfp, ptr %i.bfu, align 8
  store i64 87, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5541)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.ed

bb.wh:                                            ; preds = %bb.wf
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.eg) #44
          to label %bb.wb unwind label %bb.ee

bb.wi:                                            ; preds = %bb.wf
  %i.bfw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bfx = load i32, ptr %i.bfw, align 8, !range !28367, !alias.scope !35557, !noalias !35554, !noundef !8
  %i.bfy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bfz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bfy, i64 32, i1 false), !alias.scope !35559
  %i.bga = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i32 %i.bfx, ptr %i.bga, align 8, !alias.scope !35554, !noalias !35557
  %.sroa.0539.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.5541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.wg

bb.wj:                                            ; preds = %bb.cp
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acp)
  br label %bb.wl

bb.wk:                                            ; preds = %bb.cp
  store i64 -9223372036854775808, ptr %i.ee, align 8
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.wj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acm)
          to label %bb.wo unwind label %bb.wn

bb.wm:                                            ; preds = %bb.wp, %bb.wn
  %.pn182.pn = phi { ptr, i32 } [ %.pn182, %bb.wp ], [ %i.bgb, %bb.wn ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee) #44
          to label %bb.ef unwind label %bb.ee

bb.wn:                                            ; preds = %bb.wl
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  br label %bb.wm

bb.wo:                                            ; preds = %bb.wl
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bgd = load i8, ptr %i.bgc, align 8, !range !89, !noundef !8
  %i.bge = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.bgf = load i8, ptr %i.bge, align 1, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acn)
          to label %bb.wr unwind label %bb.wq

bb.wp:                                            ; preds = %bb.ws, %bb.wq
  %.pn182 = phi { ptr, i32 } [ %i.bgh, %bb.ws ], [ %i.bgg, %bb.wq ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed) #44
          to label %bb.wm unwind label %bb.ee

bb.wq:                                            ; preds = %bb.wo
  %i.bgg = landingpad { ptr, i32 }
          cleanup
  br label %bb.wp

bb.wr:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aco)
          to label %bb.wt unwind label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bgh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec) #44
          to label %bb.wp unwind label %bb.ee

bb.wt:                                            ; preds = %bb.wr
  %i.bgi = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.bgj = load i8, ptr %i.bgi, align 2, !range !89, !noundef !8
  %i.bgk = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.bgl = load i8, ptr %i.bgk, align 1, !range !89, !noundef !8
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgm, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgn, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  %i.bgo = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.bgd, ptr %i.bgo, align 8
  %i.bgp = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.bgf, ptr %i.bgp, align 1
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgq, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgr, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false)
  %i.bgs = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.bgj, ptr %i.bgs, align 2
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.bgl, ptr %i.bgt, align 1
  store i64 89, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.ed

bb.wu:                                            ; preds = %bb.wx, %bb.wv
  %.pn179 = phi { ptr, i32 } [ %i.bgx, %bb.wx ], [ %i.bgu, %bb.wv ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ea) #44
          to label %bb.ef unwind label %bb.ee

bb.wv:                                            ; preds = %bb.cq
  %i.bgu = landingpad { ptr, i32 }
          cleanup
  br label %bb.wu

bb.ww:                                            ; preds = %bb.cq
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bgw = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bgv)
          to label %bb.wy unwind label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dz) #44
          to label %bb.wu unwind label %bb.ee

bb.wy:                                            ; preds = %bb.ww
  %i.bgy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bgy, ptr noundef nonnull align 8 dereferenceable(64) %i.ea, i64 64, i1 false)
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgz, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  %i.bha = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bgw, ptr %i.bha, align 8
  store i64 90, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.ed

bb.wz:                                            ; preds = %bb.xa
  %i.bhb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.dx) #44
          to label %bb.ef unwind label %bb.ee

bb.xa:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast13UtilityOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adu)
          to label %bb.xc unwind label %bb.wz

bb.xb:                                            ; preds = %bb.ct, %bb.xc
  %.sroa.0107.0 = phi i64 [ %.sroa.0107.0.copyload108, %bb.xc ], [ -9223372036854775808, %bb.ct ]
  %i.bhc = getelementptr inbounds nuw i8, ptr %0, i64 42
  store <5 x i8> %10, ptr %i.bhc, align 2
  %i.bhd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.adq, ptr %i.bhd, align 8
  %i.bhe = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ads, ptr %i.bhe, align 8
  %i.bhf = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.5106.0, ptr %i.bhf, align 1
  %i.bhg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0107.0, ptr %i.bhg, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109, i64 16, i1 false)
  store i64 93, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5109)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.ed

bb.xc:                                            ; preds = %bb.xa
  %.sroa.0107.0.copyload108 = load i64, ptr %i.p, align 8
  %.sroa.5109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx110, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.xb

bb.xd:                                            ; preds = %bb.xg, %bb.xe
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %bb.xg ], [ %i.bhh, %bb.xe ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(616) %i.du) #44
          to label %bb.ef unwind label %bb.ee

bb.xe:                                            ; preds = %bb.cw
  %i.bhh = landingpad { ptr, i32 }
          cleanup
  br label %bb.xd

bb.xf:                                            ; preds = %bb.cw
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.bhj = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bhi)
          to label %bb.xi unwind label %bb.xh     ; 2 uses

bb.xg:                                            ; preds = %bb.xj, %bb.xh
  %.pn171.pn = phi { ptr, i32 } [ %.pn171, %bb.xj ], [ %i.bhk, %bb.xh ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(616) %i.dt) #44
          to label %bb.xd unwind label %bb.ee

bb.xh:                                            ; preds = %bb.xf
  %i.bhk = landingpad { ptr, i32 }
          cleanup
  br label %bb.xg

bb.xi:                                            ; preds = %bb.xf
  store ptr %i.bhj, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aem)
          to label %bb.xl unwind label %bb.xk

bb.xj:                                            ; preds = %bb.xo, %bb.xk
  %.pn171 = phi { ptr, i32 } [ %i.bhu, %bb.xo ], [ %i.bhl, %bb.xk ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds) #44
          to label %bb.xg unwind label %bb.ee

bb.xk:                                            ; preds = %bb.xi
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

bb.xl:                                            ; preds = %bb.xi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5113)
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  %i.bhn = load i64, ptr %i.bhm, align 8, !range !69, !noundef !8
  %.not170 = icmp eq i64 %i.bhn, -9223372036854775807
  br i1 %.not170, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvXsrY_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bhm)
          to label %bb.xp unwind label %bb.xo

bb.xn:                                            ; preds = %bb.xl, %bb.xp
  %.sroa.0111.0 = phi i64 [ %.sroa.0111.0.copyload112, %bb.xp ], [ -9223372036854775807, %bb.xl ]
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i8 %i.aeo, ptr %i.bho, align 8
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.bhp, ptr noundef nonnull align 8 dereferenceable(616) %i.du, i64 616, i1 false)
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.bhq, ptr noundef nonnull align 8 dereferenceable(616) %i.dt, i64 616, i1 false)
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store ptr %i.bhj, ptr %i.bhr, align 8
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhs, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 %.sroa.0111.0, ptr %i.bht, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113, i64 48, i1 false)
  store i64 96, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5113)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.ed

bb.xo:                                            ; preds = %bb.xm
  %i.bhu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dr) #44
          to label %bb.xj unwind label %bb.ee

bb.xp:                                            ; preds = %bb.xm
  %.sroa.0111.0.copyload112 = load i64, ptr %i.o, align 8
  %.sroa.5113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113.0..sroa_idx114, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.xn

bb.xq:                                            ; preds = %bb.cx
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aer)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.cx
  store i64 -9223372036854775808, ptr %i.dq, align 8
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xr, %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aep)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496 unwind label %bb.xu

bb.xt:                                            ; preds = %bb.xv, %bb.xu
  %.pn167.pn = phi { ptr, i32 } [ %.pn167, %bb.xv ], [ %i.bhv, %bb.xu ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq) #44
          to label %bb.ef unwind label %bb.ee

bb.xu:                                            ; preds = %bb.xs
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  br label %bb.xt

_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496: ; preds = %bb.xs
  %i.bhw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bhx = load i8, ptr %i.bhw, align 8, !range !89, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aeq)
          to label %bb.xx unwind label %bb.xw

bb.xv:                                            ; preds = %bb.ya, %bb.xw
  %.pn167 = phi { ptr, i32 } [ %i.bih, %bb.ya ], [ %i.bhy, %bb.xw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp) #44
          to label %bb.xt unwind label %bb.ee

bb.xw:                                            ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496
  %i.bhy = landingpad { ptr, i32 }
          cleanup
  br label %bb.xv

bb.xx:                                            ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496
  %i.bhz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bia = load ptr, ptr %i.bhz, align 8, !align !216, !noundef !8
  %.not166 = icmp eq ptr %i.bia, null
  br i1 %.not166, label %bb.xz, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.bib = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bhz)
          to label %bb.xz unwind label %bb.ya

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %.sroa.0115.0 = phi ptr [ null, %bb.xx ], [ %i.bib, %bb.xy ]
  %i.bic = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bic, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %i.bid = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bid, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false)
  %i.bie = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.bhx, ptr %i.bie, align 8
  %i.bif = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bif, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.big = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0115.0, ptr %i.big, align 8
  store i64 97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.ed

bb.ya:                                            ; preds = %bb.xy
  %i.bih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.do) #44
          to label %bb.xv unwind label %bb.ee

bb.yb:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.afe)
          to label %bb.yf unwind label %bb.ye

bb.yc:                                            ; preds = %bb.cz
  store i8 116, ptr %i.dl, align 8
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yf, %bb.yc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aez)
          to label %bb.yj unwind label %bb.yi
end_hunk_5
