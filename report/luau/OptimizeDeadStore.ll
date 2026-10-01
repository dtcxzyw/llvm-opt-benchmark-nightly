Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen27markDeadStoresInBlockChainsERNS0_9IrBuilderE:bb.a
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"

bb.ch:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i.i"
  %i.wm = icmp eq i64 %i.vj, 9223372036854775800
  br i1 %i.wm, label %bb.ci, label %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.ci
  unreachable

_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ch
  %i.wn = ashr exact i64 %i.vj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wn, i64 1)
  %i.wo = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.wn ; 2 uses
  %i.wp = icmp ult i64 %i.wo, %i.wn
  %i.wq = call i64 @llvm.umin.i64(i64 %i.wo, i64 1152921504606846975)
  %i.wr = select i1 %i.wp, i64 1152921504606846975, i64 %i.wq ; 3 uses
  %.not.i.i.i.i.i84 = icmp ne i64 %i.wr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i84)
  %i.ws = shl nuw nsw i64 %i.wr, 3
  %i.wt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ws) #22
          to label %.noexc92 unwind label %.loopexit ; 5 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.vj ; 2 uses
  store i32 %.sroa.0.0.copyload.i79, ptr %i.wu, align 4, !tbaa !88
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  store i32 1, ptr %i.wv, align 4, !tbaa !111
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.vf, %i.vg
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i85

.lr.ph.i.i.i.i.i.i.i85:                           ; preds = %.noexc92, %.lr.ph.i.i.i.i.i.i.i85
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.wy, %.lr.ph.i.i.i.i.i.i.i85 ], [ %i.wt, %.noexc92 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.wx, %.lr.ph.i.i.i.i.i.i.i85 ], [ %i.vf, %.noexc92 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.ww = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !233, !noalias !232
  store i64 %i.ww, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !232, !noalias !233
  %i.wx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %i.wx, %i.vg
  br i1 %.not.i.i.i.i.i.i.i86, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i85, !llvm.loop !5

_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i85, %.noexc92
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.wt, %.noexc92 ], [ %i.wy, %.lr.ph.i.i.i.i.i.i.i85 ]
  %i.wz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i34.i.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not.i34.i.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.vj) #25
  br label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.cj, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i
  store ptr %i.wt, ptr %14, align 8, !tbaa !107
  store ptr %i.wz, ptr %i.mz, align 8, !tbaa !106
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %i.wr
  store ptr %i.xa, ptr %i.ns, align 8, !tbaa !112
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"

"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i": ; preds = %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.cg, %bb.cf, %.lr.ph.i78
  %i.xb = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i80 = icmp eq ptr %i.xb, %i.vc
  br i1 %.not.i80, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit", label %.lr.ph.i78

"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit": ; preds = %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i", %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i, %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.xc = getelementptr inbounds nuw i8, ptr %.0167721.i, i64 72 ; 2 uses
  %.not184.i = icmp eq ptr %i.xc, %i.pv
  br i1 %.not184.i, label %._crit_edge724.i, label %.lr.ph723.i

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit:                      ; preds = %bb.bl
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ci
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.preheader.i:                                     ; preds = %bb.dt
  %.not554742.i = icmp eq ptr %i.aek, %i.ael
  br i1 %.not554742.i, label %._crit_edge745.i, label %.lr.ph744.i

.lr.ph744.i:                                      ; preds = %.preheader.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.pg, i64 40 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.pg, i64 48 ; 5 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.pg, i64 52 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.pg, i64 56
  %.pre865.i.a = load i32, ptr %i.xe, align 8, !tbaa !113
  br label %bb.du

