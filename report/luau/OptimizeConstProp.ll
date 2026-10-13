Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeConstProp?download=true
inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGen22constPropInBlockChainsERNS0_9IrBuilderE:bb.a

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4Luau7CodeGen14ConstPropState5clearEv(ptr noundef nonnull align 8 dereferenceable(3704) %1)
          to label %.noexc26 unwind label %.body.thread

.noexc26:                                         ; preds = %bb.m
  invoke fastcc void @_ZN4Luau7CodeGenL20setupBlockEntryStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_14ConstPropStateE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.038.061, ptr noundef nonnull align 8 dereferenceable(3704) %1)
          to label %.noexc27 unwind label %.body.thread

.noexc27:                                         ; preds = %.noexc26
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.038.061, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !333
  br label %bb.n

bb.n:                                             ; preds = %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, %.noexc27
  %.074.i = phi ptr [ %.sroa.038.061, %.noexc27 ], [ %.248.i, %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i ] ; 11 uses
  %.05273.i = phi i32 [ 0, %.noexc27 ], [ %i.cd, %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i ] ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bd = ptrtoint ptr %.074.i to i64             ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 36
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %i.bh
  store i8 1, ptr %i.bi, align 1, !tbaa !52
  %i.bj = load i8, ptr %i.aj, align 8, !tbaa !121, !range !122, !noundef !123
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %.074.i, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !124 ; 3 uses
  %.not54.i = trunc i8 %i.bm to i1
  %or.cond.not.i = select i1 %i.bk, i1 %.not54.i, i1 false
  br i1 %or.cond.not.i, label %bb.o, label %._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %i.bn = and i8 %i.bm, -2                        ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !124
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.n
  %i.bo = phi i8 [ %i.bm, %bb.n ], [ %i.bn, %bb.o ]
  %i.bp = and i8 %i.bo, 1
  %.not.i.i24 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  store i8 1, ptr %i.aj, align 8, !tbaa !121
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.074.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !125 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.074.i, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !126 ; 2 uses
  %.not2325.i.i = icmp ugt i32 %i.br, %i.bt
  br i1 %.not2325.i.i, label %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, label %.lr.ph.i.i

bb.r:                                             ; preds = %.noexc30
  %i.bu = add i32 %.02226.i.i, 1                  ; 2 uses
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !126 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.bu, %i.bv
  br i1 %.not23.i.i, label %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.02226.i.i = phi i32 [ %i.bu, %bb.r ], [ %i.br, %bb.q ] ; 4 uses
  %i.bw = zext i32 %.02226.i.i to i64
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.bx, i64 %i.bw ; 2 uses
  invoke void @_ZN4Luau7CodeGen18applySubstitutionsERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 8 dereferenceable(59) %i.by)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %.lr.ph.i.i
  invoke void @_ZN4Luau7CodeGen13foldConstantsERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.074.i, i32 noundef %.02226.i.i)
          to label %.noexc29 unwind label %.loopexit

.noexc29:                                         ; preds = %.noexc28
  invoke fastcc void @_ZN4Luau7CodeGenL15constPropInInstERNS0_14ConstPropStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %1, ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.074.i, ptr noundef nonnull align 8 dereferenceable(59) %i.by, i32 noundef %.02226.i.i)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.bz = load i8, ptr %.074.i, align 4, !tbaa !51
  %.not24.i.i = icmp eq i8 %i.bz, 5
  br i1 %.not24.i.i, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %bb.r

_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i: ; preds = %bb.q
  %.pr.pre.i = load i8, ptr %.074.i, align 4, !tbaa !51
  %i.ca = icmp eq i8 %.pr.pre.i, 5
  br i1 %i.ca, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i

_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i: ; preds = %bb.r, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i
  %i.cb = phi i32 [ %i.bt, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i ], [ %i.bv, %bb.r ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.074.i, i64 12
  store i32 %i.bb, ptr %i.cc, align 4, !tbaa !333
  %i.cd = add i32 %.05273.i, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.074.i, i64 16
  store i32 %.05273.i, ptr %i.ce, align 4, !tbaa !334
  %i.cf = zext i32 %i.cb to i64
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.cg, i64 %i.cf ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !130
  %i.cj = icmp eq i8 %i.ci, 88
  br i1 %i.cj, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !131
  %.not.i58.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i58.not.i, label %bb.t, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i, !prof !132

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i32 noundef 1)
          to label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i unwind label %.loopexit.split-lp.loopexit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i:     ; preds = %bb.t, %bb.s
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !133
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = and i32 %i.co, 15
  %i.cq = icmp eq i32 %i.cp, 5
  br i1 %i.cq, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i
  %i.cr = load i32, ptr %i.cl, align 8, !tbaa !131
  %.not.i59.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i59.not.i, label %bb.v, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i, !prof !132

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i32 noundef 1)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %bb.v
  %.pre81.i = load ptr, ptr %i.ck, align 8, !tbaa !133
  %.sroa.0.0.copyload.pre.i = load i32, ptr %.pre81.i, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i:   ; preds = %.noexc32, %bb.u
  %.sroa.0.0.copyload.i = phi i32 [ %i.co, %bb.u ], [ %.sroa.0.0.copyload.pre.i, %.noexc32 ]
  %i.cs = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw [36 x i8], ptr %i.cu, i64 %i.ct ; 5 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !134
  %i.cz = icmp eq i16 %i.cy, 1
  br i1 %i.cz, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %i.ct
  %i.db = load i8, ptr %i.da, align 1, !tbaa !52
  %.not55.i = icmp eq i8 %i.db, 0
  br i1 %.not55.i, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.dc = load i8, ptr %i.cv, align 4, !tbaa !51
  %.not56.i = icmp eq i8 %i.dc, 1
  br i1 %.not56.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = invoke noundef i32 @_ZN4Luau7CodeGen20getLiveOutValueCountERNS0_10IrFunctionERNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %i.cv)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %bb.y
  %.not57.i = icmp eq i32 %i.dd, 0
  br i1 %.not57.i, label %bb.z, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit

