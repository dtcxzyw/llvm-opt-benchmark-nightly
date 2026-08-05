inline.NumInlined: 1367
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvXs1_NtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB7_14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0B9_:bb.a
  store ptr %i.n, ptr %i.m, align 8, !noalias !1511
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @218, ptr %i.cv, align 8, !noalias !1511
  %i.cw = invoke noundef zeroext i1 @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ae unwind label %bb.ad, !noalias !1516

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #32
          to label %.body.i.i.i unwind label %bb.ag, !noalias !1516

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.cw, label %bb.af, label %bb.ah, !prof !1055

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #36
          to label %.noexc.i.i.i.i unwind label %bb.ad, !noalias !1516

.noexc.i.i.i.i:                                   ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1516
  unreachable

.body.i.i.i:                                      ; preds = %bb.ad
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ct) #32
          to label %.body28.i unwind label %bb.ao, !noalias !1487

bb.ah:                                            ; preds = %bb.ae
  %.sroa.4.i.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !1517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !1517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1511
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !1521, !noalias !1522, !noundef !3 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1521, !noalias !1522 ; 6 uses
  %i.db = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.db, label %bb.eq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.dc = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3, !noalias !1523 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void %i.dc(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.ak unwind label %bb.am, !noalias !1523

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !range !4, !invariant.load !3, !noalias !1523 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.eq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !range !5, !invariant.load !3, !noalias !1523
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.de, i64 noundef range(i64 1, 536870913) %i.dh) #31, !noalias !1523
  br label %bb.eq

bb.am:                                            ; preds = %bb.aj
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !4, !invariant.load !3, !noalias !1523 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.body28.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !5, !invariant.load !3, !noalias !1523
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.dk, i64 noundef range(i64 1, 536870913) %i.dn) #31, !noalias !1523
  br label %.body28.i

bb.ao:                                            ; preds = %.body.i.i.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1524
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs.exit19.i
  %.sroa.1148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.1148.0.copyload.i = load i64, ptr %.sroa.1148.0..sroa_idx.i, align 16, !noalias !1483
  %i.dp = load <2 x i64>, ptr %i.ct, align 8, !noalias !1483
  %.sroa.1349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.1349.sroa.0.0.copyload.i = load i64, ptr %.sroa.1349.0..sroa_idx.i, align 8, !noalias !1483 ; 2 uses
  %.sroa.1349.sroa.10.0..sroa.1349.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.11.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.1349.sroa.10.0..sroa.1349.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !1483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.sroa.13.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.14.0..sroa_idx.i, i64 64, i1 false), !noalias !1483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.1349.sroa.10.0..sroa.1349.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !1483
  %.sroa.9.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.14.0..sroa_idx.i, i64 64, i1 false), !noalias !1483
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.dr = trunc nuw i64 %i.cr to i1
  br i1 %i.dr, label %bb.aq, label %bb.du

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1528
  store i64 %.sroa.1148.0.copyload.i, ptr %i.l, align 16, !noalias !1531
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.1349.sroa.0.0.copyload.i, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !1531
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.i, i64 80, i1 false), !noalias !1531
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1538
  store i64 0, ptr %i.g, align 8, !noalias !1538
  %.sroa.42.0..sroa_idx.i.i.i20.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i20.i, align 8, !noalias !1538
  %.sroa.53.0..sroa_idx.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i21.i, align 8, !noalias !1538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1538
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.ds, align 8, !noalias !1538
  %.sroa.4.0..sroa_idx.i.i.i22.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i22.i, align 4, !noalias !1538
  %.sroa.5.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i23.i, align 2, !noalias !1538
  store ptr %i.g, ptr %i.f, align 8, !noalias !1538
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @218, ptr %i.dt, align 8, !noalias !1538
  %i.du = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.as unwind label %bb.ar, !noalias !1542

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #32
          to label %.body.i.i24.i unwind label %bb.au, !noalias !1543

bb.as:                                            ; preds = %bb.aq
  br i1 %i.du, label %bb.at, label %bb.aw, !prof !1055

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #36
          to label %.noexc.i.i.i27.i unwind label %bb.ar, !noalias !1543

.noexc.i.i.i27.i:                                 ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1543
  unreachable

.body.i.i24.i:                                    ; preds = %bb.dp, %bb.dk, %bb.di, %.body24.i.i.i, %bb.av, %bb.ar
  %.pn6.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body24.i.i.i ], [ %i.dv, %bb.ar ], [ %i.qc, %bb.dk ], [ %i.px, %bb.di ], [ %i.dx, %bb.av ], [ %i.qe, %bb.dp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.l) #32
          to label %.body28.i unwind label %bb.dr, !noalias !1544

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i34.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i24.i

