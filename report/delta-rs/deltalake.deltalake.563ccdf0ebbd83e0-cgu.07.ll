inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable12compact_logs0s_0EB1n_:bb.a
  br i1 %.not.i128.i.i.i.i.i, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2205
  store i8 1, ptr %i.ei, align 2, !noalias !2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8278.i.i.i.i.i, i64 40, i1 false), !noalias !2205
  %i.mm = load ptr, ptr %i.dp, align 8, !noalias !2205, !nonnull !3, !noundef !3
  %i.mn = load ptr, ptr %i.dq, align 8, !noalias !2205, !nonnull !3, !align !39, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.w, ptr noundef nonnull align 1 dereferenceable(17) %i.dr, i64 17, i1 false), !noalias !2205
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 120
  %i.mp = load ptr, ptr %i.mo, align 8, !invariant.load !3, !noalias !2209, !nonnull !3
  %i.mq = invoke { ptr, ptr } %i.mp(ptr noundef nonnull %i.mm, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.w)
          to label %bb.em unwind label %bb.el, !noalias !2209 ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2205
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140.i.i.i.i.i

bb.em:                                            ; preds = %bb.ek
  %i.ms = extractvalue { ptr, ptr } %i.mq, 0
  %i.mt = extractvalue { ptr, ptr } %i.mq, 1
  store ptr %i.ms, ptr %i.ek, align 8, !noalias !2205
  store ptr %i.mt, ptr %i.el, align 8, !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2205
  %i.mu = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_13put_multipart(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg)
          to label %bb.eo unwind label %bb.en, !noalias !2209 ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i.i.i.i.i

bb.eo:                                            ; preds = %bb.em
  %i.mw = extractvalue { ptr, ptr } %i.mu, 0
  %i.mx = extractvalue { ptr, ptr } %i.mu, 1
  store ptr %i.mw, ptr %i.ec, align 8, !noalias !2205
  store ptr %i.mx, ptr %i.em, align 8, !noalias !2205
  br label %bb.ez

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140.i.i.i.i.i: ; preds = %bb.kb, %bb.fo, %.body192.i.i.i.i.i, %bb.el
  %.pn54.i.i.i.i.i = phi { ptr, i32 } [ %i.tr, %bb.kb ], [ %i.mr, %bb.el ], [ %.pn51.pn.i.i.i.i.i, %bb.fo ], [ %.pn51.pn.i.i.i.i.i, %.body192.i.i.i.i.i ] ; 2 uses
  %i.my = load i8, ptr %i.ei, align 2, !range !40, !noalias !2205, !noundef !3
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.lj, label %.body200.i.i.i.i.i

bb.ep:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3284.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10280.0..sroa_idx281.i.i.i.i.i, i64 48, i1 false), !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8278.i.i.i.i.i, i64 40, i1 false), !noalias !2205
  store i64 %i.ml, ptr %i.j, align 16, !alias.scope !2264, !noalias !2205
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit226.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit226.i.i.i.i.i: ; preds = %bb.ld, %bb.lc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.ep
  store i8 0, ptr %i.ei, align 2, !noalias !2205
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i unwind label %bb.eq, !noalias !2209

bb.eq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit226.i.i.i.i.i
  %i.na = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %.body129.i.i.i.i.i unwind label %bb.er, !noalias !2209

bb.er:                                            ; preds = %bb.eq
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2209
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit226.i.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.kj, !noalias !2209

.body200.i.i.i.i.i:                               ; preds = %bb.lj, %bb.lf, %bb.le, %bb.kg, %bb.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140.i.i.i.i.i, %bb.ei
  %.pn56.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.mk, %bb.ei ], [ %.pn54.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140.i.i.i.i.i ], [ %.pn54.i.i.i.i.i, %bb.lj ], [ %i.ty, %bb.kf ], [ %i.ty, %bb.kg ], [ %i.vo, %bb.le ], [ %i.vo, %bb.lf ]
  store i8 0, ptr %i.ei, align 2, !noalias !2205
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.eg) #37
          to label %.body129.i.i.i.i.i unwind label %bb.ex, !noalias !2209

bb.es:                                            ; preds = %bb.eg
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body129.i.i.i.i.i

bb.et:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2205
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.et, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel14log_compaction6writer19LogCompactionWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %i.ee)
          to label %bb.ev unwind label %bb.kk, !noalias !2209

.body129.i.i.i.i.i:                               ; preds = %bb.kj, %bb.kh, %bb.es, %.body200.i.i.i.i.i, %bb.eq, %bb.ed
  %.pn59.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ug, %bb.kj ], [ %i.ue, %bb.kh ], [ %.pn56.pn.i.i.i.i.i, %.body200.i.i.i.i.i ], [ %i.na, %bb.eq ], [ %i.nc, %bb.es ], [ %i.ma, %bb.ed ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel14log_compaction6writer19LogCompactionWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %i.ee) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2B_5error5ErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.ex, !noalias !2209

bb.eu:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx265.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.fg, i64 96, i1 false), !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx265.i.i.i.i.i, i64 96, i1 false), !noalias !2205
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ew, %bb.eu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  store i8 0, ptr %i.dn, align 1, !noalias !2205
  br label %bb.cy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2B_5error5ErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.kk, %.body129.i.i.i.i.i, %bb.ea, %bb.du, %bb.dt, %.body.i.i.i.i.i.i.i, %bb.di, %bb.dd, %bb.ct
  %.pn64.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn59.pn.i.i.i.i.i, %.body129.i.i.i.i.i ], [ %i.lw, %bb.ea ], [ %i.uh, %bb.kk ], [ %i.kr, %bb.ct ], [ %i.la, %bb.dd ], [ %i.ld, %bb.di ], [ %i.lp, %bb.dt ], [ %i.lp, %bb.du ], [ %lpad.phi50, %.body.i.i.i.i.i.i.i ]
  %i.nd = load i8, ptr %i.dn, align 1, !range !40, !noalias !2205, !noundef !3
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.lk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ew:                                            ; preds = %bb.dy, %bb.dw
  %.sink510.i.i.i.i.i = phi i64 [ %i.le, %bb.dy ], [ -9223372036854775722, %bb.dw ]
  %.sroa.13.sroa.0.0.copyload.sink.i.i.i.i.i = phi ptr [ %.sroa.13.sroa.0.0.copyload.i.i.i.i.i, %bb.dy ], [ %.sroa.4.i.sroa.0.0.copyload.i.i.i.i.i, %bb.dw ]
  store i64 %.sink510.i.i.i.i.i, ptr %i.j, align 16, !noalias !2205
  store ptr %.sroa.13.sroa.0.0.copyload.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i34.i.i.i.i, align 8, !noalias !2205
  br label %bb.ev

bb.ex:                                            ; preds = %bb.ln, %bb.ll, %bb.lj, %bb.li, %bb.ix, %bb.ik, %bb.ij, %bb.ih, %.body142.i.i.i.i.i, %bb.gi, %bb.ga, %bb.fp, %bb.fo, %.body195.i.i.i.i.i, %bb.ey, %.body129.i.i.i.i.i, %.body200.i.i.i.i.i, %bb.dd, %bb.da
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2209
  unreachable

bb.ey:                                            ; preds = %bb.ez
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2205
  %.val92.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !noalias !2205
  %.val93.i.i.i.i.i = load ptr, ptr %i.em, align 8, !noalias !2205, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val92.i.i.i.i.i, ptr nonnull %.val93.i.i.i.i.i) #37
          to label %.body192.i.i.i.i.i unwind label %bb.ex, !noalias !2209

bb.ez:                                            ; preds = %bb.eo, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2205
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.fa unwind label %bb.ey, !noalias !2209

bb.fa:                                            ; preds = %bb.ez
  %i.nh = load i64, ptr %i.v, align 8, !range !120, !noalias !2205, !noundef !3 ; 3 uses
  %i.ni = icmp eq i64 %i.nh, -9223372036854775789
  br i1 %i.ni, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2205
  br label %.thread.i.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %.sroa.3296.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.3296.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2205 ; 3 uses
  %.sroa.5297.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5297.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2205 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2205
  %.val90.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !noalias !2205 ; 5 uses
  %.val91.i.i.i.i.i = load ptr, ptr %i.em, align 8, !noalias !2205, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.nj = load ptr, ptr %.val91.i.i.i.i.i, align 8, !invariant.load !3, !noalias !2209 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val90.i.i.i.i.i) ]
  invoke void %i.nj(ptr noundef nonnull %.val90.i.i.i.i.i)
          to label %bb.fe unwind label %bb.fg, !noalias !2209

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.nk = getelementptr inbounds nuw i8, ptr %.val91.i.i.i.i.i, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !range !92, !invariant.load !3, !noalias !2209 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.nn = getelementptr inbounds nuw i8, ptr %.val91.i.i.i.i.i, i64 16
  %i.no = load i64, ptr %i.nn, align 8, !range !105, !invariant.load !3, !noalias !2209
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val90.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.nl, i64 noundef range(i64 1, 536870913) %i.no) #27, !noalias !2209
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.fg:                                            ; preds = %bb.fd
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.val91.i.i.i.i.i, i64 8
  %i.nr = load i64, ptr %i.nq, align 8, !range !92, !invariant.load !3, !noalias !2209 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %.body192.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.nt = getelementptr inbounds nuw i8, ptr %.val91.i.i.i.i.i, i64 16
  %i.nu = load i64, ptr %i.nt, align 8, !range !105, !invariant.load !3, !noalias !2209
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.nr, i64 noundef range(i64 1, 536870913) %i.nu) #27, !noalias !2209
  br label %.body192.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.ff, %bb.fe
  %.not.i134.i.i.i.i.i = icmp eq i64 %i.nh, -9223372036854775790
  br i1 %.not.i134.i.i.i.i.i, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3296.0.copyload.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5297.0.copyload.i.i.i.i.i) ]
  store ptr %.sroa.3296.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !noalias !2205
  store ptr %.sroa.5297.0.copyload.i.i.i.i.i, ptr %i.eo, align 8, !noalias !2205
  call void @llvm.experimental.noalias.scope.decl(metadata !2268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2271
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 8388608, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc136.i.i.i.i.i unwind label %.loopexit, !noalias !2209

.noexc136.i.i.i.i.i:                              ; preds = %bb.fi
  %i.nv = load i64, ptr %i.e, align 8, !range !34, !noalias !2271, !noundef !3
  %i.nw = trunc nuw i64 %i.nv to i1
  %i.nx = load i64, ptr %i.eq, align 8, !range !1996, !noalias !2271, !noundef !3 ; 3 uses
  br i1 %i.nw, label %bb.fj, label %bb.fk, !prof !37

bb.fj:                                            ; preds = %.noexc136.i.i.i.i.i
  %i.ny = load i64, ptr %i.er, align 8, !noalias !2271
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.nx, i64 %i.ny) #34
          to label %.noexc137.i.i.i.i.i unwind label %.loopexit.split-lp, !noalias !2209

.noexc137.i.i.i.i.i:                              ; preds = %bb.fj
  unreachable

.body195.i.i.i.i.i:                               ; preds = %.loopexit, %.loopexit.split-lp, %bb.li, %bb.kx, %bb.jx, %.body177.i.i.i.i.i
  %.pn49.i.i.i.i.i = phi { ptr, i32 } [ %.pn46.pn.i.i.i.i.i, %.body177.i.i.i.i.i ], [ %.pn46.pn.i.i.i.i.i, %bb.li ], [ %i.tm, %bb.jx ], [ %i.ve, %bb.kx ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i8 0, ptr %i.do, align 8, !noalias !2205
  %.val98.i.i.i.i.i = load ptr, ptr %i.en, align 8, !noalias !2205
  %.val99.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !noalias !2205, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake(ptr %.val98.i.i.i.i.i, ptr nonnull %.val99.i.i.i.i.i) #37
          to label %.body192.i.i.i.i.i unwind label %bb.ex, !noalias !2209

.loopexit:                                        ; preds = %bb.fi, %bb.jy, %bb.ky
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i.i.i.i.i

.loopexit.split-lp:                               ; preds = %bb.fj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i.i.i.i.i

bb.fk:                                            ; preds = %.noexc136.i.i.i.i.i
  %i.nz = load ptr, ptr %i.er, align 8, !noalias !2271, !nonnull !3, !noundef !3
  %i.oa = icmp ugt i64 %i.nx, 8388607
  call void @llvm.assume(i1 %i.oa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2271
  store i64 %i.nx, ptr %i.ep, align 8, !alias.scope !2268, !noalias !2205
  store ptr %i.nz, ptr %i.es, align 8, !alias.scope !2268, !noalias !2205
  store i64 0, ptr %i.et, align 8, !alias.scope !2268, !noalias !2205
  store i8 1, ptr %i.do, align 8, !noalias !2205
  br label %bb.fl

bb.fl:                                            ; preds = %bb.gf, %bb.fk
  %.sroa.14323.sroa.9.0.i.i.i.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.14323.sroa.9.3.i.i.i.i.i, %bb.gf ]
  %.sroa.14323.sroa.0.sroa.9.0.i.i.i.i.i = phi ptr [ undef, %bb.fk ], [ %.sroa.0302.2.i.i.i.i.i, %bb.gf ]
  %.sroa.14323.sroa.0.sroa.11.0.i.i.i.i.i = phi ptr [ undef, %bb.fk ], [ %.sroa.10304.2.i.i.i.i.i, %bb.gf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2205
  store i8 0, ptr %i.ei, align 2, !noalias !2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.ej, i64 40, i1 false), !noalias !2205
  %i.ob = invoke noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2c_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB4_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.gh unwind label %bb.gg, !noalias !2209

bb.fm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4301.0..sroa.4.0..sroa_idx.i135.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i.i.i, i64 48, i1 false), !noalias !2205
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  store i64 -9223372036854775743, ptr %i.j, align 16, !alias.scope !2275, !noalias !2277
  store i64 %i.nh, ptr %.sroa.5.0..sroa_idx.i34.i.i.i.i, align 8, !alias.scope !2278, !noalias !2205
  store ptr %.sroa.3296.0.copyload.i.i.i.i.i, ptr %.sroa.3261.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !2278, !noalias !2205
  store ptr %.sroa.5297.0.copyload.i.i.i.i.i, ptr %.sroa.3300.0..sroa.4.0..sroa_idx.i135.sroa_idx.i.i.i.i.i, align 8, !alias.scope !2278, !noalias !2205
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i: ; preds = %bb.kt, %bb.ks, %bb.fm
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %i.oc = load ptr, ptr %i.ek, align 8, !alias.scope !2285, !noalias !2205, !nonnull !3, !noundef !3
  %i.od = atomicrmw sub ptr %i.oc, i64 1 release, align 8, !noalias !2286
  %i.oe = icmp eq i64 %i.od, 1
  br i1 %i.oe, label %bb.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.fn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.kb, !noalias !2209