bb.z:                                             ; preds = %.noexc33
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.cw, %i.df
  %i.dh = sdiv exact i64 %i.dg, 36
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %.074.i, i64 20
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !135
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %bb.x, %bb.w, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i
  %.248.i = phi ptr [ null, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i ], [ null, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i ], [ null, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i ], [ null, %bb.x ], [ %i.cv, %bb.z ], [ null, %bb.w ] ; 2 uses
  %i.dk = load i32, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = icmp slt i32 %i.dk, -1
  br i1 %i.dn, label %.noexc.i.i, label %bb.aa

.noexc.i.i:                                       ; preds = %.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %.noexc.i.i
  unreachable

bb.aa:                                            ; preds = %.thread.i
  %.not40.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not40.i.i, label %._crit_edge.i.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit.i.i

_ZNSt6vectorIhSaIhEE7reserveEm.exit.i.i:          ; preds = %bb.aa
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #25
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc35:                                         ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm ; 2 uses
  %.pre.i.i = load i32, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %.not49.i.i = icmp slt i32 %.pre.i.i, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i61.i

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i, %.noexc35, %bb.aa
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.do, %.noexc35 ], [ null, %bb.aa ], [ %.sroa.0.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ]
  %.sroa.13.0.lcssa.i.i = phi ptr [ %i.do, %.noexc35 ], [ null, %bb.aa ], [ %.sroa.13.2.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ]
  %.sroa.21.0.lcssa.i.i = phi ptr [ %i.dp, %.noexc35 ], [ null, %bb.aa ], [ %.sroa.21.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ]
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.bd, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 36
  %i.du = and i64 %i.dt, 4294967295
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.du ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !44 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !45
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.dw, align 8, !tbaa !44
  store ptr %.sroa.13.0.lcssa.i.i, ptr %i.dy, align 8, !tbaa !137
  store ptr %.sroa.21.0.lcssa.i.i, ptr %i.dz, align 8, !tbaa !45
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ed) #26
  br label %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i

.lr.ph.i61.i:                                     ; preds = %.noexc35, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i
  %2 = phi i32 [ %3, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %.pre.i.i, %.noexc35 ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ 0, %.noexc35 ] ; 3 uses
  %.sroa.21.052.i.i = phi ptr [ %.sroa.21.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %i.dp, %.noexc35 ] ; 3 uses
  %.sroa.13.051.i.i = phi ptr [ %.sroa.13.2.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %i.do, %.noexc35 ] ; 3 uses
  %.sroa.0.050.i.i = phi ptr [ %.sroa.0.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %i.do, %.noexc35 ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv.i.i ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.13.051.i.i, %.sroa.21.052.i.i
  br i1 %.not.i.i.i25, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i61.i
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !52
  store i8 %i.ef, ptr %.sroa.13.051.i.i, align 1, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i

bb.ad:                                            ; preds = %.lr.ph.i61.i
  %i.eg = ptrtoint ptr %.sroa.21.052.i.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.050.i.i to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 9 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775807
  br i1 %i.ej, label %bb.ae, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.i.i

.noexc16.i.i:                                     ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ad
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ek = add i64 %.sroa.speculated.i.i.i.i.i, %i.ei ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ei
  %i.em = call i64 @llvm.umin.i64(i64 %i.ek, i64 9223372036854775807)
  %i.en = select i1 %i.el, i64 9223372036854775807, i64 %i.em ; 3 uses
  %.not.i.i.i15.i.i = icmp ne i64 %i.en, 0
  call void @llvm.assume(i1 %.not.i.i.i15.i.i)
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #25
          to label %.noexc17.i.i unwind label %.loopexit.i.i ; 4 uses

.noexc17.i.i:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ei ; 2 uses
  %i.eq = load i8, ptr %i.ee, align 4, !tbaa !52
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !52
  %i.er = icmp sgt i64 %i.ei, 0
  br i1 %i.er, label %bb.af, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

bb.af:                                            ; preds = %.noexc17.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr align 1 %.sroa.0.050.i.i, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.af, %.noexc17.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.050.i.i, i64 noundef %i.ei) #26
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %.pre69 = load i32, ptr %i.al, align 8, !tbaa !136
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.ac
  %3 = phi i32 [ %.pre69, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %2, %bb.ac ] ; 2 uses
  %.sroa.0.3.i.i = phi ptr [ %i.eo, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.050.i.i, %bb.ac ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.ep, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.051.i.i, %bb.ac ]
  %.sroa.21.3.i.i = phi ptr [ %i.es, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.21.052.i.i, %bb.ac ] ; 2 uses
  %.sroa.13.2.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.et = sext i32 %3 to i64
  %.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %i.et
  br i1 %.not.not.i.i, label %.lr.ph.i61.i, label %._crit_edge.i.i, !llvm.loop !331

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit19.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ae
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit19.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit19.i.i:              ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.050.i.i, i64 noundef %i.ei) #26
  br label %.body