bb.aw:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1538
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1535, !nonnull !3, !noundef !3 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !1535, !noundef !3 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1535
  store ptr %i.dq, ptr %i.h, align 8, !noalias !1535
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1535
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @22, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.ax, !noalias !1544

.body24.i.i.i:                                    ; preds = %bb.dg, %bb.de, %.loopexit.split-lp.i.i.i, %bb.ax
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.pt, %bb.de ], [ %i.ec, %bb.ax ], [ %i.pv, %bb.dg ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #32
          to label %.body.i.i24.i unwind label %bb.dr, !noalias !1544

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i28.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, %bb.aw
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1535
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !1535, !nonnull !3, !noundef !3 ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !1535, !noundef !3 ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.thread.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.ei = icmp ult i64 %i.eg, %i.eb
  br i1 %i.ei, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ej = icmp eq i64 %i.eg, 1
  br i1 %i.ej, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ek = icmp eq i64 %i.eg, %i.eb
  br i1 %i.ek, label %bb.dc, label %.thread55.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.el = icmp ult i64 %i.eg, 33
  br i1 %i.el, label %bb.cn, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.em = load i8, ptr %i.ee, align 1, !alias.scope !1546, !noalias !1551, !noundef !3 ; 2 uses
  %i.en = icmp samesign ult i64 %i.eb, 16
  br i1 %i.en, label %.lr.ph.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eo = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, -9223372036854775808) %i.eb)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1544

.noexc.i.i.i:                                     ; preds = %bb.bd
  %i.ep = extractvalue { i64, i64 } %i.eo, 0
  %i.eq = icmp eq i64 %i.ep, 1
  %i.er = zext i1 %i.eq to i8
  br label %bb.dd

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bc, %bb.be
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ev, %bb.be ], [ 0, %bb.bc ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.01.05.i.i.i.i.i
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !1552, !noalias !1555, !noundef !3
  %i.eu = icmp eq i8 %i.et, %i.em
  br i1 %i.eu, label %.thread.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ev = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ev, %i.eb
  br i1 %exitcond.not.i.i.i.i.i, label %.thread55.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i: ; preds = %bb.cp, %bb.co, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1556
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.eb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.eg)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1544

.noexc9.i.i.i:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %i.ew = load i64, ptr %i.e, align 8, !range !9, !alias.scope !1557, !noalias !1560, !noundef !3
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br i1 %i.ex, label %bb.bo, label %.preheader.i4.i.i.i.i

.preheader.i4.i.i.i.i:                            ; preds = %.noexc9.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.fa = load i8, ptr %i.ez, align 2, !range !295, !alias.scope !1562, !noalias !1565, !noundef !3
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph.i5.i.i.i.i

.lr.ph.i5.i.i.i.i:                                ; preds = %.preheader.i4.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !1557, !noalias !1560 ; 12 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1562, !noalias !1565, !nonnull !3, !noundef !3 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1562, !noalias !1565, !noundef !3 ; 14 uses
  %.promoted26.i.i.i.i.i = load i8, ptr %i.fc, align 8, !alias.scope !1562, !noalias !1565 ; 2 uses
  %i.fh = trunc nuw i8 %.promoted26.i.i.i.i.i to i1
  %i.fi = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.fi, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i5.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.fg
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.bg, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.bf
  %i.fj = icmp eq i64 %.promoted.i.i.i.i.i, %i.fg
  br i1 %i.fj, label %bb.bh, label %.loopexit.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.promoted.i.i.i.i.i
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !1567, !noalias !1570, !noundef !3
  %i.fm = icmp sgt i8 %i.fl, -65
  br i1 %i.fm, label %bb.bh, label %.loopexit.i.i.i.i

