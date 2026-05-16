inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8order_byINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21order_by_to_sort_exprB1j_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29382
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !29379, !noalias !29384, !nonnull !8, !noundef !8 ; 4 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !29382
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.az, ptr %i.k, align 8, !noalias !29382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29382
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.l unwind label %bb.k, !noalias !29384

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.m, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.be, %bb.k ] ; 2 uses
  %i.bc = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !29385
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #47
          to label %.body unwind label %bb.n, !noalias !29384

bb.k:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29382
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.r unwind label %bb.m, !noalias !29384

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #44
          to label %bb.i unwind label %bb.n, !noalias !29384

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !29384
  unreachable

bb.o:                                             ; preds = %._crit_edge, %bb.e
  %i.bi = phi i64 [ %i.as, %bb.e ], [ %.pre, %._crit_edge ] ; 3 uses
  %.sroa.042.0 = phi i8 [ 0, %bb.e ], [ 1, %._crit_edge ] ; 7 uses
  %.sroa.04.0 = phi ptr [ %3, %bb.e ], [ %i.aq, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bj = icmp ult i64 %i.bi, 6987403058223316
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 16, i64 noundef 128)
          to label %bb.s unwind label %bb.q

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit, %.body
  %.sroa.046.0 = phi i1 [ %.sroa.046.1.lpad-body, %.body ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.042.1 = phi i8 [ %.sroa.042.2.lpad-body, %.body ], [ %.sroa.042.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0125.0 = phi ptr [ %i.bm, %.body ], [ %.sroa.0125.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.28.0 = phi i32 [ %i.bn, %.body ], [ %.sroa.28.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bk = trunc nuw i8 %.sroa.042.1 to i1
  br i1 %i.bk, label %bb.ec, label %bb.aa

bb.q:                                             ; preds = %bb.ds, %bb.t, %bb.r, %bb.o
  %.sroa.046.1 = phi i1 [ true, %bb.t ], [ false, %bb.ds ], [ true, %bb.o ], [ true, %bb.r ]
  %.sroa.042.2 = phi i8 [ %.sroa.042.0, %bb.t ], [ %.sroa.042.0, %bb.ds ], [ %.sroa.042.0, %bb.o ], [ 1, %bb.r ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dr, %bb.q, %bb.i, %bb.j
  %.sroa.046.1.lpad-body = phi i1 [ true, %bb.i ], [ true, %bb.j ], [ %.sroa.046.1, %bb.q ], [ false, %bb.dr ]
  %.sroa.042.2.lpad-body = phi i8 [ 0, %bb.i ], [ 0, %bb.j ], [ %.sroa.042.2, %bb.q ], [ %.sroa.042.0, %bb.dr ]
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %.pn.i, %bb.j ], [ %i.bl, %bb.q ], [ %i.jg, %bb.dr ] ; 2 uses
  %i.bm = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 1
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !29379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !29379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx226, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema5merge(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6)
          to label %._crit_edge unwind label %bb.q

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i64, ptr %i.ar, align 8
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.o, align 8, !range !64, !noundef !8
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !65, !noundef !8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.t, label %bb.u, !prof !3

bb.t:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %i.bs, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #43
          to label %bb.aw unwind label %bb.q

bb.u:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.bs, align 8, !nonnull !8, !noundef !8
  %i.bv = icmp samesign ule i64 %i.bi, %i.br
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.br, ptr %i.ap, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.ca = load i64, ptr %2, align 8, !range !231, !noundef !8
  %i.cb = load i64, ptr %i.ar, align 8, !noundef !8 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 6987403058223316
  call void @llvm.assume(i1 %i.cc)
  %.idx = mul nuw nsw i64 %i.cb, 1320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.bz, ptr %i.ao, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr %i.bz, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.ca, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  store ptr %i.cd, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph: ; preds = %bb.u
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 9 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.337.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.337, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cr = load i8, ptr %i.cq, align 2, !range !3878
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 113
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.5258, i64 8
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i, %.body161
  %.sroa.0125.1 = phi ptr [ %.sroa.0125.6277, %bb.eb ], [ %.sroa.0125.6277, %bb.dz ], [ %.sroa.0125.6277, %bb.ea ], [ %i.cv, %.body161 ], [ %.sroa.0125.6277, %bb.dx ], [ %.sroa.0125.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.28.1 = phi i32 [ %.sroa.28.6276, %bb.eb ], [ %.sroa.28.6276, %bb.dz ], [ %.sroa.28.6276, %bb.ea ], [ %i.cw, %.body161 ], [ %.sroa.28.6276, %bb.dx ], [ %.sroa.28.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.av

.loopexit307:                                     ; preds = %bb.do, %bb.dq
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.loopexit.split-lp308:                            ; preds = %bb.aq, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i160
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.body161:                                         ; preds = %.loopexit307, %.loopexit.split-lp308, %bb.as
  %eh.lpad-body162 = phi { ptr, i32 } [ %i.ef, %bb.as ], [ %lpad.loopexit309, %.loopexit307 ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp308 ] ; 2 uses
  %i.cv = extractvalue { ptr, i32 } %eh.lpad-body162, 0
  %i.cw = extractvalue { ptr, i32 } %eh.lpad-body162, 1
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, %bb.dm
  %i.cx = phi ptr [ %i.bz, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %i.iy, %bb.dm ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29390)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1320
  store ptr %i.cy, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !29390, !noalias !29393
  %.sroa.0228.0.copyload = load i64, ptr %i.cx, align 8, !noalias !29390 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1312
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !29390
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1313
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1, !noalias !29390 ; 2 uses
  %.not127 = icmp eq i64 %.sroa.0228.0.copyload, 69
  br i1 %.not127, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 336
  %.sroa.8232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 328
  %.sroa.8232.0.copyload = load i64, ptr %.sroa.8232.0..sroa_idx, align 8, !noalias !29390 ; 2 uses
  %.sroa.8230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5258)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5258, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.8230.0..sroa_idx, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %.sroa.3123, ptr noundef nonnull align 8 dereferenceable(976) %.sroa.9.0..sroa_idx, i64 976, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.sroa.0228.0.copyload, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5258.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5258, i64 320, i1 false)
  %.not128.not.not.not.not.not = icmp ne i64 %.sroa.8232.0.copyload, 70 ; 3 uses
  br i1 %.not128.not.not.not.not.not, label %bb.ac, label %bb.ad

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.dm, %bb.u
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150 unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v, %bb.x
  %.sroa.0125.2 = phi ptr [ %i.da, %bb.x ], [ %.sroa.0125.1, %bb.v ]
  %.sroa.28.2 = phi i32 [ %i.db, %bb.x ], [ %.sroa.28.1, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #44
          to label %bb.p unwind label %bb.av

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  %i.db = extractvalue { ptr, i32 } %i.cz, 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  store i64 20, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.dd = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %i.dd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ab

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq)
          to label %bb.y unwind label %.thread

bb.aa:                                            ; preds = %bb.ec, %bb.p
  br i1 %.sroa.046.0, label %bb.ee, label %bb.ed

.thread:                                          ; preds = %bb.z, %bb.dv
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  %i.dg = extractvalue { ptr, i32 } %i.de, 1
  br label %bb.ed

bb.ab:                                            ; preds = %bb.du, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.ac:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 %.sroa.8232.0.copyload, ptr %i.am, align 8
  %.sroa.3123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %.sroa.3123.0..sroa_idx124, ptr noundef nonnull align 8 dereferenceable(976) %.sroa.3123, i64 976, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.am, ptr %i.ai, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXsV_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB5_8WithFillNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @594, ptr noundef nonnull %i.ai)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ae

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp ne i64 %.sroa.0228.0.copyload, 48
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i64 %.sroa.0228.0.copyload, 45
  br i1 %i.di, label %bb.ax, label %bb.ay

.body156:                                         ; preds = %bb.am, %bb.ae, %.body152
  %.pn134.pn = phi { ptr, i32 } [ %.pn134, %.body152 ], [ %i.dj, %bb.ae ], [ %i.dw, %bb.am ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query8WithFillECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(984) %i.am) #44
          to label %.thread269 unwind label %bb.av

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155, %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body156

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ag unwind label %bb.af

.body152:                                         ; preds = %bb.ak, %bb.af, %bb.aj
  %.pn134 = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %i.dk, %bb.af ], [ %i.du, %bb.ak ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #44
          to label %.body156 unwind label %bb.av

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ah, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.ag:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = load i64, ptr %i.n, align 8, !range !64, !noundef !8
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !65, !noundef !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.ah, label %bb.ai, !prof !3

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load i64, ptr %i.dp, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #43
          to label %bb.aw unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.do, ptr %i.ah, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.dr, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ak, ptr %i.ag, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.ds, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.468.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @52, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #44
          to label %.body152 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body152 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155 unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body156 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158 unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 5, ptr %0, align 8
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8order_byINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21order_by_to_sort_exprB1j_:bb.a
          to label %.noexc170 unwind label %.loopexit.split-lp303

.noexc170:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit
  %i.gk = load i64, ptr %i.ck, align 8, !noundef !8 ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %.sroa.12239.2
  br i1 %i.gl, label %bb.cf, label %bb.cd

bb.bt:                                            ; preds = %.noexc169
  %i.gm = load ptr, ptr %i.gi, align 8, !noalias !29403, !nonnull !8, !noundef !8 ; 2 uses
  %i.gn = icmp ugt i64 %i.gh, 44
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.gm, ptr noundef nonnull readonly align 1 dereferenceable(45) @595, i64 range(i64 0, -9223372036854775808) 45, i1 false), !noalias !29416
  store i64 %i.gh, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.gm, ptr %.sroa.4.0..sroa_idx243, align 8
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 45, ptr %.sroa.5244.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %bb.bu

.body176:                                         ; preds = %bb.bz, %bb.bu, %bb.by
  %.pn130 = phi { ptr, i32 } [ %i.gx, %bb.by ], [ %i.go, %bb.bu ], [ %i.gy, %bb.bz ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #44
          to label %.body166 unwind label %bb.av

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175, %bb.bw, %bb.bt
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.bv:                                            ; preds = %bb.bt
  %i.gp = load i64, ptr %i.m, align 8, !range !64, !noundef !8
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !65, !noundef !8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.gq, label %bb.bw, label %bb.bx, !prof !3

bb.bw:                                            ; preds = %bb.bv
  %i.gu = load i64, ptr %i.gt, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gs, i64 %i.gu) #43
          to label %bb.aw unwind label %bb.bu

bb.bx:                                            ; preds = %bb.bv
  %i.gv = load ptr, ptr %i.gt, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.gs, ptr %i.ab, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.gv, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.584.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.488.0..sroa_idx, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.gw, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.492.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @52, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #44
          to label %.body176 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175 unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body176 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179 unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i181 unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body166 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i181: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit185 unwind label %.loopexit.split-lp303

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit185: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  br label %bb.cz

bb.cd:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.hc = add i64 %.sroa.12239.2, -1              ; 4 uses
  %i.hd = icmp ult i64 %i.hc, %i.cm
  br i1 %i.hd, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -1) %i.hc, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #50
          to label %.noexc186 unwind label %.loopexit.split-lp303

.noexc186:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.gk, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ae, ptr %i.v, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.he, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4102.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @596, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189 unwind label %.loopexit.split-lp303

bb.cg:                                            ; preds = %bb.cd
  %i.hf = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %i.hc ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !range !3087, !noalias !29417, !noundef !8
  %.not.i = icmp eq i64 %i.hg, 3
  %..i = select i1 %.not.i, ptr null, ptr %i.hf
  %i.hh = load ptr, ptr %i.cp, align 8, !noalias !29417, !nonnull !8, !noundef !8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hc
  invoke void @_RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromTINtNtB12_6option6OptionRNtNtB7_15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %..i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hj)
          to label %bb.ch unwind label %.loopexit302

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.337, ptr noundef nonnull align 8 dereferenceable(104) %i.s, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i191 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.thread278 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.thread278:                                       ; preds = %bb.ci
  %.sroa.28.6281 = extractvalue { ptr, i32 } %i.hk, 1
  %.sroa.0125.6282 = extractvalue { ptr, i32 } %i.hk, 0
  br label %bb.dw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i191: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195 unwind label %.loopexit298

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.dg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195
  %.sroa.038.2 = phi i8 [ 0, %bb.dg ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195 ] ; 2 uses
  %.sroa.036.0 = phi i64 [ %i.ik, %bb.dg ], [ 5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !29420)
  %.sroa.04.0.i = icmp ne i8 %.sroa.10.0.copyload, 0 ; 3 uses
  %.not7.i = icmp eq i8 %.sroa.11.0.copyload, 2
  br i1 %.not7.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hm = trunc nuw i8 %.sroa.11.0.copyload to i1
  br label %bb.dh

