inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_INtNtB1H_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1H_3ops12control_flow11ControlFlowIB5s_B3I_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6p_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans_0NCINvXB2L_INtB2L_12GenericShuntINtB2J_3MapBI_B6i_EIB3m_NtNtB1H_7convert10InfallibleB4r_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3I_B67_NcNtB67_5Break0E0B67_E0E0B5r_EB7w_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.811.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.69.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.637.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.817.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.615.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.640.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  %.pre = load ptr, ptr %.val3, align 8, !alias.scope !13720, !noalias !13723 ; 2 uses
  %.pre51 = load ptr, ptr %i.s, align 8, !alias.scope !13720, !noalias !13723
  %.pre52 = load ptr, ptr %i.t, align 8, !alias.scope !13720, !noalias !13723
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.ai, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.n, ptr noundef nonnull align 8 dereferenceable(328) %i.ah, i64 328, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 3 uses
  store ptr %i.ai, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13730
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13730
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24sql_expr_to_logical_exprB18_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.pre, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.pre51, ptr noalias noundef nonnull align 8 dereferenceable(80) %.pre52), !noalias !13731
  %i.aj = load i64, ptr %i.l, align 16, !range !4218, !noalias !13730, !noundef !10 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !13730
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le43 = load ptr, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !13732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans_0B1c_.exit.thread.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.631.0..sroa_idx.i.i, i64 64, i1 false), !noalias !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !13730
  store i64 %i.aj, ptr %i.m, align 16, !noalias !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13730
  %i.am = load ptr, ptr %i.v, align 8, !alias.scope !13720, !noalias !13723, !nonnull !10, !align !304, !noundef !10
  invoke void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am)
          to label %bb.g unwind label %bb.f, !noalias !13730

