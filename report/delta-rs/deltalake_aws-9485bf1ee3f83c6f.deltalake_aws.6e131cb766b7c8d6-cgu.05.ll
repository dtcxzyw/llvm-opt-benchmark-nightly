inline.NumInlined: 1053
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1095
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1095
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 1610612768, ptr %i.cs, align 8, !noalias !1095
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !1095
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !1095
  store ptr %i.o, ptr %i.n, align 8, !noalias !1095
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @116, ptr %i.ct, align 8, !noalias !1095
  %i.cu = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 4 uses
  %i.cv = inttoptr i64 %.sroa.6.sroa.0.0.copyload.i to ptr ; 7 uses
  %i.cw = invoke noundef zeroext i1 @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ae unwind label %bb.ad, !noalias !1102

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #30
          to label %.body.i.i.i unwind label %bb.ag, !noalias !1102

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.cw, label %bb.af, label %bb.ah, !prof !22

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #33
          to label %.noexc.i.i.i.i unwind label %bb.ad, !noalias !1102

.noexc.i.i.i.i:                                   ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1102
  unreachable

.body.i.i.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECs9rVkZwOUgsI_13deltalake_aws(ptr %i.cu, ptr %i.cv) #30
          to label %.body27.i unwind label %bb.ao, !noalias !1103

bb.ah:                                            ; preds = %bb.ae
  %.sroa.4.i.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !1104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !1104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1095
  %i.cz = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.cz, label %bb.dj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.da = load ptr, ptr %i.cv, align 8, !invariant.load !12, !noalias !1103 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void %i.da(ptr noundef nonnull %i.cu)
          to label %bb.ak unwind label %bb.am, !noalias !1103

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !227, !invariant.load !12, !noalias !1103 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.dj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !240, !invariant.load !12, !noalias !1103
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef range(i64 1, 0) %i.dc, i64 noundef range(i64 1, 536870913) %i.df) #35, !noalias !1103
  br label %bb.dj

bb.am:                                            ; preds = %bb.aj
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !227, !invariant.load !12, !noalias !1103 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.body27.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !range !240, !invariant.load !12, !noalias !1103
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef range(i64 1, 0) %i.di, i64 noundef range(i64 1, 536870913) %i.dl) #35, !noalias !1103
  br label %.body27.i

bb.ao:                                            ; preds = %.body.i.i.i
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1103
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.11.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.3.i, i64 16, i1 false), !noalias !1069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.sroa.13.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.i, i64 64, i1 false), !noalias !1069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.3.i, i64 16, i1 false), !noalias !1069
  %.sroa.9.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.i, i64 64, i1 false), !noalias !1069
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.do = trunc nuw i64 %i.co to i1
  br i1 %i.do, label %bb.aq, label %bb.cn

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1108
  store i64 %.sroa.5.0.copyload.i, ptr %i.m, align 16, !noalias !1111
  %.sroa.754.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.754.16..sroa_idx.i, align 8, !noalias !1111
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.i, i64 80, i1 false), !noalias !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1118
  store i64 0, ptr %i.h, align 8, !noalias !1118
  %.sroa.42.0..sroa_idx.i.i.i20.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i20.i, align 8, !noalias !1118
  %.sroa.53.0..sroa_idx.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i21.i, align 8, !noalias !1118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1118
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 1610612768, ptr %i.dp, align 8, !noalias !1118
  %.sroa.4.0..sroa_idx.i.i.i22.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i22.i, align 4, !noalias !1118
  %.sroa.5.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i23.i, align 2, !noalias !1118
  store ptr %i.h, ptr %i.g, align 8, !noalias !1118
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @116, ptr %i.dq, align 8, !noalias !1118
  %i.dr = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.as unwind label %bb.ar, !noalias !1122

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #30
          to label %.body.i.i24.i unwind label %bb.au, !noalias !1123

bb.as:                                            ; preds = %bb.aq
  br i1 %i.dr, label %bb.at, label %bb.aw, !prof !22

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #33
          to label %.noexc.i.i.i26.i unwind label %bb.ar, !noalias !1123

.noexc.i.i.i26.i:                                 ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1123
  unreachable

.body.i.i24.i:                                    ; preds = %bb.ci, %bb.cd, %bb.cb, %.body18.i.i.i, %bb.av, %bb.ar
  %.pn6.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body18.i.i.i ], [ %i.ds, %bb.ar ], [ %i.jl, %bb.cd ], [ %i.jg, %bb.cb ], [ %i.du, %bb.av ], [ %i.jn, %bb.ci ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.m) #30
          to label %.body27.i unwind label %bb.ck, !noalias !1124

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i42.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i28.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i24.i