bb.bh:                                            ; preds = %bb.bg, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i5.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.fo = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.fg
  br i1 %i.fo, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fp = load i8, ptr %i.fn, align 1, !noalias !1572, !noundef !3 ; 5 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %bb.bj, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fs = and i8 %i.fp, 31
  %i.ft = zext nneg i8 %i.fs to i32               ; 3 uses
  %i.fu = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.fv = icmp samesign ne i64 %i.fu, %i.fg
  call void @llvm.assume(i1 %i.fv)
  %i.fw = load i8, ptr %i.fr, align 1, !noalias !1572, !noundef !3
  %i.fx = shl nuw nsw i32 %i.ft, 6
  %i.fy = and i8 %i.fw, 63
  %i.fz = zext nneg i8 %i.fy to i32               ; 2 uses
  %i.ga = or disjoint i32 %i.fx, %i.fz
  %i.gb = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.gb, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.peel.i.i.i.i, label %bb.bk

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.peel.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.gd = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.ge = icmp samesign ne i64 %i.gd, %i.fg
  call void @llvm.assume(i1 %i.ge)
  %i.gf = load i8, ptr %i.gc, align 1, !noalias !1572, !noundef !3
  %i.gg = shl nuw nsw i32 %i.fz, 6
  %i.gh = and i8 %i.gf, 63
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = or disjoint i32 %i.gg, %i.gi            ; 2 uses
  %i.gk = shl nuw nsw i32 %i.ft, 12
  %i.gl = or disjoint i32 %i.gj, %i.gk
  %i.gm = icmp samesign ugt i8 %i.fp, -17
  br i1 %i.gm, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.peel.i.i.i.i, label %bb.bk

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.peel.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %i.go = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.gp = icmp samesign ne i64 %i.go, %i.fg
  call void @llvm.assume(i1 %i.gp)
  %i.gq = load i8, ptr %i.gn, align 1, !noalias !1572, !noundef !3
  %i.gr = shl nuw nsw i32 %i.ft, 18
  %i.gs = and i32 %i.gr, 1835008
  %i.gt = shl nuw nsw i32 %i.gj, 6
  %i.gu = and i8 %i.gq, 63
  %i.gv = zext nneg i8 %i.gu to i32
  %i.gw = or disjoint i32 %i.gt, %i.gv
  %i.gx = or disjoint i32 %i.gw, %i.gs
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gy = zext nneg i8 %i.fp to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.gl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.peel.i.i.i.i ], [ %i.gx, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.peel.i.i.i.i ], [ %i.ga, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.peel.i.i.i.i ], [ %i.gy, %bb.bj ] ; 4 uses
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gz)
  br i1 %i.fh, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.ha, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.hb, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.hc, i64 3, i64 4
  br label %bb.bp

bb.bo:                                            ; preds = %.noexc9.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !1557, !noalias !1560, !noundef !3 ; 2 uses
  %i.hf = icmp eq i64 %i.he, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !1557, !noalias !1560, !nonnull !3, !noundef !3 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !1557, !noalias !1560, !noundef !3 ; 14 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1557, !noalias !1560, !nonnull !3, !noundef !3 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !1557, !noalias !1560, !noundef !3 ; 12 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.hp = add nsw i64 %i.hn, -1                   ; 4 uses
  br i1 %i.hf, label %bb.bu, label %bb.cc

bb.bp:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.bm ], [ %..i.i.peel.i.i.i.i, %bb.bn ], [ 1, %bb.bl ]
  %i.hq = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i.i.i.i.i26.i = icmp ult i64 %i.hq, %i.fg
  br i1 %.not.i.i.i.i.i.i26.i, label %bb.br, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.bq
  %i.hs = icmp eq i64 %i.hq, %i.fg
  br i1 %i.hs, label %bb.bs, label %.loopexit.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.hq
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !1567, !noalias !1576, !noundef !3
  %i.hv = icmp sgt i8 %i.hu, -65
  br i1 %i.hv, label %bb.bs, label %.loopexit.i.i.i.i