bb.e:                                             ; preds = %.body.i.i
  br i1 %.sroa.028.2.i.i, label %bb.aj, label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.g:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.w, align 8, !alias.scope !13720, !noalias !13723, !nonnull !10, !align !1180, !noundef !10 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.h unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !13730

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %bb.ad, %bb.r, %.loopexit.i.i
  %.sroa.028.2.i.i = phi i1 [ false, %bb.ad ], [ true, %bb.r ], [ true, %.loopexit.i.i ], [ %.sroa.028.3.ph.i.i.ph, %.loopexit.split-lp.i.i.loopexit ], [ false, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %.pn.i.i = phi { ptr, i32 } [ %i.fj, %bb.ad ], [ %i.ep, %bb.r ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 144, i64 noundef 16)
          to label %bb.e unwind label %bb.ai, !noalias !13730

.loopexit.i.i:                                    ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.g, %._crit_edge.i.i, %bb.w, %bb.z
  %.sroa.028.3.ph.i.i.ph = phi i1 [ false, %bb.z ], [ false, %bb.w ], [ false, %._crit_edge.i.i ], [ true, %bb.g ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !13730, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !13730, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !13730, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noalias !13730, !noundef !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.05.063.i.i = phi ptr [ %i.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aw, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.063.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13730
  %i.ba = load ptr, ptr %.sroa.05.063.i.i, align 8, !noalias !13730, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13730
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %.val.i.i = load ptr, ptr %i.bb, align 8, !noalias !13730, !nonnull !10, !noundef !10 ; 9 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 32
  %.val48.i.i = load i64, ptr %i.bc, align 8, !noalias !13730, !noundef !10 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13733)
  %.val.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !13736, !noalias !13739, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13742)
  call void @llvm.experimental.noalias.scope.decl(metadata !13745)
  %i.bd = call noundef i64 @llvm.fshr.i64(i64 %.val.i.i.i, i64 %.val.i.i.i, i64 %.val48.i.i) ; 5 uses
  %i.be = icmp samesign ult i64 %.val48.i.i, 17
  br i1 %i.be, label %bb.j, label %bb.i, !prof !984

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bf = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val48.i.i, i64 noundef %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #48
          to label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.loopexit.i.i, !noalias !13730

bb.j:                                             ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13748)
  call void @llvm.experimental.noalias.scope.decl(metadata !13751)
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !13751, !noalias !13753, !noundef !10 ; 4 uses
  %i.bh = icmp samesign ugt i64 %.val48.i.i, 7
  br i1 %i.bh, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ugt i64 %.val48.i.i, 3
  br i1 %i.bi, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i, align 1, !alias.scope !13758, !noalias !13759
  %i.bj = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, %i.bd
  %i.bk = getelementptr i8, ptr %.val.i.i, i64 %.val48.i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 1, !alias.scope !13758, !noalias !13759
  %i.bm = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i, %i.bg
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val48.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, label %bb.m

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bn = getelementptr i8, ptr %.val.i.i, i64 %.val48.i.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bo, align 1, !alias.scope !13758, !noalias !13759
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i, align 1, !alias.scope !13758, !noalias !13759
  %i.bp = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bq = xor i64 %i.bd, %i.bp
  %i.br = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bs = xor i64 %i.bg, %i.br
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bt = load i8, ptr %.val.i.i, align 1, !alias.scope !13758, !noalias !13759, !noundef !10
  %i.bu = lshr i64 %.val48.i.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !13758, !noalias !13759, !noundef !10
  %i.bx = getelementptr i8, ptr %.val.i.i, i64 %.val48.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !13758, !noalias !13759, !noundef !10
  %i.ca = zext i8 %i.bt to i64
  %i.cb = xor i64 %i.bd, %i.ca
  %i.cc = zext i8 %i.bz to i64
  %i.cd = shl nuw nsw i64 %i.cc, 8
  %i.ce = zext i8 %i.bw to i64
  %i.cf = or disjoint i64 %i.cd, %i.ce
  %i.cg = xor i64 %i.cf, %i.bg
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.bs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.cg, %bb.m ], [ %i.bg, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.bq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.cb, %bb.m ], [ %i.bd, %bb.l ]
  %i.ch = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i to i128
  %i.ci = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i to i128
  %i.cj = mul nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = xor i128 %i.ck, %i.cj
  %i.cm = trunc i128 %i.cl to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.cm, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i ], [ %i.bf, %bb.i ]
  %i.cn = xor i64 %storemerge.i.i.i.i.i.i.i, 255
  %i.co = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !13760, !noundef !10
  %i.cp = zext i64 %i.cn to i128
  %i.cq = zext i64 %i.co to i128
  %i.cr = mul nuw i128 %i.cp, %i.cq               ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = xor i128 %i.cs, %i.cr
  %i.cu = trunc i128 %i.ct to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13763)
  call void @llvm.experimental.noalias.scope.decl(metadata !13766)
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = load i64, ptr %i.y, align 8, !alias.scope !13769, !noalias !13770, !noundef !10 ; 3 uses
  %i.cy = load ptr, ptr %i.k, align 8, !alias.scope !13769, !noalias !13770, !nonnull !10, !noundef !10 ; 4 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.dt, %bb.o ]
  %.pn.i.i.i.i.i = phi i64 [ %i.cu, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.du, %bb.o ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.cx ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i22.i.i.i.i = load <16 x i8>, ptr %i.db, align 1, !noalias !13773 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, %i.da
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not28.i.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not28.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i
  %.sroa.05.0.i29.i.i.i.i = phi i16 [ %i.ds, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i ], [ %i.dd, %bb.n ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i29.i.i.i.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i.i, %i.df
  %i.dh = and i64 %i.dg, %i.cx                    ; 2 uses
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [144 x i8], ptr %i.cy, i64 %i.di ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -128
  %.val3.i.i.i.i.i = load i64, ptr %i.dk, align 8, !noalias !13776, !noundef !10
  %i.dl = icmp eq i64 %.val48.i.i, %.val3.i.i.i.i.i
  br i1 %i.dl, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, !prof !13779

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr i8, ptr %i.dj, i64 -136
  %.val2.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !13776, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %.val48.i.i), !noalias !13776
  %i.dn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, !prof !13780

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, %bb.n
  %i.do = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, splat (i8 -1)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !49

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dr = add i16 %.sroa.05.0.i29.i.i.i.i, -1
  %i.ds = and i16 %i.dr, %.sroa.05.0.i29.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dt = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.du = add i64 %.sroa.01.0.i.i.i.i.i, %i.dt
  br label %bb.n

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13781)
  call void @llvm.experimental.noalias.scope.decl(metadata !13784)
  %.idx.neg.i.i.i = mul i64 %i.dh, 144
  %i.dv = sdiv exact i64 %.idx.neg.i.i.i, 144     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13787)
  %i.dw = add nsw i64 %i.dv, -16
  %i.dx = and i64 %i.dw, %i.cx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dx ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i.i.i.i = load <16 x i8>, ptr %i.dy, align 1, !noalias !13790
  %i.dz = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i.i.i.i, splat (i8 -1)
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i.i.i.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !13794
  %i.ec = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i.i.i.i, splat (i8 -1)
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ea, i1 false)
  %i.ef = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ed, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.ef, %i.ee
  %i.eg = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.eg, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.eh = load i64, ptr %i.z, align 8, !alias.scope !13797, !noalias !13798, !noundef !10
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.z, align 8, !alias.scope !13797, !noalias !13798
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull align 16 dereferenceable(112) %i.m, i64 112, i1 false), !noalias !13730
  invoke void @_RNvNtCsjHlmExTLNuX_14datafusion_sql5utils24resolve_aliases_to_exprs(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
          to label %bb.u unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !13730

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.p, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.p ], [ -128, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.eb, align 1, !noalias !13799
  %i.ej = getelementptr i8, ptr %i.dy, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ej, align 1, !noalias !13799
  %i.ek = load i64, ptr %i.aa, align 8, !alias.scope !13797, !noalias !13798, !noundef !10
  %i.el = add i64 %i.ek, -1
  store i64 %i.el, ptr %i.aa, align 8, !alias.scope !13797, !noalias !13798
  %i.em = getelementptr inbounds i8, ptr %i.dj, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.em, i64 144, i1 false), !noalias !13800
  %.pre.i.i = load i64, ptr %i.ab, align 16, !range !4218, !noalias !13730
  %i.en = icmp eq i64 %.pre.i.i, 37
  br i1 %i.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13730
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.q:                                             ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.dj, i64 -112
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull align 16 dereferenceable(112) %i.eo, i64 112, i1 false), !noalias !13730
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.r, !noalias !13730

