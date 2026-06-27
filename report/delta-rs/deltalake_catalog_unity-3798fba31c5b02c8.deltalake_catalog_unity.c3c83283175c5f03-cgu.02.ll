inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE16insert_or_modifyNCNCNvMs4_NtNtBc_6future10base_cacheINtB4M_9BaseCacheB1B_B32_E19do_insert_with_hash00NCB4E_s_0EB36_:bb.a

bb.al:                                            ; preds = %.thread.i, %bb.ae
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !16
  unreachable

.thread.i:                                        ; preds = %bb.ac, %bb.y, %bb.r, %bb.q
  %.pn.pn4.i = phi { ptr, i32 } [ %.pn.i, %bb.q ], [ %i.ck, %bb.r ], [ %.pn.ph.i.i, %bb.ac ], [ %i.cy, %bb.y ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %.body.thread77 unwind label %bb.al, !noalias !16

bb.am:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.dp = call fastcc noundef i64 @_RNvMs5_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_19InsertOrModifyStateINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1f_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2a_10ValueEntryB1I_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBb_6future10base_cacheINtB4A_9BaseCacheB1I_B39_E19do_insert_with_hash00E18into_insert_bucketB3d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bd

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEINtBL_7WriteOpB1F_B2h_EEEB2l_.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEINtB17_7WriteOpB21_B2D_EEEEB2H_.exit_crit_edge.i, %bb.ag
  %i.dq = phi ptr [ %.pre.i20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEINtBL_7WriteOpB1F_B2h_EEEB2l_.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEINtB17_7WriteOpB21_B2D_EEEEB2H_.exit_crit_edge.i ], [ %i.cw, %bb.ag ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !16
  store i8 %i.dh, ptr %.sroa.52.0..sroa_idx3.i, align 8, !noalias !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..sroa_idx5.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.i, i64 47, i1 false), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1143)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1253)
  %.sroa.047.0.copyload = load i64, ptr %4, align 8
  %.sroa.448.0.copyload = load i64, ptr %.sroa.012.0, align 8 ; 3 uses
  %.sroa.751.0.copyload = load ptr, ptr %.sroa.751.0..sroa_idx, align 8 ; 4 uses
  %.sroa.1052.0.copyload = load ptr, ptr %.sroa.1052.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1253, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1253.0..sroa_idx, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.dq, ptr %i.f, align 8, !noalias !36
  switch i64 %.sroa.047.0.copyload, label %default.unreachable21.i [
    i64 0, label %bb.ao
    i64 1, label %bb.at
    i64 2, label %bb.au
  ]

default.unreachable21.i:                          ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dr = inttoptr i64 %.sroa.448.0.copyload to ptr ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store ptr %i.dr, ptr %i.a, align 8, !noalias !36
  store ptr %i.dq, ptr %i.aq, align 8, !noalias !36
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !36
  %i.ds = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 16, i64 noundef 8) #23, !noalias !36 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ap, label %bb.av, !prof !27

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc.i22 unwind label %bb.aq, !noalias !36

.noexc.i22:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !37
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.ar, label %.body.thread

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %.body.thread unwind label %bb.as, !noalias !36

bb.as:                                            ; preds = %bb.ar
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !36
  unreachable

bb.at:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36
  store i64 %.sroa.448.0.copyload, ptr %i.e, align 8, !noalias !36
  %i.dy = invoke noundef nonnull align 8 ptr @_RNvXso_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops5deref8DerefMut9deref_mutB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ax unwind label %bb.aw, !noalias !36

bb.au:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36
  store i64 %.sroa.448.0.copyload, ptr %i.d, align 8, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36
  store ptr %.sroa.751.0.copyload, ptr %i.c, align 8, !noalias !31
  store ptr %.sroa.1052.0.copyload, ptr %.sroa.1052.16..sroa_idx, align 8, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1253.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1253.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36
  %i.dz = invoke noundef nonnull align 8 ptr @_RNvXso_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops5deref8DerefMut9deref_mutB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bb unwind label %bb.az, !noalias !36

bb.av:                                            ; preds = %bb.ao
  store ptr %i.dr, ptr %i.ds, align 8, !noalias !36
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dq, ptr %i.ea, align 8, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  %i.eb = ptrtoint ptr %i.ds to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1143, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1253, i64 48, i1 false), !alias.scope !36
  br label %bb.bc

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit.i
  br i1 %.sroa.03.1.i, label %.body.thread17.i, label %.body.thread

bb.aw:                                            ; preds = %bb.at
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread17.i unwind label %bb.ay, !noalias !36

bb.ax:                                            ; preds = %bb.at
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !36, !nonnull !3, !noundef !3
  store ptr %i.dq, ptr %i.ed, align 8, !noalias !36
  %i.ef = load i64, ptr %i.e, align 8, !noalias !36, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36
  br label %bb.bc

bb.ay:                                            ; preds = %.body.thread17.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit.i, %bb.ba, %bb.aw
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !36
  unreachable

bb.az:                                            ; preds = %bb.bb, %bb.au
  %.sroa.03.1.i = phi i1 [ false, %bb.bb ], [ true, %bb.au ]
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = icmp eq ptr %.sroa.751.0.copyload, null
  br i1 %i.ei, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.1052.16..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit.i unwind label %bb.ay, !noalias !36

bb.bb:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !36, !nonnull !3, !noundef !3
  store ptr %i.dq, ptr %i.ej, align 8, !noalias !36
  store ptr %i.ek, ptr %i.b, align 8, !noalias !36
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i unwind label %bb.az, !noalias !36

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36
  %i.el = load i64, ptr %i.d, align 8, !noalias !36, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1143, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1253, i64 48, i1 false), !alias.scope !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36
  br label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit.i: ; preds = %bb.ba, %bb.az
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body.i unwind label %bb.ay, !noalias !36