.body192.i.i.i.i.i:                               ; preds = %bb.kv, %bb.ku, %bb.jv, %bb.ju, %.body195.i.i.i.i.i, %bb.fh, %bb.fg, %bb.ey, %bb.en
  %.pn51.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.uy, %bb.kv ], [ %.pn49.i.i.i.i.i, %.body195.i.i.i.i.i ], [ %i.tg, %bb.ju ], [ %i.tg, %bb.jv ], [ %i.uy, %bb.ku ], [ %i.mv, %bb.en ], [ %i.ng, %bb.ey ], [ %i.np, %bb.fg ], [ %i.np, %bb.fh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %i.of = load ptr, ptr %i.ek, align 8, !alias.scope !2293, !noalias !2205, !nonnull !3, !noundef !3
  %i.og = atomicrmw sub ptr %i.of, i64 1 release, align 8, !noalias !2294
  %i.oh = icmp eq i64 %i.og, 1
  br i1 %i.oh, label %bb.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140.i.i.i.i.i

bb.fo:                                            ; preds = %.body192.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140.i.i.i.i.i unwind label %bb.ex, !noalias !2209

bb.fp:                                            ; preds = %bb.fq
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2205
  %.val88.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !noalias !2205
  %.val89.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !noalias !2205, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val88.i.i.i.i.i, ptr nonnull %.val89.i.i.i.i.i) #37
          to label %.body142.i.i.i.i.i unwind label %bb.ex, !noalias !2209

bb.fq:                                            ; preds = %bb.hr, %bb.ch
  %.sroa.0302.0.i.i.i.i.i = phi ptr [ %.sroa.14323.sroa.0.sroa.9.0.copyload.i.i.i.i.i, %bb.hr ], [ undef, %bb.ch ] ; 5 uses
  %.sroa.10304.0.i.i.i.i.i = phi ptr [ %.sroa.14323.sroa.0.sroa.11.0.copyload.i.i.i.i.i, %bb.hr ], [ undef, %bb.ch ] ; 5 uses
  %.sroa.14323.sroa.9.2.i.i.i.i.i = phi i64 [ %.sroa.14323.sroa.9.0.copyload.i.i.i.i.i, %bb.hr ], [ undef, %bb.ch ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2205
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.fr unwind label %bb.fp, !noalias !2209

bb.fr:                                            ; preds = %bb.fq
  %i.oj = load i64, ptr %i.o, align 8, !range !120, !noalias !2205, !noundef !3 ; 3 uses
  %i.ok = icmp eq i64 %i.oj, -9223372036854775789
  br i1 %i.ok, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2205
  br label %.thread.i.i.i.i

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3380.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3380.0..sroa_idx.i.i.i.i.i, i64 64, i1 false), !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2205
  %.val86.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !noalias !2205 ; 5 uses
  %.val87.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !noalias !2205, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.ol = load ptr, ptr %.val87.i.i.i.i.i, align 8, !invariant.load !3, !noalias !2209 ; 2 uses
  %.not.i.i141.i.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i.i141.i.i.i.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val86.i.i.i.i.i) ]
  invoke void %i.ol(ptr noundef nonnull %.val86.i.i.i.i.i)
          to label %bb.fv unwind label %bb.fx, !noalias !2209

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.om = getelementptr inbounds nuw i8, ptr %.val87.i.i.i.i.i, i64 8
  %i.on = load i64, ptr %i.om, align 8, !range !92, !invariant.load !3, !noalias !2209 ; 2 uses
  %i.oo = icmp eq i64 %i.on, 0
  br i1 %i.oo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.op = getelementptr inbounds nuw i8, ptr %.val87.i.i.i.i.i, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !range !105, !invariant.load !3, !noalias !2209
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val86.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.on, i64 noundef range(i64 1, 536870913) %i.oq) #27, !noalias !2209
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fu
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.val87.i.i.i.i.i, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !range !92, !invariant.load !3, !noalias !2209 ; 2 uses
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %.body142.i.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ov = getelementptr inbounds nuw i8, ptr %.val87.i.i.i.i.i, i64 16
  %i.ow = load i64, ptr %i.ov, align 8, !range !105, !invariant.load !3, !noalias !2209
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ot, i64 noundef range(i64 1, 536870913) %i.ow) #27, !noalias !2209
  br label %.body142.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.fw, %bb.fv
  %.not.i144.i.i.i.i.i = icmp eq i64 %i.oj, -9223372036854775790
  br i1 %.not.i144.i.i.i.i.i, label %bb.fz, label %bb.id

bb.fz:                                            ; preds = %bb.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %.sroa.0302.2.i.i.i.i.i = phi ptr [ %.sroa.14323.sroa.0.sroa.9.0.copyload.i.i.i.i.i, %bb.hn ], [ %.sroa.0302.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.10304.2.i.i.i.i.i = phi ptr [ %.sroa.14323.sroa.0.sroa.11.0.copyload.i.i.i.i.i, %bb.hn ], [ %.sroa.10304.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.14323.sroa.9.3.i.i.i.i.i = phi i64 [ %.sroa.14323.sroa.9.0.copyload.i.i.i.i.i, %bb.hn ], [ %.sroa.14323.sroa.9.2.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdFjMDJQAyx6_10arrow_json6writer6WriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtBJ_13LineDelimitedEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(160) %i.ey)
          to label %bb.gc unwind label %bb.gb, !noalias !2209

bb.ga:                                            ; preds = %.body142.i.i.i.i.i, %bb.hg, %bb.gb
  %.sroa.0302.3.i.i.i.i.i = phi ptr [ %.sroa.0302.4.i.i.i.i.i, %bb.gb ], [ %.sroa.0302.8.i.i.i.i.i, %.body142.i.i.i.i.i ], [ %.sroa.14323.sroa.0.sroa.9.0.copyload.i.i.i.i.i, %bb.hg ]
  %.sroa.10304.3.i.i.i.i.i = phi ptr [ %.sroa.10304.4.i.i.i.i.i, %bb.gb ], [ %.sroa.10304.8.i.i.i.i.i, %.body142.i.i.i.i.i ], [ %.sroa.14323.sroa.0.sroa.11.0.copyload.i.i.i.i.i, %bb.hg ]
  %.pn41.i.i.i.i.i = phi { ptr, i32 } [ %i.ox, %bb.gb ], [ %.pn38.pn.i.i.i.i.i, %.body142.i.i.i.i.i ], [ %i.pz, %bb.hg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ex) #37
          to label %bb.gd unwind label %bb.ex, !noalias !2209

bb.gb:                                            ; preds = %bb.ht, %bb.fz
  %.sroa.0302.4.i.i.i.i.i = phi ptr [ %.sroa.0302.2.i.i.i.i.i, %bb.fz ], [ %.sroa.0302.7.i.i.i.i.i, %bb.ht ]
  %.sroa.10304.4.i.i.i.i.i = phi ptr [ %.sroa.10304.2.i.i.i.i.i, %bb.fz ], [ %.sroa.10304.7.i.i.i.i.i, %bb.ht ]
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.gc:                                            ; preds = %bb.fz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ex)
          to label %bb.gf unwind label %bb.ge, !noalias !2209

bb.gd:                                            ; preds = %bb.ge, %bb.ga
  %.sroa.0302.5.i.i.i.i.i = phi ptr [ %.sroa.0302.6.i.i.i.i.i, %bb.ge ], [ %.sroa.0302.3.i.i.i.i.i, %bb.ga ]
  %.sroa.10304.5.i.i.i.i.i = phi ptr [ %.sroa.10304.6.i.i.i.i.i, %bb.ge ], [ %.sroa.10304.3.i.i.i.i.i, %bb.ga ] ; 2 uses
  %.pn43.i.i.i.i.i = phi { ptr, i32 } [ %i.pa, %bb.ge ], [ %.pn41.i.i.i.i.i, %bb.ga ]
  %i.oy = load i8, ptr %i.ew, align 1, !range !40, !noalias !2205, !noundef !3
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.ih, label %bb.ig

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs0_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1l_18ObjectOutputStream7try_new0EB1n_:bb.a
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx42.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.aq, %bb.d
  %.sroa.1730.0 = phi ptr [ undef, %bb.d ], [ %.sroa.1730.1, %bb.aq ]
  %.sroa.18.0 = phi ptr [ undef, %bb.d ], [ %.sroa.18.1, %bb.aq ]
  %.sroa.12.0 = phi ptr [ undef, %bb.d ], [ %.sroa.12.1, %bb.aq ]
  %.sroa.10.0 = phi ptr [ undef, %bb.d ], [ %.sroa.10.1, %bb.aq ]
  %.sroa.9.0 = phi i64 [ undef, %bb.d ], [ %.sroa.9.1, %bb.aq ]
  %.sroa.8.0 = phi ptr [ undef, %bb.d ], [ %.sroa.8.1, %bb.aq ]
  %.sroa.7.0 = phi i64 [ undef, %bb.d ], [ %.sroa.7.1, %bb.aq ]
  %.sroa.20.0 = phi i64 [ undef, %bb.d ], [ %.sroa.20.1, %bb.aq ]
  %i.ac = phi <2 x i64> [ undef, %bb.d ], [ %i.cs, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3746
  %i.ad = load i8, ptr %i.o, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.ad, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %.noexc, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.ae = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.n)
          to label %.noexc16 unwind label %bb.ao  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.ae, %.noexc16 ], [ %i.n, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !range !40, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  store i8 1, ptr %i.ag, align 1
  store i8 -128, ptr %i.ai, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.e
  %.sroa.3.0.i = phi i8 [ %i.aj, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i8 [ %i.ah, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.ad, %bb.e ]
  store i8 %.sroa.0.0.i, ptr %i.c, align 1, !noalias !3746
  store i8 %.sroa.3.0.i, ptr %i.p, align 1, !noalias !3746
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.960.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.2.i.i)
  %i.ak = load i8, ptr %i.q, align 8, !range !474, !noalias !3751, !noundef !3
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

bb.f:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %i.s, align 8, !noalias !3751, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = load ptr, ptr %i.t, align 8, !noalias !3751, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  store ptr %i.al, ptr %i.r, align 8, !noalias !3751
  store ptr %i.am, ptr %i.u, align 8, !noalias !3751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3751
  %i.an = load i64, ptr %i.x, align 8, !noalias !3751, !noundef !3
  store i64 %i.an, ptr %i.w, align 8, !noalias !3751
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !105, !invariant.load !3, !noalias !3758
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = and i64 %i.aq, -16
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !3, !noalias !3758, !nonnull !3
  %i.aw = invoke { ptr, ptr } %i.av(ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.h unwind label %bb.g, !noalias !3758 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.h:                                             ; preds = %bb.f
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0
  %i.az = extractvalue { ptr, ptr } %i.aw, 1
  store ptr %i.ay, ptr %i.y, align 8, !noalias !3751
  store ptr %i.az, ptr %i.z, align 8, !noalias !3751
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #36
          to label %.noexc18 unwind label %bb.aj

.noexc18:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #36
          to label %.noexc19 unwind label %bb.aj

.noexc19:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3751
  %.val12.i.i = load ptr, ptr %i.y, align 8, !noalias !3751
  %.val13.i.i = load ptr, ptr %i.z, align 8, !noalias !3751, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val12.i.i, ptr nonnull %.val13.i.i) #37
          to label %.body.i.i unwind label %bb.ae, !noalias !3758

bb.l:                                             ; preds = %bb.h, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3751
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.m unwind label %bb.k, !noalias !3758

bb.m:                                             ; preds = %bb.l
  %i.bb = load i64, ptr %i.b, align 8, !range !120, !noalias !3751, !noundef !3 ; 4 uses
  %i.bc = icmp eq i64 %i.bb, -9223372036854775789
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3751
  br label %bb.al

bb.o:                                             ; preds = %bb.m
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !3751 ; 6 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3751 ; 5 uses
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx42.i.i, align 8, !noalias !3751 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx42.sroa_idx.i.i, i64 16, i1 false), !noalias !3751
  %.sroa.7.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx42.sroa_idx.i.i, align 8, !noalias !3751 ; 2 uses
  %i.bd = load <2 x i64>, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx42.sroa_idx.i.i, align 8, !noalias !3751 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3751
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !3751 ; 5 uses
  %.val11.i.i = load ptr, ptr %i.z, align 8, !noalias !3751, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.be = load ptr, ptr %.val11.i.i, align 8, !invariant.load !3, !noalias !3758 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.be(ptr noundef nonnull %.val.i.i)
          to label %bb.q unwind label %bb.s, !noalias !3758

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !92, !invariant.load !3, !noalias !3758 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !105, !invariant.load !3, !noalias !3758
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #27, !noalias !3758
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.s:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !92, !invariant.load !3, !noalias !3758 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.body.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !105, !invariant.load !3, !noalias !3758
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #27, !noalias !3758
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r, %bb.q
  %.not.i.i.i = icmp eq i64 %i.bb, -9223372036854775790
  br i1 %.not.i.i.i, label %bb.u, label %bb.af

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3759
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit, !noalias !3758