bb.bs:                                            ; preds = %bb.br, %.split.i.i.i.i.i.i.i, %bb.bp
  %i.hw = icmp samesign eq i64 %i.hq, %i.fg
  br i1 %i.hw, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.hq
  %i.hy = load i8, ptr %i.hx, align 1, !noalias !1577, !noundef !3 ; 3 uses
  %i.hz = icmp sgt i8 %i.hy, -1
  br i1 %i.hz, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.i.i.i.i: ; preds = %bb.bt
  %i.ia = add nuw nsw i64 %i.hq, 1
  %i.ib = icmp samesign ne i64 %i.ia, %i.fg
  call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp samesign ugt i8 %i.hy, -33
  br i1 %i.ic, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.i.i.i.i
  %i.id = add nuw nsw i64 %i.hq, 2
  %i.ie = icmp samesign ne i64 %i.id, %i.fg
  call void @llvm.assume(i1 %i.ie)
  %i.if = icmp samesign ugt i8 %i.hy, -17
  br i1 %i.if, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i.i.i.i
  %i.ig = add nuw nsw i64 %i.hq, 3
  %i.ih = icmp samesign ne i64 %i.ig, %i.fg
  call void @llvm.assume(i1 %i.ih)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.br, %.split.i.i.i.i.i.i.i, %bb.bg, %.split.i.i.i.peel.i.i.i.i
  %.lcssa150.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.bg ], [ %i.hq, %.split.i.i.i.i.i.i.i ], [ %i.hq, %bb.br ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fg, i64 noundef %.lcssa150.i.i.i.i, i64 noundef %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #35
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1544

.noexc10.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  unreachable

bb.bu:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
end_hunk_0
begin_hunk_1_@_RNCNvXs1_NtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB7_14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0B9_:bb.a
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %bb.bw, label %.preheader96.i.i.i.i.preheader

.preheader96.i.i.i.i.preheader:                   ; preds = %bb.bv
  br i1 %exitcond.not.i25.i.i.i.i200.not, label %.lr.ph202, label %.preheader.i.preheader.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.iz = add i64 %i.iq, %i.hn
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.split98.us.i.i.i, %bb.bw
  %i.ja = phi i64 [ %i.jt, %bb.cb ], [ %i.iz, %bb.bw ], [ %i.jl, %.split98.us.i.i.i ] ; 2 uses
  %i.jb = add i64 %i.ja, %i.hp                    ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.hj
  br i1 %i.jc, label %bb.bv, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader96.i.i.i.i:                             ; preds = %bb.bz
  %i.jd = add i64 %.sroa.02.0.i24.i.i.i.i201, 1   ; 2 uses
  %exitcond.not.i25.i.i.i.i = icmp eq i64 %i.jd, %umax49.i23.i.i.i.i
  br i1 %exitcond.not.i25.i.i.i.i, label %.preheader.i.preheader.i.i.i, label %.lr.ph202

.preheader.i.preheader.i.i.i:                     ; preds = %.preheader96.i.i.i.i, %.preheader96.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i203, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph205

.preheader.i.us.i.i.i:                            ; preds = %bb.by
  %.not.i.us.i.i.i = icmp eq i64 %i.je, 0
  br i1 %.not.i.us.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph205

.lr.ph205:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.2.0.i28.i.us.i.i.i204 = phi i64 [ %i.je, %.preheader.i.us.i.i.i ], [ %.fr99.i.i.i, %.preheader.i.us.i.i.i.preheader ]
  %i.je = add i64 %.sroa.2.0.i28.i.us.i.i.i204, -1 ; 4 uses
  %i.jf = add i64 %i.je, %i.iq                    ; 3 uses
  %i.jg = icmp ult i64 %i.jf, %i.hj
  br i1 %i.jg, label %bb.by, label %.invoke.i.i.i

bb.by:                                            ; preds = %.lr.ph205
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.je
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !1583, !noalias !1588, !noundef !3
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.jf
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !1581, !noalias !1587, !noundef !3
  %.not.i29.i.us.i.i.i = icmp eq i8 %i.ji, %i.jk
  br i1 %.not.i29.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %.split98.us.i.i.i

.split98.us.i.i.i:                                ; preds = %bb.by
  %i.jl = add i64 %i.iq, %i.io
  br label %bb.bx

.lr.ph202:                                        ; preds = %.preheader96.i.i.i.i.preheader, %.preheader96.i.i.i.i
  %.sroa.02.0.i24.i.i.i.i201 = phi i64 [ %i.jd, %.preheader96.i.i.i.i ], [ %.fr99.i.i.i, %.preheader96.i.i.i.i.preheader ] ; 4 uses
  %i.jm = add i64 %.sroa.02.0.i24.i.i.i.i201, %i.iq ; 2 uses
  %i.jn = icmp ult i64 %i.jm, %i.hj
  br i1 %i.jn, label %bb.bz, label %bb.ca

.preheader.i.i.i.i:                               ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i203, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke.i.i.i

bb.bz:                                            ; preds = %.lr.ph202
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.02.0.i24.i.i.i.i201
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !1583, !noalias !1588, !noundef !3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.jm
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !1581, !noalias !1587, !noundef !3
  %.not21.i27.i.i.i.i = icmp eq i8 %i.jp, %i.jr
  br i1 %.not21.i27.i.i.i.i, label %.preheader96.i.i.i.i, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph202
  %i.js = add i64 %i.iq, %.fr99.i.i.i
  %umax.i26.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.hj, i64 %i.js)
  br label %.invoke.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %.reass235.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.iq, %invariant.op268
  %i.jt = add i64 %.reass235.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i24.i.i.i.i201
  br label %bb.bx