.lr.ph739.i:                                      ; preds = %bb.dt, %.lr.ph739.preheader.i
  %i.xh = phi ptr [ %i.aek, %bb.dt ], [ %.pre854.i, %.lr.ph739.preheader.i ] ; 2 uses
  %i.xi = phi ptr [ %i.ael, %bb.dt ], [ %.pre853.i.a, %.lr.ph739.preheader.i ] ; 3 uses
  %i.xj = phi i64 [ %i.aem, %bb.dt ], [ %i.pp, %.lr.ph739.preheader.i ]
  %.0165737.i = phi i64 [ %.1166.i, %bb.dt ], [ 0, %.lr.ph739.preheader.i ] ; 3 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %.0165737.i ; 7 uses
  %.sroa.061.0.copyload.i = load i32, ptr %i.xk, align 4, !tbaa !88
  %i.xl = lshr i32 %.sroa.061.0.copyload.i, 4     ; 3 uses
  %i.xm = zext nneg i32 %i.xl to i64              ; 2 uses
  %i.xn = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.xo = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.xm ; 4 uses
  %i.xp = load i8, ptr @_ZN5FFlag29LuauCodegenVmExitSyncMultiUseE, align 8, !tbaa !45, !range !46, !noundef !47
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %.lr.ph739.i
  %i.xr = load i64, ptr %i.na, align 8, !tbaa !100
  %i.xs = icmp eq i64 %i.xr, 0
  br i1 %i.xs, label %.critedge.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xt = load i32, ptr %i.cf, align 8, !tbaa !34 ; 2 uses
  %i.xu = icmp eq i32 %i.xl, %i.xt
  br i1 %i.xu, label %.critedge.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xv = load i64, ptr %i.nb, align 8, !tbaa !101
  %i.xw = add i64 %i.xv, -1                       ; 3 uses
  %i.xx = and i64 %i.xw, %i.xm
  %i.xy = load ptr, ptr %8, align 8, !tbaa !102
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %bb.cm
  %.01832.i.i251.i = phi i64 [ 0, %bb.cm ], [ %i.yd, %bb.cp ]
  %.01931.i.i252.i = phi i64 [ %i.xx, %bb.cm ], [ %i.yf, %bb.cp ] ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.01931.i.i252.i
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !34 ; 2 uses
  %i.yb = icmp eq i32 %i.ya, %i.xl
  br i1 %i.yb, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.yc = icmp eq i32 %i.ya, %i.xt
  br i1 %i.yc, label %.critedge.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yd = add i64 %.01832.i.i251.i, 1             ; 3 uses
  %i.ye = add i64 %i.yd, %.01931.i.i252.i
  %i.yf = and i64 %i.ye, %i.xw
  %.not.i.i253.i = icmp ugt i64 %i.yd, %i.xw
  br i1 %.not.i.i253.i, label %.critedge.i, label %bb.cn, !llvm.loop !3

bb.cq:                                            ; preds = %.lr.ph739.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xo, i64 52
  %i.yh = load i16, ptr %i.yg, align 4, !tbaa !103
  %i.yi = zext i16 %i.yh to i32
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !111
  %i.yl = icmp eq i32 %i.yk, %i.yi
  br i1 %i.yl, label %bb.cr, label %.critedge.i

bb.cr:                                            ; preds = %bb.cq
  %i.ym = load i8, ptr %i.xo, align 8, !tbaa !85  ; 6 uses
  switch i8 %i.ym, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i [
    i8 122, label %.critedge.i
    i8 -84, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
    i8 -85, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
    i8 0, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
    i8 -83, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
  ]

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i: ; preds = %bb.cr
  %i.yn = invoke noundef zeroext i8 @_ZN4Luau7CodeGen15getCmdValueKindENS0_5IrCmdE(i8 noundef zeroext %i.ym)
          to label %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260.i unwind label %bb.dh

_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260.i: ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i
  %.not.i258.i = icmp eq i8 %i.yn, 1
  br i1 %.not.i258.i, label %.critedge.i, label %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i