.noexc.i.i:                                       ; preds = %bb.u
  %i.bq = load i64, ptr %i.a, align 8, !range !34, !noalias !3759, !noundef !3
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = load i64, ptr %i.aa, align 8, !range !1996, !noalias !3759, !noundef !3 ; 4 uses
  br i1 %i.br, label %bb.v, label %bb.x, !prof !37

bb.v:                                             ; preds = %.noexc.i.i
  %i.bt = load i64, ptr %i.ab, align 8, !noalias !3759
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bt) #34
          to label %.noexc19.i.i unwind label %.loopexit.split-lp, !noalias !3758

.noexc19.i.i:                                     ; preds = %bb.v
  unreachable

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EEECs7p2uQeJxui2_9deltalake(ptr nonnull %.sroa.3.0.copyload.i.i, ptr nonnull %.sroa.5.0.copyload.i.i) #37
          to label %.body.i.i unwind label %bb.ae, !noalias !3758

bb.x:                                             ; preds = %.noexc.i.i
  %i.bu = load ptr, ptr %i.ab, align 8, !noalias !3759, !nonnull !3, !noundef !3 ; 2 uses
  %i.bv = icmp ugt i64 %i.bs, 1
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3759
  store i16 25207, ptr %i.bu, align 1, !noalias !3768
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.i.i, i8 0, i64 16, i1 false), !noalias !3751
  %i.bx = load i64, ptr %i.w, align 8, !noalias !3751, !noundef !3 ; 2 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.y, !noalias !3758

bb.y:                                             ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body20.i.i unwind label %bb.z, !noalias !3758

bb.z:                                             ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3758
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ab, !noalias !3758

.body20.i.i:                                      ; preds = %bb.ag, %.body.i.i, %bb.ab, %bb.y
  %.pn7.i.i = phi { ptr, i32 } [ %.pn4.pn.i.i, %.body.i.i ], [ %i.by, %bb.y ], [ %i.cd, %bb.ab ], [ %i.cl, %bb.ag ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3769)
  call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  %i.ca = load ptr, ptr %i.r, align 8, !alias.scope !3775, !noalias !3751, !nonnull !3, !noundef !3
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !3776
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.aa:                                            ; preds = %.body20.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ae, !noalias !3758

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3777)
  call void @llvm.experimental.noalias.scope.decl(metadata !3780)
  %i.ce = load ptr, ptr %i.r, align 8, !alias.scope !3783, !noalias !3751, !nonnull !3, !noundef !3
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !3784
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i unwind label %bb.ad, !noalias !3758

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ad, %bb.aa, %.body20.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.ch, %bb.ad ], [ %.pn7.i.i, %bb.aa ], [ %.pn7.i.i, %.body20.i.i ]
  store i8 2, ptr %i.q, align 8, !noalias !3751
  br label %.body20

bb.ad:                                            ; preds = %bb.ai, %bb.ac
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i: ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.052.0.i.i = phi i64 [ %i.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bs, %bb.ac ], [ -9223372036854775808, %bb.ai ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.354.0.i.i = phi i64 [ %i.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bw, %bb.ac ], [ %i.bb, %bb.ai ], [ %i.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.456.0.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ inttoptr (i64 2 to ptr), %bb.ac ], [ %.sroa.3.0.copyload.i.i, %bb.ai ], [ %.sroa.3.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.558.0.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.ac ], [ %i.ck, %bb.ai ], [ %i.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.759.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.ac ], [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.ai ], [ %.sroa.7.sroa.0.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.1061.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ %.sroa.7.sroa.3.0.copyload.i.i, %bb.ai ], [ %.sroa.7.sroa.3.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.16.0.i.i = phi ptr [ %.sroa.3.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.3.0.copyload.i.i, %bb.ac ], [ undef, %bb.ai ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.17.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.ac ], [ undef, %bb.ai ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.19.0.i.i = phi i64 [ %i.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bx, %bb.ac ], [ undef, %bb.ai ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %i.ci = phi <2 x i64> [ zeroinitializer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ zeroinitializer, %bb.ac ], [ %i.bd, %bb.ai ], [ %i.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.i.i, i64 16, i1 false), !noalias !3785
  br label %bb.al

bb.ae:                                            ; preds = %.body.i.i, %bb.aa, %bb.w, %bb.k
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3758
  unreachable

.body.i.i:                                        ; preds = %bb.w, %bb.t, %bb.s, %bb.k, %bb.g
  %.pn4.pn.i.i = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.bk, %bb.s ], [ %i.ba, %bb.k ], [ %i.ax, %bb.g ], [ %lpad.phi, %bb.w ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.v) #37
          to label %.body20.i.i unwind label %bb.ae, !noalias !3758

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.i.i, i64 16, i1 false), !noalias !3751
  %i.ck = ptrtoint ptr %.sroa.5.0.copyload.i.i to i64 ; 2 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i unwind label %bb.ag, !noalias !3758

bb.ag:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body20.i.i unwind label %bb.ah, !noalias !3758

bb.ah:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3758
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i unwind label %bb.ab, !noalias !3758

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  call void @llvm.experimental.noalias.scope.decl(metadata !3789)
  %i.cn = load ptr, ptr %i.r, align 8, !alias.scope !3792, !noalias !3751, !nonnull !3, !noundef !3
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !3793
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i unwind label %bb.ad, !noalias !3758

bb.aj:                                            ; preds = %bb.j, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body20

.body20:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.aj
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.cq, %bb.aj ], [ %.pn9.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.cr = load i8, ptr %i.c, align 1, !range !111, !alias.scope !3794, !noalias !3797, !noundef !3
  %.not.i = icmp eq i8 %i.cr, 2
  br i1 %.not.i, label %.body, label %bb.ak

bb.ak:                                            ; preds = %.body20
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %.body unwind label %bb.an

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i, %bb.n
  %.sroa.1730.1 = phi ptr [ %.sroa.1730.0, %bb.n ], [ %.sroa.16.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0, %bb.n ], [ %.sroa.17.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.n ], [ %.sroa.1061.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0, %bb.n ], [ %.sroa.759.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.9.1 = phi i64 [ %.sroa.9.0, %bb.n ], [ %.sroa.558.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.n ], [ %.sroa.456.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %bb.n ], [ %.sroa.354.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.029.0 = phi i64 [ -9223372036854775807, %bb.n ], [ %.sroa.052.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %.sroa.20.1 = phi i64 [ %.sroa.20.0, %bb.n ], [ %.sroa.19.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  %storemerge.i.i = phi i8 [ 3, %bb.n ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ]
  %i.cs = phi <2 x i64> [ %i.ac, %bb.n ], [ %i.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25.i.i ] ; 2 uses
  store i8 %storemerge.i.i, ptr %i.q, align 8, !noalias !3751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.960.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.2.i.i)
  %i.ct = load i8, ptr %i.c, align 1, !range !111, !alias.scope !3798, !noundef !3
  %.not.i23 = icmp eq i8 %i.ct, 2
  br i1 %.not.i23, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %bb.ap unwind label %bb.ao
end_hunk_1
begin_hunk_2_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10037
  store ptr %i.an, ptr %i.aj, align 8, !noalias !10037
  %.sroa.5383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5383.0..sroa_idx.i, align 8, !noalias !10037
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @189, ptr noundef nonnull %i.aj)
          to label %bb.gv unwind label %bb.gt, !noalias !10041

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !alias.scope !10290, !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10294
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.gx, !noalias !10041

.noexc172.i:                                      ; preds = %bb.gv
  %i.sj = load i64, ptr %i.a, align 8, !range !34, !noalias !10294, !noundef !3
  %i.sk = trunc nuw i64 %i.sj to i1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !range !1996, !noalias !10294, !noundef !3 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.sk, label %bb.gw, label %bb.gz, !prof !37

bb.gw:                                            ; preds = %.noexc172.i
  %i.so = load i64, ptr %i.sn, align 8, !noalias !10294
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.sm, i64 %i.so) #34
          to label %.noexc173.i unwind label %bb.gx, !noalias !10041

.noexc173.i:                                      ; preds = %bb.gw
  unreachable

.body189.i:                                       ; preds = %bb.ha, %bb.gy, %bb.gx
  %.pn72.i = phi { ptr, i32 } [ %i.sq, %bb.gy ], [ %i.sp, %bb.gx ], [ %i.st, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10037
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #37
          to label %.body195.i unwind label %bb.av, !noalias !10041

bb.gx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i, %bb.gw, %bb.gv
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

bb.gy:                                            ; preds = %bb.gz
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10037
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #37
          to label %.body189.i unwind label %bb.av, !noalias !10041

bb.gz:                                            ; preds = %.noexc172.i
  %i.sr = load ptr, ptr %i.sn, align 8, !noalias !10294, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10294
  store i64 %i.sm, ptr %i.ai, align 8, !noalias !10037
  %.sroa.4443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.sr, ptr %.sroa.4443.0..sroa_idx.i, align 8, !noalias !10037
  %.sroa.5444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5444.0..sroa_idx.i, align 8, !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10037
  store ptr %i.al, ptr %i.ah, align 8, !noalias !10037
  %.sroa.5385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5385.0..sroa_idx.i, align 8, !noalias !10037
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.ss, align 8, !noalias !10037
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5387.0..sroa_idx.i, align 8, !noalias !10037
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @89, ptr noundef nonnull %i.ah)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i unwind label %bb.gy, !noalias !10041

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i:  ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10037
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i unwind label %bb.ha, !noalias !10041

bb.ha:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body189.i unwind label %bb.hb, !noalias !10041

bb.hb:                                            ; preds = %bb.ha
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10041
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i unwind label %bb.gx, !noalias !10041

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10037
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i unwind label %bb.hc, !noalias !10041

bb.hc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body195.i unwind label %bb.hd, !noalias !10041

bb.hd:                                            ; preds = %bb.hc
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10041
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.hf unwind label %bb.he, !noalias !10041

.body195.i:                                       ; preds = %bb.he, %bb.hc, %.body189.i, %bb.gt
  %.pn74.i = phi { ptr, i32 } [ %i.si, %bb.gt ], [ %.pn72.i, %.body189.i ], [ %i.sx, %bb.he ], [ %i.sv, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.an) #37
          to label %bb.hg unwind label %bb.av, !noalias !10041

bb.he:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i

bb.hf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10037
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10037
  %i.sy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 10, ptr %i.sy, align 8, !noalias !10037
  store i64 36, ptr %i.r, align 16, !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.an)
          to label %bb.hi unwind label %bb.hh, !noalias !10041

bb.hg:                                            ; preds = %bb.hh, %.body195.i
  %.pn80.i = phi { ptr, i32 } [ %i.sz, %bb.hh ], [ %.pn74.i, %.body195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.hh:                                            ; preds = %bb.hf
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hi:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !10037
  br label %bb.ks

bb.hj:                                            ; preds = %bb.hk
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.td) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !10041

bb.hk:                                            ; preds = %bb.gs, %bb.f
  %.sink15.i203.sroa.gep333.i77 = phi ptr [ %.sink15.i203.sroa.gep333.i, %bb.f ], [ %.sink15.i203.sroa.gep333.i78, %bb.gs ] ; 2 uses
  %.sink15.i203.sroa.gep.i71 = phi ptr [ %.sink15.i203.sroa.gep.i, %bb.f ], [ %.sink15.i203.sroa.gep.i72, %bb.gs ]
  %.sink18.i201.sroa.gep332.i65 = phi ptr [ %.sink18.i201.sroa.gep332.i, %bb.f ], [ %.sink18.i201.sroa.gep332.i66, %bb.gs ] ; 2 uses
  %.sink18.i201.sroa.gep.i59 = phi ptr [ %.sink18.i201.sroa.gep.i, %bb.f ], [ %.sink18.i201.sroa.gep.i60, %bb.gs ]
  %i.tb = phi ptr [ %i.bm, %bb.f ], [ %i.rv, %bb.gs ] ; 9 uses
  %i.tc = phi ptr [ %i.bl, %bb.f ], [ %i.rw, %bb.gs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !10037
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.av, ptr noundef nonnull align 8 %i.td, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hl unwind label %bb.hj, !noalias !10041

bb.hl:                                            ; preds = %bb.hk
  %i.te = load i64, ptr %i.av, align 8, !range !499, !noalias !10037, !noundef !3 ; 3 uses
  %i.tf = icmp eq i64 %i.te, 21
  br i1 %i.tf, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10037
  br label %.thread115

bb.hn:                                            ; preds = %bb.hl
  %.sroa.3315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3315.0.copyload.i = load ptr, ptr %.sroa.3315.0..sroa_idx.i, align 8, !noalias !10037 ; 3 uses
  %.sroa.5316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5316.0.copyload.i = load ptr, ptr %.sroa.5316.0..sroa_idx.i, align 8, !noalias !10037 ; 3 uses
  %.sroa.7317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.0..sroa_idx.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.td)
          to label %bb.hp unwind label %bb.ho, !noalias !10041

bb.ho:                                            ; preds = %bb.hn
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.hp:                                            ; preds = %bb.hn
  %.not.i199.i = icmp eq i64 %i.te, 20
  br i1 %.not.i199.i, label %bb.hq, label %bb.il

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3315.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5316.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !10037
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !10037
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10298)
  call void @llvm.experimental.noalias.scope.decl(metadata !10301)
  %i.tl = load i64, ptr %i.tk, align 8, !range !7, !alias.scope !10301, !noalias !10303, !noundef !3 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !alias.scope !10301, !noalias !10303, !nonnull !3, !noundef !3 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tp = load i64, ptr %i.to, align 8, !alias.scope !10301, !noalias !10303, !noundef !3 ; 3 uses
  %i.tq = atomicrmw add ptr %i.tn, i64 1 monotonic, align 8, !noalias !10304
  %i.tr = icmp slt i64 %i.tq, 0                   ; 3 uses
  switch i64 %i.tl, label %default.unreachable38 [
    i64 0, label %bb.hr
    i64 1, label %bb.hs
    i64 2, label %bb.ht
  ]

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.tr, label %bb.hu, label %bb.ie

bb.hs:                                            ; preds = %bb.hq
  br i1 %i.tr, label %bb.hw, label %bb.hv

bb.ht:                                            ; preds = %bb.hq
  br i1 %i.tr, label %bb.hz, label %bb.hy

bb.hu:                                            ; preds = %bb.hr
  call void @llvm.trap()
  unreachable

.sink.split.i200.i:                               ; preds = %bb.ic, %bb.hv
  %.sink18.i201.sroa.phi.i = phi ptr [ %.sink18.i201.sroa.gep.i59, %bb.ic ], [ %.sink18.i201.sroa.gep332.i65, %bb.hv ]
  %.sink16.i202.i = phi ptr [ %i.tz, %bb.ic ], [ %i.tn, %bb.hv ]
  %.sink15.i203.sroa.phi.i = phi ptr [ %.sink15.i203.sroa.gep.i71, %bb.ic ], [ %.sink15.i203.sroa.gep333.i77, %bb.hv ]
  %.sink13.i204.i = phi i64 [ %i.ub, %bb.ic ], [ %i.tp, %bb.hv ]
  %.sink12.ph.i205.i = phi i64 [ 40, %bb.ic ], [ 24, %bb.hv ]
  %.sink10.ph.i206.i = phi ptr [ %i.uf, %bb.ic ], [ %i.tt, %bb.hv ]
  %.sink9.ph.i207.i = phi i64 [ 48, %bb.ic ], [ 32, %bb.hv ]
  %.sink7.ph.i208.i = phi i64 [ %i.uh, %bb.ic ], [ %i.tv, %bb.hv ]
  store ptr %.sink16.i202.i, ptr %.sink18.i201.sroa.phi.i, align 8, !alias.scope !10298, !noalias !10305
  store i64 %.sink13.i204.i, ptr %.sink15.i203.sroa.phi.i, align 8, !alias.scope !10298, !noalias !10305
  br label %bb.ie

bb.hv:                                            ; preds = %bb.hs
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8, !alias.scope !10301, !noalias !10303, !nonnull !3, !noundef !3 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tv = load i64, ptr %i.tu, align 8, !alias.scope !10301, !noalias !10303, !noundef !3
  %i.tw = atomicrmw add ptr %i.tt, i64 1 monotonic, align 8, !noalias !10304
  %i.tx = icmp slt i64 %i.tw, 0
  br i1 %i.tx, label %bb.hx, label %.sink.split.i200.i

bb.hw:                                            ; preds = %bb.hs
  call void @llvm.trap()
  unreachable

bb.hx:                                            ; preds = %bb.hv
  call void @llvm.trap()
  unreachable

bb.hy:                                            ; preds = %bb.ht
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !10301, !noalias !10303, !nonnull !3, !noundef !3 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !10301, !noalias !10303, !noundef !3
  %i.uc = atomicrmw add ptr %i.tz, i64 1 monotonic, align 8, !noalias !10304
  %i.ud = icmp slt i64 %i.uc, 0
  br i1 %i.ud, label %bb.ib, label %bb.ia

bb.hz:                                            ; preds = %bb.ht
  call void @llvm.trap()
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8, !alias.scope !10301, !noalias !10303, !nonnull !3, !noundef !3 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.uh = load i64, ptr %i.ug, align 8, !alias.scope !10301, !noalias !10303, !noundef !3
  %i.ui = atomicrmw add ptr %i.uf, i64 1 monotonic, align 8, !noalias !10304
  %i.uj = icmp slt i64 %i.ui, 0
  br i1 %i.uj, label %bb.id, label %bb.ic

bb.ib:                                            ; preds = %bb.hy
  call void @llvm.trap()
  unreachable

bb.ic:                                            ; preds = %bb.ia
  store ptr %i.tn, ptr %.sink18.i201.sroa.gep332.i65, align 8, !alias.scope !10298, !noalias !10305
  store i64 %i.tp, ptr %.sink15.i203.sroa.gep333.i77, align 8, !alias.scope !10298, !noalias !10305
  br label %.sink.split.i200.i

bb.id:                                            ; preds = %bb.ia
  call void @llvm.trap()
  unreachable

bb.ie:                                            ; preds = %.sink.split.i200.i, %bb.hr
  %.sink12.i209.i = phi i64 [ 8, %bb.hr ], [ %.sink12.ph.i205.i, %.sink.split.i200.i ]
  %.sink10.i210.i = phi ptr [ %i.tn, %bb.hr ], [ %.sink10.ph.i206.i, %.sink.split.i200.i ]
  %.sink9.i211.i = phi i64 [ 16, %bb.hr ], [ %.sink9.ph.i207.i, %.sink.split.i200.i ]
  %.sink7.i212.i = phi i64 [ %i.tp, %bb.hr ], [ %.sink7.ph.i208.i, %.sink.split.i200.i ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink12.i209.i
  store ptr %.sink10.i210.i, ptr %i.uk, align 8, !alias.scope !10298, !noalias !10305
  %i.ul = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink9.i211.i
  store i64 %.sink7.i212.i, ptr %i.ul, align 8, !alias.scope !10298, !noalias !10305
  store i64 %i.tl, ptr %i.as, align 8, !alias.scope !10298, !noalias !10305
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ti, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.as, ptr noundef nonnull %.sroa.3315.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5316.0.copyload.i)
          to label %bb.if unwind label %bb.ij, !noalias !10041

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10306)
  %i.um = load i64, ptr %i.at, align 8, !range !4551, !alias.scope !10309, !noalias !10311, !noundef !3 ; 2 uses
  %.not.i216.i = icmp eq i64 %i.um, 20
  %i.un = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !10312, !noalias !10037 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !10312, !noalias !10037 ; 2 uses
  br i1 %.not.i216.i, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10037
  store ptr %i.uo, ptr %i.au, align 8, !noalias !10037
  %i.ur = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.uq, ptr %i.ur, align 8, !noalias !10037
  %i.us = icmp eq ptr %i.uo, null
  br i1 %i.us, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.ut = atomicrmw sub ptr %i.uo, i64 1 release, align 8, !noalias !10313
  %i.uu = icmp eq i64 %i.ut, 1
  br i1 %i.uu, label %bb.ii, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.ii:                                            ; preds = %bb.ih
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread467.i, !noalias !10041