bb.r:                                             ; preds = %bb.q
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.s, !noalias !13730

bb.s:                                             ; preds = %bb.r
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13730
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %.loopexit.i.i, !noalias !13730

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.pr.i.i = load i64, ptr %i.j, align 16, !alias.scope !13801, !noalias !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13730
  %i.er = icmp eq i64 %.pr.i.i, 37
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %.loopexit.i.i, !noalias !13730

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13730
  %i.es = icmp eq ptr %i.az, %i.ax
  br i1 %i.es, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13730
  %i.et = load i64, ptr %i.i, align 16, !range !4218, !noalias !13730, !noundef !10 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !13730
  br i1 %i.eu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le41 = load ptr, ptr %i.ev, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.i.i, i64 40, i1 false), !noalias !13732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit54.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.811.0..sroa_idx12.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.634.0..sroa_idx.i.i, i64 64, i1 false), !noalias !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13730
  store i64 %i.et, ptr %i.g, align 16, !noalias !13730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.i.i, i64 40, i1 false), !noalias !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13730
  %i.ew = load ptr, ptr %i.ad, align 8, !alias.scope !13720, !noalias !13723, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !13730, !nonnull !10, !noundef !10
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !13730, !noundef !10
  invoke void @_RNvNtCsjHlmExTLNuX_14datafusion_sql5utils26resolve_positions_to_exprs(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ey, i64 noundef %i.fa)
          to label %bb.x unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !13730

bb.x:                                             ; preds = %bb.w
  %i.fb = load i64, ptr %i.f, align 16, !range !4218, !noalias !13730, !noundef !10 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !13730
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le39 = load ptr, ptr %i.fd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.i, i64 40, i1 false), !noalias !13732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit54.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.817.0..sroa_idx18.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.637.0..sroa_idx.i.i, i64 64, i1 false), !noalias !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13730
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2Q_8adapters3map12map_try_foldBX_INtNtB2S_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB2S_6option6OptionINtB8_3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB2S_3ops12control_flow11ControlFlowIB8A_B4T_EENCNCNvB11_18get_data_scan_plan00NCINvXB3W_INtB3W_12GenericShuntINtB3U_3MapBI_B9q_EIB4x_NtNtB2S_7convert10InfallibleB7z_EEB2K_8try_folduNCINvNvB2K_12try_for_each4callB4T_B9f_NcNtB9f_5Break0E0B9f_E0E0B8z_EB19_:bb.a
bb.bj:                                            ; preds = %.loopexit30, %_RNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan18get_data_scan_plan00Bd_.exit.thread.i
  %.val66 = phi ptr [ %.val.le, %.loopexit30 ], [ %.val67, %_RNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan18get_data_scan_plan00Bd_.exit.thread.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66) ]
  %i.dz = load i64, ptr %.val66, align 8, !range !1072, !alias.scope !16153, !noalias !16156, !noundef !10
  %i.ea = icmp eq i64 %i.dz, 20
  br i1 %i.ea, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val66)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit.thread unwind label %bb.bl, !noalias !16156