.body.thread17.i:                                 ; preds = %bb.aw, %.body.i
  %.pn20.i = phi { ptr, i32 } [ %i.eh, %.body.i ], [ %i.ec, %bb.aw ]
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.thread unwind label %bb.ay, !noalias !36

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i, %bb.ax, %bb.av
  %.sroa.035.0 = phi i64 [ %i.eb, %bb.av ], [ %i.ef, %bb.ax ], [ %i.el, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i ]
  %.sroa.636.0 = phi ptr [ %.sroa.751.0.copyload, %bb.av ], [ null, %bb.ax ], [ %.sroa.751.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i ]
  %.sroa.10.0 = phi ptr [ %.sroa.1052.0.copyload, %bb.av ], [ %i.ee, %bb.ax ], [ %.sroa.1052.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1253)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1143, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1143)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.am, %.loopexit140
  %.sroa.18.1129 = phi i64 [ %.sroa.18.1.lcssa127, %.loopexit140 ], [ %.sroa.18.1.lcssa128, %bb.bc ], [ %.sroa.18.1.lcssa128, %bb.am ]
  %.sroa.12.1125 = phi ptr [ %.sroa.12.1.lcssa123, %.loopexit140 ], [ %.sroa.12.1.lcssa124, %bb.bc ], [ %.sroa.12.1.lcssa124, %bb.am ] ; 3 uses
  %i.em = phi i64 [ %.lcssa118, %.loopexit140 ], [ %.lcssa119, %bb.bc ], [ %.lcssa119, %bb.am ] ; 2 uses
  %.sroa.4.sroa.0.1 = phi ptr [ %.sroa.4.sroa.0.0.ph203, %.loopexit140 ], [ %.sroa.636.0, %bb.bc ], [ %.sroa.4.sroa.0.0.ph203, %bb.am ] ; 2 uses
  %.sroa.4.sroa.2.1 = phi ptr [ %.sroa.4.sroa.2.0.ph205, %.loopexit140 ], [ %.sroa.10.0, %bb.bc ], [ %.sroa.4.sroa.2.0.ph205, %bb.am ] ; 2 uses
  %.sroa.07.0 = phi i64 [ 0, %.loopexit140 ], [ 1, %bb.bc ], [ 0, %bb.am ]
  %.sroa.06.0 = phi i64 [ %i.bt, %.loopexit140 ], [ %.sroa.035.0, %bb.bc ], [ %i.dp, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.07.0, ptr %i.q, align 8
  store ptr %.sroa.4.sroa.0.1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.4.sroa.2.1, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.3, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %.sroa.12.1125, i64 noundef %i.em, i64 noundef %.sroa.06.0, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load i64, ptr %i.q, align 8, !range !44, !alias.scope !45, !noundef !3
  %6 = trunc nuw i64 %i.eo to i1
  %i.ep = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !45
  %i.eq = icmp eq ptr %i.ep, null
  %or.cond.i = select i1 %6, i1 %i.eq, i1 false
  br i1 %or.cond.i, label %bb.bf, label %.body.thread

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx)
          to label %.body.thread unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bd
  %i.er = load i64, ptr %i.n, align 8, !range !44, !noundef !3
  %i.es = trunc nuw i64 %i.er to i1
  br i1 %i.es, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.et = load i64, ptr %i.ar, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.09.0.copyload = load i64, ptr %i.q, align 8
  %i.eu = trunc nuw i64 %.sroa.09.0.copyload to i1
  br i1 %i.eu, label %bb.bk, label %._crit_edge.i.peel

bb.bi:                                            ; preds = %bb.bg
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.ev, align 8
  store i64 3, ptr %0, align 8
  %i.ew = load i64, ptr %i.q, align 8, !range !44, !alias.scope !48, !noundef !3
  %7 = trunc nuw i64 %i.ew to i1
  %i.ex = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !48
  %i.ey = icmp eq ptr %i.ex, null
  %or.cond.i28 = select i1 %7, i1 %i.ey, i1 false
  br i1 %or.cond.i28, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtB1b_6common10concurrent3arc7MiniArcINtB25_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtB1b_6future10base_cacheINtB54_9BaseCacheB31_B3D_E19do_insert_with_hash00EEEB3H_.exit31

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtB1b_6common10concurrent3arc7MiniArcINtB25_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtB1b_6future10base_cacheINtB54_9BaseCacheB31_B3D_E19do_insert_with_hash00EEEB3H_.exit31

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  br label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %bb.bh, %bb.bk
  %.sroa.08.0 = phi i64 [ 2, %bb.bk ], [ 1, %bb.bh ]
  store i64 %.sroa.08.0, ptr %4, align 8
  store i64 %i.et, ptr %.sroa.012.0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.751.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ez = load atomic i64, ptr %.sroa.12.1125 acquire, align 8, !noalias !6 ; 2 uses
  %i.fa = and i64 %i.ez, 1
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph, label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtB1b_6common10concurrent3arc7MiniArcINtB25_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtB1b_6future10base_cacheINtB54_9BaseCacheB31_B3D_E19do_insert_with_hash00EEEB3H_.exit31: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtB1b_6common10concurrent3arc7MiniArcINtB25_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtB1b_6future10base_cacheINtB54_9BaseCacheB31_B3D_E19do_insert_with_hash00EEEB3H_.exit31, %.loopexit, %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit
  ret void

bb.bm:                                            ; preds = %bb.bf, %.body.thread77
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread82.loopexit.loopexit.loopexit:        ; preds = %bb.o, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread77

.body.thread82.loopexit.loopexit.loopexit.split-lp: ; preds = %.lr.ph, %bb.e
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread77

.body.thread82.loopexit.loopexit.split-lp:        ; preds = %bb.p
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread77

.body.thread82.loopexit.split-lp:                 ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread77

.body.thread:                                     ; preds = %bb.be, %bb.bf, %bb.ar, %.body.i, %.body.thread17.i, %bb.aq, %.body.thread77
  %.pn74 = phi { ptr, i32 } [ %i.du, %bb.aq ], [ %.pn80, %.body.thread77 ], [ %i.en, %bb.be ], [ %i.en, %bb.bf ], [ %i.du, %bb.ar ], [ %i.eh, %.body.i ], [ %.pn20.i, %.body.thread17.i ]
  resume { ptr, i32 } %.pn74