.thread467.i:                                     ; preds = %bb.ii
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ii, %bb.ih, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10037
  %i.uw = load ptr, ptr %i.th, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.uw)
          to label %bb.ks unwind label %.thread464.i, !noalias !10041

bb.ij:                                            ; preds = %bb.ie
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread464.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ik:                                            ; preds = %bb.if
  %.sroa.12330.0..sroa_idx331.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.4337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4337.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12330.0..sroa_idx331.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10320)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.um, ptr %i.uz, align 8, !alias.scope !10323, !noalias !10037
  %.sroa.2335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.uo, ptr %.sroa.2335.0..sroa_idx.i, align 16, !alias.scope !10323, !noalias !10037
  %.sroa.3336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.uq, ptr %.sroa.3336.0..sroa_idx.i, align 8, !alias.scope !10323, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10325, !noalias !10326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10037
  br label %bb.ks

bb.il:                                            ; preds = %bb.hp
  %.sroa.4321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4321.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, i64 16, i1 false), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10327)
  %i.va = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.te, ptr %i.va, align 8, !alias.scope !10330, !noalias !10037
  %.sroa.2319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3315.0.copyload.i, ptr %.sroa.2319.0..sroa_idx.i, align 16, !alias.scope !10330, !noalias !10037
  %.sroa.3320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5316.0.copyload.i, ptr %.sroa.3320.0..sroa_idx.i, align 8, !alias.scope !10330, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10332, !noalias !10333
  br label %bb.ks

bb.im:                                            ; preds = %bb.in
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ve) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !10041

bb.in:                                            ; preds = %bb.gs, %bb.f
  %.sink15.i225.sroa.gep377.i101 = phi ptr [ %.sink15.i225.sroa.gep377.i, %bb.f ], [ %.sink15.i225.sroa.gep377.i102, %bb.gs ] ; 2 uses
  %.sink15.i225.sroa.gep.i95 = phi ptr [ %.sink15.i225.sroa.gep.i, %bb.f ], [ %.sink15.i225.sroa.gep.i96, %bb.gs ]
  %.sink18.i223.sroa.gep376.i89 = phi ptr [ %.sink18.i223.sroa.gep376.i, %bb.f ], [ %.sink18.i223.sroa.gep376.i90, %bb.gs ] ; 2 uses
  %.sink18.i223.sroa.gep.i83 = phi ptr [ %.sink18.i223.sroa.gep.i, %bb.f ], [ %.sink18.i223.sroa.gep.i84, %bb.gs ]
  %i.vc = phi ptr [ %i.bm, %bb.f ], [ %i.rv, %bb.gs ] ; 9 uses
  %i.vd = phi ptr [ %i.bl, %bb.f ], [ %i.rw, %bb.gs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !10037
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ar, ptr noundef nonnull align 8 %i.ve, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.io unwind label %bb.im, !noalias !10041

bb.io:                                            ; preds = %bb.in
  %i.vf = load i64, ptr %i.ar, align 8, !range !499, !noalias !10037, !noundef !3 ; 3 uses
  %i.vg = icmp eq i64 %i.vf, 21
  br i1 %i.vg, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10037
  br label %.thread115

bb.iq:                                            ; preds = %bb.io
  %.sroa.3359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3359.0.copyload.i = load ptr, ptr %.sroa.3359.0..sroa_idx.i, align 8, !noalias !10037 ; 3 uses
  %.sroa.5360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.5360.0.copyload.i = load ptr, ptr %.sroa.5360.0..sroa_idx.i, align 8, !noalias !10037 ; 3 uses
  %.sroa.7361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.0..sroa_idx.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ve)
          to label %bb.is unwind label %bb.ir, !noalias !10041

bb.ir:                                            ; preds = %bb.iq
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.is:                                            ; preds = %bb.iq
  %.not.i220.i = icmp eq i64 %i.vf, 20
  br i1 %.not.i220.i, label %bb.it, label %bb.jo

bb.it:                                            ; preds = %bb.is
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3359.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5360.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !10037
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !10037
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.vl = load ptr, ptr %i.vk, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  %i.vm = load i64, ptr %i.vl, align 8, !range !7, !alias.scope !10337, !noalias !10339, !noundef !3 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !10337, !noalias !10339, !nonnull !3, !noundef !3 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !alias.scope !10337, !noalias !10339, !noundef !3 ; 3 uses
  %i.vr = atomicrmw add ptr %i.vo, i64 1 monotonic, align 8, !noalias !10340
  %i.vs = icmp slt i64 %i.vr, 0                   ; 3 uses
  switch i64 %i.vm, label %default.unreachable38 [
    i64 0, label %bb.iu
    i64 1, label %bb.iv
    i64 2, label %bb.iw
  ]

bb.iu:                                            ; preds = %bb.it
  br i1 %i.vs, label %bb.ix, label %bb.jh

bb.iv:                                            ; preds = %bb.it
  br i1 %i.vs, label %bb.iz, label %bb.iy

bb.iw:                                            ; preds = %bb.it
  br i1 %i.vs, label %bb.jc, label %bb.jb

bb.ix:                                            ; preds = %bb.iu
  call void @llvm.trap()
  unreachable

.sink.split.i222.i:                               ; preds = %bb.jf, %bb.iy
  %.sink18.i223.sroa.phi.i = phi ptr [ %.sink18.i223.sroa.gep.i83, %bb.jf ], [ %.sink18.i223.sroa.gep376.i89, %bb.iy ]
  %.sink16.i224.i = phi ptr [ %i.wa, %bb.jf ], [ %i.vo, %bb.iy ]
  %.sink15.i225.sroa.phi.i = phi ptr [ %.sink15.i225.sroa.gep.i95, %bb.jf ], [ %.sink15.i225.sroa.gep377.i101, %bb.iy ]
  %.sink13.i226.i = phi i64 [ %i.wc, %bb.jf ], [ %i.vq, %bb.iy ]
  %.sink12.ph.i227.i = phi i64 [ 40, %bb.jf ], [ 24, %bb.iy ]
  %.sink10.ph.i228.i = phi ptr [ %i.wg, %bb.jf ], [ %i.vu, %bb.iy ]
  %.sink9.ph.i229.i = phi i64 [ 48, %bb.jf ], [ 32, %bb.iy ]
  %.sink7.ph.i230.i = phi i64 [ %i.wi, %bb.jf ], [ %i.vw, %bb.iy ]
  store ptr %.sink16.i224.i, ptr %.sink18.i223.sroa.phi.i, align 8, !alias.scope !10334, !noalias !10341
  store i64 %.sink13.i226.i, ptr %.sink15.i225.sroa.phi.i, align 8, !alias.scope !10334, !noalias !10341
  br label %bb.jh