bb.cc:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %.promoted.i11.i.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1589, !noalias !1596 ; 2 uses
  %i.ju = add i64 %.promoted.i11.i.i.i.i, %i.hp   ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.hj
  br i1 %i.jv, label %.lr.ph.i14.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %bb.cc
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !1589, !noalias !1596, !noundef !3
  %i.jy = load i64, ptr %i.ey, align 8, !alias.scope !1589, !noalias !1596 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !1589, !noalias !1596 ; 2 uses
  %i.kb = sub i64 %i.hn, %i.ka
  %invariant.op = sub i64 1, %i.jy
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i14.i.i.i.i
  %i.kc = phi i64 [ %.promoted.i11.i.i.i.i, %.lr.ph.i14.i.i.i.i ], [ %.ph71.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 6 uses
  %i.kd = phi i64 [ %i.he, %.lr.ph.i14.i.i.i.i ], [ %.sink.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 3 uses
  %i.ke = phi i64 [ %i.ju, %.lr.ph.i14.i.i.i.i ], [ %i.kn, %.sink.split.i.i.i.i.i ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !1592, !noalias !1598, !noundef !3
  %i.kh = and i8 %i.kg, 63
  %i.ki = zext nneg i8 %i.kh to i64
  %i.kj = shl nuw i64 1, %i.ki
  %i.kk = and i64 %i.kj, %i.jx
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.km = add i64 %i.kc, %i.hn
  br label %.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kd, i64 %i.jy) ; 4 uses
  %umax49.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.hn)
  %exitcond.not.i15.i.i.i.i195.not = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i, %i.hn
  br i1 %exitcond.not.i15.i.i.i.i195.not, label %.lr.ph197, label %.preheader35.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %bb.cm, %bb.cj, %bb.ce
  %.sink.i.i.i.i.i = phi i64 [ %i.kb, %bb.cj ], [ 0, %bb.cm ], [ 0, %bb.ce ]
  %.ph71.i.i.i.i.i = phi i64 [ %i.lc, %bb.cj ], [ %i.li, %bb.cm ], [ %i.km, %bb.ce ] ; 2 uses
  %i.kn = add i64 %.ph71.i.i.i.i.i, %i.hp         ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.hj
  br i1 %i.ko, label %bb.cd, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ck
  %i.kp = add i64 %.sroa.02.0.i.i.i.i.i196, 1     ; 2 uses
  %exitcond.not.i15.i.i.i.i = icmp eq i64 %i.kp, %umax49.i.i.i.i.i
  br i1 %exitcond.not.i15.i.i.i.i, label %.preheader35.i.i.i.i.preheader, label %.lr.ph197

.preheader35.i.i.i.i.preheader:                   ; preds = %bb.cg, %bb.cf
  %i.kq = icmp ult i64 %i.kd, %i.jy
  br i1 %i.kq, label %.lr.ph199, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph197:                                        ; preds = %bb.cf, %bb.cg
  %.sroa.02.0.i.i.i.i.i196 = phi i64 [ %i.kp, %bb.cg ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.cf ] ; 4 uses
  %i.kr = add i64 %.sroa.02.0.i.i.i.i.i196, %i.kc ; 2 uses
  %i.ks = icmp ult i64 %i.kr, %i.hj
  br i1 %i.ks, label %bb.ck, label %bb.cl

.preheader35.i.i.i.i:                             ; preds = %bb.ci
  %i.kt = icmp ult i64 %i.kd, %i.ku
  br i1 %i.kt, label %.lr.ph199, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph199:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.2.0.i.i.i.i.i198 = phi i64 [ %i.ku, %.preheader35.i.i.i.i ], [ %i.jy, %.preheader35.i.i.i.i.preheader ]
  %i.ku = add i64 %.sroa.2.0.i.i.i.i.i198, -1     ; 6 uses
  %i.kv = icmp ult i64 %i.ku, %i.hn
  br i1 %i.kv, label %bb.ch, label %.invoke.i.i.i

bb.ch:                                            ; preds = %.lr.ph199
  %i.kw = add i64 %i.ku, %i.kc                    ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %i.hj
  br i1 %i.kx, label %bb.ci, label %.invoke.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ku
  %i.kz = load i8, ptr %i.ky, align 1, !alias.scope !1594, !noalias !1599, !noundef !3
  %i.la = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.kw
  %i.lb = load i8, ptr %i.la, align 1, !alias.scope !1592, !noalias !1598, !noundef !3
  %.not.i16.i.i.i.i = icmp eq i8 %i.kz, %i.lb
  br i1 %.not.i16.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lc = add i64 %i.kc, %i.ka
  br label %.sink.split.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph197
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.02.0.i.i.i.i.i196
  %i.le = load i8, ptr %i.ld, align 1, !alias.scope !1594, !noalias !1599, !noundef !3
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.kr
  %i.lg = load i8, ptr %i.lf, align 1, !alias.scope !1592, !noalias !1598, !noundef !3
  %.not21.i.i.i.i.i = icmp eq i8 %i.le, %i.lg
  br i1 %.not21.i.i.i.i.i, label %bb.cg, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph197
  %i.lh = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.kc
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.hj, i64 %i.lh)
  br label %.invoke.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.kc, %invariant.op
  %i.li = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i.i196
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i, %bb.bx, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.i.i.i.i, %bb.bt, %bb.cc, %.preheader.i.i.i.i, %bb.bu, %bb.bs, %bb.bk, %bb.bh, %.preheader.i4.i.i.i.i
  %.sroa.0.031.i.i.i.i = phi i8 [ 1, %.preheader.i.us.i.i.i ], [ 0, %bb.bu ], [ 0, %.preheader.i4.i.i.i.i ], [ 1, %bb.bs ], [ 1, %.preheader35.i.i.i.i ], [ 1, %bb.bk ], [ %.promoted26.i.i.i.i.i, %bb.bh ], [ 0, %bb.cc ], [ 1, %.preheader.i.us.i.i.i.preheader ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i ], [ 1, %bb.bt ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i.i.i.i ], [ 0, %bb.bx ], [ 0, %.sink.split.i.i.i.i.i ], [ 1, %.preheader35.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1556
  br label %bb.dd

bb.cn:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.lj = load i8, ptr %i.ee, align 1, !alias.scope !1605, !noalias !1606, !noundef !3 ; 3 uses
  %i.lk = add nsw i64 %i.eg, -1                   ; 2 uses
  %i.ll = icmp eq i64 %i.eg, 2
  br i1 %i.ll, label %.thread.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lm = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.eg, i64 4) ; 2 uses
  %3 = icmp ult i64 %i.lm, %i.eg
  br i1 %3, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.cp:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i
  %i.ln = icmp ult i64 %i.lm, %i.lp
  br i1 %i.ln, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.co, %bb.cp
  %i.lo = phi i64 [ %i.lp, %bb.cp ], [ %i.eg, %bb.co ]
  %i.lp = add nsw i64 %i.lo, -1                   ; 6 uses
  %i.lq = icmp ult i64 %i.lp, %i.eg
  br i1 %i.lq, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph, %bb.ch, %.lr.ph199, %.lr.ph205, %bb.cl, %bb.ca, %.preheader.i.i.i.i
  %i.lr = phi i64 [ %i.ip, %.preheader.i.i.i.i ], [ %umax.i.i.i.i.i, %bb.cl ], [ %i.kw, %bb.ch ], [ %i.jf, %.lr.ph205 ], [ %umax.i26.i.i.i.i, %bb.ca ], [ %i.ku, %.lr.ph199 ], [ %i.lp, %.lr.ph ]
  %i.ls = phi i64 [ %i.hn, %.preheader.i.i.i.i ], [ %i.hj, %bb.cl ], [ %i.hj, %bb.ch ], [ %i.hj, %.lr.ph205 ], [ %i.hj, %bb.ca ], [ %i.hn, %.lr.ph199 ], [ %i.eg, %.lr.ph ]
  %i.lt = phi ptr [ @4, %.preheader.i.i.i.i ], [ @6, %bb.cl ], [ @5, %bb.ch ], [ @5, %.lr.ph205 ], [ @6, %bb.ca ], [ @4, %.lr.ph199 ], [ @52, %.lr.ph ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.lr, i64 noundef range(i64 0, -9223372036854775808) %i.ls, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lt) #35
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1544

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.lp
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !1605, !noalias !1607, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.lv, %i.lj
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i
  %i.lw = add nuw nsw i64 %i.eg, 15
  %i.lx = icmp ult i64 %i.eb, %i.lw
  br i1 %i.lx, label %.lr.ph.split.us.i.i.i.i.i.i, label %bb.cr