_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i: ; preds = %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260.i
  %.pre855.i = load i8, ptr %i.xo, align 8, !tbaa !85
  br label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i: ; preds = %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i, %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.yo = phi i8 [ %.pre855.i, %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i ], [ %i.ym, %bb.cr ], [ %i.ym, %bb.cr ], [ %i.ym, %bb.cr ], [ %i.ym, %bb.cr ]
  %i.yp = call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL14isUnsafeToSinkENS0_5IrCmdE(i8 noundef zeroext %i.yo)
  br i1 %i.yp, label %.critedge.i, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i: ; preds = %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
  %.pre856.i = load ptr, ptr %i.o, align 8, !tbaa !29
  %.pre857.i = load i8, ptr @_ZN5FFlag29LuauCodegenVmExitSyncMultiUseE, align 8, !tbaa !45, !range !46
  br label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545.i

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545.i: ; preds = %bb.cn, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i
  %i.yq = phi i8 [ %.pre857.i, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i ], [ 1, %bb.cn ] ; 2 uses
  %i.yr = phi ptr [ %.pre856.i, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i ], [ %i.xn, %bb.cn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ys = ptrtoint ptr %i.xo to i64
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %i.yv = lshr exact i64 %i.yu, 6                 ; 2 uses
  %i.yw = trunc i64 %i.yv to i32                  ; 15 uses
  store i32 %i.yw, ptr %i.b, align 4, !tbaa !34
  %i.yx = trunc nuw i8 %i.yq to i1
  %i.yy = load i64, ptr %i.nc, align 8
  %i.yz = icmp ne i64 %i.yy, 0
  %or.cond.not.i = select i1 %i.yx, i1 %i.yz, i1 false
  br i1 %or.cond.not.i, label %bb.cs, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i

bb.cs:                                            ; preds = %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545.i
  %i.za = load i32, ptr %i.my, align 8, !tbaa !34 ; 2 uses
  %i.zb = icmp eq i32 %i.za, %i.yw
  br i1 %i.zb, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zc = load i64, ptr %i.nd, align 8, !tbaa !101
  %i.zd = add i64 %i.zc, -1                       ; 2 uses
  %i.ze = and i64 %i.yv, 4294967295
  %i.zf = load ptr, ptr %13, align 8, !tbaa !102
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %bb.ct
  %.01832.i.i261.i = phi i64 [ 0, %bb.ct ], [ %i.zk, %bb.cw ]
  %.pn798.i = phi i64 [ %i.ze, %bb.ct ], [ %i.zl, %bb.cw ]
  %.01931.i.i262.i = and i64 %.pn798.i, %i.zd     ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.01931.i.i262.i
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !34 ; 2 uses
  %i.zi = icmp eq i32 %i.zh, %i.yw
  br i1 %i.zi, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zj = icmp eq i32 %i.zh, %i.za
  br i1 %i.zj, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zk = add i64 %.01832.i.i261.i, 1             ; 3 uses
  %i.zl = add i64 %.01931.i.i262.i, %i.zk
  %.not.i.i263.i = icmp ugt i64 %i.zk, %i.zd
  br i1 %.not.i.i263.i, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i, label %bb.cu, !llvm.loop !3

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.i: ; preds = %bb.cu
  %i.zm = load ptr, ptr %12, align 8, !tbaa !53   ; 5 uses
  %i.zn = load i32, ptr %i.mv, align 8, !tbaa !51 ; 6 uses
  %i.zo = zext i32 %i.zn to i64                   ; 2 uses
  %.idx557.i = shl nuw nsw i64 %i.zo, 2           ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 %.idx557.i ; 3 uses
  %i.zq = lshr i64 %i.zo, 2                       ; 2 uses
  %.not556.i = icmp eq i64 %i.zq, 0
  br i1 %.not556.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.i
  %i.zr = and i64 %.idx557.i, 17179869168
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.zm, i64 %i.zr
  br label %bb.cx

bb.cx:                                            ; preds = %bb.db, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.zq, %.lr.ph.i.i.i.i.i ], [ %i.aae, %bb.db ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.zm, %.lr.ph.i.i.i.i.i ], [ %i.aad, %bb.db ] ; 9 uses
  %i.zs = load i32, ptr %.02946.i.i.i.i.i, align 4, !tbaa !34
  %i.zt = icmp eq i32 %i.zs, %i.yw
  br i1 %i.zt, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !34
  %i.zw = icmp eq i32 %i.zv, %i.yw
  br i1 %i.zw, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !34
  %i.zz = icmp eq i32 %i.zy, %i.yw
  br i1 %i.zz, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1237, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aaa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !34
  %i.aac = icmp eq i32 %i.aab, %i.yw
  br i1 %i.aac, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1239, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.aae = add nsw i64 %.047.i.i.i.i.i, -1
  %i.aaf = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.aaf, label %bb.cx, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !188

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.db
  %i.aag = and i32 %i.zn, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.i
  %.pre-phi56.i.i.i.i.i = phi i32 [ %i.aag, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.zn, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.i ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.zm, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.i ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i, label %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.i [
    i32 3, label %bb.dc
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.aah = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !34
  %i.aai = icmp eq i32 %i.aah, %i.yw
  br i1 %i.aai, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aaj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.dd, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.aaj, %bb.dd ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aak = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !34
  %i.aal = icmp eq i32 %i.aak, %i.yw
  br i1 %i.aal, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i, label %bb.de

bb.de:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.aam = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.de, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.aam, %bb.de ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.aan = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !34
  %i.aao = icmp eq i32 %i.aan, %i.yw
  br i1 %i.aao, label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i, label %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.i

_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.cy
  %i.aap = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  br label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i

_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1237: ; preds = %bb.cz
  %i.aaq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i

_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1239: ; preds = %bb.da
  %i.aar = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  br label %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i

_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i: ; preds = %bb.cx, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1237, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1239, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.dc
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.dc ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.aar, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1239 ], [ %i.aap, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.aaq, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit1237 ], [ %.02946.i.i.i.i.i, %bb.cx ] ; 3 uses
  %i.aas = icmp eq ptr %.028.i.i.i.i.i, %i.zp
  %.01730.i.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i, i64 4 ; 2 uses
  %.not31.i.i.i = icmp eq ptr %.01730.i.i.i, %i.zp
  %or.cond.i.i.i = select i1 %i.aas, i1 true, i1 %.not31.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i, %bb.dg
  %i.aat = phi i32 [ %i.aax, %bb.dg ], [ %i.yw, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i ] ; 2 uses
  %.01733.i.i.i = phi ptr [ %.017.i.i.i, %bb.dg ], [ %.01730.i.i.i, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i ] ; 2 uses
  %.032.i.i.i = phi ptr [ %.1.i.i.i, %bb.dg ], [ %.028.i.i.i.i.i, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i ] ; 3 uses
  %i.aau = load i32, ptr %.01733.i.i.i, align 4, !tbaa !34 ; 2 uses
  %i.aav = icmp eq i32 %i.aau, %i.aat
  br i1 %i.aav, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i
  store i32 %i.aau, ptr %.032.i.i.i, align 4, !tbaa !34
  %i.aaw = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 4
  %.pre858.i = load i32, ptr %i.b, align 4, !tbaa !34
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.lr.ph.i.i.i
  %i.aax = phi i32 [ %i.aat, %.lr.ph.i.i.i ], [ %.pre858.i, %bb.df ] ; 2 uses
  %.1.i.i.i = phi ptr [ %.032.i.i.i, %.lr.ph.i.i.i ], [ %i.aaw, %bb.df ]
  %.017.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i, i64 4 ; 2 uses
  %.not.i.i266.i = icmp eq ptr %.017.i.i.i, %i.zp
  br i1 %.not.i.i266.i, label %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !189

_ZSt6removeIPjjET_S1_S1_RKT0_.exit.loopexit.i:    ; preds = %bb.dg
  %.pre860.i.a = load i32, ptr %i.mv, align 8, !tbaa !51
  br label %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.i

_ZSt6removeIPjjET_S1_S1_RKT0_.exit.i:             ; preds = %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.loopexit.i, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.aay = phi i32 [ %.pre860.i.a, %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.loopexit.i ], [ %i.zn, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i ], [ %i.zn, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.zn, %._crit_edge.i.i.i.i.i ]
  %i.aaz = phi i32 [ %i.aax, %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.loopexit.i ], [ %i.yw, %_ZSt9__find_ifIPjN9__gnu_cxx5__ops16_Iter_equals_valIKjEEET_S6_S6_T0_.exit.i.i.i ], [ %i.yw, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.yw, %._crit_edge.i.i.i.i.i ]
  %i.aba = add i32 %i.aay, -1
  %i.abb = zext i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.abb
  store i32 %i.aaz, ptr %i.abc, align 4, !tbaa !34
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE6insertERKj.exit279.i

bb.dh:                                            ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.di:                                            ; preds = %.loopexit559.i, %bb.dp, %bb.dj
  %i.abe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body.i

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i: ; preds = %bb.cw, %bb.cv, %bb.cs, %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545.i
  %i.abf = load i32, ptr %i.mv, align 8, !tbaa !51 ; 6 uses
  %i.abg = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.abh = icmp eq i32 %i.abf, %i.abg
  br i1 %i.abh, label %bb.dj, label %._crit_edge.i267.i

._crit_edge.i267.i:                               ; preds = %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i
  %.pre.i268.i = load ptr, ptr %12, align 8, !tbaa !53
  br label %bb.do

bb.dj:                                            ; preds = %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit265.thread.i
  %i.abi = add i32 %i.abf, 1
  %i.abj = lshr i32 %i.abf, 1
  %i.abk = add i32 %i.abj, %i.abf                 ; 2 uses
  %i.abl = icmp ugt i32 %i.abk, %i.abi
  %i.abm = add i32 %i.abf, 5
  %.09.i.i.i = select i1 %i.abl, i32 %i.abk, i32 %i.abm ; 2 uses
  %i.abn = zext i32 %.09.i.i.i to i64
  %i.abo = shl nuw nsw i64 %i.abn, 2
  %i.abp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abo) #24
          to label %.noexc270.i unwind label %bb.di ; 4 uses