bb.aw:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1118
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !1115, !nonnull !12, !noundef !12 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !1115, !noundef !12 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1115
  store ptr %i.dn, ptr %i.i, align 8, !noalias !1115
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1115
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @37, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.ax, !noalias !1124

.body18.i.i.i:                                    ; preds = %bb.bz, %bb.bx, %.loopexit.split-lp.i.i.i, %bb.ax
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.jc, %bb.bx ], [ %i.dz, %bb.ax ], [ %i.je, %bb.bz ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #30
          to label %.body.i.i24.i unwind label %bb.ck, !noalias !1124

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i22.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.aw
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1115
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !1115, !nonnull !12, !noundef !12 ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !1115, !noundef !12 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %.thread.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ef = icmp ult i64 %i.ed, %i.dy
  br i1 %i.ef, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eg = icmp eq i64 %i.ed, 1
  br i1 %i.eg, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ed, %i.dy
  br i1 %i.eh, label %bb.bv, label %.thread49.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ei = icmp ult i64 %i.ed, 33
  br i1 %i.ei, label %bb.bf, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.ej = load i8, ptr %i.eb, align 1, !alias.scope !1126, !noalias !1131, !noundef !12 ; 2 uses
  %i.ek = icmp samesign ult i64 %i.dy, 16
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.el = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %i.ej, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef range(i64 0, -9223372036854775808) %i.dy)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1124

.noexc.i.i.i:                                     ; preds = %bb.bd
  %i.em = extractvalue { i64, i64 } %i.el, 0
  %i.en = icmp eq i64 %i.em, 1
  %i.eo = zext i1 %i.en to i8
  br label %bb.bw

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bc, %bb.be
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.es, %bb.be ], [ 0, %bb.bc ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.01.05.i.i.i.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !1132, !noalias !1135, !noundef !12
  %i.er = icmp eq i8 %i.eq, %i.ej
  br i1 %i.er, label %.thread.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.es = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.es, %i.dy
  br i1 %exitcond.not.i.i.i.i.i, label %.thread49.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i: ; preds = %bb.bh, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1136
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dy, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ed)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1124

.noexc9.i.i.i:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i
  invoke fastcc void @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(104) %i.e) #32
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1124

.noexc10.i.i.i:                                   ; preds = %.noexc9.i.i.i
  %i.et = load i64, ptr %i.f, align 8, !range !16, !noalias !1136, !noundef !12
  %i.eu = trunc nuw nsw i64 %i.et to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1136
  br label %bb.bw

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.ev = load i8, ptr %i.eb, align 1, !alias.scope !1142, !noalias !1143, !noundef !12 ; 3 uses
  %i.ew = add nsw i64 %i.ed, -1                   ; 2 uses
  %i.ex = icmp eq i64 %i.ed, 2
  br i1 %i.ex, label %.thread.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ey = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.ed, i64 4)
  br label %.lr.ph

bb.bh:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.ez = icmp ult i64 %i.ey, %i.fb
  br i1 %i.ez, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.bg, %bb.bh
  %i.fa = phi i64 [ %i.ed, %bb.bg ], [ %i.fb, %bb.bh ]
  %i.fb = add nsw i64 %i.fa, -1                   ; 6 uses
  %i.fc = icmp ult i64 %i.fb, %i.ed
  br i1 %i.fc, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 2, 33) %i.ed, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #34
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1124

.noexc11.i.i.i:                                   ; preds = %bb.bi
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !1142, !noalias !1144, !noundef !12 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.fe, %i.ev
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.bh, label %bb.bj

bb.bj:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.ff = add nuw nsw i64 %i.ed, 15
  %i.fg = icmp ult i64 %i.dy, %i.ff
  br i1 %i.fg, label %.lr.ph.split.us.i.i.i.i.i.i, label %bb.bk

.thread.i.i.i.i.i:                                ; preds = %bb.bf
  %i.fh = icmp ult i64 %i.dy, 17
  br i1 %i.fh, label %.lr.ph.split.us.i.i.i.i.i.i, label %.thread93.i.i.i.i.i