.thread.i.i.i.i.i:                                ; preds = %bb.cn
  %i.ly = icmp ult i64 %i.eb, 17
  br i1 %i.ly, label %.lr.ph.split.us.i.i.i.i.i.i, label %.thread93.i.i.i.i.i

.thread93.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.lz = insertelement <16 x i8> poison, i8 %i.lj, i64 0
  %i.ma = shufflevector <16 x i8> %i.lz, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !alias.scope !1605, !noalias !1606
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mb = insertelement <16 x i8> poison, i8 %i.lj, i64 0
  %i.mc = shufflevector <16 x i8> %i.mb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cs

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.thread.i.i.i.i.i, %bb.cq
  %bcmp.i.i.us23.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dz, ptr noundef nonnull readonly dereferenceable(1) %i.ee, i64 range(i64 2, 33) %i.eg), !alias.scope !1615, !noalias !1616
  %i.md = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i, 0
  br i1 %i.md, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.backedge.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.backedge.us.i.i.i.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.me, ptr noundef nonnull readonly dereferenceable(1) %i.ee, i64 range(i64 2, 33) %i.eg), !alias.scope !1615, !noalias !1616
  %i.mf = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.mf, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.backedge.us.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i
  %.pn.i.i.i.i.i = phi ptr [ %i.me, %.split.us.i.i.i.i.i.i ], [ %i.dz, %.lr.ph.split.us.i.i.i.i.i.i ]
  %.in.i.i.i.i.i = phi i64 [ %i.mg, %.split.us.i.i.i.i.i.i ], [ %i.eb, %.lr.ph.split.us.i.i.i.i.i.i ]
  %i.mg = add i64 %.in.i.i.i.i.i, -1              ; 2 uses
  %.not28.i.i.i.i.i.i = icmp ugt i64 %i.eg, %i.mg
  br i1 %.not28.i.i.i.i.i.i, label %.thread55.i.i.i, label %.split.us.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cr, %.thread93.i.i.i.i.i
  %i.mh = phi i8 [ %.pre.i.i.i.i.i, %.thread93.i.i.i.i.i ], [ %i.lv, %bb.cr ]
  %i.mi = phi <16 x i8> [ %i.ma, %.thread93.i.i.i.i.i ], [ %i.mc, %bb.cr ] ; 6 uses
  %storemerge9295.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i ], [ %i.lp, %bb.cr ] ; 6 uses
  %i.mj = insertelement <16 x i8> poison, i8 %i.mh, i64 0
  %i.mk = shufflevector <16 x i8> %i.mj, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1620
  store ptr %i.dz, ptr %i.d, align 8, !noalias !1620
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.eb, ptr %i.mm, align 8, !noalias !1620
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ml, ptr %i.mn, align 8, !noalias !1620
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.lk, ptr %i.mo, align 8, !noalias !1620
  %i.mp = add nuw nsw i64 %i.eg, 63               ; 2 uses
  %.not.i7.i.i.i.i = icmp ult i64 %i.mp, %i.eb
  br i1 %.not.i7.i.i.i.i, label %.lr.ph.i10.i.i.i.i, label %.preheader.i8.i.i.i.i