.noexc270.i:                                      ; preds = %bb.dj
  %i.abq = load ptr, ptr %12, align 8, !tbaa !53  ; 4 uses
  %i.abr = load i32, ptr %i.mv, align 8, !tbaa !51 ; 4 uses
  %i.abs = icmp ugt i32 %i.abr, 1
  br i1 %i.abs, label %bb.dk, label %bb.dl, !prof !99

bb.dk:                                            ; preds = %.noexc270.i
  %i.abt = zext i32 %i.abr to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.abt, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.abp, ptr align 4 %i.abq, i64 %.idx.i.i.i, i1 false)
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i

bb.dl:                                            ; preds = %.noexc270.i
  %i.abu = icmp eq i32 %i.abr, 1
  br i1 %i.abu, label %bb.dm, label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.abv = load i32, ptr %i.abq, align 4, !tbaa !34
  store i32 %i.abv, ptr %i.abp, align 4, !tbaa !34
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dk
  %.not.i.i269.i = icmp eq ptr %i.abq, %i.mx
  br i1 %.not.i.i269.i, label %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.abq) #23
  %.pre2.pre.i.i = load i32, ptr %i.mv, align 8, !tbaa !51
  br label %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i

_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i:     ; preds = %bb.dn, %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.abr, %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i ], [ %.pre2.pre.i.i, %bb.dn ]
  store ptr %i.abp, ptr %12, align 8, !tbaa !53
  store i32 %.09.i.i.i, ptr %i.mw, align 4, !tbaa !52
  %.pre861.i.a = load i32, ptr %i.b, align 4, !tbaa !34
  %.pre862.i.a = load i8, ptr @_ZN5FFlag29LuauCodegenVmExitSyncMultiUseE, align 8, !tbaa !45, !range !46
  br label %bb.do