bb.cm:                                            ; preds = %bb.ck
  switch i8 %i.cr, label %default.unreachable [
    i8 0, label %bb.cn
    i8 1, label %bb.dh
    i8 2, label %bb.co
    i8 3, label %bb.cp
  ]

default.unreachable:                              ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.hn = xor i1 %.sroa.04.0.i, true
  br label %bb.dh

bb.co:                                            ; preds = %bb.cm
  br label %bb.dh

bb.cp:                                            ; preds = %bb.cm
  br label %bb.dh

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cr unwind label %bb.cq

.body201:                                         ; preds = %bb.cv, %bb.cq, %bb.cu
  %.pn = phi { ptr, i32 } [ %i.hx, %bb.cu ], [ %i.ho, %bb.cq ], [ %i.hy, %bb.cv ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #44
          to label %.body166 unwind label %bb.av

bb.cq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i200, %bb.cs, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body201

bb.cr:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189
  %i.hp = load i64, ptr %i.l, align 8, !range !64, !noundef !8
  %i.hq = trunc nuw i64 %i.hp to i1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !65, !noundef !8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.hq, label %bb.cs, label %bb.ct, !prof !3

bb.cs:                                            ; preds = %bb.cr
  %i.hu = load i64, ptr %i.ht, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hs, i64 %i.hu) #43
          to label %bb.aw unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cr
  %i.hv = load ptr, ptr %i.ht, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.hs, ptr %i.u, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.hv, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.y, ptr %i.t, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4111.0..sroa_idx, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.hw, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4115.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @52, ptr noundef nonnull %i.t)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit198 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #44
          to label %.body201 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit198: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i200 unwind label %bb.cv