.preheader.i8.i.i.i.i:                            ; preds = %bb.cw, %bb.cs
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.cs ], [ %i.ol, %bb.cw ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i = phi i8 [ 0, %bb.cs ], [ %.sroa.014.2.3.i.i.i.i.i, %bb.cw ] ; 2 uses
  %i.mq = add nuw nsw i64 %i.eg, 15               ; 2 uses
  %i.mr = add i64 %.sroa.06.0.lcssa.i.i.i.i.i, %i.mq
  %i.ms = icmp uge i64 %i.mr, %i.eb
  %i.mt = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i = select i1 %i.ms, i1 true, i1 %i.mt
  br i1 %or.cond3105.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i, label %.lr.ph107.i.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.cs, %bb.cw
  %.sroa.06.0103.i.i.i.i.i = phi i64 [ %i.ol, %bb.cw ], [ 0, %bb.cs ] ; 6 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.06.0103.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.mu, align 1, !alias.scope !1621, !noalias !1622
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.mv, align 1, !alias.scope !1621, !noalias !1622
  %i.mw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i, %i.mi
  %i.mx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i, %i.mk
  %i.my = and <16 x i1> %i.mw, %i.mx
  %i.mz = bitcast <16 x i1> %i.my to i16          ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.na, align 1, !alias.scope !1621, !noalias !1622
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.nb, align 1, !alias.scope !1621, !noalias !1622
  %i.nc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i, %i.mi
  %i.nd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i, %i.mk
  %i.ne = and <16 x i1> %i.nc, %i.nd
  %i.nf = bitcast <16 x i1> %i.ne to i16          ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.ng, align 1, !alias.scope !1621, !noalias !1622
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.nh, align 1, !alias.scope !1621, !noalias !1622
  %i.ni = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i, %i.mi
  %i.nj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i, %i.mk
  %i.nk = and <16 x i1> %i.ni, %i.nj
  %i.nl = bitcast <16 x i1> %i.nk to i16          ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.nm, align 1, !alias.scope !1621, !noalias !1622
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.nn, align 1, !alias.scope !1621, !noalias !1622
  %i.no = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i, %i.mi
  %i.np = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i, %i.mk
  %i.nq = and <16 x i1> %i.no, %i.np
  %i.nr = bitcast <16 x i1> %i.nq to i16          ; 2 uses
  %i.ns = icmp eq i16 %i.mz, 0
  br i1 %i.ns, label %.preheader96.1.i.i.i.i.i, label %bb.cx

.preheader96.1.i.i.i.i.i:                         ; preds = %.noexc21.i.i.i, %.lr.ph.i10.i.i.i.i
  %.sroa.014.2.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i10.i.i.i.i ], [ %i.oq, %.noexc21.i.i.i ] ; 3 uses
  %i.nt = icmp eq i16 %i.nf, 0
  br i1 %i.nt, label %.preheader96.2.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.preheader96.1.i.i.i.i.i
  %i.nu = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 16
  %i.nv = trunc nuw i8 %.sroa.014.2.i.i.i.i.i to i1
  %i.nw = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.nu, i16 noundef %i.nf, i1 noundef zeroext %i.nv) #34
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1544