_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i: ; preds = %bb.ab, %._crit_edge.i.i
  %.not.i = icmp eq ptr %.248.i, null
  br i1 %.not.i, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %bb.n

_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit: ; preds = %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, %.noexc33, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, %.noexc30, %bb.l, %bb.k, %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.038.061, i64 36 ; 2 uses
  %.not48 = icmp eq ptr %i.eu, %i.ai
  br i1 %.not48, label %._crit_edge, label %bb.k

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit19.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit19.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit50, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.sroa.042.0, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %bb.ag

bb.ag:                                            ; preds = %.body.thread, %.body
  %.pn90 = phi { ptr, i32 } [ %lpad.loopexit53, %.body.thread ], [ %.pn, %.body ]
  %i.ev = ptrtoint ptr %.sroa.042.0 to i64
  %i.ew = sub i64 %.sroa.14.0, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.0, i64 noundef %i.ew) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit37

_ZNSt6vectorIhSaIhEED2Ev.exit37:                  ; preds = %bb.ag, %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %.pn, %.body ], [ %.pn90, %bb.ag ]
  call void @_ZN4Luau7CodeGen14ConstPropStateD2Ev(ptr noundef nonnull align 8 dead_on_return(3704) dereferenceable(3704) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropStateC2ERNS0_9IrBuilderERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(1056) %1, ptr noundef nonnull align 8 dereferenceable(928) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 12 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i.3, %bb.b ] ; 5 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i ; 3 uses
  store i8 -1, ptr %.ptr.i, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i ; 3 uses
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 -1, ptr %.ptr.i.1, align 4, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i ; 3 uses
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 -1, ptr %.ptr.i.2, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i ; 3 uses
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i8 -1, ptr %.ptr.i.3, align 4, !tbaa !142
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !143
  %.add.i.3 = add nuw nsw i64 %.idx.i, 48         ; 2 uses
  %i.n = icmp eq i64 %.add.i.3, 3072
  br i1 %i.n, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.o, i8 0, i64 10, i1 false)
  store i32 -1, ptr %i.q, align 8, !tbaa !336
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.s, align 8, !tbaa !337
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.u, align 8, !tbaa !338
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3200
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8, !tbaa !130
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 0, ptr %i.x, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 6, ptr %i.y, align 4, !tbaa !144
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i16 0, ptr %i.ab, align 4, !tbaa !146
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 54
  store i8 -128, ptr %i.ac, align 2, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 55
  store i32 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i8 0, i64 25, i1 false)
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.af, ptr noundef nonnull align 8 dereferenceable(11) %i.aa, i64 11, i1 false)
  %.promoted.i.i.i = load i32, ptr %i.x, align 8, !tbaa !131
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ag) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 24, i1 false)
  store i8 -1, ptr %i.ai, align 8, !tbaa !339
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ak, align 8, !tbaa !340
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.al, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.am, align 8, !tbaa !147
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ao, align 8, !tbaa !341
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aq, align 8, !tbaa !341
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.as, align 8, !tbaa !342
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i18 = load i32, ptr %i.x, align 8, !tbaa !131
  %.not1.i.i.i19 = icmp eq i32 %.promoted.i.i.i18, 0
  br i1 %.not1.i.i.i19, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i21, label %.lr.ph.preheader.i.i.i20

.lr.ph.preheader.i.i.i20:                         ; preds = %bb.g
  store i32 0, ptr %i.x, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i21

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i21: ; preds = %.lr.ph.preheader.i.i.i20, %bb.g
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !133 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.av, %i.z
  br i1 %.not.i.i22, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit23, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i21
  call void @_ZdlPv(ptr noundef %i.av) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit23

end_hunk_0