bb.bl:                                            ; preds = %bb.bk
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val66, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !16160
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit.thread: ; preds = %bb.bj, %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val66, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !16160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.loopexit31

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit: ; preds = %_RNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan18get_data_scan_plan00Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.79, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.9.i, i64 176, i1 false), !noalias !16161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.i, i64 88, i1 false), !noalias !16161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %.not.i = icmp eq i64 %.sroa.020.i.sroa.4.88.copyload.i, 3
  br i1 %.not.i, label %bb.bm, label %.loopexit31

._crit_edge:                                      ; preds = %bb.bm, %bb.a, %.loopexit31
  %.sink392 = phi i64 [ 272, %.loopexit31 ], [ 88, %bb.a ], [ 88, %bb.bm ]
  %.sink = phi i64 [ -9223372036854775808, %.loopexit31 ], [ 3, %bb.a ], [ 3, %bb.bm ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %.sink392
  store i64 %.sink, ptr %i.ec, align 8
  ret void

.loopexit31:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit.thread
  %.sroa.020.i.sroa.4.88.copyload.sink.i15 = phi i64 [ 2, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit.thread ], [ %.sroa.020.i.sroa.4.88.copyload.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.07, i64 88, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.79, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.020.i.sroa.4.88.copyload.sink.i15, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !16162
  br label %._crit_edge

bb.bm:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBa_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7a_B37_EENCNCNvB13_18get_data_scan_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5A_9into_iter8IntoIterBZ_EB7Z_EIB2M_NtNtBa_7convert10InfallibleB69_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBal_12try_for_each4callB37_B7O_NcNtB7O_5Break0E0B7O_E0E0B1b_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79)
  %.not = icmp eq ptr %i.al, %i.t
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2V_8adapters3map8map_foldBX_NtBZ_15ScanFileContextuNCNvXs0_BZ_INtBZ_14ScanFileStreamINtNtB2X_3pin3PinINtNtBa_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2X_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB19_6errors15DeltaTableErrorENtNtB2X_6marker4SendEL_EEEB5W_9poll_nexts0_0NCINvNvB2P_8for_each4callB4s_NCINvMsj_B8_INtB8_3VecB4s_E14extend_trustedINtB3V_3MapBI_B4P_EE0E0E0EB19_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [192 x i8], align 8               ; 8 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %.sroa.6.i.i = alloca [96 x i8], align 8        ; 5 uses
  %i.e = alloca [168 x i8], align 8               ; 6 uses
  %i.f = alloca [208 x i8], align 8               ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.j, align 8        ; 2 uses
  %.not9 = icmp eq ptr %.promoted, %i.i
  br i1 %.not9, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !16166, !noalias !16169, !nonnull !10, !align !304, !noundef !10 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i = load ptr, ptr %i.l, align 8, !alias.scope !16166, !noalias !16169 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.56..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted10 = load i64, ptr %i.u, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.val3 = phi i64 [ %.promoted10, %.lr.ph ], [ %i.dn, %bb.r ] ; 3 uses
  %i.v = phi ptr [ %.promoted, %.lr.ph ], [ %i.w, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef nonnull align 8 dereferenceable(168) %i.v, i64 168, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 168 ; 3 uses
  store ptr %i.w, ptr %i.j, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !16166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(168) %i.v, i64 168, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !16172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16171
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16175
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !16172, !noalias !16177, !nonnull !10, !noundef !10 ; 9 uses
  %.val10.i.i = load i64, ptr %i.n, align 8, !alias.scope !16172, !noalias !16177, !noundef !10 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16178)
  %.val.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !16181, !noalias !16184, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16187)
  call void @llvm.experimental.noalias.scope.decl(metadata !16190)
  %i.x = call noundef i64 @llvm.fshr.i64(i64 %.val.i.i.i, i64 %.val.i.i.i, i64 %.val10.i.i) ; 5 uses
  %i.y = icmp samesign ult i64 %.val10.i.i, 17
  br i1 %i.y, label %bb.d, label %bb.c, !prof !984