.body.thread77:                                   ; preds = %.body.thread82.loopexit.loopexit.loopexit, %.body.thread82.loopexit.loopexit.loopexit.split-lp, %.body.thread82.loopexit.split-lp, %.body.thread82.loopexit.loopexit.split-lp, %bb.q, %.thread.i
  %.pn80 = phi { ptr, i32 } [ %.pn.i, %bb.q ], [ %.pn.pn4.i, %.thread.i ], [ %lpad.loopexit.split-lp, %.body.thread82.loopexit.split-lp ], [ %lpad.loopexit.split-lp87, %.body.thread82.loopexit.loopexit.split-lp ], [ %lpad.loopexit, %.body.thread82.loopexit.loopexit.loopexit ], [ %lpad.loopexit.split-lp139, %.body.thread82.loopexit.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket19InsertOrModifyStateINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1N_6string6StringEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2g_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB58_9BaseCacheB2g_B3H_E19do_insert_with_hash00EEB3L_(ptr noalias noundef align 8 dereferenceable(80) %4) #24
          to label %.body.thread unwind label %bb.bm
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3getQNCINvMsb_NtNtBc_6future10base_cacheINtB4y_5InnerB1B_B32_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1B_NCNCINvMs2_B4y_INtB4y_9BaseCacheB1B_B32_E13get_with_hashB1B_FG_RL0_B32_EbE00TINtNtB25_5entry5EntryB1B_B32_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB23_6ReadOpB1B_B32_EENtNtNtB25_4time7instant7InstantEE0EB36_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 4 uses
  %i.f = and i64 %i.e, %2                         ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load atomic i64, ptr %i.h acquire, align 8, !noalias !51 ; 3 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit

bb.b:                                             ; preds = %._crit_edge.i.peel
  store i64 %i.i, ptr %i.a, align 8
  %i.l = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %.not15.peel = icmp eq ptr %i.l, null
  br i1 %.not15.peel, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMsb_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBX_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2r_E13get_with_hashB1P_FG_RL0_B2r_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2r_EINtNtBb_6option6OptionINtNtB6e_10concurrent6ReadOpB1P_B2r_EENtNtNtB6e_4time7instant7InstantEE0INtB7_5FnMutTRINtNtB1T_4sync3ArcB1P_EEE8call_mutB2v_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  br i1 %i.m, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %.not.i39.not = icmp eq i64 %i.e, 0
  br i1 %.not.i39.not, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, label %._crit_edge.i

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

.peel.next:                                       ; preds = %bb.f
  %.not.i = icmp ult i64 %i.n, %i.e
  br i1 %.not.i, label %._crit_edge.i, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.peel.next.preheader, %.peel.next
  %.sroa.17.040 = phi i64 [ %i.n, %.peel.next ], [ 0, %.peel.next.preheader ]
  %i.n = add nuw i64 %.sroa.17.040, 1             ; 3 uses
  %i.o = add i64 %i.n, %i.f
  %i.p = and i64 %i.o, %i.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 8, !noalias !51 ; 3 uses
  %i.s = and i64 %i.r, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit

_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit: ; preds = %.peel.next, %bb.e, %._crit_edge.i, %.peel.next.preheader, %._crit_edge.i.peel, %bb.b, %.loopexit
  %.sroa.6.0 = phi i64 [ %.sroa.55.0.copyload., %.loopexit ], [ 0, %._crit_edge.i.peel ], [ 0, %bb.b ], [ 0, %.peel.next.preheader ], [ 0, %._crit_edge.i ], [ 0, %bb.e ], [ 0, %.peel.next ]
  %.sroa.0.0 = phi i64 [ 0, %.loopexit ], [ 1, %._crit_edge.i.peel ], [ 0, %bb.b ], [ 0, %.peel.next.preheader ], [ 0, %.peel.next ], [ 0, %bb.e ], [ 1, %._crit_edge.i ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.v

bb.e:                                             ; preds = %._crit_edge.i
  store i64 %i.r, ptr %i.a, align 8
  %i.w = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %.not15 = icmp eq ptr %i.w, null
  br i1 %.not15, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMsb_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBX_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2r_E13get_with_hashB1P_FG_RL0_B2r_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2r_EINtNtBb_6option6OptionINtNtB6e_10concurrent6ReadOpB1P_B2r_EENtNtNtB6e_4time7instant7InstantEE0INtB7_5FnMutTRINtNtB1T_4sync3ArcB1P_EEE8call_mutB2v_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
  br i1 %i.x, label %.loopexit, label %.peel.next, !llvm.loop !55

.loopexit:                                        ; preds = %bb.f, %bb.c
  %.lcssa = phi i64 [ %i.i, %bb.c ], [ %i.r, %bb.f ] ; 2 uses
  %i.y = and i64 %.lcssa, 2
  %i.z = icmp eq i64 %i.y, 0
  %.sroa.55.0.copyload. = select i1 %i.z, i64 %.lcssa, i64 0
  br label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3getQNCINvMsb_NtNtBc_6future10base_cacheINtB4y_5InnerB1B_B32_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1B_NCNCINvMs2_B4y_INtB4y_9BaseCacheB1B_B32_E13get_with_hashB1B_QFG_RL0_B32_EbE00TINtNtB25_5entry5EntryB1B_B32_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB23_6ReadOpB1B_B32_EENtNtNtB25_4time7instant7InstantEE0EB36_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 4 uses
  %i.f = and i64 %i.e, %2                         ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load atomic i64, ptr %i.h acquire, align 8, !noalias !56 ; 3 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit

bb.b:                                             ; preds = %._crit_edge.i.peel
  store i64 %i.i, ptr %i.a, align 8
  %i.l = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %.not15.peel = icmp eq ptr %i.l, null
  br i1 %.not15.peel, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMsb_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBX_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2r_E13get_with_hashB1P_QFG_RL0_B2r_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2r_EINtNtBb_6option6OptionINtNtB6f_10concurrent6ReadOpB1P_B2r_EENtNtNtB6f_4time7instant7InstantEE0INtB7_5FnMutTRINtNtB1T_4sync3ArcB1P_EEE8call_mutB2v_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  br i1 %i.m, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %.not.i39.not = icmp eq i64 %i.e, 0
  br i1 %.not.i39.not, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, label %._crit_edge.i

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

.peel.next:                                       ; preds = %bb.f
  %.not.i = icmp ult i64 %i.n, %i.e
  br i1 %.not.i, label %._crit_edge.i, label %_RNvXs2_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_5ProbeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1V_10ValueEntryB1t_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB2Y_.exit, !llvm.loop !60

._crit_edge.i:                                    ; preds = %.peel.next.preheader, %.peel.next
  %.sroa.17.040 = phi i64 [ %i.n, %.peel.next ], [ 0, %.peel.next.preheader ]
  %i.n = add nuw i64 %.sroa.17.040, 1             ; 3 uses
  %i.o = add i64 %i.n, %i.f
  %i.p = and i64 %i.o, %i.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 8, !noalias !56 ; 3 uses
  %i.s = and i64 %i.r, 1
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_:bb.a
bb.aa:                                            ; preds = %bb.x
  %i.bw = load i64, ptr %i.bj, align 8, !noundef !3 ; 2 uses
  %i.bx = icmp ult i64 %.sroa.412.1150, %i.bw
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bj, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.by = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.412.1150 ; 2 uses
  %i.ca = and i64 %.sroa.6.1152, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1150, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cd, %bb.af ], [ %.sroa.6.1152, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bz, i64 noundef %.sroa.04.0149, i64 noundef %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit

bb.ae:                                            ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.j, align 8, !range !44, !noundef !3
  %.not36 = icmp eq i64 %i.cc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.ce = and i64 %i.cd, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %.noexc62, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an
  %.sroa.412.2.ph = phi i64 [ %.sroa.412.1150, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ], [ %.sroa.412.1150, %bb.an ], [ %.sroa.412.1150, %._crit_edge.i.i ], [ %.sroa.412.1150, %bb.aq ], [ %.sroa.412.1150, %bb.ar ], [ %.sroa.8.1.i, %.noexc62 ]
  %.sroa.010.1.ph = phi i64 [ 0, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 1, %.noexc62 ]
  %.sroa.6.2.ph = phi i64 [ %.sroa.6.1152, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ], [ %.sroa.6.1152, %bb.an ], [ %.sroa.6.1152, %._crit_edge.i.i ], [ %.sroa.6.1152, %bb.aq ], [ %.sroa.6.1152, %bb.ar ], [ %i.bs, %.noexc62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.ae, %.loopexit.sink.split, %bb.ac, %bb.ag
  %.sroa.412.2 = phi i64 [ %.sroa.412.1150, %bb.ag ], [ %.sroa.412.1150, %bb.ac ], [ %.sroa.412.2.ph, %.loopexit.sink.split ], [ %.sroa.412.1150, %bb.ae ], [ %.sroa.412.1150, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.010.1.ph, %.loopexit.sink.split ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.sroa.6.1152, %bb.ag ], [ %.sroa.6.1152, %bb.ac ], [ %.sroa.6.2.ph, %.loopexit.sink.split ], [ %.sroa.6.1152, %bb.ae ], [ %.sroa.6.1152, %bb.af ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.av unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1K_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bs, ptr %i.c, align 8, !noalias !206
  %i.ch = icmp ult i64 %i.bo, 8
  br i1 %i.ch, label %bb.aj, label %bb.ak, !prof !27

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE5derefB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc59:                                         ; preds = %bb.ak
  %i.cj = load i64, ptr %i.bj, align 8, !noalias !206, !noundef !3 ; 2 uses
  %i.ck = add i64 %i.cj, -1                       ; 3 uses
  %i.cl = and i64 %i.ck, %i.cg                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.cj, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.cm = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !206, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = icmp eq i64 %i.bp, 0                    ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %i.cn, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cl, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ck
  br i1 %.not.i.i, label %bb.ao, label %.loopexit.sink.split

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cs, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.cv, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cu, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cp = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !209 ; 7 uses
  %i.cq = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ap, label %.loopexit.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.cs = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ct = add i64 %i.cs, %i.cl
  %i.cu = and i64 %i.ct, %i.ck                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cp, ptr %i.b, align 8, !noalias !206
  %i.cw = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit ; 2 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cw, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cx = icmp eq i64 %i.cp, %i.bs
  br i1 %i.cx, label %.loopexit.sink.split, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cp, 7
  %or.cond.old.i = or i1 %i.co, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit.sink.split

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cw, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.val22.i = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cy = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.cy, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i = load i64, ptr %i.cz, align 8, !noundef !3 ; 2 uses
  %i.da = getelementptr i8, ptr %.val22.i, i64 32
  %.val4.i.i.i = load i64, ptr %i.da, align 8, !noundef !3
  %i.db = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.db, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.at
  %i.dc = getelementptr i8, ptr %.val22.i, i64 24
  %.val3.i.i.i = load ptr, ptr %i.dc, align 8, !nonnull !3, !noundef !3
  %i.dd = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not46.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %bb.at ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ true, %.noexc62 ]
  br label %.backedge.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as
  %i.de = and i64 %i.cp, 4
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp ugt i64 %i.cp, 7
  %or.cond.i = or i1 %i.co, %i.dg
  %or.cond47.i = and i1 %i.df, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit.sink.split

bb.au:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !206
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cp, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.au
  %i.dh = load i64, ptr %i.a, align 8, !range !44, !noalias !206, !noundef !3
  %i.di = icmp eq i64 %i.dh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !206
  br i1 %i.di, label %.loopexit.sink.split, label %.backedge.i.backedge

bb.av:                                            ; preds = %.loopexit
  %i.dj = load i64, ptr %i.i, align 8, !range !44, !noundef !3
  %i.dk = icmp eq i64 %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dl = icmp eq i64 %i.bq, 0
  %i.dm = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dl, %i.dm
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dn = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dn, ptr %i.k, align 8
  %i.do = and i64 %i.dn, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2i_6string6StringEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtB3d_10ValueEntryB2L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uEB4h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0155, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0156, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %i.dq = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dq, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ds = trunc nuw i8 %i.aa to i1
  br i1 %i.ds, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dt = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.du = and i64 %i.dt, 9223372036854775807
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !192

.noexc65:                                         ; preds = %bb.ba
  %i.dw = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dr monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dx = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dy = icmp eq i32 %i.dx, 2
  br i1 %i.dy, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.em, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ea = trunc nuw i8 %i.aa to i1
  br i1 %i.ea, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.eb = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ec = and i64 %i.eb, 9223372036854775807
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !192

bb.be:                                            ; preds = %bb.bd
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ee, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.dz monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.ef = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !27

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %4
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ei = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ej)
          to label %bb.bl unwind label %4

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ek = load ptr, ptr %i.u, align 8
  store ptr %i.ek, ptr %i.m, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.el, align 8, !range !191, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.en = load i64, ptr %i.n, align 8, !range !44, !alias.scope !213, !noundef !3
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.ep, align 8, !alias.scope !213, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.eq, align 8, !range !193, !alias.scope !213, !noundef !3
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.es = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.eo, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.et = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !213
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !192

bb.bo:                                            ; preds = %bb.bn
  %i.ew = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ew, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !213
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ex = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !213
  %i.ey = icmp eq i32 %i.ex, 2
  br i1 %i.ey, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !213
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.fc = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !213
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fd = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !213
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

4:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bs, %bb.bo, %bb.bi
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !191, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !192

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !3, !align !5, !noundef !3 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !193, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216
  store i64 0, ptr %i.h, align 8, !noalias !216
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !216
  store i64 %i.ag, ptr %i.g, align 8, !noalias !216
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  %i.ai = load i64, ptr %i.h, align 8, !range !44, !alias.scope !219, !noalias !216, !noundef !3
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !216, !noundef !3
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !44, !noalias !216, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !216
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !216
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !216, !noundef !3
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE11with_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !222
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !222 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !27

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1F_6string6StringEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !216
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !216
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_5OwnedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !44, !noalias !216, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !216, !noundef !3
  store i64 1, ptr %i.h, align 8, !noalias !216
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !216
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !216, !noundef !3
  store i64 %i.ba, ptr %i.e, align 8, !noalias !216
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !216
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !44, !alias.scope !225, !noalias !216, !noundef !3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit:                          ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit:        ; preds = %bb.au, %bb.ap
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.y, %bb.ah, %.loopexit
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ay
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.k
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj, %bb.g, %bb.r, %bb.ad, %bb.z, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.aa:                                            ; preds = %bb.x
  %i.bw = load i64, ptr %i.bj, align 8, !noundef !3 ; 2 uses
  %i.bx = icmp ult i64 %.sroa.412.1150, %i.bw
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bj, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.by = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.412.1150 ; 2 uses
  %i.ca = and i64 %.sroa.6.1152, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1150, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cd, %bb.af ], [ %.sroa.6.1152, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bz, i64 noundef %.sroa.04.0149, i64 noundef %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit

bb.ae:                                            ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.j, align 8, !range !44, !noundef !3
  %.not36 = icmp eq i64 %i.cc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.ce = and i64 %i.cd, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %.noexc62, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an
  %.sroa.412.2.ph = phi i64 [ %.sroa.412.1150, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ], [ %.sroa.412.1150, %bb.an ], [ %.sroa.412.1150, %._crit_edge.i.i ], [ %.sroa.412.1150, %bb.aq ], [ %.sroa.412.1150, %bb.ar ], [ %.sroa.8.1.i, %.noexc62 ]
  %.sroa.010.1.ph = phi i64 [ 0, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 1, %.noexc62 ]
  %.sroa.6.2.ph = phi i64 [ %.sroa.6.1152, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ], [ %.sroa.6.1152, %bb.an ], [ %.sroa.6.1152, %._crit_edge.i.i ], [ %.sroa.6.1152, %bb.aq ], [ %.sroa.6.1152, %bb.ar ], [ %i.bs, %.noexc62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.ae, %.loopexit.sink.split, %bb.ac, %bb.ag
  %.sroa.412.2 = phi i64 [ %.sroa.412.1150, %bb.ag ], [ %.sroa.412.1150, %bb.ac ], [ %.sroa.412.2.ph, %.loopexit.sink.split ], [ %.sroa.412.1150, %bb.ae ], [ %.sroa.412.1150, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.010.1.ph, %.loopexit.sink.split ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.sroa.6.1152, %bb.ag ], [ %.sroa.6.1152, %bb.ac ], [ %.sroa.6.2.ph, %.loopexit.sink.split ], [ %.sroa.6.1152, %bb.ae ], [ %.sroa.6.1152, %bb.af ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.av unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1K_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bs, ptr %i.c, align 8, !noalias !228
  %i.ch = icmp ult i64 %i.bo, 8
  br i1 %i.ch, label %bb.aj, label %bb.ak, !prof !27

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc59:                                         ; preds = %bb.ak
  %i.cj = load i64, ptr %i.bj, align 8, !noalias !228, !noundef !3 ; 2 uses
  %i.ck = add i64 %i.cj, -1                       ; 3 uses
  %i.cl = and i64 %i.ck, %i.cg                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.cj, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.cm = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !228, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = icmp eq i64 %i.bp, 0                    ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %i.cn, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cl, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ck
  br i1 %.not.i.i, label %bb.ao, label %.loopexit.sink.split

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cs, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.cv, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cu, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cp = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !231 ; 7 uses
  %i.cq = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ap, label %.loopexit.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.cs = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ct = add i64 %i.cs, %i.cl
  %i.cu = and i64 %i.ct, %i.ck                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cp, ptr %i.b, align 8, !noalias !228
  %i.cw = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit ; 2 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cw, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cx = icmp eq i64 %i.cp, %i.bs
  br i1 %i.cx, label %.loopexit.sink.split, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cp, 7
  %or.cond.old.i = or i1 %i.co, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit.sink.split

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cw, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.val22.i = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cy = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.cy, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i = load i64, ptr %i.cz, align 8, !noundef !3 ; 2 uses
  %i.da = getelementptr i8, ptr %.val22.i, i64 32
  %.val4.i.i.i = load i64, ptr %i.da, align 8, !noundef !3
  %i.db = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.db, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.at
  %i.dc = getelementptr i8, ptr %.val22.i, i64 24
  %.val3.i.i.i = load ptr, ptr %i.dc, align 8, !nonnull !3, !noundef !3
  %i.dd = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not46.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %bb.at ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ true, %.noexc62 ]
  br label %.backedge.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as
  %i.de = and i64 %i.cp, 4
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp ugt i64 %i.cp, 7
  %or.cond.i = or i1 %i.co, %i.dg
  %or.cond47.i = and i1 %i.df, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit.sink.split

bb.au:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cp, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.au
  %i.dh = load i64, ptr %i.a, align 8, !range !44, !noalias !228, !noundef !3
  %i.di = icmp eq i64 %i.dh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  br i1 %i.di, label %.loopexit.sink.split, label %.backedge.i.backedge

bb.av:                                            ; preds = %.loopexit
  %i.dj = load i64, ptr %i.i, align 8, !range !44, !noundef !3
  %i.dk = icmp eq i64 %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dl = icmp eq i64 %i.bq, 0
  %i.dm = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dl, %i.dm
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dn = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dn, ptr %i.k, align 8
  %i.do = and i64 %i.dn, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2i_6string6StringEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0155, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0156, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %i.dq = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dq, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ds = trunc nuw i8 %i.aa to i1
  br i1 %i.ds, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dt = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.du = and i64 %i.dt, 9223372036854775807
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !192

.noexc65:                                         ; preds = %bb.ba
  %i.dw = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dr monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dx = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dy = icmp eq i32 %i.dx, 2
  br i1 %i.dy, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.em, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ea = trunc nuw i8 %i.aa to i1
  br i1 %i.ea, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.eb = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ec = and i64 %i.eb, 9223372036854775807
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !192

bb.be:                                            ; preds = %bb.bd
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ee, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.dz monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.ef = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !27

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %4
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ei = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ej)
          to label %bb.bl unwind label %4

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ek = load ptr, ptr %i.u, align 8
  store ptr %i.ek, ptr %i.m, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.el, align 8, !range !191, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.en = load i64, ptr %i.n, align 8, !range !44, !alias.scope !235, !noundef !3
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.ep, align 8, !alias.scope !235, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.eq, align 8, !range !193, !alias.scope !235, !noundef !3
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.es = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.eo, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.et = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !235
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !192

bb.bo:                                            ; preds = %bb.bn
  %i.ew = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ew, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !235
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ex = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !235
  %i.ey = icmp eq i32 %i.ex, 2
  br i1 %i.ey, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !235
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.fc = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !235
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fd = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !235
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

4:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bs, %bb.bo, %bb.bi
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !191, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !192

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !3, !align !5, !noundef !3 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !193, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !238
  store i64 0, ptr %i.h, align 8, !noalias !238
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !238
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !238
  store i64 %i.ag, ptr %i.g, align 8, !noalias !238
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !238
  %i.ai = load i64, ptr %i.h, align 8, !range !44, !alias.scope !241, !noalias !238, !noundef !3
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !238, !noundef !3
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !44, !noalias !238, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !238
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !238
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !238, !noundef !3
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateB11_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE11with_lengthB2p_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !244
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !244 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !27

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBP_6future11invalidator9PredicateB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2Y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !238
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !238
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1R_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !44, !noalias !238, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !238, !noundef !3
  store i64 1, ptr %i.h, align 8, !noalias !238
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !238
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !238
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !238, !noundef !3
  store i64 %i.ba, ptr %i.e, align 8, !noalias !238
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE5derefB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !238
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !44, !alias.scope !247, !noalias !238, !noundef !3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit:                          ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit:        ; preds = %bb.au, %bb.ap
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.y, %bb.ah, %.loopexit
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ay
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.k
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj, %bb.g, %bb.r, %bb.ad, %bb.z, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_:bb.a
          to label %bb.ag unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.bw = load i64, ptr %i.bj, align 8, !noundef !3 ; 2 uses
  %i.bx = icmp ult i64 %.sroa.412.1150, %i.bw
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bj, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.by = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.412.1150 ; 2 uses
  %i.ca = and i64 %.sroa.6.1152, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1150, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cd, %bb.af ], [ %.sroa.6.1152, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bz, i64 noundef %.sroa.04.0149, i64 noundef %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit

bb.ae:                                            ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.j, align 8, !range !44, !noundef !3
  %.not36 = icmp eq i64 %i.cc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.ce = and i64 %i.cd, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %.noexc62, %bb.at, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an
  %.sroa.412.2.ph = phi i64 [ %.sroa.412.1150, %bb.at ], [ %.sroa.412.1150, %bb.an ], [ %.sroa.412.1150, %._crit_edge.i.i ], [ %.sroa.412.1150, %bb.aq ], [ %.sroa.412.1150, %bb.ar ], [ %.sroa.8.1.i, %.noexc62 ]
  %.sroa.010.1.ph = phi i64 [ 0, %bb.at ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 1, %.noexc62 ]
  %.sroa.6.2.ph = phi i64 [ %.sroa.6.1152, %bb.at ], [ %.sroa.6.1152, %bb.an ], [ %.sroa.6.1152, %._crit_edge.i.i ], [ %.sroa.6.1152, %bb.aq ], [ %.sroa.6.1152, %bb.ar ], [ %i.bs, %.noexc62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.ae, %.loopexit.sink.split, %bb.ac, %bb.ag
  %.sroa.412.2 = phi i64 [ %.sroa.412.1150, %bb.ag ], [ %.sroa.412.1150, %bb.ac ], [ %.sroa.412.2.ph, %.loopexit.sink.split ], [ %.sroa.412.1150, %bb.ae ], [ %.sroa.412.1150, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.010.1.ph, %.loopexit.sink.split ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.sroa.6.1152, %bb.ag ], [ %.sroa.6.1152, %bb.ac ], [ %.sroa.6.2.ph, %.loopexit.sink.split ], [ %.sroa.6.1152, %bb.ae ], [ %.sroa.6.1152, %bb.af ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.av unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bs, ptr %i.c, align 8, !noalias !250
  %i.ch = icmp ult i64 %i.bo, 8
  br i1 %i.ch, label %bb.aj, label %bb.ak, !prof !27

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE5derefB39_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc59:                                         ; preds = %bb.ak
  %i.cj = load i64, ptr %i.bj, align 8, !noalias !250, !noundef !3 ; 2 uses
  %i.ck = add i64 %i.cj, -1                       ; 3 uses
  %i.cl = and i64 %i.ck, %i.cg                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.cj, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.cm = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !250, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.ci, i64 16
  %i.cp = getelementptr i8, ptr %i.ci, i64 8
  %i.cq = icmp eq i64 %i.bp, 0                    ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %i.cn, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cl, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ck
  br i1 %.not.i.i, label %bb.ao, label %.loopexit.sink.split

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cu, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.cx, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cr = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !253 ; 7 uses
  %i.cs = and i64 %i.cr, 1
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.ap, label %.loopexit.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.cu = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.cv = add i64 %i.cu, %i.cl
  %i.cw = and i64 %i.cv, %i.ck                    ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cr, ptr %i.b, align 8, !noalias !250
  %i.cy = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB39_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit ; 3 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cy, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cz = icmp eq i64 %i.cr, %i.bs
  br i1 %i.cz, label %.loopexit.sink.split, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cr, 7
  %or.cond.old.i = or i1 %i.cq, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  %.val22.i = load i64, ptr %i.da, align 8, !noundef !3 ; 2 uses
  %.val24.i = load i64, ptr %i.co, align 8, !noundef !3
  %i.db = icmp eq i64 %.val22.i, %.val24.i
  br i1 %i.db, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.as
  %.val23.i = load ptr, ptr %i.cp, align 8, !nonnull !3, !noundef !3
  %i.dc = getelementptr i8, ptr %i.cy, i64 8
  %.val.i = load ptr, ptr %i.dc, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val23.i, i64 %.val22.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not46.i, label %bb.at, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %bb.as ], [ false, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ true, %.noexc62 ]
  br label %.backedge.i

bb.at:                                            ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dd = and i64 %i.cr, 4
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = icmp ugt i64 %i.cr, 7
  %or.cond.i = or i1 %i.cq, %i.df
  %or.cond47.i = and i1 %i.de, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cr, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.au
  %i.dg = load i64, ptr %i.a, align 8, !range !44, !noalias !250, !noundef !3
  %i.dh = icmp eq i64 %i.dg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !250
  br i1 %i.dh, label %.loopexit.sink.split, label %.backedge.i.backedge

bb.av:                                            ; preds = %.loopexit
  %i.di = load i64, ptr %i.i, align 8, !range !44, !noundef !3
  %i.dj = icmp eq i64 %i.di, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dk = icmp eq i64 %i.bq, 0
  %i.dl = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dk, %i.dl
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dm = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dm, ptr %i.k, align 8
  %i.dn = and i64 %i.dm, 1
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1j_6future11invalidator9PredicateB2d_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uEB3C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0155, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0156, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %i.dp = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dp, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dr = trunc nuw i8 %i.aa to i1
  br i1 %i.dr, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ds = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dt = and i64 %i.ds, 9223372036854775807
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !192

.noexc65:                                         ; preds = %bb.ba
  %i.dv = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dq monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dw = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dx = icmp eq i32 %i.dw, 2
  br i1 %i.dx, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.el, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dz = trunc nuw i8 %i.aa to i1
  br i1 %i.dz, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.ea = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.eb = and i64 %i.ea, 9223372036854775807
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !192

bb.be:                                            ; preds = %bb.bd
  %i.ed = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.dy monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.ee = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ef = icmp eq i32 %i.ee, 2
  br i1 %i.ef, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !27

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %4
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.eh = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ei)
          to label %bb.bl unwind label %4

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ej = load ptr, ptr %i.u, align 8
  store ptr %i.ej, ptr %i.m, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.el = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.ek, align 8, !range !191, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.em = load i64, ptr %i.n, align 8, !range !44, !alias.scope !257, !noundef !3
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.eo, align 8, !alias.scope !257, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.ep, align 8, !range !193, !alias.scope !257, !noundef !3
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.er = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.en, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.er, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.es = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !257
  %i.et = and i64 %i.es, 9223372036854775807
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !192

bb.bo:                                            ; preds = %bb.bn
  %i.ev = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.eq monotonic, align 4, !noalias !257
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ew = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !257
  %i.ex = icmp eq i32 %i.ew, 2
  br i1 %i.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.er, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !257
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.fb = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.eq monotonic, align 4, !noalias !257
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fc = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !257
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

4:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bs, %bb.bo, %bb.bi
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !191, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bj, label %bb.bk, !prof !192

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !3, !align !5, !noundef !3 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !193, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !260
  store i64 0, ptr %i.h, align 8, !noalias !260
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !260
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !260
  store i64 %i.ag, ptr %i.g, align 8, !noalias !260
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !260
  %i.ai = load i64, ptr %i.h, align 8, !range !44, !alias.scope !263, !noalias !260, !noundef !3
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !260, !noundef !3
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !44, !noalias !260, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !260
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !260
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !260, !noundef !3
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE11with_lengthB4N_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !266
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !266 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !27

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1G_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB56_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !260
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !260
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1X_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB5F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !44, !noalias !260, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !260, !noundef !3
  store i64 1, ptr %i.h, align 8, !noalias !260
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !260
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !260
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !260, !noundef !3
  store i64 %i.ba, ptr %i.e, align 8, !noalias !260
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE5derefB5E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !260
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !44, !alias.scope !269, !noalias !260, !noundef !3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit:                          ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit:        ; preds = %bb.av, %bb.ap
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.y, %bb.ah, %.loopexit
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.az
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.k
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj, %bb.g, %bb.r, %bb.ad, %bb.z, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_:bb.a
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.412.1150 ; 2 uses
  %i.ca = and i64 %.sroa.6.1152, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1150, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cd, %bb.af ], [ %.sroa.6.1152, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bz, i64 noundef %.sroa.04.0149, i64 noundef %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit

bb.ae:                                            ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.j, align 8, !range !44, !noundef !3
  %.not36 = icmp eq i64 %i.cc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.ce = and i64 %i.cd, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %.noexc62, %bb.au, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an
  %.sroa.412.2.ph = phi i64 [ %.sroa.412.1150, %bb.au ], [ %.sroa.412.1150, %bb.an ], [ %.sroa.412.1150, %._crit_edge.i.i ], [ %.sroa.412.1150, %bb.aq ], [ %.sroa.412.1150, %bb.ar ], [ %.sroa.8.1.i, %.noexc62 ]
  %.sroa.010.1.ph = phi i64 [ 0, %bb.au ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 1, %.noexc62 ]
  %.sroa.6.2.ph = phi i64 [ %.sroa.6.1152, %bb.au ], [ %.sroa.6.1152, %bb.an ], [ %.sroa.6.1152, %._crit_edge.i.i ], [ %.sroa.6.1152, %bb.aq ], [ %.sroa.6.1152, %bb.ar ], [ %i.bs, %.noexc62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.ae, %.loopexit.sink.split, %bb.ac, %bb.ag
  %.sroa.412.2 = phi i64 [ %.sroa.412.1150, %bb.ag ], [ %.sroa.412.1150, %bb.ac ], [ %.sroa.412.2.ph, %.loopexit.sink.split ], [ %.sroa.412.1150, %bb.ae ], [ %.sroa.412.1150, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.010.1.ph, %.loopexit.sink.split ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.sroa.6.1152, %bb.ag ], [ %.sroa.6.1152, %bb.ac ], [ %.sroa.6.2.ph, %.loopexit.sink.split ], [ %.sroa.6.1152, %bb.ae ], [ %.sroa.6.1152, %bb.af ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.aw unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1L_6string6StringENtNtBU_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bs, ptr %i.c, align 8, !noalias !272
  %i.ch = icmp ult i64 %i.bo, 8
  br i1 %i.ch, label %bb.aj, label %bb.ak, !prof !27

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE5derefB5y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc59:                                         ; preds = %bb.ak
  %i.cj = load i64, ptr %i.bj, align 8, !noalias !272, !noundef !3 ; 2 uses
  %i.ck = add i64 %i.cj, -1                       ; 3 uses
  %i.cl = and i64 %i.ck, %i.cg                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.cj, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.cm = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !272, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.ci, i64 8
  %i.cp = icmp eq i64 %i.bp, 0                    ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %i.cn, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cl, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ck
  br i1 %.not.i.i, label %bb.ao, label %.loopexit.sink.split

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.ct, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.cw, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cv, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cq = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !275 ; 7 uses
  %i.cr = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.ap, label %.loopexit.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.ct = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.cu = add i64 %i.ct, %i.cl
  %i.cv = and i64 %i.cu, %i.ck                    ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cv
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cq, ptr %i.b, align 8, !noalias !272
  %i.cx = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit ; 3 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cx, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cy = icmp eq i64 %i.cq, %i.bs
  br i1 %i.cy, label %.loopexit.sink.split, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cq, 7
  %or.cond.old.i = or i1 %i.cp, %.old.i
  br i1 %or.cond.old.i, label %bb.av, label %.loopexit.sink.split

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  %.val22.i = load i128, ptr %i.cz, align 8       ; 2 uses
  %.val23.i = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.val24.i = load i128, ptr %i.co, align 8       ; 2 uses
  %i.da = icmp eq ptr %.val.i, %.val23.i
  br i1 %i.da, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i.i = load i64, ptr %i.db, align 8, !noundef !3 ; 2 uses
  %i.dc = getelementptr i8, ptr %.val23.i, i64 32
  %.val4.i.i.i.i = load i64, ptr %i.dc, align 8, !noundef !3
  %i.dd = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.dd, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.at
  %i.de = getelementptr i8, ptr %.val23.i, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.de, align 8, !nonnull !3, !noundef !3
  %i.df = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i)
  %.not.i25.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i, 0
  %i.dg = icmp ne i128 %.val22.i, %.val24.i
  %or.cond47.i = select i1 %.not.i25.i, i1 true, i1 %i.dg
  br i1 %or.cond47.i, label %.backedge.i.backedge, label %bb.au

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.as
  %.old.not.i = icmp eq i128 %.val22.i, %.val24.i
  br i1 %.old.not.i, label %bb.au, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %bb.at ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ true, %.noexc62 ]
  br label %.backedge.i

bb.au:                                            ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.dh = and i64 %i.cq, 4
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = icmp ugt i64 %i.cq, 7
  %or.cond.i = or i1 %i.cp, %i.dj
  %or.cond48.i = and i1 %i.di, %or.cond.i
  br i1 %or.cond48.i, label %bb.av, label %.loopexit.sink.split

bb.av:                                            ; preds = %bb.au, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cq, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.av
  %i.dk = load i64, ptr %i.a, align 8, !range !44, !noalias !272, !noundef !3
  %i.dl = icmp eq i64 %i.dk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br i1 %i.dl, label %.loopexit.sink.split, label %.backedge.i.backedge

bb.aw:                                            ; preds = %.loopexit
  %i.dm = load i64, ptr %i.i, align 8, !range !44, !noundef !3
  %i.dn = icmp eq i64 %i.dm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.do = icmp eq i64 %i.bq, 0
  %i.dp = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.do, %i.dp
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.dq = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dq, ptr %i.k, align 8
  %i.dr = and i64 %i.dq, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit

bb.az:                                            ; preds = %bb.ax
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2j_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uEB61_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit: ; preds = %bb.ay, %bb.w, %bb.az, %bb.ax
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ax ], [ %.sroa.412.2, %bb.az ], [ %.sroa.412.0155, %bb.w ], [ %.sroa.412.2, %bb.ay ]
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ax ], [ %.sroa.6.2, %bb.az ], [ %.sroa.6.0156, %bb.w ], [ %.sroa.6.2, %bb.ay ]
  %i.dt = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dt, label %._crit_edge, label %bb.w