.thread93.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.fi = insertelement <16 x i8> poison, i8 %i.ev, i64 0
  %i.fj = shufflevector <16 x i8> %i.fi, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !alias.scope !1142, !noalias !1143
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fk = insertelement <16 x i8> poison, i8 %i.ev, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bl

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.thread.i.i.i.i.i, %bb.bj
  %bcmp.i.i.us23.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dw, ptr noundef nonnull readonly dereferenceable(1) %i.eb, i64 range(i64 2, 33) %i.ed), !alias.scope !1152, !noalias !1153
  %i.fm = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i, 0
  br i1 %i.fm, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull readonly dereferenceable(1) %i.eb, i64 range(i64 2, 33) %i.ed), !alias.scope !1152, !noalias !1153
  %i.fo = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.fo, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i
  %.pn.i.i.i.i.i = phi ptr [ %i.fn, %.split.us.i.i.i.i.i.i ], [ %i.dw, %.lr.ph.split.us.i.i.i.i.i.i ]
  %.in.i.i.i.i.i = phi i64 [ %i.fp, %.split.us.i.i.i.i.i.i ], [ %i.dy, %.lr.ph.split.us.i.i.i.i.i.i ]
  %i.fp = add i64 %.in.i.i.i.i.i, -1              ; 2 uses
  %.not28.i.i.i.i.i.i = icmp ugt i64 %i.ed, %i.fp
  br i1 %.not28.i.i.i.i.i.i, label %.thread49.i.i.i, label %.split.us.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk, %.thread93.i.i.i.i.i
  %i.fq = phi i8 [ %.pre.i.i.i.i.i, %.thread93.i.i.i.i.i ], [ %i.fe, %bb.bk ]
  %i.fr = phi <16 x i8> [ %i.fj, %.thread93.i.i.i.i.i ], [ %i.fl, %bb.bk ] ; 6 uses
  %storemerge9295.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i ], [ %i.fb, %bb.bk ] ; 6 uses
  %i.fs = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1157
  store ptr %i.dw, ptr %i.d, align 8, !noalias !1157
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.dy, ptr %i.fv, align 8, !noalias !1157
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.fu, ptr %i.fw, align 8, !noalias !1157
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ew, ptr %i.fx, align 8, !noalias !1157
  %i.fy = add nuw nsw i64 %i.ed, 63               ; 2 uses
  %.not.i5.i.i.i.i = icmp ult i64 %i.fy, %i.dy
  br i1 %.not.i5.i.i.i.i, label %.lr.ph.i8.i.i.i.i, label %.preheader.i6.i.i.i.i

.preheader.i6.i.i.i.i:                            ; preds = %bb.bp, %bb.bl
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.hu, %bb.bp ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i = phi i8 [ 0, %bb.bl ], [ %.sroa.014.2.3.i.i.i.i.i, %bb.bp ] ; 2 uses
  %i.fz = add nuw nsw i64 %i.ed, 15               ; 2 uses
  %i.ga = add i64 %.sroa.06.0.lcssa.i.i.i.i.i, %i.fz
  %i.gb = icmp uge i64 %i.ga, %i.dy
  %i.gc = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond3105.i.i.i.i.i, label %._crit_edge.i7.i.i.i.i, label %.lr.ph107.i.i.i.i.i

.lr.ph.i8.i.i.i.i:                                ; preds = %bb.bl, %bb.bp
  %.sroa.06.0103.i.i.i.i.i = phi i64 [ %i.hu, %bb.bp ], [ 0, %bb.bl ] ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.06.0103.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.gd, align 1, !alias.scope !1158, !noalias !1159
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.ge, align 1, !alias.scope !1158, !noalias !1159
  %i.gf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i, %i.fr
  %i.gg = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i, %i.ft
  %i.gh = and <16 x i1> %i.gf, %i.gg
  %i.gi = bitcast <16 x i1> %i.gh to i16          ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.gj, align 1, !alias.scope !1158, !noalias !1159
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.gk, align 1, !alias.scope !1158, !noalias !1159
  %i.gl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i, %i.fr
  %i.gm = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i, %i.ft
  %i.gn = and <16 x i1> %i.gl, %i.gm
  %i.go = bitcast <16 x i1> %i.gn to i16          ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.gp, align 1, !alias.scope !1158, !noalias !1159
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.gq, align 1, !alias.scope !1158, !noalias !1159
  %i.gr = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i, %i.fr
  %i.gs = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i, %i.ft
  %i.gt = and <16 x i1> %i.gr, %i.gs
  %i.gu = bitcast <16 x i1> %i.gt to i16          ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.gv, align 1, !alias.scope !1158, !noalias !1159
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.gw, align 1, !alias.scope !1158, !noalias !1159
  %i.gx = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i, %i.fr
  %i.gy = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i, %i.ft
  %i.gz = and <16 x i1> %i.gx, %i.gy
  %i.ha = bitcast <16 x i1> %i.gz to i16          ; 2 uses
  %i.hb = icmp eq i16 %i.gi, 0
  br i1 %i.hb, label %.preheader96.1.i.i.i.i.i, label %bb.bq