bb.cv:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit198
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body201 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i200: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit198
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit204 unwind label %bb.cq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit204: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i206 unwind label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit204
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body166 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i206: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit204
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit210 unwind label %.loopexit.split-lp303

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit210: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit185, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit210, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i212 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.thread283 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.thread283:                                       ; preds = %bb.da
  %.sroa.28.6286 = extractvalue { ptr, i32 } %i.ic, 1
  %.sroa.0125.6287 = extractvalue { ptr, i32 } %i.ic, 0
  br label %bb.dw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i212: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit217 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i.thread

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29400
  %.sroa.4255.8.copyload = load i64, ptr %i.g, align 8
  %.sroa.6256.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.379.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6256.8..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 7, ptr %0, align 8
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4255.8.copyload, ptr %.sroa.278.0..sroa_idx, align 8
  br label %bb.cz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit217: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ie = load i64, ptr %i.an, align 8, !range !5761, !noundef !8 ; 2 uses
  %i.if = icmp ne i64 %i.ie, 48
  call void @llvm.assume(i1 %i.if)
  %i.ig = icmp eq i64 %i.ie, 45
  br i1 %i.ig, label %bb.dd, label %bb.aq

bb.dd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit217
  %i.ih = load i64, ptr %.sroa.5258.0..sroa_idx, align 8, !range !8300, !noundef !8 ; 2 uses
  %i.ii = icmp ne i64 %i.ih, -9223372036854775806
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp eq i64 %i.ih, -9223372036854775808
  br i1 %i.ij, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163, label %bb.au

bb.de:                                            ; preds = %bb.ay
  %i.ik = load i64, ptr %i.q, align 16, !range !4, !noundef !8 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5119.0..sroa_idx, i64 40, i1 false)
  br i1 %i.il, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.632, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.834)
end_hunk_1