bb.iy:                                            ; preds = %bb.iv
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !10337, !noalias !10339, !nonnull !3, !noundef !3 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.vw = load i64, ptr %i.vv, align 8, !alias.scope !10337, !noalias !10339, !noundef !3
  %i.vx = atomicrmw add ptr %i.vu, i64 1 monotonic, align 8, !noalias !10340
  %i.vy = icmp slt i64 %i.vx, 0
  br i1 %i.vy, label %bb.ja, label %.sink.split.i222.i

bb.iz:                                            ; preds = %bb.iv
  call void @llvm.trap()
  unreachable

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.trap()
  unreachable

bb.jb:                                            ; preds = %bb.iw
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !alias.scope !10337, !noalias !10339, !nonnull !3, !noundef !3 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !10337, !noalias !10339, !noundef !3
  %i.wd = atomicrmw add ptr %i.wa, i64 1 monotonic, align 8, !noalias !10340
  %i.we = icmp slt i64 %i.wd, 0
  br i1 %i.we, label %bb.je, label %bb.jd

bb.jc:                                            ; preds = %bb.iw
  call void @llvm.trap()
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !10337, !noalias !10339, !nonnull !3, !noundef !3 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %i.wi = load i64, ptr %i.wh, align 8, !alias.scope !10337, !noalias !10339, !noundef !3
  %i.wj = atomicrmw add ptr %i.wg, i64 1 monotonic, align 8, !noalias !10340
  %i.wk = icmp slt i64 %i.wj, 0
  br i1 %i.wk, label %bb.jg, label %bb.jf

bb.je:                                            ; preds = %bb.jb
  call void @llvm.trap()
  unreachable

bb.jf:                                            ; preds = %bb.jd
  store ptr %i.vo, ptr %.sink18.i223.sroa.gep376.i89, align 8, !alias.scope !10334, !noalias !10341
  store i64 %i.vq, ptr %.sink15.i225.sroa.gep377.i101, align 8, !alias.scope !10334, !noalias !10341
  br label %.sink.split.i222.i

bb.jg:                                            ; preds = %bb.jd
  call void @llvm.trap()
  unreachable

bb.jh:                                            ; preds = %.sink.split.i222.i, %bb.iu
  %.sink12.i231.i = phi i64 [ 8, %bb.iu ], [ %.sink12.ph.i227.i, %.sink.split.i222.i ]
  %.sink10.i232.i = phi ptr [ %i.vo, %bb.iu ], [ %.sink10.ph.i228.i, %.sink.split.i222.i ]
  %.sink9.i233.i = phi i64 [ 16, %bb.iu ], [ %.sink9.ph.i229.i, %.sink.split.i222.i ]
  %.sink7.i234.i = phi i64 [ %i.vq, %bb.iu ], [ %.sink7.ph.i230.i, %.sink.split.i222.i ]
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink12.i231.i
  store ptr %.sink10.i232.i, ptr %i.wl, align 8, !alias.scope !10334, !noalias !10341
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink9.i233.i
  store i64 %.sink7.i234.i, ptr %i.wm, align 8, !alias.scope !10334, !noalias !10341
  store i64 %i.vm, ptr %i.ao, align 8, !alias.scope !10334, !noalias !10341
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ao, ptr noundef nonnull %.sroa.3359.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5360.0.copyload.i)
          to label %bb.ji unwind label %bb.jm, !noalias !10041

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10342)
  %i.wn = load i64, ptr %i.ap, align 8, !range !4551, !alias.scope !10345, !noalias !10347, !noundef !3 ; 2 uses
  %.not.i238.i = icmp eq i64 %i.wn, 20
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8, !alias.scope !10348, !noalias !10037 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !10348, !noalias !10037 ; 2 uses
  br i1 %.not.i238.i, label %bb.jj, label %bb.jn

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10037
  store ptr %i.wp, ptr %i.aq, align 8, !noalias !10037
  %i.ws = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.wr, ptr %i.ws, align 8, !noalias !10037
  %i.wt = icmp eq ptr %i.wp, null
  br i1 %i.wt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.wu = atomicrmw sub ptr %i.wp, i64 1 release, align 8, !noalias !10349
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.jl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i

bb.jl:                                            ; preds = %bb.jk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i unwind label %.thread488.i, !noalias !10041

.thread488.i:                                     ; preds = %bb.jl
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i: ; preds = %bb.jl, %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10037
  %i.wx = load ptr, ptr %i.vi, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wx)
          to label %bb.ks unwind label %.thread485.i, !noalias !10041

bb.jm:                                            ; preds = %bb.jh
  %i.wy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread485.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.jn:                                            ; preds = %bb.ji
  %.sroa.12374.0..sroa_idx375.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.4381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4381.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12374.0..sroa_idx375.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10356)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.wn, ptr %i.xa, align 8, !alias.scope !10359, !noalias !10037
  %.sroa.2379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.wp, ptr %.sroa.2379.0..sroa_idx.i, align 16, !alias.scope !10359, !noalias !10037
  %.sroa.3380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.wr, ptr %.sroa.3380.0..sroa_idx.i, align 8, !alias.scope !10359, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10361, !noalias !10362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10037
  br label %bb.ks

bb.jo:                                            ; preds = %bb.is
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4365.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, i64 16, i1 false), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10363)
  %i.xb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.vf, ptr %i.xb, align 8, !alias.scope !10366, !noalias !10037
  %.sroa.2363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3359.0.copyload.i, ptr %.sroa.2363.0..sroa_idx.i, align 16, !alias.scope !10366, !noalias !10037
  %.sroa.3364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5360.0.copyload.i, ptr %.sroa.3364.0..sroa_idx.i, align 8, !alias.scope !10366, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10368, !noalias !10369
  br label %bb.ks

bb.jp:                                            ; preds = %bb.jq
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.xf) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !10041

bb.jq:                                            ; preds = %bb.f, %bb.ai
  %.sink15.i250.sroa.gep431.i113 = phi ptr [ %.sink15.i250.sroa.gep431.i, %bb.f ], [ %.sink15.i250.sroa.gep431.i114, %bb.ai ] ; 2 uses
  %.sink15.i250.sroa.gep.i111 = phi ptr [ %.sink15.i250.sroa.gep.i, %bb.f ], [ %.sink15.i250.sroa.gep.i112, %bb.ai ]
  %.sink18.i248.sroa.gep430.i109 = phi ptr [ %.sink18.i248.sroa.gep430.i, %bb.f ], [ %.sink18.i248.sroa.gep430.i110, %bb.ai ] ; 2 uses
  %.sink18.i248.sroa.gep.i107 = phi ptr [ %.sink18.i248.sroa.gep.i, %bb.f ], [ %.sink18.i248.sroa.gep.i108, %bb.ai ]
  %i.xd = phi ptr [ %i.bm, %bb.f ], [ %i.bn, %bb.ai ] ; 9 uses
  %i.xe = phi ptr [ %i.bl, %bb.f ], [ %i.bo, %bb.ai ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10037
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ab, ptr noundef nonnull align 8 %i.xf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jr unwind label %bb.jp, !noalias !10041

bb.jr:                                            ; preds = %bb.jq
  %i.xg = load i64, ptr %i.ab, align 8, !range !499, !noalias !10037, !noundef !3 ; 3 uses
  %i.xh = icmp eq i64 %i.xg, 21
  br i1 %i.xh, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10037
  br label %.thread115

bb.jt:                                            ; preds = %bb.jr
  %.sroa.3413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.3413.0.copyload.i = load ptr, ptr %.sroa.3413.0..sroa_idx.i, align 8, !noalias !10037 ; 3 uses
  %.sroa.5414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5414.0.copyload.i = load ptr, ptr %.sroa.5414.0..sroa_idx.i, align 8, !noalias !10037 ; 3 uses
  %.sroa.7415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.0..sroa_idx.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10037
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.xf)
          to label %bb.jv unwind label %bb.ju, !noalias !10041

bb.ju:                                            ; preds = %bb.jt
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.jv:                                            ; preds = %bb.jt
  %.not.i245.i = icmp eq i64 %i.xg, 20
  br i1 %.not.i245.i, label %bb.jw, label %bb.kr

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3413.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5414.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10037
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10037
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.xm = load ptr, ptr %i.xl, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10373)
  %i.xn = load i64, ptr %i.xm, align 8, !range !7, !alias.scope !10373, !noalias !10375, !noundef !3 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !alias.scope !10373, !noalias !10375, !nonnull !3, !noundef !3 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xr = load i64, ptr %i.xq, align 8, !alias.scope !10373, !noalias !10375, !noundef !3 ; 3 uses
  %i.xs = atomicrmw add ptr %i.xp, i64 1 monotonic, align 8, !noalias !10376
  %i.xt = icmp slt i64 %i.xs, 0                   ; 3 uses
  switch i64 %i.xn, label %default.unreachable38 [
    i64 0, label %bb.jx
    i64 1, label %bb.jy
    i64 2, label %bb.jz
  ]

bb.jx:                                            ; preds = %bb.jw
  br i1 %i.xt, label %bb.ka, label %bb.kk

bb.jy:                                            ; preds = %bb.jw
  br i1 %i.xt, label %bb.kc, label %bb.kb

bb.jz:                                            ; preds = %bb.jw
  br i1 %i.xt, label %bb.kf, label %bb.ke

bb.ka:                                            ; preds = %bb.jx
  tail call void @llvm.trap()
  unreachable

.sink.split.i247.i:                               ; preds = %bb.ki, %bb.kb
  %.sink18.i248.sroa.phi.i = phi ptr [ %.sink18.i248.sroa.gep.i107, %bb.ki ], [ %.sink18.i248.sroa.gep430.i109, %bb.kb ]
  %.sink16.i249.i = phi ptr [ %i.yb, %bb.ki ], [ %i.xp, %bb.kb ]
  %.sink15.i250.sroa.phi.i = phi ptr [ %.sink15.i250.sroa.gep.i111, %bb.ki ], [ %.sink15.i250.sroa.gep431.i113, %bb.kb ]
  %.sink13.i251.i = phi i64 [ %i.yd, %bb.ki ], [ %i.xr, %bb.kb ]
  %.sink12.ph.i252.i = phi i64 [ 40, %bb.ki ], [ 24, %bb.kb ]
  %.sink10.ph.i253.i = phi ptr [ %i.yh, %bb.ki ], [ %i.xv, %bb.kb ]
  %.sink9.ph.i254.i = phi i64 [ 48, %bb.ki ], [ 32, %bb.kb ]
  %.sink7.ph.i255.i = phi i64 [ %i.yj, %bb.ki ], [ %i.xx, %bb.kb ]
  store ptr %.sink16.i249.i, ptr %.sink18.i248.sroa.phi.i, align 8, !alias.scope !10370, !noalias !10377
  store i64 %.sink13.i251.i, ptr %.sink15.i250.sroa.phi.i, align 8, !alias.scope !10370, !noalias !10377
  br label %bb.kk

bb.kb:                                            ; preds = %bb.jy
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !10373, !noalias !10375, !nonnull !3, !noundef !3 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !10373, !noalias !10375, !noundef !3
  %i.xy = atomicrmw add ptr %i.xv, i64 1 monotonic, align 8, !noalias !10376
  %i.xz = icmp slt i64 %i.xy, 0
  br i1 %i.xz, label %bb.kd, label %.sink.split.i247.i

bb.kc:                                            ; preds = %bb.jy
  tail call void @llvm.trap()
  unreachable

bb.kd:                                            ; preds = %bb.kb
  tail call void @llvm.trap()
  unreachable

bb.ke:                                            ; preds = %bb.jz
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !alias.scope !10373, !noalias !10375, !nonnull !3, !noundef !3 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.yd = load i64, ptr %i.yc, align 8, !alias.scope !10373, !noalias !10375, !noundef !3
  %i.ye = atomicrmw add ptr %i.yb, i64 1 monotonic, align 8, !noalias !10376
  %i.yf = icmp slt i64 %i.ye, 0
  br i1 %i.yf, label %bb.kh, label %bb.kg

bb.kf:                                            ; preds = %bb.jz
  tail call void @llvm.trap()
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.yh = load ptr, ptr %i.yg, align 8, !alias.scope !10373, !noalias !10375, !nonnull !3, !noundef !3 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !10373, !noalias !10375, !noundef !3
  %i.yk = atomicrmw add ptr %i.yh, i64 1 monotonic, align 8, !noalias !10376
  %i.yl = icmp slt i64 %i.yk, 0
  br i1 %i.yl, label %bb.kj, label %bb.ki

bb.kh:                                            ; preds = %bb.ke
  tail call void @llvm.trap()
  unreachable