.preheader96.1.i.i.i.i.i:                         ; preds = %.noexc15.i.i.i, %.lr.ph.i8.i.i.i.i
  %.sroa.014.2.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i8.i.i.i.i ], [ %i.hz, %.noexc15.i.i.i ] ; 3 uses
  %i.hc = icmp eq i16 %i.go, 0
  br i1 %i.hc, label %.preheader96.2.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.preheader96.1.i.i.i.i.i
  %i.hd = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 16
  %i.he = trunc nuw i8 %.sroa.014.2.i.i.i.i.i to i1
  %i.hf = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.hd, i16 noundef %i.go, i1 noundef zeroext %i.he) #32
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1124

.noexc12.i.i.i:                                   ; preds = %bb.bm
  %i.hg = zext i1 %i.hf to i8
  %i.hh = or i8 %.sroa.014.2.i.i.i.i.i, %i.hg
  br label %.preheader96.2.i.i.i.i.i

.preheader96.2.i.i.i.i.i:                         ; preds = %.noexc12.i.i.i, %.preheader96.1.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i, %.preheader96.1.i.i.i.i.i ], [ %i.hh, %.noexc12.i.i.i ] ; 3 uses
  %i.hi = icmp eq i16 %i.gu, 0
  br i1 %i.hi, label %.preheader96.3.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.preheader96.2.i.i.i.i.i
  %i.hj = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 32
  %i.hk = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i to i1
  %i.hl = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.hj, i16 noundef %i.gu, i1 noundef zeroext %i.hk) #32
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1124

.noexc13.i.i.i:                                   ; preds = %bb.bn
  %i.hm = zext i1 %i.hl to i8
  %i.hn = or i8 %.sroa.014.2.1.i.i.i.i.i, %i.hm
  br label %.preheader96.3.i.i.i.i.i

.preheader96.3.i.i.i.i.i:                         ; preds = %.noexc13.i.i.i, %.preheader96.2.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i, %.preheader96.2.i.i.i.i.i ], [ %i.hn, %.noexc13.i.i.i ] ; 3 uses
  %i.ho = icmp eq i16 %i.ha, 0
  br i1 %i.ho, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.preheader96.3.i.i.i.i.i
  %i.hp = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 48
  %i.hq = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i to i1
  %i.hr = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.hp, i16 noundef %i.ha, i1 noundef zeroext %i.hq) #32
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1124

.noexc14.i.i.i:                                   ; preds = %bb.bo
  %i.hs = zext i1 %i.hr to i8
  %i.ht = or i8 %.sroa.014.2.2.i.i.i.i.i, %i.hs
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc14.i.i.i, %.preheader96.3.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i, %.preheader96.3.i.i.i.i.i ], [ %i.ht, %.noexc14.i.i.i ] ; 2 uses
  %i.hu = add i64 %.sroa.06.0103.i.i.i.i.i, 64    ; 3 uses
  %i.hv = add i64 %i.hu, %i.fy
  %i.hw = icmp uge i64 %i.hv, %i.dy
  %i.hx = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i6.i.i.i.i, label %.lr.ph.i8.i.i.i.i

bb.bq:                                            ; preds = %.lr.ph.i8.i.i.i.i
  %i.hy = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.0103.i.i.i.i.i, i16 noundef %i.gi, i1 noundef zeroext false) #32
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1124

.noexc15.i.i.i:                                   ; preds = %bb.bq
  %i.hz = zext i1 %i.hy to i8
  br label %.preheader96.1.i.i.i.i.i

._crit_edge.i7.i.i.i.i:                           ; preds = %bb.br, %.preheader.i6.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i, %.preheader.i6.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i, %bb.br ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i1 [ %i.gc, %.preheader.i6.i.i.i.i ], [ %i.it, %bb.br ]
  %i.ia = sub i64 %i.dy, %i.ew
  %i.ib = add i64 %i.ia, -16                      ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ib ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i = load <16 x i8>, ptr %i.ic, align 1, !alias.scope !1158, !noalias !1162
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i59.i.i.i.i.i = load <16 x i8>, ptr %i.id, align 1, !alias.scope !1158, !noalias !1162
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i, %i.fr
  %i.if = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i.i, %i.ft
  %i.ig = and <16 x i1> %i.ie, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
end_hunk_0