bb.c:                                             ; preds = %bb.b
  %i.z = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val10.i.i, i64 noundef %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #48
          to label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtCseo6ZV82fEK1_3url3UrlNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread5.i.i, !noalias !16175

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !16193)
  call void @llvm.experimental.noalias.scope.decl(metadata !16196)
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !16196, !noalias !16198, !noundef !10 ; 4 uses
  %i.ab = icmp samesign ugt i64 %.val10.i.i, 7
  br i1 %i.ab, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp samesign ugt i64 %.val10.i.i, 3
  br i1 %i.ac, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.f

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i, align 1, !alias.scope !16203, !noalias !16204
  %i.ad = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, %i.x
  %i.ae = getelementptr i8, ptr %.val.i.i, i64 %.val10.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !alias.scope !16203, !noalias !16204
  %i.ag = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i, %i.aa
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val10.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, label %bb.g

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %.val.i.i, i64 %.val10.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ai, align 1, !alias.scope !16203, !noalias !16204
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i, align 1, !alias.scope !16203, !noalias !16204
  %i.aj = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.ak = xor i64 %i.x, %i.aj
  %i.al = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.am = xor i64 %i.aa, %i.al
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.an = load i8, ptr %.val.i.i, align 1, !alias.scope !16203, !noalias !16204, !noundef !10
  %i.ao = lshr i64 %.val10.i.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !16203, !noalias !16204, !noundef !10
  %i.ar = getelementptr i8, ptr %.val.i.i, i64 %.val10.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !16203, !noalias !16204, !noundef !10
  %i.au = zext i8 %i.an to i64
  %i.av = xor i64 %i.x, %i.au
  %i.aw = zext i8 %i.at to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = zext i8 %i.aq to i64
  %i.az = or disjoint i64 %i.ax, %i.ay
  %i.ba = xor i64 %i.az, %i.aa
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.am, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.ba, %bb.g ], [ %i.aa, %bb.f ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.av, %bb.g ], [ %i.x, %bb.f ]
  %i.bb = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i to i128
  %i.bc = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i to i128
  %i.bd = mul nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = xor i128 %i.be, %i.bd
  %i.bg = trunc i128 %i.bf to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtCseo6ZV82fEK1_3url3UrlNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtCseo6ZV82fEK1_3url3UrlNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, %bb.c
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.bg, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.bh = xor i64 %storemerge.i.i.i.i.i.i.i, 255
  %i.bi = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !16205, !noundef !10
  %i.bj = zext i64 %i.bh to i128
  %i.bk = zext i64 %i.bi to i128
  %i.bl = mul nuw i128 %i.bj, %i.bk               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16208)
  call void @llvm.experimental.noalias.scope.decl(metadata !16211)
  %i.bp = lshr i64 %i.bo, 57
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  %i.br = load i64, ptr %i.p, align 8, !alias.scope !16214, !noalias !16215, !noundef !10 ; 3 uses
  %i.bs = load ptr, ptr %.val.i, align 8, !alias.scope !16214, !noalias !16215, !nonnull !10, !noundef !10 ; 4 uses
  %i.bt = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtCseo6ZV82fEK1_3url3UrlNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtCseo6ZV82fEK1_3url3UrlNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.cn, %bb.i ]
  %.pn.i.i.i.i.i = phi i64 [ %i.bo, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtCseo6ZV82fEK1_3url3UrlNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.co, %bb.i ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.br ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i22.i.i.i.i = load <16 x i8>, ptr %i.bv, align 1, !noalias !16218 ; 2 uses
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, %i.bu
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i.not28.i.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.not28.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i
  %.sroa.05.0.i29.i.i.i.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i ], [ %i.bx, %bb.h ] ; 3 uses
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i29.i.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = add i64 %.sroa.01.0.i.i.i.i.i, %i.bz
  %i.cb = and i64 %i.ca, %i.br                    ; 2 uses
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [192 x i8], ptr %i.bs, i64 %i.cc ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -176
  %.val3.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !16221, !noundef !10
  %i.cf = icmp eq i64 %.val10.i.i, %.val3.i.i.i.i.i
  br i1 %i.cf, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, !prof !13779

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr i8, ptr %i.cd, i64 -184
  %.val2.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !noalias !16221, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %.val10.i.i), !noalias !16221
  %i.ch = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1e_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, !prof !13780

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, %bb.h
  %i.ci = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, splat (i8 -1)
  %i.cj = bitcast <16 x i1> %i.ci to i16
  %i.ck = icmp eq i16 %i.cj, 0
  br i1 %i.ck, label %bb.i, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !49

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cl = add i16 %.sroa.05.0.i29.i.i.i.i, -1
  %i.cm = and i16 %i.cl, %.sroa.05.0.i29.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cn = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.co = add i64 %.sroa.01.0.i.i.i.i.i, %i.cn
  br label %bb.h

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1e_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1g_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16224)
  call void @llvm.experimental.noalias.scope.decl(metadata !16227)
  %.idx.neg.i.i.i = mul i64 %i.cb, 192
  %i.cp = sdiv exact i64 %.idx.neg.i.i.i, 192     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16230)
  %i.cq = add nsw i64 %i.cp, -16
  %i.cr = and i64 %i.cq, %i.br
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cr ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i.i.i.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !16233
  %i.ct = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i.i.i.i, splat (i8 -1)
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cp ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i.i.i.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !16237
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i.i.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cu, i1 false)
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cx, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.cz, %i.cy
  %i.da = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.da, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1e_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.db = load i64, ptr %i.q, align 8, !alias.scope !16240, !noalias !16241, !noundef !10
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.q, align 8, !alias.scope !16240, !noalias !16241
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.body.thread5.i.i:                                ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.c
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.j, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1e_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.j ], [ -128, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1e_E0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.cv, align 1, !noalias !16242
  %i.dd = getelementptr i8, ptr %i.cs, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.dd, align 1, !noalias !16242
  %i.de = load i64, ptr %i.r, align 8, !alias.scope !16240, !noalias !16241, !noundef !10
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %i.r, align 8, !alias.scope !16240, !noalias !16241
  %i.dg = getelementptr inbounds i8, ptr %i.cd, i64 -192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(192) %i.dg, i64 192, i1 false), !noalias !16243
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !1239, !noalias !16175 ; 2 uses
  %.not.i.i = icmp eq i64 %.pre.i.i, 3
  br i1 %.not.i.i, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.dh = getelementptr inbounds i8, ptr %i.cd, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.dh, i64 96, i1 false), !noalias !16175
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.l, !noalias !16175