bb.do:                                            ; preds = %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i, %._crit_edge.i267.i
  %i.abw = phi i8 [ %i.yq, %._crit_edge.i267.i ], [ %.pre862.i.a, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i ]
  %i.abx = phi i32 [ %i.yw, %._crit_edge.i267.i ], [ %.pre861.i.a, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i ]
  %i.aby = phi i32 [ %i.abf, %._crit_edge.i267.i ], [ %.pre2.i.i, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i ]
  %i.abz = phi ptr [ %.pre.i268.i, %._crit_edge.i267.i ], [ %i.abp, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i ]
  %i.aca = zext i32 %i.aby to i64
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.aca
  store i32 %i.abx, ptr %i.acb, align 4, !tbaa !34
  %i.acc = load i32, ptr %i.mv, align 8, !tbaa !51
  %i.acd = add i32 %i.acc, 1
  store i32 %i.acd, ptr %i.mv, align 8, !tbaa !51
  %i.ace = trunc nuw i8 %i.abw to i1
  br i1 %i.ace, label %bb.dp, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE6insertERKj.exit279.i

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4Luau6detail14DenseHashTableIjjjNS0_16ItemInterfaceSetIjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERKj(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc278.i unwind label %bb.di

.noexc278.i:                                      ; preds = %bb.dp
  %i.acf = load i64, ptr %i.nd, align 8, !tbaa !101
  %i.acg = add i64 %i.acf, -1                     ; 3 uses
  %i.ach = load i32, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.aci = zext i32 %i.ach to i64
  %i.acj = and i64 %i.acg, %i.aci                 ; 3 uses
  %i.ack = load ptr, ptr %13, align 8, !tbaa !102 ; 3 uses
  %i.acl = load i32, ptr %i.my, align 8, !tbaa !34 ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.acj
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !34 ; 2 uses
  %i.aco = icmp eq i32 %i.acn, %i.acl
  br i1 %i.aco, label %._crit_edge.i275.i, label %.lr.ph.i271.i

._crit_edge.i275.i:                               ; preds = %bb.dq, %.noexc278.i
  %.02134.i.lcssa4.i276.i = phi i64 [ %i.acj, %.noexc278.i ], [ %i.acw, %bb.dq ]
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %.02134.i.lcssa4.i276.i
  store i32 %i.ach, ptr %i.acp, align 4, !tbaa !34
  %i.acq = load i64, ptr %i.nc, align 8, !tbaa !100
  %i.acr = add i64 %i.acq, 1
  store i64 %i.acr, ptr %i.nc, align 8, !tbaa !100
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE6insertERKj.exit279.i

.lr.ph.i271.i:                                    ; preds = %.noexc278.i, %bb.dq
  %i.acs = phi i32 [ %i.acy, %bb.dq ], [ %i.acn, %.noexc278.i ]
  %.02134.i6.i272.i = phi i64 [ %i.acw, %bb.dq ], [ %i.acj, %.noexc278.i ]
  %.02035.i5.i273.i = phi i64 [ %i.acu, %bb.dq ], [ 0, %.noexc278.i ]
  %i.act = icmp eq i32 %i.acs, %i.ach
  br i1 %i.act, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE6insertERKj.exit279.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i271.i
  %i.acu = add i64 %.02035.i5.i273.i, 1           ; 3 uses
  %i.acv = add i64 %i.acu, %.02134.i6.i272.i
  %i.acw = and i64 %i.acv, %i.acg                 ; 3 uses
  %.not.i.i274.i = icmp ule i64 %i.acu, %i.acg
  call void @llvm.assume(i1 %.not.i.i274.i)
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !34 ; 2 uses
  %i.acz = icmp eq i32 %i.acy, %i.acl
  br i1 %i.acz, label %._crit_edge.i275.i, label %.lr.ph.i271.i

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE6insertERKj.exit279.i: ; preds = %.lr.ph.i271.i, %._crit_edge.i275.i, %bb.do, %_ZSt6removeIPjjET_S1_S1_RKT0_.exit.i
  %i.ada = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 6 uses
  %.not.i.i280.i = icmp eq ptr %i.ada, %i.xi
  br i1 %.not.i.i280.i, label %.loopexit559.i, label %bb.dr

bb.dr:                                            ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE6insertERKj.exit279.i
  %i.adb = ptrtoint ptr %i.ada to i64
  %i.adc = sub i64 %i.xj, %i.adb
  %i.add = ashr exact i64 %i.adc, 3               ; 6 uses
  %i.ade = icmp sgt i64 %i.add, 0
  br i1 %i.ade, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit559.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.dr
  %min.iters.check1625 = icmp ult i64 %i.add, 4
  br i1 %min.iters.check1625, label %.lr.ph.i.i.i.i.i.i.i.i, label %vector.ph1626

vector.ph1626:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec1627 = and i64 %i.add, 9223372036854775804 ; 3 uses
  %i.adf = and i64 %i.add, 3
  %i.adg = shl i64 %n.vec1627, 3                  ; 2 uses
  %i.adh = getelementptr i8, ptr %i.xk, i64 %i.adg
  %i.adi = getelementptr i8, ptr %i.ada, i64 %i.adg
  br label %vector.body1628

vector.body1628:                                  ; preds = %vector.body1628, %vector.ph1626
  %index1629 = phi i64 [ 0, %vector.ph1626 ], [ %index.next1640, %vector.body1628 ] ; 2 uses
  %i.adj = shl i64 %index1629, 3                  ; 3 uses
  %i.adk = or disjoint i64 %i.adj, 16             ; 2 uses
  %next.gep1630 = getelementptr i8, ptr %i.xk, i64 %i.adj
  %next.gep1631 = getelementptr i8, ptr %i.xk, i64 %i.adk
  %next.gep1632 = getelementptr i8, ptr %i.ada, i64 %i.adj
  %next.gep1633 = getelementptr i8, ptr %i.ada, i64 %i.adk
  %wide.vec = load <4 x i32>, ptr %next.gep1632, align 4, !tbaa !88
  %wide.vec1635 = load <4 x i32>, ptr %next.gep1633, align 4, !tbaa !88
  store <4 x i32> %wide.vec, ptr %next.gep1630, align 4, !tbaa !88
  store <4 x i32> %wide.vec1635, ptr %next.gep1631, align 4, !tbaa !88
  %index.next1640 = add nuw i64 %index1629, 4     ; 2 uses
  %i.adl = icmp eq i64 %index.next1640, %n.vec1627
  br i1 %i.adl, label %middle.block1641, label %vector.body1628, !llvm.loop !190

middle.block1641:                                 ; preds = %vector.body1628
  %cmp.n1642 = icmp eq i64 %i.add, %n.vec1627
  br i1 %cmp.n1642, label %.loopexit559.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %middle.block1641, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.add, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.adf, %middle.block1641 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.xk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.adh, %middle.block1641 ] ; 6 uses
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ada, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.adi, %middle.block1641 ] ; 6 uses
  %i.adm = load i32, ptr %.0910.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !88
  store i32 %i.adm, ptr %.0811.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !88
  %i.adn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 4
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !34
  %i.adp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 4
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !111
  %i.adq = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.adq, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %.loopexit559.i

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.adr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 8
  %i.ads = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 8
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !88
  store i32 %i.adt, ptr %i.adr, align 4, !tbaa !88
  %i.adu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 12
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !34
  %i.adw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 12
end_hunk_0
