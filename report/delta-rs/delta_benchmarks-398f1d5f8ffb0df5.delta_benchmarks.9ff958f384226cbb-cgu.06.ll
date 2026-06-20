inline.NumInlined: 3590
inline.NumDeleted: 1361
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_INtNtB1H_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1H_3ops12control_flow11ControlFlowIB5s_B3I_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6p_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB2L_INtB2L_12GenericShuntINtB2J_3MapBI_B6i_EIB3m_NtNtB1H_7convert10InfallibleB4r_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3I_B67_NcNtB67_5Break0E0B67_E0E0B5r_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
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
  %.pre = load ptr, ptr %.val3, align 8, !alias.scope !2874, !noalias !2877 ; 2 uses
  %.pre51 = load ptr, ptr %i.s, align 8, !alias.scope !2874, !noalias !2877
  %.pre52 = load ptr, ptr %i.t, align 8, !alias.scope !2874, !noalias !2877
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.ai, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.n, ptr noundef nonnull align 8 dereferenceable(328) %i.ah, i64 328, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 3 uses
  store ptr %i.ai, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2884
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2884
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.pre, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.pre51, ptr noalias noundef nonnull align 8 dereferenceable(80) %.pre52), !noalias !2885
  %i.aj = load i64, ptr %i.l, align 16, !range !2505, !noalias !2884, !noundef !7 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !2884
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le43 = load ptr, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.631.0..sroa_idx.i.i, i64 64, i1 false), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !2884
  store i64 %i.aj, ptr %i.m, align 16, !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2884
  %i.am = load ptr, ptr %i.v, align 8, !alias.scope !2874, !noalias !2877, !nonnull !7, !align !13, !noundef !7
  invoke void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am)
          to label %bb.g unwind label %bb.f, !noalias !2884