bb.ki:                                            ; preds = %bb.kg
  store ptr %i.xp, ptr %.sink18.i248.sroa.gep430.i109, align 8, !alias.scope !10370, !noalias !10377
  store i64 %i.xr, ptr %.sink15.i250.sroa.gep431.i113, align 8, !alias.scope !10370, !noalias !10377
  br label %.sink.split.i247.i

bb.kj:                                            ; preds = %bb.kg
  tail call void @llvm.trap()
  unreachable

bb.kk:                                            ; preds = %.sink.split.i247.i, %bb.jx
  %.sink12.i256.i = phi i64 [ 8, %bb.jx ], [ %.sink12.ph.i252.i, %.sink.split.i247.i ]
  %.sink10.i257.i = phi ptr [ %i.xp, %bb.jx ], [ %.sink10.ph.i253.i, %.sink.split.i247.i ]
  %.sink9.i258.i = phi i64 [ 16, %bb.jx ], [ %.sink9.ph.i254.i, %.sink.split.i247.i ]
  %.sink7.i259.i = phi i64 [ %i.xr, %bb.jx ], [ %.sink7.ph.i255.i, %.sink.split.i247.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink12.i256.i
  store ptr %.sink10.i257.i, ptr %i.ym, align 8, !alias.scope !10370, !noalias !10377
  %i.yn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink9.i258.i
  store i64 %.sink7.i259.i, ptr %i.yn, align 8, !alias.scope !10370, !noalias !10377
  store i64 %i.xn, ptr %i.y, align 8, !alias.scope !10370, !noalias !10377
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %.sroa.3413.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5414.0.copyload.i)
          to label %bb.kl unwind label %bb.kp, !noalias !10041

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  %i.yo = load i64, ptr %i.z, align 8, !range !4551, !alias.scope !10381, !noalias !10383, !noundef !3 ; 2 uses
  %.not.i263.i = icmp eq i64 %i.yo, 20
  %i.yp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !alias.scope !10384, !noalias !10037 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !alias.scope !10384, !noalias !10037 ; 2 uses
  br i1 %.not.i263.i, label %bb.km, label %bb.kq

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10037
  store ptr %i.yq, ptr %i.aa, align 8, !noalias !10037
  %i.yt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ys, ptr %i.yt, align 8, !noalias !10037
  %i.yu = icmp eq ptr %i.yq, null
  br i1 %i.yu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.yv = atomicrmw sub ptr %i.yq, i64 1 release, align 8, !noalias !10385
  %i.yw = icmp eq i64 %i.yv, 1
  br i1 %i.yw, label %bb.ko, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i unwind label %.thread509.i, !noalias !10041

.thread509.i:                                     ; preds = %bb.ko
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i: ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  %i.yy = load ptr, ptr %i.xj, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yy)
          to label %bb.ks unwind label %.thread506.i, !noalias !10041

bb.kp:                                            ; preds = %bb.kk
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread506.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.kq:                                            ; preds = %bb.kl
  %.sroa.12428.0..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4435.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx429.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10392)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.yo, ptr %i.zb, align 8, !alias.scope !10395, !noalias !10037
  %.sroa.2433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.yq, ptr %.sroa.2433.0..sroa_idx.i, align 16, !alias.scope !10395, !noalias !10037
  %.sroa.3434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ys, ptr %.sroa.3434.0..sroa_idx.i, align 8, !alias.scope !10395, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10397, !noalias !10398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  br label %bb.ks

bb.kr:                                            ; preds = %bb.jv
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, i64 16, i1 false), !noalias !10037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.xg, ptr %i.zc, align 8, !alias.scope !10402, !noalias !10037
  %.sroa.2417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3413.0.copyload.i, ptr %.sroa.2417.0..sroa_idx.i, align 16, !alias.scope !10402, !noalias !10037
  %.sroa.3418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5414.0.copyload.i, ptr %.sroa.3418.0..sroa_idx.i, align 8, !alias.scope !10402, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10404, !noalias !10405
  br label %bb.ks

.thread115:                                       ; preds = %bb.js, %bb.ip, %bb.hm, %bb.go
  %.ph = phi ptr [ %i.mg, %bb.go ], [ %i.tb, %bb.hm ], [ %i.vc, %bb.ip ], [ %i.xd, %bb.js ]
  %.sink.i.ph = phi i8 [ 3, %bb.go ], [ 4, %bb.hm ], [ 5, %bb.ip ], [ 6, %bb.js ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !10037
end_hunk_2
begin_hunk_3_@_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs7p2uQeJxui2_9deltalake:bb.a
  unreachable

bb.z:                                             ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10759
  %.val6.i.i = load ptr, ptr %i.cf, align 16, !noalias !10759
  %i.ca = getelementptr i8, ptr %1, i64 1672
  %.val7.i.i = load ptr, ptr %i.ca, align 8, !noalias !10759, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6.i.i, ptr nonnull %.val7.i.i) #37
          to label %.body.i.i unwind label %bb.aj, !noalias !10768

bb.aa:                                            ; preds = %bb.v, %bb.p
  %i.cb = phi ptr [ %i.ar, %bb.v ], [ %i.ac, %bb.p ] ; 6 uses
  %i.cc = phi ptr [ %i.as, %bb.v ], [ %i.ab, %bb.p ] ; 5 uses
  %i.cd = phi ptr [ %i.av, %bb.v ], [ %.phi.trans.insert.i, %bb.p ] ; 6 uses
  %i.ce = phi ptr [ %i.aw, %bb.v ], [ %i.aq, %bb.p ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10759
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.z, !noalias !10768

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i64, ptr %i.a, align 8, !range !499, !noalias !10759, !noundef !3 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 21
  br i1 %i.ch, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10759
  store i8 3, ptr %i.cd, align 16, !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10759
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.837.0.copyload = load ptr, ptr %.sroa.837.0..sroa_idx, align 8, !noalias !10759
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939.0..sroa_idx, i64 16, i1 false), !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10759
  %.val.i.i = load ptr, ptr %i.cf, align 16, !noalias !10759 ; 5 uses
  %i.ci = getelementptr i8, ptr %1, i64 1672
  %.val5.i.i = load ptr, ptr %i.ci, align 8, !noalias !10759, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.cj = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !10768 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.cj(ptr noundef nonnull %.val.i.i)
          to label %bb.ae unwind label %bb.ag, !noalias !10768

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !92, !invariant.load !3, !noalias !10768 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !105, !invariant.load !3, !noalias !10768
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cl, i64 noundef range(i64 1, 536870913) %i.co) #27, !noalias !10768
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !92, !invariant.load !3, !noalias !10768 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.body.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !105, !invariant.load !3, !noalias !10768
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cr, i64 noundef range(i64 1, 536870913) %i.cu) #27, !noalias !10768
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.af, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ce)
          to label %.thread unwind label %bb.ai, !noalias !10768

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, i64 16, i1 false), !noalias !10769
  store i8 1, ptr %i.cd, align 16, !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.al

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.aj:                                            ; preds = %bb.z, %.body.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10768
  unreachable

bb.ak:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.sroa.9, i64 16, i1 false)
  store i8 1, ptr %i.av, align 16, !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  %i.cx = icmp eq i64 %.sroa.8.i.i.sroa.0.0.copyload, 21
  br i1 %i.cx, label %bb.as, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.cy = phi ptr [ %i.cb, %.thread ], [ %i.ar, %bb.ak ] ; 4 uses
  %i.cz = phi ptr [ %i.cc, %.thread ], [ %i.as, %bb.ak ] ; 4 uses
  %i.da = phi ptr [ %i.ce, %.thread ], [ %i.aw, %bb.ak ]
  %.sroa.837.048 = phi ptr [ %.sroa.837.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.8.0.copyload, %bb.ak ] ; 3 uses
  %.sroa.7.047 = phi ptr [ %.sroa.7.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.7.0.copyload, %bb.ak ] ; 3 uses
  %.sroa.034.046 = phi i64 [ %i.cg, %.thread ], [ %.sroa.8.i.i.sroa.0.0.copyload, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.da)
          to label %bb.an unwind label %bb.am, !noalias !10758

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.an:                                            ; preds = %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10770)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %.val.i7.i = load ptr, ptr %i.dd, align 16, !alias.scope !10770, !noalias !10754, !nonnull !3, !noundef !3 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i7.i)
          to label %bb.ao unwind label %.body.i8.i, !noalias !10773

.body.i8.i:                                       ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #27, !noalias !10773
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dc) #37
          to label %.body10.i unwind label %bb.ap, !noalias !10758

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #27, !noalias !10773
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dc)
          to label %bb.at unwind label %bb.aq, !noalias !10758

bb.ap:                                            ; preds = %.body.i8.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10758
  unreachable

.body10.i:                                        ; preds = %bb.aq, %.body.i8.i, %bb.l
  %i.dg = phi ptr [ %i.aj, %bb.l ], [ %i.cy, %bb.aq ], [ %i.cy, %.body.i8.i ]
  %i.dh = phi ptr [ %i.ak, %bb.l ], [ %i.cz, %bb.aq ], [ %i.cz, %.body.i8.i ]
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.l ], [ %i.di, %bb.aq ], [ %i.de, %.body.i8.i ]
  store i8 2, ptr %i.dg, align 16, !noalias !10754
  br label %.body11

bb.aq:                                            ; preds = %bb.ao
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

bb.ar:                                            ; preds = %.body.i, %bb.l
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10758
  unreachable

common.ret:                                       ; preds = %bb.az, %bb.as
  %storemerge = phi i8 [ 1, %bb.az ], [ 3, %bb.as ]
  store i8 %storemerge, ptr %i.f, align 8
  ret void

bb.as:                                            ; preds = %bb.ak, %.thread.i
  %i.dk = phi ptr [ %i.ar, %bb.ak ], [ %i.cb, %.thread.i ]
  store i8 3, ptr %i.dk, align 16, !noalias !10754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.926.sroa.7)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.at:                                            ; preds = %bb.ao
  store i8 1, ptr %i.cy, align 16, !noalias !10754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.926.sroa.7)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.cz)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %.not.i = icmp eq i64 %.sroa.034.046, 20
  br i1 %.not.i, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.047) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.048) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1737 ; 2 uses
  store i8 0, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.do = load ptr, ptr %i.dn, align 16, !nonnull !3, !noundef !3
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %.sroa.7.047, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.837.048, ptr noundef nonnull %i.do)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  store i8 0, ptr %i.dm, align 1
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit, %bb.ay
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1738
  store i8 0, ptr %i.dq, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %common.ret

bb.ba:                                            ; preds = %.body11, %bb.au, %bb.ax
  %.pn4.pn = phi { ptr, i32 } [ %i.dp, %bb.ax ], [ %i.dl, %bb.au ], [ %eh.lpad-body12, %.body11 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1737
  %i.ds = load i8, ptr %i.dr, align 1, !range !40, !noundef !3
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15

bb.bb:                                            ; preds = %bb.av
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831, i64 16, i1 false)
  store i64 %.sroa.034.046, ptr %i.d, align 8, !alias.scope !10774
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.7.047, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !10774
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.837.048, ptr %.sroa.333.0..sroa_idx, align 8, !alias.scope !10774
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10778)
  call void @llvm.experimental.noalias.scope.decl(metadata !10781)
  %i.dv = load ptr, ptr %i.du, align 16, !alias.scope !10784, !nonnull !3, !noundef !3
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !10784
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.du) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.bb, %bb.bc
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1737
  store i8 0, ptr %i.dz, align 1
  br label %bb.az

bb.be:                                            ; preds = %bb.bg, %bb.bi, %.body11
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bf:                                            ; preds = %bb.ba
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10785)
  call void @llvm.experimental.noalias.scope.decl(metadata !10788)
  %i.ec = load ptr, ptr %i.eb, align 16, !alias.scope !10791, !nonnull !3, !noundef !3
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !10791
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15 unwind label %bb.be

bb.bh:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15
  store i8 0, ptr %i.w, align 2
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn7

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(336) %i.ef) #37
          to label %bb.bh unwind label %bb.be
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE5write0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [24 x i8], align 8            ; 3 uses
  %.sroa.3 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !474, !noundef !3
  switch i8 %i.d, label %default.unreachable37 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

default.unreachable37:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !39, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.i = getelementptr i8, ptr %i.e, i64 304      ; 2 uses
  %.val11 = load i64, ptr %i.i, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !range !9815, !alias.scope !10792, !noalias !10795, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 8
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3
  %.not2 = icmp eq i64 %.val11, %.val9
  br i1 %.not2, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx15, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

common.ret:                                       ; preds = %bb.n, %bb.h
  %storemerge = phi i8 [ 3, %bb.n ], [ 1, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake.exit, %bb.e, %bb.v, %bb.g
  %.sroa.028.0 = phi i64 [ %i.k, %bb.g ], [ %i.o, %bb.v ], [ 8, %bb.e ], [ 8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake.exit ]
  store i64 %.sroa.028.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br label %common.ret

.body:                                            ; preds = %bb.k, %bb.t, %bb.u, %bb.c
  %.pn6.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.aa, %bb.t ], [ %i.m, %bb.k ], [ %i.aa, %bb.u ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn6.pn

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #36
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #36
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.n) #37
          to label %.body unwind label %bb.w

bb.l:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE8do_write0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.o = load i64, ptr %i.a, align 8, !range !3225, !noundef !3 ; 3 uses
  %i.p = icmp eq i64 %i.o, 9
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 9, ptr %0, align 8
  br label %common.ret

bb.o:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake:bb.a
bb.gt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.sl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body41 unwind label %bb.gu, !noalias !11273

