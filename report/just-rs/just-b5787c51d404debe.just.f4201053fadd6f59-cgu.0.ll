Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.body.i:                                          ; preds = %.lr.ph.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge23.i.i, ptr %i.cr, align 8, !alias.scope !36157, !noalias !36162
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ax) #72, !noalias !36163
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just5value5ValueEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #72, !noalias !36150
  br label %common.resume

common.resume:                                    ; preds = %bb.el, %.body257.thread, %.body274, %.body.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %.body.i ], [ %i.cy, %bb.n ], [ %.pn.pn.pn.pn701, %.body257.thread ], [ %.pn.pn.pn, %bb.el ], [ %eh.lpad-body275, %.body274 ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ax) #72, !noalias !36164
  br label %common.resume

_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemNtNtCskXtk6F4WjxZ_4just5value5ValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i, %._crit_edge.thread.i.i
  %i.cz = phi i64 [ 0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.pre, %._crit_edge.thread.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !36165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !36150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.da = getelementptr i8, ptr %.sroa.0194.0, i64 80 ; 8 uses
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %.idx2644 = mul nuw nsw i64 %i.cz, 448
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx2644 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !36169
  %i.dd = icmp eq i64 %i.cz, 0
  br i1 %i.dd, label %.thread.i, label %.lr.ph2615

_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph2615
  %i.de = icmp eq ptr %i.dh, %i.dc
  br i1 %i.de, label %.thread.i, label %.lr.ph2615

.thread.i:                                        ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, %_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemNtNtCskXtk6F4WjxZ_4just5value5ValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !36169
  store ptr null, ptr %i.aw, align 8, !alias.scope !36166, !noalias !36183
  br label %bb.em

.lr.ph2615:                                       ; preds = %_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemNtNtCskXtk6F4WjxZ_4just5value5ValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_.exit, %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.df = phi ptr [ %i.dh, %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.db, %_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemNtNtCskXtk6F4WjxZ_4just5value5ValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_.exit ] ; 4 uses
  %i.dg = phi i64 [ %i.dk, %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemNtNtCskXtk6F4WjxZ_4just5value5ValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_.exit ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 448 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dj = load i64, ptr %i.di, align 8, !range !183, !alias.scope !36184, !noalias !36193, !noundef !29
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dj, -1
  %i.dk = add nuw nsw i64 %i.dg, 1                ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph2615
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !36211, !noalias !36212, !nonnull !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !36211, !noalias !36212
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36213
  %i.dp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #70, !noalias !36213 ; 6 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.p, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #71
          to label %.noexc unwind label %.body257.thread705.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.o
  store ptr %i.dm, ptr %i.dp, align 8, !noalias !36169
  %.sroa.414.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.do, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36169
  %.sroa.515.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 %i.dg, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36169
  store i64 4, ptr %i.am, align 8, !noalias !36169
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  store ptr %i.dp, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36169
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36169
  call void @llvm.experimental.noalias.scope.decl(metadata !36216)
  call void @llvm.experimental.noalias.scope.decl(metadata !36219)
  br label %bb.q

bb.q:                                             ; preds = %.noexc.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.dr = phi ptr [ %i.ei, %.noexc.i.i.i.i.i ], [ %i.dp, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.12.0.copyload12.i = phi i64 [ %i.ek, %.noexc.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ] ; 11 uses
  %i.ds = phi i64 [ %i.ea, %.noexc.i.i.i.i.i ], [ %i.dk, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %i.dt = phi ptr [ %i.dx, %.noexc.i.i.i.i.i ], [ %i.dh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  br label %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.du = phi i64 [ %i.ea, %bb.r ], [ %i.ds, %bb.q ] ; 2 uses
  %i.dv = phi ptr [ %i.dx, %bb.r ], [ %i.dt, %bb.q ] ; 5 uses
  %i.dw = icmp eq ptr %i.dv, %i.dc
  br i1 %i.dw, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 448 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dz = load i64, ptr %i.dy, align 8, !range !183, !alias.scope !36222, !noalias !36231, !noundef !29
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dz, -1
  %i.ea = add i64 %i.du, 1                        ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB26_17invocation_parserNtB2Q_16InvocationParser16parse_invocations_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB26_17invocation_parserNtB2Q_16InvocationParser16parse_invocations_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !36251, !noalias !36252, !nonnull !29
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !36251, !noalias !36252
  %i.ef = icmp samesign ult i64 %.sroa.12.0.copyload12.i, 384307168202282326
  call void @llvm.assume(i1 %i.ef)
  %i.eg = load i64, ptr %i.am, align 8, !range !306, !alias.scope !36253, !noalias !36254, !noundef !29
  %i.eh = icmp eq i64 %.sroa.12.0.copyload12.i, %i.eg
  br i1 %i.eh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB26_17invocation_parserNtB2Q_16InvocationParser16parse_invocations_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.sroa.12.0.copyload12.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i.i.i.i.i unwind label %bb.s, !noalias !36169

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !36253, !noalias !36254
  br label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB26_17invocation_parserNtB2Q_16InvocationParser16parse_invocations_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit.i.i.i.i.i.i.i
  %i.ei = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i.i.i.i.i ], [ %i.dr, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB26_17invocation_parserNtB2Q_16InvocationParser16parse_invocations_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.sroa.12.0.copyload12.i ; 3 uses
  store ptr %i.ec, ptr %i.ej, align 8, !noalias !36255
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.ee, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36255
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %i.du, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36255
  %i.ek = add nuw nsw i64 %.sroa.12.0.copyload12.i, 1 ; 2 uses
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !36253, !noalias !36254
  br label %bb.q

bb.s:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTRejEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !36169 ; 2 uses
  %i.em = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.em, label %.body257.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36169, !nonnull !29, !noundef !29
  %i.en = mul nuw i64 %.val.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36169
  br label %.body257.thread

bb.u:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowTRejEENtNtB4_9try_trait3Try6branchCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload8.i = load i64, ptr %i.am, align 8, !noalias !36256 ; 7 uses
  %.sroa.8.0.copyload10.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36256 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !36169
  %i.eo = icmp samesign ult i64 %.sroa.12.0.copyload12.i, 384307168202282326
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !36257
  %i.ep = icmp eq i64 %.sroa.12.0.copyload12.i, 1
  br i1 %i.ep, label %bb.y, label %bb.v, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.eq = icmp samesign ult i64 %.sroa.12.0.copyload12.i, 21
  br i1 %i.eq, label %bb.x, label %bb.w, !prof !36

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapB10_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3U_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5k_17invocation_parserNtB64_16InvocationParser16parse_invocations_0EE0E0INtNtB1c_3vec3VecBZ_EEB5k_(ptr noalias nofree noundef nonnull align 8 %.sroa.8.0.copyload10.i, i64 noundef range(i64 1, 384307168202282326) %.sroa.12.0.copyload12.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #74
          to label %bb.y unwind label %bb.ax, !noalias !36260

bb.x:                                             ; preds = %bb.v
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapB1n_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB3m_8adapters10filter_map9FilterMapINtNtB4j_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5J_17invocation_parserNtB6t_16InvocationParser16parse_invocations_0EE0E0EB5J_(ptr noalias nofree noundef nonnull align 8 %.sroa.8.0.copyload10.i, i64 noundef range(i64 1, 384307168202282326) %.sroa.12.0.copyload12.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !36257
  call void @llvm.experimental.noalias.scope.decl(metadata !36261)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36264
  %i.er = call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36264 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.z, label %.loopexit99.i.i.i, !prof !340

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #71
          to label %.noexc.i.i unwind label %bb.aw, !noalias !36264

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

.loopexit99.i.i.i:                                ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 176
  store ptr null, ptr %i.et, align 8, !noalias !36264
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 274
  store i16 0, ptr %i.eu, align 2, !noalias !36264
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload10.i, i64 %.sroa.12.0.copyload12.i ; 7 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i.i, %.loopexit99.i.i.i
  %.sroa.014.0.i.i = phi i64 [ 0, %.loopexit99.i.i.i ], [ %i.mr, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i = phi i64 [ 0, %.loopexit99.i.i.i ], [ %.sroa.8.2.i.i, %.loopexit.i.i.i ] ; 7 uses
  %.sroa.0.0.i.i = phi ptr [ %i.er, %.loopexit99.i.i.i ], [ %.sroa.0.2.i.i, %.loopexit.i.i.i ] ; 9 uses
  %.sroa.8.0.i.i.i = phi ptr [ undef, %.loopexit99.i.i.i ], [ %.sroa.8.4.ph.i.i.i, %.loopexit.i.i.i ]
  %.sroa.12.0.i.i.i = phi i64 [ undef, %.loopexit99.i.i.i ], [ %.sroa.12.6.ph.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.17.0.i.i.i = phi i64 [ undef, %.loopexit99.i.i.i ], [ %.sroa.17.6.ph.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.21.0.i.i.i = phi ptr [ %.sroa.8.0.copyload10.i, %.loopexit99.i.i.i ], [ %.sroa.21.8.ph.i.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.sroa.044.0.i.i.i = phi i1 [ false, %.loopexit99.i.i.i ], [ true, %.loopexit.i.i.i ]
  %.sroa.0.077.i.i.i = phi ptr [ %i.er, %.loopexit99.i.i.i ], [ %.sroa.0.1.i.i.i, %.loopexit.i.i.i ] ; 6 uses
  br i1 %.sroa.044.0.i.i.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRejEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = icmp eq ptr %.sroa.21.0.i.i.i, %i.ev
  br i1 %i.ew, label %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterRejINtNtNtBa_3vec9into_iter8IntoIterTB1t_jEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.21.0.i.i.i, i64 24
  %.sroa.821.0..sroa_idx22.peel.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.0.i.i.i, i64 8
  %.sroa.821.sroa.6.0..sroa.821.0..sroa_idx22.sroa_idx.peel.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.0.i.i.i, i64 16
  %.sroa.821.sroa.6.0.in.peel.i.sroa.speculate.load.47.i.i.i = load i64, ptr %.sroa.821.sroa.6.0..sroa.821.0..sroa_idx22.sroa_idx.peel.i.i.i.i, align 8, !noalias !36266
  %.sroa.821.sroa.0.0.in.peel.i.sroa.speculate.load.48.i.i.i = load i64, ptr %.sroa.821.0..sroa_idx22.peel.i.i.i.i, align 8, !noalias !36266
  %.sroa.018.0.peel.in.i.sroa.speculate.load.49.i.i.i = load ptr, ptr %.sroa.21.0.i.i.i, align 8, !noalias !36266
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRejEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRejEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i: ; preds = %bb.ac, %bb.aa
  %.sroa.21.1.i.i.i = phi ptr [ %.sroa.21.0.i.i.i, %bb.aa ], [ %i.ex, %bb.ac ] ; 5 uses
  %.sroa.821.sroa.6.0.in.peel.i.sroa.speculated.i.i.i = phi i64 [ %.sroa.17.0.i.i.i, %bb.aa ], [ %.sroa.821.sroa.6.0.in.peel.i.sroa.speculate.load.47.i.i.i, %bb.ac ] ; 4 uses
  %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i = phi i64 [ %.sroa.12.0.i.i.i, %bb.aa ], [ %.sroa.821.sroa.0.0.in.peel.i.sroa.speculate.load.48.i.i.i, %bb.ac ] ; 10 uses
  %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i = phi ptr [ %.sroa.8.0.i.i.i, %bb.aa ], [ %.sroa.018.0.peel.in.i.sroa.speculate.load.49.i.i.i, %bb.ac ] ; 6 uses
  %.not.peel.i.i.i.i = icmp eq ptr %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i, null
  br i1 %.not.peel.i.i.i.i, label %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterRejINtNtNtBa_3vec9into_iter8IntoIterTB1t_jEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRejEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i
  %i.ey = icmp eq ptr %.sroa.21.1.i.i.i, %i.ev
  br i1 %i.ey, label %.loopexit98.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i: ; preds = %bb.ad
  %i.ez = getelementptr i8, ptr %.sroa.21.1.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload8.i.peel.i.i.i.i = load ptr, ptr %.sroa.21.1.i.i.i, align 8, !noalias !36273 ; 6 uses
  %.sroa.5.0..sroa_idx.i.peel.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.1.i.i.i, i64 8
  %.sroa.12.16.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.peel.i.i.i.i, align 8, !noalias !36266 ; 3 uses
  %.sroa.17.16..sroa.5.0..sroa_idx.i.peel.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.1.i.i.i, i64 16
  %.sroa.17.16.copyload.i.i.i = load i64, ptr %.sroa.17.16..sroa.5.0..sroa_idx.i.peel.i.sroa_idx.i.i.i, align 8, !noalias !36266 ; 6 uses
  %i.fa = icmp eq ptr %.sroa.0.0.copyload8.i.peel.i.i.i.i, null
  br i1 %i.fa, label %.loopexit98.i.i.i, label %2

2:                                                ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i
  %3 = icmp eq i64 %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, %.sroa.12.16.copyload.i.i.i
  br i1 %3, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i, label %.loopexit98.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i: ; preds = %2
  %bcmp.i.i.i.peel.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i, ptr nonnull readonly %.sroa.0.0.copyload8.i.peel.i.i.i.i, i64 %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i), !alias.scope !36282, !noalias !36289
  %.not40.peel.i.i.i.i = icmp eq i32 %bcmp.i.i.i.peel.i.i.i.i, 0
  br i1 %.not40.peel.i.i.i.i, label %.peel.next.i.preheader.i.i.i, label %.loopexit98.i.i.i

.peel.next.i.preheader.i.i.i:                     ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i
  %i.fb = icmp eq ptr %i.ez, %i.ev
  br i1 %i.fb, label %.loopexit98.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %.loopexit98.split.loop.exit.i.i.i
  %i.fc = icmp eq ptr %i.fd, %i.ev
  br i1 %i.fc, label %.loopexit98.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i, !llvm.loop !36290

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %.peel.next.i.preheader.i.i.i, %.peel.next.i.i.i.i
  %.sroa.0.0.copyload8.i53.i127.i.i.i = phi ptr [ %.sroa.0.0.copyload8.i.i.i.i.i, %.peel.next.i.i.i.i ], [ %.sroa.0.0.copyload8.i.peel.i.i.i.i, %.peel.next.i.preheader.i.i.i ] ; 4 uses
  %.sroa.21.3126.i.i.i = phi ptr [ %i.fd, %.peel.next.i.i.i.i ], [ %i.ez, %.peel.next.i.preheader.i.i.i ] ; 4 uses
  %.sroa.17.2125.i.i.i = phi i64 [ %.sroa.17.16.copyload46.i.i.i, %.peel.next.i.i.i.i ], [ %.sroa.17.16.copyload.i.i.i, %.peel.next.i.preheader.i.i.i ] ; 3 uses
  %i.fd = getelementptr i8, ptr %.sroa.21.3126.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload8.i.i.i.i.i = load ptr, ptr %.sroa.21.3126.i.i.i, align 8, !noalias !36291 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.3126.i.i.i, i64 8
  %.sroa.12.16.copyload45.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36266 ; 3 uses
  %.sroa.17.16..sroa.5.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.3126.i.i.i, i64 16
  %.sroa.17.16.copyload46.i.i.i = load i64, ptr %.sroa.17.16..sroa.5.0..sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !36266 ; 6 uses
  %i.fe = icmp eq ptr %.sroa.0.0.copyload8.i.i.i.i.i, null
  br i1 %i.fe, label %.loopexit98.i.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.not40.i.i.i.i.a = icmp eq i64 %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, %.sroa.12.16.copyload45.i.i.i
  br i1 %.not40.i.i.i.i.a, label %.loopexit98.split.loop.exit.i.i.i, label %.loopexit98.i.i.i

.loopexit98.split.loop.exit.i.i.i:                ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.copyload8.i53.i127.i.i.i, ptr nonnull readonly %.sroa.0.0.copyload8.i.i.i.i.i, i64 %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i), !alias.scope !36282, !noalias !36289
  %.not40.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not40.i.i.i.i, label %.peel.next.i.i.i.i, label %.loopexit98.split.loop.exit117.i.i.i, !llvm.loop !36290

.loopexit98.split.loop.exit117.i.i.i:             ; preds = %.loopexit98.split.loop.exit.i.i.i
  br label %.loopexit98.i.i.i, !llvm.loop !36290

.loopexit98.i.i.i:                                ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i, %.peel.next.i.i.i.i, %.loopexit98.split.loop.exit117.i.i.i, %.peel.next.i.preheader.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i, %2, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i, %bb.ad
  %.sroa.10.0.ph.i.i.i = phi i64 [ %.sroa.821.sroa.6.0.in.peel.i.sroa.speculated.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.821.sroa.6.0.in.peel.i.sroa.speculated.i.i.i, %bb.ad ], [ %.sroa.821.sroa.6.0.in.peel.i.sroa.speculated.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.821.sroa.6.0.in.peel.i.sroa.speculated.i.i.i, %2 ], [ %.sroa.17.16.copyload.i.i.i, %.peel.next.i.preheader.i.i.i ], [ %.sroa.17.2125.i.i.i, %.loopexit98.split.loop.exit117.i.i.i ], [ %.sroa.17.2125.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a ], [ %.sroa.17.2125.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.17.16.copyload46.i.i.i, %.peel.next.i.i.i.i ] ; 2 uses
  %.sroa.058.0.ph.i.i.i = phi ptr [ %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i, %bb.ad ], [ %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.018.0.peel.in.i.sroa.speculated.i.i.i, %2 ], [ %.sroa.0.0.copyload8.i.peel.i.i.i.i, %.peel.next.i.preheader.i.i.i ], [ %.sroa.0.0.copyload8.i53.i127.i.i.i, %.loopexit98.split.loop.exit117.i.i.i ], [ %.sroa.0.0.copyload8.i53.i127.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a ], [ %.sroa.0.0.copyload8.i53.i127.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.0.0.copyload8.i.i.i.i.i, %.peel.next.i.i.i.i ] ; 2 uses
  %.sroa.8.4.ph.i.i.i = phi ptr [ null, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ null, %bb.ad ], [ %.sroa.0.0.copyload8.i.peel.i.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.0.0.copyload8.i.peel.i.i.i.i, %2 ], [ null, %.peel.next.i.preheader.i.i.i ], [ %.sroa.0.0.copyload8.i.i.i.i.i, %.loopexit98.split.loop.exit117.i.i.i ], [ %.sroa.0.0.copyload8.i.i.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a ], [ null, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ null, %.peel.next.i.i.i.i ]
  %.sroa.12.6.ph.i.i.i = phi i64 [ %.sroa.12.16.copyload.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.12.0.i.i.i, %bb.ad ], [ %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.12.16.copyload.i.i.i, %2 ], [ %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, %.peel.next.i.preheader.i.i.i ], [ %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, %.loopexit98.split.loop.exit117.i.i.i ], [ %.sroa.12.16.copyload45.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a ], [ %.sroa.12.16.copyload45.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, %.peel.next.i.i.i.i ]
  %.sroa.17.6.ph.i.i.i = phi i64 [ %.sroa.17.16.copyload.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.17.0.i.i.i, %bb.ad ], [ %.sroa.17.16.copyload.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %.sroa.17.16.copyload.i.i.i, %2 ], [ %.sroa.17.16.copyload.i.i.i, %.peel.next.i.preheader.i.i.i ], [ %.sroa.17.16.copyload46.i.i.i, %.loopexit98.split.loop.exit117.i.i.i ], [ %.sroa.17.16.copyload46.i.i.i, %.peel.next.i.i.i.i ], [ %.sroa.17.16.copyload46.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.17.16.copyload46.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a ]
  %.sroa.21.8.ph.i.i.i = phi ptr [ %i.ez, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %i.ev, %bb.ad ], [ %i.ez, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i ], [ %i.ez, %2 ], [ %i.ev, %.peel.next.i.preheader.i.i.i ], [ %i.fd, %.loopexit98.split.loop.exit117.i.i.i ], [ %i.fd, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i.i.i.a ], [ %i.fd, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TRejEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1l_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.ev, %.peel.next.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.077.i.i.i, i64 274 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !noalias !36296, !noundef !29 ; 3 uses
  %i.fh = icmp ult i16 %i.fg, 11
  br i1 %i.fh, label %bb.av, label %.preheader.i.i.i253

_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterRejINtNtNtBa_3vec9into_iter8IntoIterTB1t_jEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRejEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.peel.i.i.i.i, %bb.ab
  %i.fi = icmp eq i64 %.sroa.0.0.copyload8.i, 0
  br i1 %i.fi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterRejINtNtNtBa_3vec9into_iter8IntoIterTB1t_jEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.fj = mul nuw i64 %.sroa.0.0.copyload8.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload10.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36297
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i: ; preds = %bb.ae, %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterRejINtNtNtBa_3vec9into_iter8IntoIterTB1t_jEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.fk = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.fk, label %.loopexit.i, label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i, %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.01.010.i.i.i.i = phi i64 [ %i.fv, %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.8.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i ]
  %.sroa.03.09.i.i.i.i = phi ptr [ %i.fy, %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.0.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 274
  %i.fm = load i16, ptr %i.fl, align 2, !noalias !36296, !noundef !29 ; 3 uses
  %.not.i.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i.i, label %.noexc.i.i.i.invoke, label %bb.af, !prof !340

.noexc.i.i.i.invoke:                              ; preds = %bb.ag, %.lr.ph.i23.i.i.i
  %i.fn = phi ptr [ @1031, %.lr.ph.i23.i.i.i ], [ @1035, %bb.ag ]
  %i.fo = phi i64 [ 25, %.lr.ph.i23.i.i.i ], [ 39, %bb.ag ]
  %i.fp = phi ptr [ @1032, %.lr.ph.i23.i.i.i ], [ @1036, %bb.ag ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fp) #75
          to label %.noexc.i.i.i.cont unwind label %.body257.thread705.loopexit.split-lp

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.af:                                            ; preds = %.lr.ph.i23.i.i.i
  %i.fq = zext nneg i16 %i.fm to i64
  %i.fr = add nsw i64 %i.fq, -1                   ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 280
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fr ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !36300, !nonnull !29, !noundef !29 ; 5 uses
  %i.fv = add i64 %.sroa.01.010.i.i.i.i, -1       ; 3 uses
  %i.fw = icmp ult i16 %i.fm, 12
  call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !36300, !nonnull !29, !noundef !29 ; 19 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 274 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !noalias !36296, !noundef !29 ; 3 uses
  %i.gb = icmp ult i16 %i.ga, 5
  br i1 %i.gb, label %bb.ag, label %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.loopexit.i.i.i.i, %bb.af
  %i.gc = icmp eq i64 %i.fv, 0
  br i1 %i.gc, label %.loopexit.i, label %.lr.ph.i23.i.i.i

bb.ag:                                            ; preds = %bb.af
  %narrow.i.i.i.i = sub nuw nsw i16 5, %i.ga      ; 2 uses
  %i.gd = zext nneg i16 %narrow.i.i.i.i to i64    ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 274 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !noalias !36304, !noundef !29 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i16 %narrow.i.i.i.i, %i.gf
  br i1 %.not.i.i.i.i.i, label %.noexc.i.i.i.invoke, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, !prof !340

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.gg = zext i16 %i.gf to i64                   ; 2 uses
  %i.gh = zext nneg i16 %i.ga to i64              ; 2 uses
  %i.gi = sub nuw nsw i64 %i.gg, %i.gd            ; 4 uses
  %i.gj = trunc nuw i64 %i.gi to i16
  store i16 %i.gj, ptr %i.ge, align 2, !noalias !36304
  store i16 5, ptr %i.fz, align 2, !noalias !36304
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.gd
  %i.gl = shl nuw nsw i64 %i.gh, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr nonnull align 8 %i.fy, i64 %i.gl, i1 false), !alias.scope !36307, !noalias !36304
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 184 ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gd
  %i.go = shl nuw nsw i64 %i.gh, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %i.gm, i64 %i.go, i1 false), !alias.scope !36310, !noalias !36304
  %i.gp = add nuw nsw i64 %i.gi, 1                ; 4 uses
  %i.gq = sub nuw nsw i64 %i.gg, %i.gp            ; 4 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.gp
  %i.gs = shl nuw nsw i64 %i.gq, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr nonnull readonly align 8 %i.gr, i64 %i.gs, i1 false), !alias.scope !36313, !noalias !36304
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fu, i64 184 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gp
  %i.gv = shl nuw nsw i64 %i.gq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull readonly align 8 %i.gu, i64 %i.gv, i1 false), !alias.scope !36317, !noalias !36304
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.gi ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !36304, !nonnull !29, !noundef !29
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !36304, !noundef !29
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gi
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !36304, !noundef !29
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.03.09.i.i.i.i, i64 %i.fr ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 184
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.fr ; 2 uses
  %i.hf = load ptr, ptr %i.hc, align 8, !noalias !36321, !nonnull !29, !noundef !29
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !36321, !noundef !29
  store ptr %i.gx, ptr %i.hc, align 8, !noalias !36321, !captures !182
  store i64 %i.gz, ptr %i.hg, align 8, !noalias !36321
  %i.hi = load i64, ptr %i.he, align 8, !noalias !36321, !noundef !29
  store i64 %i.hb, ptr %i.he, align 8, !noalias !36321
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.gq ; 2 uses
  store ptr %i.hf, ptr %i.hj, align 8, !noalias !36304
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.hh, ptr %i.hk, align 8, !noalias !36304
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gq
  store i64 %i.hi, ptr %i.hl, align 8, !noalias !36304
  %cond.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %cond.i.i.i.i, label %.loopexit.i, label %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.loopexit.i.i.i.i

_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.loopexit.i.i.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fy, i64 280 ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.gd
  %i.ho = add nuw nsw i64 %i.go, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hn, ptr noundef nonnull align 8 dereferenceable(1) %i.hm, i64 %i.ho, i1 false), !alias.scope !36325, !noalias !36304
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fu, i64 280
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.gp
  %i.hr = shl nuw nsw i64 %i.gd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hm, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.hq, i64 %i.hr, i1 false), !alias.scope !36328, !noalias !36304
  %i.hs = load ptr, ptr %i.hm, align 8, !noalias !36304, !nonnull !29, !noundef !29 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 176
  store ptr %i.fy, ptr %i.ht, align 8, !noalias !36304
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 272
  store i16 0, ptr %i.hu, align 8, !noalias !36304
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !36304, !nonnull !29, !noundef !29 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 176
  store ptr %i.fy, ptr %i.hx, align 8, !noalias !36304
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 272
  store i16 1, ptr %i.hy, align 8, !noalias !36304
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fy, i64 296
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !36304, !nonnull !29, !noundef !29 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 176
  store ptr %i.fy, ptr %i.ib, align 8, !noalias !36304
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 272
  store i16 2, ptr %i.ic, align 8, !noalias !36304
  %i.id = getelementptr inbounds nuw i8, ptr %i.fy, i64 304
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !36304, !nonnull !29, !noundef !29 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 176
  store ptr %i.fy, ptr %i.if, align 8, !noalias !36304
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 272
  store i16 3, ptr %i.ig, align 8, !noalias !36304
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fy, i64 312
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !36304, !nonnull !29, !noundef !29 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 176
  store ptr %i.fy, ptr %i.ij, align 8, !noalias !36304
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 272
  store i16 4, ptr %i.ik, align 8, !noalias !36304
  %i.il = getelementptr inbounds nuw i8, ptr %i.fy, i64 320
  %i.im = load ptr, ptr %i.il, align 8, !noalias !36304, !nonnull !29, !noundef !29 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 176
  store ptr %i.fy, ptr %i.in, align 8, !noalias !36304
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 272
  store i16 5, ptr %i.io, align 8, !noalias !36304
  br label %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i

.preheader.i.i.i253:                              ; preds = %.loopexit98.i.i.i, %bb.ai
  %.sroa.3.0.i.i.i = phi i64 [ %i.it, %bb.ai ], [ 0, %.loopexit98.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.iq, %bb.ai ], [ %.sroa.0.077.i.i.i, %.loopexit98.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 176
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !36332, !noundef !29 ; 4 uses
  %.not.i26.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i26.i.i.i, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.as, %bb.aq
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = icmp eq i64 %.sroa.0.0.copyload8.i, 0
  br i1 %i.is, label %.body257.thread, label %.thread.sink.split.i.i

bb.ai:                                            ; preds = %.preheader.i.i.i253
  %i.it = add i64 %.sroa.3.0.i.i.i, 1             ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 274
  %i.iv = load i16, ptr %i.iu, align 2, !noalias !36296, !noundef !29
  %i.iw = icmp ult i16 %i.iv, 11
  br i1 %i.iw, label %.loopexit97.i.i.i, label %.preheader.i.i.i253

bb.aj:                                            ; preds = %.preheader.i.i.i253
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36335
  %i.ix = call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36335 ; 8 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.ak, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRejEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, !prof !340

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #71
          to label %.noexc.i.i.i.i unwind label %bb.ao, !noalias !36335

.noexc.i.i.i.i:                                   ; preds = %bb.ak
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRejEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 176
  store ptr null, ptr %i.iz, align 8, !noalias !36335
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 274
  store i16 0, ptr %i.ja, align 2, !noalias !36335
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 280
  store ptr %.sroa.0.0.i.i, ptr %i.jb, align 8, !noalias !36335
end_hunk_0