bb.l:                                             ; preds = %bb.k
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %.body.thread.i.i unwind label %bb.m, !noalias !16175

bb.m:                                             ; preds = %bb.l
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16175
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %bb.n unwind label %.body.thread5.i.i, !noalias !16175

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16175
  store i64 %.pre.i.i, ptr %i.b, align 8, !noalias !16175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !noalias !16175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.56..sroa_idx.i.i, i64 48, i1 false), !noalias !16175
  br label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts0_0Bh_.exit.i

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void @_RNvMs5_NtCsjhHCjzi9uUI_17datafusion_common5statsNtB5_10Statistics11new_unknown(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val2.i)
          to label %bb.o unwind label %.body.thread5.i.i, !noalias !16175

bb.o:                                             ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE12remove_entryBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !16175
  br label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts0_0Bh_.exit.i

.body.thread.i.i:                                 ; preds = %bb.l, %.body.thread5.i.i
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread5.i.i ], [ %i.di, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEBS_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.e) #44
          to label %.body unwind label %bb.p, !noalias !16177

bb.p:                                             ; preds = %.body.thread.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16177
  unreachable

_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts0_0Bh_.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(168) %i.g, i64 168, i1 false), !noalias !16166
  invoke void @_RNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayNtB5_15ScanFileContext3new(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(168) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %bb.r unwind label %bb.q

._crit_edge:                                      ; preds = %bb.r, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.dn, %bb.r ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val5, ptr %.val4, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.q:                                             ; preds = %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts0_0Bh_.exit.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.thread.i.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %bb.q ], [ %eh.lpad-body4.i.i, %.body.thread.i.i ]
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val3, ptr %.val, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEEB1G_.exit unwind label %bb.s

bb.r:                                             ; preds = %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts0_0Bh_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16171
  %i.dm = getelementptr inbounds nuw [208 x i8], ptr %i.t, i64 %.val3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.f, i64 208, i1 false), !noalias !16244
  %i.dn = add i64 %.val3, 1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq ptr %i.w, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b

bb.s:                                             ; preds = %.body
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
