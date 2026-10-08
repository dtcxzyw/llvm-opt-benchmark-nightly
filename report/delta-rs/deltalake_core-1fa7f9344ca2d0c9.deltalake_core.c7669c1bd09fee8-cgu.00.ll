Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.00?download=true
inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCs14kWLkQVSKO_14deltalake_core:bb.a
._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge, %bb.a
  %i.j = phi i64 [ %.pre, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge ], [ %i.e, %bb.a ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !108, !noundef !108
  %i.m = icmp ult i64 %i.j, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.o = icmp ugt i64 %1, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = add i64 %i.j, %1
  %i.y = add i64 %i.x, -1
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCs14kWLkQVSKO_14deltalake_core.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.r, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.067 = phi ptr [ %i.n, %.lr.ph ], [ %i.ca, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %.sroa.03.066 = phi i64 [ 1, %.lr.ph ], [ %i.bz, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ]
  %storemerge63 = phi i64 [ %i.j, %.lr.ph ], [ %i.cb, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.z = load i64, ptr %2, align 8, !range !127, !alias.scope !15342, !noalias !15343, !noundef !108 ; 2 uses
  %.not.i = icmp eq i64 %i.z, 2
  br i1 %.not.i, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXsG_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXsG_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.d
  %.val2.i.i = load ptr, ptr %i.p, align 8, !alias.scope !15344, !noalias !15345, !nonnull !108, !noundef !108 ; 2 uses
  %.val3.i.i = load i64, ptr %i.q, align 8, !alias.scope !15344, !noalias !15345, !noundef !108 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15347
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %.val3.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %_RNvXsG_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.aa = load i64, ptr %i.b, align 8, !range !111, !noalias !15347, !noundef !108
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = load i64, ptr %i.r, align 8, !range !114, !noalias !15347, !noundef !108 ; 5 uses
  br i1 %i.ab, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !113

bb.e:                                             ; preds = %.noexc15
  %i.ad = load i64, ptr %i.s, align 8, !noalias !15347
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ad) #27
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.e
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc15
  %i.ae = load ptr, ptr %i.s, align 8, !noalias !15347, !nonnull !108, !noundef !108 ; 4 uses
  %i.af = icmp ule i64 %.val3.i.i, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15347
  store i64 %i.ac, ptr %i.c, align 8, !noalias !15347
  store ptr %i.ae, ptr %i.t, align 8, !noalias !15347
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i, i64 %.val3.i.i
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %.noexc14, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %.sroa.015.044.i.i = phi ptr [ %i.ak, %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.val2.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 4 uses
  %.sroa.7.043.i.i = phi i64 [ %i.al, %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 7 uses
  %.sroa.10.042.i.i = phi i64 [ %i.ai, %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.ac, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.ai = add i64 %.sroa.10.042.i.i, -1           ; 2 uses
  %i.aj = icmp eq ptr %.sroa.015.044.i.i, %i.ag
  br i1 %i.aj, label %.noexc14, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.044.i.i, i64 24
  %i.al = add nuw nsw i64 %.sroa.7.043.i.i, 1
  %i.am = getelementptr i8, ptr %.sroa.015.044.i.i, i64 8
  %.val12.i.i = load ptr, ptr %i.am, align 8, !alias.scope !15346, !noalias !15348, !nonnull !108, !noundef !108 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.015.044.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.an, align 8, !alias.scope !15346, !noalias !15348, !noundef !108 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15350
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %.val13.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !15347

.noexc.i.i:                                       ; preds = %bb.f
  %i.ao = load i64, ptr %i.a, align 8, !range !111, !noalias !15350, !noundef !108
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.v, align 8, !range !114, !noalias !15350, !noundef !108 ; 5 uses
  br i1 %i.ap, label %bb.g, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !prof !113

bb.g:                                             ; preds = %.noexc.i.i
  %i.ar = load i64, ptr %i.w, align 8, !noalias !15350
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.ar) #27
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.i.i, !noalias !15347

.noexc14.i.i:                                     ; preds = %bb.g
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.as = load ptr, ptr %i.w, align 8, !noalias !15350, !nonnull !108, !noundef !108 ; 2 uses
  %i.at = icmp ule i64 %.val13.i.i, %i.aq
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15350
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.val12.i.i, i64 %.val13.i.i
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.j
  %.sroa.012.041.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %.val12.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.7.040.i.i.i.i.i = phi i64 [ %i.bc, %bb.j ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.10.039.i.i.i.i.i = phi i64 [ %i.aw, %bb.j ], [ %i.aq, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  %i.aw = add i64 %.sroa.10.039.i.i.i.i.i, -1     ; 2 uses
  %i.ax = icmp eq ptr %.sroa.012.041.i.i.i.i.i, %i.au
  br i1 %i.ax, label %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15351)
  %i.ay = load <2 x ptr>, ptr %.sroa.012.041.i.i.i.i.i, align 8, !alias.scope !15352, !noalias !15353
  %i.az = load ptr, ptr %.sroa.012.041.i.i.i.i.i, align 8, !alias.scope !15352, !noalias !15353, !nonnull !108, !noundef !108
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !15354
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bc = add nuw nsw i64 %.sroa.7.040.i.i.i.i.i, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.041.i.i.i.i.i, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.041.i.i.i.i.i, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !260, !alias.scope !15352, !noalias !15353, !noundef !108
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.041.i.i.i.i.i, i64 17
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !15352, !noalias !15353
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.7.040.i.i.i.i.i ; 3 uses
  store <2 x ptr> %i.ay, ptr %i.bi, align 8, !noalias !15350
  %.sroa.529.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i8 %i.bf, ptr %.sroa.529.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15350
  %.sroa.630.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 17
  store i8 %i.bh, ptr %.sroa.630.0..sroa_idx.i.i.i.i.i, align 1, !noalias !15350
  %i.bj = icmp eq i64 %i.aw, 0
  br i1 %i.bj, label %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.7.043.i.i ; 3 uses
  store i64 %i.aq, ptr %i.bk, align 8, !noalias !15347
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.as, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !15347
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val13.i.i, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !noalias !15347
  %i.bl = icmp eq i64 %i.ai, 0
  br i1 %i.bl, label %.noexc14, label %.lr.ph.i.i

bb.k:                                             ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body18

.body18:                                          ; preds = %.body.i, %bb.k
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !15347
  unreachable

.loopexit.i.i:                                    ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i:                           ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  store i64 %.sroa.7.043.i.i, ptr %i.u, align 8, !noalias !15347
  %i.bn = icmp eq i64 %.sroa.7.043.i.i, 0
  br i1 %i.bn, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph142

bb.m:                                             ; preds = %.lr.ph142
  %i.bo = icmp eq i64 %i.bq, %.sroa.7.043.i.i
  br i1 %i.bo, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i140 = phi i64 [ %i.bq, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.0.0.i.i.i140
  %i.bq = add i64 %.sroa.0.0.i.i.i140, 1          ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bp)
          to label %bb.m unwind label %bb.o, !noalias !15355

bb.n:                                             ; preds = %.lr.ph145
  %i.br = add i64 %.sroa.0.1.i.i.i143, 1          ; 2 uses
  %i.bs = icmp eq i64 %i.br, %.sroa.7.043.i.i
  br i1 %i.bs, label %.body.i, label %.lr.ph145

bb.o:                                             ; preds = %.lr.ph142
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bu = icmp eq i64 %i.bq, %.sroa.7.043.i.i
  br i1 %i.bu, label %.body.i, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.o, %bb.n
  %.sroa.0.1.i.i.i143 = phi i64 [ %i.br, %bb.n ], [ %i.bq, %bb.o ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.0.1.i.i.i143
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bv) #29
          to label %bb.n unwind label %bb.p, !noalias !15355

bb.p:                                             ; preds = %.lr.ph145
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !15355
  unreachable

.body.i:                                          ; preds = %bb.n, %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body18 unwind label %bb.q, !noalias !15347

_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.m, %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.k

bb.q:                                             ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !15347
  unreachable

.noexc14:                                         ; preds = %_RNvXsC_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 %.val3.i.i, ptr %i.u, align 8, !noalias !15347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15347
  br label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %._crit_edge
  store i64 %i.j, ptr %i.d, align 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %2)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread, %bb.r
  ret void

._crit_edge.thread:                               ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %._crit_edge
  %.sroa.0.0.lcssa97 = phi ptr [ %i.n, %._crit_edge ], [ %i.ca, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ]
  %storemerge.lcssa96 = phi i64 [ %i.j, %._crit_edge ], [ %i.y, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa97, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.by = add i64 %storemerge.lcssa96, 1
  store i64 %i.by, ptr %i.d, align 8
  br label %bb.s

.loopexit:                                        ; preds = %_RNvXsG_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i.i, %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %storemerge63, ptr %i.d, align 8
  br label %bb.v

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc14, %bb.d
  %i.bz = add nuw i64 %.sroa.03.066, 1            ; 2 uses
  store i64 %i.z, ptr %.sroa.0.067, align 8
  %.sroa.5.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.067, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.067, i64 32 ; 2 uses
  %i.cb = add i64 %storemerge63, 1
  %exitcond.not = icmp eq i64 %i.bz, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d

bb.t:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.u:                                             ; preds = %bb.v
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.c, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %2) #29
          to label %bb.u unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE11extend_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !15368, !noundef !108 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !112, !alias.scope !15368, !noundef !108
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit, !prof !113

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 8, i64 noundef 56)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge unwind label %bb.c

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %2, align 8, !range !115, !alias.scope !15369, !noundef !108
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %.noexc14, label %bb.v

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge, %bb.a
  %i.j = phi i64 [ %.pre, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge ], [ %i.c, %bb.a ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !108, !noundef !108
  %i.m = icmp ult i64 %i.j, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.o = icmp ugt i64 %1, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink18.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink15.i.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = add i64 %i.j, %1
  %i.w = add i64 %i.v, -1
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE7reserveCs14kWLkQVSKO_14deltalake_core.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.s, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.038 = phi ptr [ %i.n, %.lr.ph ], [ %i.au, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %.sroa.03.037 = phi i64 [ 1, %.lr.ph ], [ %i.at, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15370)
  %i.x = load i64, ptr %2, align 8, !range !115, !alias.scope !15370, !noalias !15371, !noundef !108 ; 3 uses
  %.not.i = icmp eq i64 %i.x, 3
  br i1 %.not.i, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15374)
  %i.y = load ptr, ptr %i.p, align 8, !alias.scope !15375, !noalias !15376, !nonnull !108, !noundef !108 ; 4 uses
  %i.z = load i64, ptr %i.q, align 8, !alias.scope !15375, !noalias !15376, !noundef !108 ; 3 uses
  %i.aa = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !15377
  %i.ab = icmp slt i64 %i.aa, 0                   ; 3 uses
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.q, %bb.j
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.q ], [ %.sink18.i.sroa.gep1.i, %bb.j ]
end_hunk_0