bb.gu:                                            ; preds = %bb.gt
  %i.sm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11273
  unreachable

bb.gv:                                            ; preds = %bb.gq, %.body.i.i38
  %i.sn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11273
  unreachable

bb.gw:                                            ; preds = %bb.go
  unreachable

_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.hb unwind label %bb.gx

bb.gx:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i, %select.unfold
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %.body41

bb.gy:                                            ; preds = %.noexc36
  %i.sp = getelementptr inbounds i8, ptr %i.rp, i64 -16
  %.val26 = load ptr, ptr %i.sp, align 8, !nonnull !3, !noundef !3
  %i.sq = getelementptr i8, ptr %i.rp, i64 -8
  %.val27 = load ptr, ptr %i.sq, align 8, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.val27, i64 16
  %i.ss = load i64, ptr %i.sr, align 8, !range !105, !invariant.load !3
  %i.st = add nsw i64 %i.ss, -1
  %i.su = and i64 %i.st, -16
  %i.sv = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.sx = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.sy = load ptr, ptr %i.sx, align 8, !invariant.load !3, !nonnull !3
  %i.sz = invoke { ptr, ptr } %i.sy(ptr noundef nonnull %i.sw, ptr noundef nonnull %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @180, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.cn)
          to label %bb.ha unwind label %bb.gz     ; 2 uses

bb.gz:                                            ; preds = %bb.gy
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %.body41

bb.ha:                                            ; preds = %bb.gy
  %i.tb = extractvalue { ptr, ptr } %i.sz, 0
  %i.tc = extractvalue { ptr, ptr } %i.sz, 1
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.tb, ptr %i.td, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store ptr %i.tc, ptr %i.te, align 8
  br label %bb.hj

bb.hb:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11269
  %i.tf = load <2 x ptr>, ptr %i.f, align 16, !noalias !11274
  %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.tg = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx, align 16, !noalias !11274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11264
  %i.th = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.tg, i64 0
  br label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, %bb.hb
  %.sroa.080.0 = phi i64 [ 10, %bb.hb ], [ %i.ts, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.ti = phi <2 x i64> [ %i.th, %bb.hb ], [ %i.tv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.tj = phi <2 x ptr> [ %i.tf, %bb.hb ], [ %i.tu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %.body45 unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.hc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.gg

.body41:                                          ; preds = %bb.gz, %bb.hi, %bb.hq, %bb.hr, %.body.i.i38, %bb.gt, %bb.gx, %.loopexit.split-lp, %.loopexit
  %.pn8.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.sl, %bb.gt ], [ %.pn.i.i39, %.body.i.i38 ], [ %i.so, %bb.gx ], [ %lpad.loopexit, %.loopexit ], [ %i.ud, %bb.hq ], [ %i.tp, %bb.hi ], [ %i.ud, %bb.hr ], [ %i.ta, %bb.gz ]
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tn) #37
          to label %.body45 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.ga, %bb.hi, %.body41, %.body45
  %i.to = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.ga, %.body, %bb.hv, %.body45
  %.pn13 = phi { ptr, i32 } [ %i.up, %bb.hv ], [ %.pn11, %.body45 ], [ %.pn, %.body ], [ %i.cx, %bb.c ], [ %.pn, %bb.ga ]
  store i8 2, ptr %i.cj, align 8
  resume { ptr, i32 } %.pn13

bb.hg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #36
  unreachable

bb.hh:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #36
  unreachable

bb.hi:                                            ; preds = %bb.hj
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.val19 = load ptr, ptr %i.tr, align 8
  %i.tq = getelementptr i8, ptr %1, i64 1728
  %.val20 = load ptr, ptr %i.tq, align 8, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val19, ptr nonnull %.val20) #37
          to label %.body41 unwind label %bb.hf

bb.hj:                                            ; preds = %bb.a, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 1720 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.tr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hk unwind label %bb.hi

bb.hk:                                            ; preds = %bb.hj
  %i.ts = load i64, ptr %i.ci, align 8, !range !499, !noundef !3 ; 3 uses
  %i.tt = icmp eq i64 %i.ts, 21
  br i1 %i.tt, label %bb.hl, label %bb.hm

common.ret:                                       ; preds = %bb.hw, %bb.hl
  %storemerge = phi i8 [ 3, %bb.hl ], [ 1, %bb.hw ]
  store i8 %storemerge, ptr %i.cj, align 8
  ret void

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.hm:                                            ; preds = %bb.hk
  %.sroa.375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.tu = load <2 x ptr>, ptr %.sroa.375.0..sroa_idx, align 8 ; 4 uses
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.tv = load <2 x i64>, ptr %.sroa.776.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.val17 = load ptr, ptr %i.tr, align 8          ; 5 uses
  %i.tw = getelementptr i8, ptr %1, i64 1728
  %.val18 = load ptr, ptr %i.tw, align 8, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.tx = load ptr, ptr %.val18, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i48, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.tx(ptr noundef nonnull %.val17)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.ty = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.tz = load i64, ptr %i.ty, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.ua = icmp eq i64 %i.tz, 0
  br i1 %i.ua, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ub = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.uc = load i64, ptr %i.ub, align 8, !range !105, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.tz, i64 noundef range(i64 1, 536870913) %i.uc) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.hq:                                            ; preds = %bb.hn
  %i.ud = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.uf = load i64, ptr %i.ue, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.ug = icmp eq i64 %i.uf, 0
  br i1 %i.ug, label %.body41, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.uh = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ui = load i64, ptr %i.uh, align 8, !range !105, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.uf, i64 noundef range(i64 1, 536870913) %i.ui) #27
  br label %.body41

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.hp, %bb.ho
  %.not.i51 = icmp eq i64 %i.ts, 20
  br i1 %.not.i51, label %bb.hs, label %bb.hc

bb.hs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.uj = extractelement <2 x ptr> %i.tu, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uj) ]
  %i.uk = extractelement <2 x ptr> %i.tu, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uk) ]
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ul)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i53 unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.um = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ul)
          to label %.body45 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.un = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i53: ; preds = %bb.hs
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ul)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57 unwind label %bb.gg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i53
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.uo)
          to label %bb.hw unwind label %bb.hv

bb.hv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit

bb.hw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57
  %.sroa.080.1 = phi i64 [ %.sroa.080.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ 20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57 ]
  %i.uq = phi <2 x i64> [ %i.ti, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57 ]
  %i.ur = phi <2 x ptr> [ %i.tj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ %i.tu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit57 ]
  store i64 %.sroa.080.1, ptr %0, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ur, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.1083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.uq, ptr %.sroa.1083.0..sroa_idx, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.us)
          to label %bb.hw unwind label %bb.hv
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.825.i.i.i = alloca [24 x i8], align 8    ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 16 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [320 x i8], align 16              ; 5 uses
  %i.v = alloca [1680 x i8], align 8              ; 6 uses
  %i.w = alloca [336 x i8], align 16              ; 6 uses
  %i.x = alloca [320 x i8], align 16              ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [48 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.8277.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.an = alloca [48 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [8 x i8], align 8                ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.3272.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.7268.i.i = alloca [32 x i8], align 8     ; 7 uses
  %i.ar = alloca [320 x i8], align 16             ; 5 uses
  %i.as = alloca [1680 x i8], align 8             ; 6 uses
  %i.at = alloca [336 x i8], align 16             ; 6 uses
  %i.au = alloca [320 x i8], align 16             ; 6 uses
  %i.av = alloca [336 x i8], align 16             ; 42 uses
  %i.aw = alloca [336 x i8], align 16             ; 7 uses
  %i.ax = alloca [56 x i8], align 8               ; 8 uses
  %i.ay = alloca [336 x i8], align 16             ; 7 uses
  %i.az = alloca [2016 x i8], align 16            ; 8 uses
  %i.ba = alloca [336 x i8], align 16             ; 7 uses
  %i.bb = alloca [64 x i8], align 8               ; 7 uses
  %i.bc = alloca [336 x i8], align 16             ; 7 uses
  %i.bd = alloca [432 x i8], align 8              ; 8 uses
  %i.be = alloca [336 x i8], align 16             ; 7 uses
  %i.bf = alloca [432 x i8], align 8              ; 8 uses
  %i.bg = alloca [336 x i8], align 16             ; 7 uses
  %i.bh = alloca [56 x i8], align 8               ; 8 uses
  %i.bi = alloca [336 x i8], align 16             ; 7 uses
  %i.bj = alloca [56 x i8], align 8               ; 8 uses
  %i.bk = alloca [336 x i8], align 16             ; 7 uses
  %i.bl = alloca [528 x i8], align 8              ; 8 uses
  %i.bm = alloca [336 x i8], align 16             ; 7 uses
  %i.bn = alloca [3024 x i8], align 16            ; 8 uses
  %i.bo = alloca [336 x i8], align 16             ; 7 uses
  %i.bp = alloca [2152 x i8], align 8             ; 8 uses
  %i.bq = alloca [64 x i8], align 8               ; 7 uses
  %i.br = alloca [320 x i8], align 16             ; 21 uses
  %i.bs = alloca [200 x i8], align 8              ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 9 uses
  %i.bu = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.bv = alloca [40 x i8], align 8               ; 9 uses
  %i.bw = alloca [48 x i8], align 8               ; 10 uses
  %i.bx = alloca [48 x i8], align 8               ; 7 uses
  %i.by = alloca [56 x i8], align 8               ; 7 uses
  %i.bz = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %i.ca = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.433.i.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.734.i.i = alloca [272 x i8], align 16    ; 6 uses
  %.sroa.3.i.sroa.5.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.7.i = alloca [272 x i8], align 8 ; 6 uses
  %.sroa.826.i.sroa.8.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.826.i.sroa.9.i = alloca [272 x i8], align 8 ; 8 uses
  %i.cb = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cc = alloca [200 x i8], align 8              ; 11 uses
  %.sroa.786.i = alloca [32 x i8], align 16       ; 8 uses
  %.sroa.887.i = alloca [288 x i8], align 16      ; 6 uses
  %.sroa.18.sroa.6.i = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.18.sroa.7.i = alloca [288 x i8], align 8 ; 7 uses
  %i.cd = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.3.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.663.i = alloca [272 x i8], align 16      ; 6 uses
  %.sroa.859.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.960.i = alloca [272 x i8], align 16      ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !range !474, !noundef !3
  switch i8 %i.cf, label %default.unreachable66 [
    i8 0, label %.thread67
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable66:                            ; preds = %bb.nd, %bb.ld, %bb.do, %bb.dk, %bb.v, %bb.m, %bb.e, %bb.a
  unreachable

.thread67:                                        ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.ch = load ptr, ptr %i.cg, align 16, !nonnull !3, !align !39, !noundef !3
  %i.ci = load ptr, ptr %1, align 16, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !3
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store ptr %i.ci, ptr %.sroa.717.0..sroa_idx, align 16
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store i64 %i.ck, ptr %.sroa.818.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.ch, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1732
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1733
  store i24 65793, ptr %.sroa.13.0..sroa_idx, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.663.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1732
  br label %bb.f

.body12:                                          ; preds = %.body
  store i8 2, ptr %i.ce, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #36
  unreachable
end_hunk_4
begin_hunk_5_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake:bb.a
  %i.aki = phi ptr [ %i.ako, %bb.oz ], [ %i.vi, %bb.pf ], [ %i.vi, %bb.pe ], [ %i.vi, %bb.pe ], [ %i.vi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.akj = phi ptr [ %i.akp, %bb.oz ], [ %i.vj, %bb.pf ], [ %i.vj, %bb.pe ], [ %i.vj, %bb.pe ], [ %i.vj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.akk = phi ptr [ %i.akq, %bb.oz ], [ %i.vk, %bb.pf ], [ %i.vk, %bb.pe ], [ %i.vk, %bb.pe ], [ %i.vk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.akl = phi ptr [ %i.akr, %bb.oz ], [ %i.vl, %bb.pf ], [ %i.vl, %bb.pe ], [ %i.vl, %bb.pe ], [ %i.vl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.pn79.i.i = phi { ptr, i32 } [ %i.aks, %bb.oz ], [ %.pn76.pn.i.i, %bb.pf ], [ %.pn76.pn.i.i, %bb.pe ], [ %.pn76.pn.i.i, %bb.pe ], [ %.pn76.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 2722
  store i8 0, ptr %i.akm, align 2, !noalias !11394
  %i.akn = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.akn, align 1, !noalias !11394
  store i8 2, ptr %i.akk, align 16, !noalias !11394
  br label %.body46.i

bb.oz:                                            ; preds = %bb.pb, %bb.ow
  %i.ako = phi ptr [ %i.uv, %bb.pb ], [ %i.ug, %bb.ow ]
  %i.akp = phi ptr [ %i.uw, %bb.pb ], [ %i.uh, %bb.ow ]
  %i.akq = phi ptr [ %i.ux, %bb.pb ], [ %i.ui, %bb.ow ]
  %i.akr = phi ptr [ %i.uy, %bb.pb ], [ %i.uj, %bb.ow ]
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %bb.oy

bb.pa:                                            ; preds = %bb.ot
  %.sroa.2274.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.2274.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3272.i.i, i64 32, i1 false), !noalias !11394
  call void @llvm.experimental.noalias.scope.decl(metadata !11679)
  %i.akt = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.0266.0.copyload267.i.i, ptr %i.akt, align 8, !alias.scope !11682, !noalias !11394
  store i64 36, ptr %i.av, align 16, !alias.scope !11684, !noalias !11685
  br label %bb.fh

bb.pb:                                            ; preds = %bb.fh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(320) %i.uz)
          to label %bb.pd unwind label %bb.oz, !noalias !11398

bb.pc:                                            ; preds = %bb.fh
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.aku, align 1, !noalias !11394
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb, %bb.fh
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 2722
  store i8 0, ptr %i.akv, align 2, !noalias !11394
  br label %bb.pg

bb.pe:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 2 uses
  %i.akx = load i64, ptr %i.akw, align 16, !range !5789, !noalias !11394, !noundef !3 ; 3 uses
  %i.aky = icmp ne i64 %i.akx, 31
  call void @llvm.assume(i1 %i.aky)
  %i.akz = add nsw i64 %i.akx, -11
  %i.ala = icmp samesign ugt i64 %i.akx, 10
  %i.alb = select i1 %i.ala, i64 %i.akz, i64 20
  switch i64 %i.alb, label %bb.pf [
    i64 13, label %bb.oy
    i64 20, label %bb.oy
  ]

bb.pf:                                            ; preds = %bb.pe
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(320) %i.akw) #37
          to label %bb.oy unwind label %bb.ej, !noalias !11398

.thread107.i:                                     ; preds = %bb.os, %bb.kr, %bb.kl, %bb.ke, %bb.jy, %bb.js, %bb.jl, %bb.je, %bb.iy, %bb.is, %bb.ii
  %i.alc = phi ptr [ %i.aab, %bb.ii ], [ %i.aaw, %bb.is ], [ %i.abf, %bb.iy ], [ %i.abo, %bb.je ], [ %i.aca, %bb.jl ], [ %i.acm, %bb.js ], [ %i.acv, %bb.jy ], [ %i.ade, %bb.ke ], [ %i.adr, %bb.kl ], [ %i.aea, %bb.kr ], [ %i.ahu, %bb.os ]
  %i.ald = phi ptr [ %i.aad, %bb.ii ], [ %i.aay, %bb.is ], [ %i.abh, %bb.iy ], [ %i.abq, %bb.je ], [ %i.acc, %bb.jl ], [ %i.aco, %bb.js ], [ %i.acx, %bb.jy ], [ %i.adg, %bb.ke ], [ %i.adt, %bb.kl ], [ %i.aec, %bb.kr ], [ %i.ahw, %bb.os ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.ii ], [ 4, %bb.is ], [ 5, %bb.iy ], [ 6, %bb.je ], [ 7, %bb.jl ], [ 8, %bb.js ], [ 9, %bb.jy ], [ 10, %bb.ke ], [ 11, %bb.kl ], [ 12, %bb.kr ], [ 14, %bb.os ]
  store i8 %.sink.i.ph.i, ptr %i.ald, align 16, !noalias !11394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3272.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !11275
  br label %bb.ph

bb.pg:                                            ; preds = %bb.pd, %bb.ou
  %i.ale = phi ptr [ %i.ug, %bb.ou ], [ %i.uv, %bb.pd ] ; 3 uses
  %i.alf = phi ptr [ %i.uh, %bb.ou ], [ %i.uw, %bb.pd ]
  %i.alg = phi ptr [ %i.ui, %bb.ou ], [ %i.ux, %bb.pd ]
  %i.alh = phi ptr [ %i.uj, %bb.ou ], [ %i.uy, %bb.pd ]
  %.sroa.080.0.copyload81.i = phi i64 [ %.sroa.080.0.copyload81.pre.i, %bb.ou ], [ 36, %bb.pd ] ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.ali, align 1, !noalias !11394
  %.sroa.18.0..sroa_idx82.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.18.sroa.0.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx82.i, align 8, !noalias !11678
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx82.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx82.sroa_idx.i, i64 32, i1 false), !noalias !11678
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx82.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx82.sroa_idx.i, i64 288, i1 false), !noalias !11678
  store i8 1, ptr %i.alg, align 16, !noalias !11394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3272.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !11275
  %i.alj = icmp eq i64 %.sroa.080.0.copyload81.i, 37
  br i1 %i.alj, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg, %.thread107.i
  %i.alk = phi ptr [ %i.ale, %bb.pg ], [ %i.alc, %.thread107.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.7.i)
  br label %bb.pm

bb.pi:                                            ; preds = %bb.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.786.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, i64 32, i1 false), !noalias !11275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.887.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, i64 288, i1 false), !noalias !11275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.7.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.alh)
          to label %bb.pl unwind label %bb.pj, !noalias !11279