bb.ba:                                            ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dv = trunc nuw i8 %i.aa to i1
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dw = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dx = and i64 %i.dw, 9223372036854775807
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !192

.noexc65:                                         ; preds = %bb.bb
  %i.dz = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dz, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.du monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bc, %.noexc65, %bb.bb, %bb.ba
  %i.ea = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.bd:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bd, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bd ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bl, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bh, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.ep, %bb.bl ], [ %eh.lpad-body82, %bb.bh ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ed = trunc nuw i8 %i.aa to i1
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be

bb.be:                                            ; preds = %.body.thread
  %i.ee = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ef = and i64 %i.ee, 9223372036854775807
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf, !prof !192

bb.bf:                                            ; preds = %bb.be
  %i.eh = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bi

.noexc68:                                         ; preds = %bb.bf
  br i1 %i.eh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bg

bb.bg:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.ec monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bg, %.noexc68, %bb.be, %.body.thread
  %i.ei = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ej = icmp eq i32 %i.ei, 2
  br i1 %i.ej, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !27

bb.bh:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bl, %4
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.el = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.em)
          to label %bb.bm unwind label %4

bb.bk:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.en = load ptr, ptr %i.u, align 8
  store ptr %i.en, ptr %i.m, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.eo, align 8, !range !191, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.eq = load i64, ptr %i.n, align 8, !range !44, !alias.scope !279, !noundef !3
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.es, align 8, !alias.scope !279, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.et, align 8, !range !193, !alias.scope !279, !noundef !3
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.ev = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.er, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ew = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !279
  %i.ex = and i64 %i.ew, 9223372036854775807
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp, !prof !192