.noexc18.i.i.i:                                   ; preds = %bb.ct
  %i.nx = zext i1 %i.nw to i8
  %i.ny = or i8 %.sroa.014.2.i.i.i.i.i, %i.nx
  br label %.preheader96.2.i.i.i.i.i

.preheader96.2.i.i.i.i.i:                         ; preds = %.noexc18.i.i.i, %.preheader96.1.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i, %.preheader96.1.i.i.i.i.i ], [ %i.ny, %.noexc18.i.i.i ] ; 3 uses
  %i.nz = icmp eq i16 %i.nl, 0
  br i1 %i.nz, label %.preheader96.3.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %.preheader96.2.i.i.i.i.i
  %i.oa = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 32
  %i.ob = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i to i1
  %i.oc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.oa, i16 noundef %i.nl, i1 noundef zeroext %i.ob) #34
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1544

.noexc19.i.i.i:                                   ; preds = %bb.cu
  %i.od = zext i1 %i.oc to i8
  %i.oe = or i8 %.sroa.014.2.1.i.i.i.i.i, %i.od
  br label %.preheader96.3.i.i.i.i.i

.preheader96.3.i.i.i.i.i:                         ; preds = %.noexc19.i.i.i, %.preheader96.2.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i, %.preheader96.2.i.i.i.i.i ], [ %i.oe, %.noexc19.i.i.i ] ; 3 uses
  %i.of = icmp eq i16 %i.nr, 0
  br i1 %i.of, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.preheader96.3.i.i.i.i.i
  %i.og = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 48
  %i.oh = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i to i1
  %i.oi = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.og, i16 noundef %i.nr, i1 noundef zeroext %i.oh) #34
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1544

.noexc20.i.i.i:                                   ; preds = %bb.cv
  %i.oj = zext i1 %i.oi to i8
  %i.ok = or i8 %.sroa.014.2.2.i.i.i.i.i, %i.oj
  br label %bb.cw

bb.cw:                                            ; preds = %.noexc20.i.i.i, %.preheader96.3.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i, %.preheader96.3.i.i.i.i.i ], [ %i.ok, %.noexc20.i.i.i ] ; 2 uses
  %i.ol = add i64 %.sroa.06.0103.i.i.i.i.i, 64    ; 3 uses
  %i.om = add i64 %i.ol, %i.mp
  %i.on = icmp uge i64 %i.om, %i.eb
  %i.oo = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.on, i1 true, i1 %i.oo
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i8.i.i.i.i, label %.lr.ph.i10.i.i.i.i

bb.cx:                                            ; preds = %.lr.ph.i10.i.i.i.i
  %i.op = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.0103.i.i.i.i.i, i16 noundef %i.mz, i1 noundef zeroext false) #34
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1544

.noexc21.i.i.i:                                   ; preds = %bb.cx
  %i.oq = zext i1 %i.op to i8
  br label %.preheader96.1.i.i.i.i.i

._crit_edge.i9.i.i.i.i:                           ; preds = %bb.cy, %.preheader.i8.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i, %.preheader.i8.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i, %bb.cy ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i1 [ %i.mt, %.preheader.i8.i.i.i.i ], [ %i.pk, %bb.cy ]
  %i.or = sub i64 %i.eb, %i.lk
  %i.os = add i64 %i.or, -16                      ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.os ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i = load <16 x i8>, ptr %i.ot, align 1, !alias.scope !1621, !noalias !1625
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i59.i.i.i.i.i = load <16 x i8>, ptr %i.ou, align 1, !alias.scope !1621, !noalias !1625
  %i.ov = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i, %i.mi
end_hunk_1