bb.e:                                             ; preds = %.body.i.i
  br i1 %.sroa.028.2.i.i, label %bb.aj, label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.g:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.w, align 8, !alias.scope !2874, !noalias !2877, !nonnull !7, !align !18, !noundef !7 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.h unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !2884

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %bb.ad, %bb.r, %.loopexit.i.i
  %.sroa.028.2.i.i = phi i1 [ false, %bb.ad ], [ true, %bb.r ], [ true, %.loopexit.i.i ], [ %.sroa.028.3.ph.i.i.ph, %.loopexit.split-lp.i.i.loopexit ], [ false, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %.pn.i.i = phi { ptr, i32 } [ %i.fj, %bb.ad ], [ %i.ep, %bb.r ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 144, i64 noundef 16)
          to label %bb.e unwind label %bb.ai, !noalias !2884

.loopexit.i.i:                                    ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.i
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
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2884, !nonnull !7, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !2884, !nonnull !7, !noundef !7 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !2884, !nonnull !7, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noalias !2884, !noundef !7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %.sroa.05.063.i.i = phi ptr [ %i.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %i.aw, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.063.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2884
  %i.ba = load ptr, ptr %.sroa.05.063.i.i, align 8, !noalias !2884, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2884
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %.val.i.i = load ptr, ptr %i.bb, align 8, !noalias !2884, !nonnull !7, !noundef !7 ; 9 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 32
  %.val48.i.i = load i64, ptr %i.bc, align 8, !noalias !2884, !noundef !7 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  %.val.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2890, !noalias !2893, !noundef !7 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  %i.bd = call noundef i64 @llvm.fshr.i64(i64 %.val.i.i.i, i64 %.val.i.i.i, i64 %.val48.i.i) ; 5 uses
  %i.be = icmp samesign ult i64 %.val48.i.i, 17
  br i1 %i.be, label %bb.j, label %bb.i, !prof !2902

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bf = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val48.i.i, i64 noundef %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #26
          to label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %.loopexit.i.i, !noalias !2884

bb.j:                                             ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !2906, !noalias !2908, !noundef !7 ; 4 uses
  %i.bh = icmp samesign ugt i64 %.val48.i.i, 7
  br i1 %i.bh, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ugt i64 %.val48.i.i, 3
  br i1 %i.bi, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i, align 1, !alias.scope !2913, !noalias !2914
  %i.bj = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, %i.bd
  %i.bk = getelementptr i8, ptr %.val.i.i, i64 %.val48.i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 1, !alias.scope !2913, !noalias !2914
  %i.bm = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i, %i.bg
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val48.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, label %bb.m

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bn = getelementptr i8, ptr %.val.i.i, i64 %.val48.i.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bo, align 1, !alias.scope !2913, !noalias !2914
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i, align 1, !alias.scope !2913, !noalias !2914
  %i.bp = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bq = xor i64 %i.bd, %i.bp
  %i.br = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bs = xor i64 %i.bg, %i.br
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bt = load i8, ptr %.val.i.i, align 1, !alias.scope !2913, !noalias !2914, !noundef !7
  %i.bu = lshr i64 %.val48.i.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !2913, !noalias !2914, !noundef !7
  %i.bx = getelementptr i8, ptr %.val.i.i, i64 %.val48.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !2913, !noalias !2914, !noundef !7
  %i.ca = zext i8 %i.bt to i64
  %i.cb = xor i64 %i.bd, %i.ca
  %i.cc = zext i8 %i.bz to i64
  %i.cd = shl nuw nsw i64 %i.cc, 8
  %i.ce = zext i8 %i.bw to i64
  %i.cf = or disjoint i64 %i.cd, %i.ce
  %i.cg = xor i64 %i.cf, %i.bg
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i ], [ %i.bs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i ], [ %i.cg, %bb.m ], [ %i.bg, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i ], [ %i.bq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i ], [ %i.cb, %bb.m ], [ %i.bd, %bb.l ]
  %i.ch = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i to i128
  %i.ci = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i to i128
  %i.cj = mul nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = xor i128 %i.ck, %i.cj
  %i.cm = trunc i128 %i.cl to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.cm, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i ], [ %i.bf, %bb.i ]
  %i.cn = xor i64 %storemerge.i.i.i.i.i.i.i, 255
  %i.co = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !2915, !noundef !7
  %i.cp = zext i64 %i.cn to i128
  %i.cq = zext i64 %i.co to i128
  %i.cr = mul nuw i128 %i.cp, %i.cq               ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = xor i128 %i.cs, %i.cr
  %i.cu = trunc i128 %i.ct to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = load i64, ptr %i.y, align 8, !alias.scope !2924, !noalias !2925, !noundef !7 ; 3 uses
  %i.cy = load ptr, ptr %i.k, align 8, !alias.scope !2924, !noalias !2925, !nonnull !7, !noundef !7 ; 4 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ], [ %i.dt, %bb.o ]
  %.pn.i.i.i.i.i = phi i64 [ %i.cu, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ], [ %i.du, %bb.o ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.cx ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i22.i.i.i.i = load <16 x i8>, ptr %i.db, align 1, !noalias !2927 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, %i.da
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not28.i.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not28.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i
  %.sroa.05.0.i29.i.i.i.i = phi i16 [ %i.ds, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i ], [ %i.dd, %bb.n ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i29.i.i.i.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i.i, %i.df
  %i.dh = and i64 %i.dg, %i.cx                    ; 2 uses
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [144 x i8], ptr %i.cy, i64 %i.di ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -128
  %.val3.i.i.i.i.i = load i64, ptr %i.dk, align 8, !noalias !2930, !noundef !7
  %i.dl = icmp eq i64 %.val48.i.i, %.val3.i.i.i.i.i
  br i1 %i.dl, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i, !prof !2933

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr i8, ptr %i.dj, i64 -136
  %.val2.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !2930, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %.val48.i.i), !noalias !2930
  %i.dn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i, !prof !2934

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i, %bb.n
  %i.do = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, splat (i8 -1)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !2359

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dr = add i16 %.sroa.05.0.i29.i.i.i.i, -1
  %i.ds = and i16 %i.dr, %.sroa.05.0.i29.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dt = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.du = add i64 %.sroa.01.0.i.i.i.i.i, %i.dt
  br label %bb.n

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  %.idx.neg.i.i.i = mul i64 %i.dh, 144
  %i.dv = sdiv exact i64 %.idx.neg.i.i.i, 144     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %i.dw = add nsw i64 %i.dv, -16
  %i.dx = and i64 %i.dw, %i.cx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dx ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i.i.i.i = load <16 x i8>, ptr %i.dy, align 1, !noalias !2944
  %i.dz = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i.i.i.i, splat (i8 -1)
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i.i.i.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !2948
  %i.ec = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i.i.i.i, splat (i8 -1)
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ea, i1 false)
  %i.ef = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ed, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.ef, %i.ee
  %i.eg = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.eg, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.eh = load i64, ptr %i.z, align 8, !alias.scope !2951, !noalias !2952, !noundef !7
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.z, align 8, !alias.scope !2951, !noalias !2952
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull align 16 dereferenceable(112) %i.m, i64 112, i1 false), !noalias !2884
  invoke void @_RNvNtCsjHlmExTLNuX_14datafusion_sql5utils24resolve_aliases_to_exprs(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
          to label %bb.u unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !2884

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.p, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.p ], [ -128, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.eb, align 1, !noalias !2953
  %i.ej = getelementptr i8, ptr %i.dy, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ej, align 1, !noalias !2953
  %i.ek = load i64, ptr %i.aa, align 8, !alias.scope !2951, !noalias !2952, !noundef !7
  %i.el = add i64 %i.ek, -1
  store i64 %i.el, ptr %i.aa, align 8, !alias.scope !2951, !noalias !2952
  %i.em = getelementptr inbounds i8, ptr %i.dj, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.em, i64 144, i1 false), !noalias !2954
  %.pre.i.i = load i64, ptr %i.ab, align 16, !range !2505, !noalias !2884
  %i.en = icmp eq i64 %.pre.i.i, 37
  br i1 %i.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.q:                                             ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.dj, i64 -112
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull align 16 dereferenceable(112) %i.eo, i64 112, i1 false), !noalias !2884
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.r, !noalias !2884