bb.bp:                                            ; preds = %bb.bo
  %i.ez = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bp
  br i1 %i.ez, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.eu monotonic, align 4, !noalias !279
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bq, %.noexc72, %bb.bo, %bb.bn
  %i.fa = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !279
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.br:                                            ; preds = %bb.bm
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fc = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !279
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt, !prof !192

bb.bt:                                            ; preds = %bb.bs
  %i.ff = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bt
  br i1 %i.ff, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.eu monotonic, align 4, !noalias !279
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bu, %.noexc73, %bb.bs, %bb.br
  %i.fg = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !279
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

4:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bt, %bb.bp, %bb.bj
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.f, ptr %i.h, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = invoke noundef i64 @_RINvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %1)
          to label %_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.j

_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  invoke void @_RNvXs0_NvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !282, !nonnull !3, !align !4, !noundef !3
  %.val3.i = load i8, ptr %i.h, align 8, !range !193, !alias.scope !282, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val2.i, i8 %.val3.i) #24
          to label %common.resume unwind label %bb.i

bb.d:                                             ; preds = %_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !282, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.val1.i = load i8, ptr %i.h, align 8, !range !193, !alias.scope !282, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.n = trunc nuw i8 %.val1.i to i1
  br i1 %i.n, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !282
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.r, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = atomicrmw xchg ptr %.val.i, i32 0 release, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.h:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.j

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtBJ_5InneruEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NvCseKAYRfgxGTE_14event_listener1__INtB7_13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !291, !nonnull !3, !noundef !3
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !291
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !298, !nonnull !3, !noundef !3
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !298
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) #24
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.d, %bb.e
  %i.k = load i64, ptr %0, align 8, !range !44, !noundef !3
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.n = load i8, ptr %i.m, align 8, !range !317, !alias.scope !318, !noundef !3
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !322, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !322, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !322, !nonnull !3, !noundef !3
  tail call void %i.t(ptr noundef %.val1.i.i.i.i.i.i.i.i.i), !noalias !322, !inline_history !323
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !333, !nonnull !3, !noundef !3
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !333
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, %bb.g, %bb.i, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
end_hunk_4