bb.pj:                                            ; preds = %bb.pi
  %i.all = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.pk:                                            ; preds = %bb.df
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 2800
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(320) %i.alm) #37
          to label %bb.dd unwind label %bb.di, !noalias !11279

bb.pl:                                            ; preds = %bb.dc, %bb.dg, %bb.pi
  %i.aln = phi ptr [ %i.qn, %bb.dg ], [ %i.qn, %bb.dc ], [ %i.ale, %bb.pi ]
  %.sroa.083.1.i = phi i64 [ 36, %bb.dg ], [ 36, %bb.dc ], [ %.sroa.080.0.copyload81.i, %bb.pi ]
  %.sroa.484.1.i = phi i64 [ %.sroa.433.i.sroa.0.0.i, %bb.dg ], [ %i.qx, %bb.dc ], [ %.sroa.18.sroa.0.0.copyload.i, %bb.pi ]
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 1731
  store i8 0, ptr %i.alo, align 1, !noalias !11275
  store i64 %.sroa.083.1.i, ptr %0, align 16, !alias.scope !11279, !noalias !11686
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.484.1.i, ptr %.sroa.484.0..sroa_idx.i, align 8, !alias.scope !11279, !noalias !11686
  %.sroa.786.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.786.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.786.i, i64 32, i1 false), !noalias !11686
  %.sroa.887.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.887.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.887.i, i64 288, i1 false), !noalias !11686
  store i8 1, ptr %i.aln, align 4, !noalias !11275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.i)
  br label %common.ret

common.ret:                                       ; preds = %bb.pl, %bb.pm
  %storemerge = phi i8 [ 3, %bb.pm ], [ 1, %bb.pl ]
  store i8 %storemerge, ptr %i.ce, align 8
  ret void

bb.pm:                                            ; preds = %bb.cv, %bb.ph
  %i.alp = phi ptr [ %i.ql, %bb.cv ], [ %i.alk, %bb.ph ]
  %.sink.i.ph = phi i8 [ 3, %bb.cv ], [ 4, %bb.ph ]
  store i8 %.sink.i.ph, ptr %i.alp, align 4, !noalias !11275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.i)
  store i64 37, ptr %0, align 16
  br label %common.ret

bb.pn:                                            ; preds = %.body
  %i.alq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11690)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !11692 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !11692 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !11692 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !11692 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !3
  %i.t = load i8, ptr %i.r, align 1, !noundef !3
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11690)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !11687, !noalias !11690
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !11690, !noalias !11687
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !11687, !noalias !11690
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !11690, !noalias !11687
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider11delete_from0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !111, !noundef !3
  switch i8 %i.k, label %default.unreachable55 [
    i8 0, label %bb.c
    i8 1, label %bb.t
    i8 2, label %bb.u
  ]

default.unreachable55:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body42

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @234, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !11693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11697
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !range !34, !noalias !11697, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !1996, !noalias !11697, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %.noexc25
  %i.r = load i64, ptr %i.q, align 8, !noalias !11697
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #34
          to label %.noexc26 unwind label %bb.f

.noexc26:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.s, %bb.f ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %.body42 unwind label %bb.s

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body unwind label %bb.s

bb.h:                                             ; preds = %.noexc25
  %i.u = load ptr, ptr %i.q, align 8, !noalias !11697, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11697
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.550.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.v, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.552.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @89, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit38 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit38:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit38
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

end_hunk_5
begin_hunk_6_@_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake:bb.a
default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !3677, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !3677, !noundef !3 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !39, !noundef !3 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11739)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11742
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !34, !noalias !11742, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !1996, !noalias !11742, !noundef !3 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !11742
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #34
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !11742, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11742
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !11747
  br label %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !11739, !noalias !11748
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11739, !noalias !11748
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11739, !noalias !11748
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !11739, !noalias !11748
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !34, !noundef !3
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !align !39, !noundef !3
  %i.ad = invoke { ptr, ptr } @_RNvXs0_NtCsanCXJAiNsO_18datafusion_catalog4viewNtB5_9ViewTableNtNtB7_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(352) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i16, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.o

.body:                                            ; preds = %bb.w, %bb.v, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.ak, %bb.n ], [ %i.ax, %bb.w ], [ %i.ae, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #37
          to label %.body20 unwind label %bb.ag

.body20:                                          ; preds = %bb.ae, %bb.z, %bb.ab, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %.pn, %.body ], [ %i.x, %bb.h ], [ %i.bh, %bb.z ], [ %i.bj, %bb.ab ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #36
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #36
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.am, align 8
  %i.al = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.al, align 8, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #37
          to label %.body unwind label %bb.ag

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.b, align 8, !range !499, !noundef !3 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 21
  br i1 %i.ao, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load <2 x ptr>, ptr %.sroa.343.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.aq = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.aq, align 8, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.ar = load ptr, ptr %.val5, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ar(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !105, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !105, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #27
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.u, %bb.t
  %.not.i19 = icmp eq i64 %i.an, 20
  br i1 %.not.i19, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.bd = extractelement <2 x ptr> %i.ap, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = extractelement <2 x ptr> %i.ap, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bf = load i64, ptr %3, align 8, !range !1996, !alias.scope !11749, !noundef !3
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body20 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke, %bb.ac, %bb.x
  store i64 %i.an, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ap, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bk = load i64, ptr %4, align 8, !range !1996, !alias.scope !11752, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body20 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke: ; preds = %bb.y, %bb.ad
  %5 = phi ptr [ %4, %bb.ad ], [ %3, %bb.y ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ab

bb.ag:                                            ; preds = %bb.n, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider6update0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !111, !noundef !3
  switch i8 %i.l, label %default.unreachable60 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body44

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @240, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !11755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11759
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8, !range !34, !noalias !11759, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !1996, !noalias !11759, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %.noexc27
  %i.t = load i64, ptr %i.s, align 8, !noalias !11759
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #34
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %.body44 unwind label %bb.w

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body unwind label %bb.w

bb.h:                                             ; preds = %.noexc27
  %i.w = load ptr, ptr %i.s, align 8, !noalias !11759, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11759
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.x, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.557.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @89, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body44 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.n unwind label %bb.m

.body44:                                          ; preds = %bb.m, %bb.k, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn13, %.body ], [ %i.ac, %bb.m ], [ %i.aa, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #37
          to label %.body49 unwind label %bb.w

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body49 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

end_hunk_6
begin_hunk_7_@_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake:bb.a
default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !39, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !3677, !noundef !3 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !39, !noundef !3 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11771)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11774
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !34, !noalias !11774, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !1996, !noalias !11774, !noundef !3 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !11774
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #34
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !11774, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11774
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !11779
  br label %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !11771, !noalias !11780
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11771, !noalias !11780
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11771, !noalias !11780
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !11771, !noalias !11780
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !34, !noundef !3
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !align !39, !noundef !3
  %i.ad = invoke { ptr, ptr } @_RNvXsn_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB5_9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i16, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.o

.body:                                            ; preds = %bb.w, %bb.v, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.ak, %bb.n ], [ %i.ax, %bb.w ], [ %i.ae, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #37
          to label %.body20 unwind label %bb.ag

.body20:                                          ; preds = %bb.ae, %bb.z, %bb.ab, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %.pn, %.body ], [ %i.x, %bb.h ], [ %i.bh, %bb.z ], [ %i.bj, %bb.ab ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #36
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #36
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.am, align 8
  %i.al = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.al, align 8, !nonnull !3, !align !39, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #37
          to label %.body unwind label %bb.ag

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.b, align 8, !range !499, !noundef !3 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 21
  br i1 %i.ao, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load <2 x ptr>, ptr %.sroa.343.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.aq = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.aq, align 8, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.ar = load ptr, ptr %.val5, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ar(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !105, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !105, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #27
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.u, %bb.t
  %.not.i19 = icmp eq i64 %i.an, 20
  br i1 %.not.i19, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.bd = extractelement <2 x ptr> %i.ap, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = extractelement <2 x ptr> %i.ap, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bf = load i64, ptr %3, align 8, !range !1996, !alias.scope !11781, !noundef !3
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body20 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke, %bb.ac, %bb.x
  store i64 %i.an, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ap, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bk = load i64, ptr %4, align 8, !range !1996, !alias.scope !11784, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body20 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke: ; preds = %bb.y, %bb.ad
  %5 = phi ptr [ %4, %bb.ad ], [ %3, %bb.y ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ab

bb.ag:                                            ; preds = %bb.n, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !111, !noundef !3
  switch i8 %i.l, label %default.unreachable60 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body44

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @240, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !11787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11791
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8, !range !34, !noalias !11791, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !1996, !noalias !11791, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %.noexc27
  %i.t = load i64, ptr %i.s, align 8, !noalias !11791
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #34
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %.body44 unwind label %bb.w

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body unwind label %bb.w

bb.h:                                             ; preds = %.noexc27
  %i.w = load ptr, ptr %i.s, align 8, !noalias !11791, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11791
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.x, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.557.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @89, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body44 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.n unwind label %bb.m

.body44:                                          ; preds = %bb.m, %bb.k, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn13, %.body ], [ %i.ac, %bb.m ], [ %i.aa, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #37
          to label %.body49 unwind label %bb.w

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body49 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

end_hunk_7