bb.r:                                             ; preds = %bb.q
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.s, !noalias !2884

bb.s:                                             ; preds = %bb.r
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2884
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %.loopexit.i.i, !noalias !2884

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.pr.i.i = load i64, ptr %i.j, align 16, !alias.scope !2955, !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  %i.er = icmp eq i64 %.pr.i.i, 37
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %.loopexit.i.i, !noalias !2884

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2884
  %i.es = icmp eq ptr %i.az, %i.ax
  br i1 %i.es, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2884
  %i.et = load i64, ptr %i.i, align 16, !range !2505, !noalias !2884, !noundef !7 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !2884
  br i1 %i.eu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le41 = load ptr, ptr %i.ev, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.i.i, i64 40, i1 false), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit54.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.811.0..sroa_idx12.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.634.0..sroa_idx.i.i, i64 64, i1 false), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2884
  store i64 %i.et, ptr %i.g, align 16, !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.i.i, i64 40, i1 false), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2884
  %i.ew = load ptr, ptr %i.ad, align 8, !alias.scope !2874, !noalias !2877, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !2884, !nonnull !7, !noundef !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !2884, !noundef !7
  invoke void @_RNvNtCsjHlmExTLNuX_14datafusion_sql5utils26resolve_positions_to_exprs(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ey, i64 noundef %i.fa)
          to label %bb.x unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !2884

bb.x:                                             ; preds = %bb.w
  %i.fb = load i64, ptr %i.f, align 16, !range !2505, !noalias !2884, !noundef !7 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !2884
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le39 = load ptr, ptr %i.fd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.i, i64 40, i1 false), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit54.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.817.0..sroa_idx18.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.637.0..sroa_idx.i.i, i64 64, i1 false), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2884
end_hunk_0
