Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeConstProp?download=true
inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGen22constPropInBlockChainsERNS0_9IrBuilderE:bb.a

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4Luau7CodeGen14ConstPropState5clearEv(ptr noundef nonnull align 8 dereferenceable(3704) %1)
          to label %.noexc26 unwind label %.body.thread

.noexc26:                                         ; preds = %bb.l
  invoke fastcc void @_ZN4Luau7CodeGenL20setupBlockEntryStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_14ConstPropStateE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.038.065, ptr noundef nonnull align 8 dereferenceable(3704) %1)
          to label %.noexc27 unwind label %.body.thread

.noexc27:                                         ; preds = %.noexc26
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.038.065, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !333
  br label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, %.noexc27
  %.074.i = phi ptr [ %.sroa.038.065, %.noexc27 ], [ %.248.i, %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i ] ; 11 uses
  %.05273.i = phi i32 [ 0, %.noexc27 ], [ %i.cc, %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i ] ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bc = ptrtoint ptr %.074.i to i64             ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 36
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %i.bg
  store i8 1, ptr %i.bh, align 1, !tbaa !52
  %i.bi = load i8, ptr %i.aj, align 8, !tbaa !121, !range !122, !noundef !123
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.074.i, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !124 ; 3 uses
  %.not54.i = trunc i8 %i.bl to i1
  %or.cond.not.i = select i1 %i.bj, i1 %.not54.i, i1 false
  br i1 %or.cond.not.i, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %i.bm = and i8 %i.bl, -2                        ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !124
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.bn = phi i8 [ %i.bl, %bb.m ], [ %i.bm, %bb.n ]
  %i.bo = and i8 %i.bn, 1
  %.not.i.i24 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i24, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  store i8 1, ptr %i.aj, align 8, !tbaa !121
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.074.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !125 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.074.i, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !126 ; 2 uses
  %.not2325.i.i = icmp ugt i32 %i.bq, %i.bs
  br i1 %.not2325.i.i, label %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %.noexc30
  %i.bt = add i32 %.02226.i.i, 1                  ; 2 uses
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !126 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.bt, %i.bu
  br i1 %.not23.i.i, label %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.02226.i.i = phi i32 [ %i.bt, %bb.q ], [ %i.bq, %bb.p ] ; 4 uses
  %i.bv = zext i32 %.02226.i.i to i64
  %i.bw = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bw, i64 %i.bv ; 2 uses
  invoke void @_ZN4Luau7CodeGen18applySubstitutionsERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 8 dereferenceable(59) %i.bx)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.lr.ph.i.i
  invoke void @_ZN4Luau7CodeGen13foldConstantsERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.074.i, i32 noundef %.02226.i.i)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  invoke fastcc void @_ZN4Luau7CodeGenL15constPropInInstERNS0_14ConstPropStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %1, ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.074.i, ptr noundef nonnull align 8 dereferenceable(59) %i.bx, i32 noundef %.02226.i.i)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %.noexc29
  %i.by = load i8, ptr %.074.i, align 4, !tbaa !51
  %.not24.i.i = icmp eq i8 %i.by, 5
  br i1 %.not24.i.i, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %bb.q

_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i: ; preds = %bb.p
  %.pr.pre.i = load i8, ptr %.074.i, align 4, !tbaa !51
  %i.bz = icmp eq i8 %.pr.pre.i, 5
  br i1 %i.bz, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i

_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i: ; preds = %bb.q, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i
  %i.ca = phi i32 [ %i.bs, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i ], [ %i.bu, %bb.q ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.074.i, i64 12
  store i32 %i.ba, ptr %i.cb, align 4, !tbaa !333
  %i.cc = add i32 %.05273.i, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.074.i, i64 16
  store i32 %.05273.i, ptr %i.cd, align 4, !tbaa !334
  %i.ce = zext i32 %i.ca to i64
  %i.cf = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %i.ce ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !130
  %i.ci = icmp eq i8 %i.ch, 88
  br i1 %i.ci, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !131
  %.not.i58.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i58.not.i, label %bb.s, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i, !prof !132

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i32 noundef 1)
          to label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i:     ; preds = %bb.s, %bb.r
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !133
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = and i32 %i.cn, 15
  %i.cp = icmp eq i32 %i.co, 5
  br i1 %i.cp, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i
  %i.cq = load i32, ptr %i.ck, align 8, !tbaa !131
  %.not.i59.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i59.not.i, label %bb.u, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i, !prof !132

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i32 noundef 1)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.u
  %.pre81.i = load ptr, ptr %i.cj, align 8, !tbaa !133
  %.sroa.0.0.copyload.pre.i = load i32, ptr %.pre81.i, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i:   ; preds = %.noexc32, %bb.t
  %.sroa.0.0.copyload.i = phi i32 [ %i.cn, %bb.t ], [ %.sroa.0.0.copyload.pre.i, %.noexc32 ]
  %i.cr = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw [36 x i8], ptr %i.ct, i64 %i.cs ; 5 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !134
  %i.cy = icmp eq i16 %i.cx, 1
  br i1 %i.cy, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %i.cs
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !52
  %.not55.i = icmp eq i8 %i.da, 0
  br i1 %.not55.i, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.db = load i8, ptr %i.cu, align 4, !tbaa !51
  %.not56.i = icmp eq i8 %i.db, 1
  br i1 %.not56.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = invoke noundef i32 @_ZN4Luau7CodeGen20getLiveOutValueCountERNS0_10IrFunctionERNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %i.cu)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.x
  %.not57.i = icmp eq i32 %i.dc, 0
  br i1 %.not57.i, label %bb.y, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit

bb.y:                                             ; preds = %.noexc33
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.cv, %i.de
  %i.dg = sdiv exact i64 %i.df, 36
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %.074.i, i64 20
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !135
  br label %.thread.i

.thread.i:                                        ; preds = %bb.y, %bb.w, %bb.v, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i
  %.248.i = phi ptr [ null, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.thread.i ], [ null, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i ], [ null, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit60.i ], [ null, %bb.w ], [ %i.cu, %bb.y ], [ null, %bb.v ] ; 2 uses
  %i.dj = load i32, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.dk = add nsw i32 %i.dj, 1                    ; 2 uses
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = icmp slt i32 %i.dj, -1
  br i1 %i.dm, label %.noexc.i.i, label %bb.z

.noexc.i.i:                                       ; preds = %.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %.noexc.i.i
  unreachable

bb.z:                                             ; preds = %.thread.i
  %.not40.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not40.i.i, label %._crit_edge.i.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit.i.i

_ZNSt6vectorIhSaIhEE7reserveEm.exit.i.i:          ; preds = %bb.z
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #25
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc35:                                         ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl ; 2 uses
  %.pre.i.i = load i32, ptr %i.al, align 8, !tbaa !136
  %.not49.i.i = icmp slt i32 %.pre.i.i, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i61.i

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i, %.noexc35, %bb.z
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.dn, %.noexc35 ], [ null, %bb.z ], [ %.sroa.0.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ]
  %.sroa.13.0.lcssa.i.i = phi ptr [ %i.dn, %.noexc35 ], [ null, %bb.z ], [ %.sroa.13.2.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ]
  %.sroa.21.0.lcssa.i.i = phi ptr [ %i.do, %.noexc35 ], [ null, %bb.z ], [ %.sroa.21.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ]
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.bc, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 36
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dt ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !44 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.dv, align 8, !tbaa !44
  store ptr %.sroa.13.0.lcssa.i.i, ptr %i.dx, align 8, !tbaa !137
  store ptr %.sroa.21.0.lcssa.i.i, ptr %i.dy, align 8, !tbaa !45
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dw to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ec) #26
  br label %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i

.lr.ph.i61.i:                                     ; preds = %.noexc35, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ 0, %.noexc35 ] ; 3 uses
  %.sroa.21.052.i.i = phi ptr [ %.sroa.21.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %i.do, %.noexc35 ] ; 3 uses
  %.sroa.13.051.i.i = phi ptr [ %.sroa.13.2.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %i.dn, %.noexc35 ] ; 3 uses
  %.sroa.0.050.i.i = phi ptr [ %.sroa.0.3.i.i, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i ], [ %i.dn, %.noexc35 ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv.i.i ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.13.051.i.i, %.sroa.21.052.i.i
  br i1 %.not.i.i.i25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i61.i
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !52
  store i8 %i.ee, ptr %.sroa.13.051.i.i, align 1, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i

bb.ac:                                            ; preds = %.lr.ph.i61.i
  %i.ef = ptrtoint ptr %.sroa.21.052.i.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.050.i.i to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 9 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775807
  br i1 %i.ei, label %bb.ad, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc16.i.i:                                     ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ej = add i64 %.sroa.speculated.i.i.i.i.i, %i.eh ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.eh
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 9223372036854775807)
  %i.em = select i1 %i.ek, i64 9223372036854775807, i64 %i.el ; 3 uses
  %.not.i.i.i15.i.i = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i15.i.i)
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #25
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc17.i.i:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eh ; 2 uses
  %i.ep = load i8, ptr %i.ed, align 4, !tbaa !52
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !52
  %i.eq = icmp sgt i64 %i.eh, 0
  br i1 %i.eq, label %bb.ae, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

bb.ae:                                            ; preds = %.noexc17.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %.sroa.0.050.i.i, i64 %i.eh, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ae, %.noexc17.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.050.i.i, i64 noundef %i.eh) #26
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.ab
  %.sroa.0.3.i.i = phi ptr [ %i.en, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.050.i.i, %bb.ab ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.eo, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.051.i.i, %bb.ab ]
  %.sroa.21.3.i.i = phi ptr [ %i.er, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.21.052.i.i, %bb.ab ] ; 2 uses
  %.sroa.13.2.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %2 = load i32, ptr %i.al, align 8, !tbaa !136
  %i.es = sext i32 %2 to i64
  %.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %i.es
  br i1 %.not.not.i.i, label %.lr.ph.i61.i, label %._crit_edge.i.i, !llvm.loop !331

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.ad
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.050.i.i, i64 noundef %i.eh) #26
  br label %.body

_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i: ; preds = %bb.aa, %._crit_edge.i.i
  %.not.i = icmp eq ptr %.248.i, null
  br i1 %.not.i, label %_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %bb.m

_ZN4Luau7CodeGenL21constPropInBlockChainERNS0_9IrBuilderERSt6vectorIhSaIhEEPNS0_7IrBlockERNS0_14ConstPropStateE.exit: ; preds = %_ZN4Luau7CodeGenL18saveBlockExitStateERNS0_10IrFunctionERKNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, %.noexc33, %_ZN4Luau7CodeGenL16constPropInBlockERNS0_9IrBuilderERNS0_7IrBlockERNS0_14ConstPropStateE.exit.i, %.noexc30, %bb.k, %bb.j, %bb.j
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.038.065, i64 36 ; 2 uses
  %.not48 = icmp eq ptr %i.et, %i.ai
  br i1 %.not48, label %._crit_edge, label %bb.j

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp122, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.sroa.042.0, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %bb.af

bb.af:                                            ; preds = %.body.thread, %.body
  %.pn103 = phi { ptr, i32 } [ %lpad.loopexit73, %.body.thread ], [ %.pn, %.body ]
  %i.eu = ptrtoint ptr %.sroa.042.0 to i64
  %i.ev = sub i64 %.sroa.14.0, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.0, i64 noundef %i.ev) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit37

_ZNSt6vectorIhSaIhEED2Ev.exit37:                  ; preds = %bb.af, %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %.pn, %.body ], [ %.pn103, %bb.af ]
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

_ZN4Luau7CodeGen6IrInstD2Ev.exit23:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i21, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !148 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i41, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit23
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #23
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEED2Ev.exit
end_hunk_0
begin_hunk_1_@"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEEZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0ET_SL_SL_T0_":bb.a
  %.pre83.i.i = lshr i32 %.pre79.i.i, 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i36.i.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i36.i.i: ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit34.thread.i.i"
  %.pre-phi84.i.i = phi i32 [ %.pre83.i.i, %bb.f ], [ %.pre-phi82.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit34.thread.i.i" ]
  %i.am = icmp eq i32 %i.ak, %.pre-phi84.i.i
  br i1 %i.am, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.i.i": ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i36.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i, i64 40
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = load i32, ptr %3, align 4
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit24", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.i.i", %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i36.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i, i64 48
  %i.as = add nsw i64 %.070.i.i, -1
  %i.at = icmp sgt i64 %.070.i.i, 1
  br i1 %i.at, label %bb.b, label %._crit_edge.loopexit.i.i, !llvm.loop !460

._crit_edge.loopexit.i.i:                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.thread.i.i"
  %.pre85.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre87.i.i = sub i64 %i.a, %.pre85.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.pre-phi88.i.i = phi i64 [ %.pre87.i.i, %._crit_edge.loopexit.i.i ], [ %i.c, %bb.a ]
  %.sroa.050.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.au = sdiv exact i64 %.pre-phi88.i.i, 12
  switch i64 %i.au, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.av = load i32, ptr %.sroa.050.0.lcssa.i.i, align 4, !tbaa !294
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !131
  %.not.i.not.i.i38.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.not.i.i38.i.i, label %bb.h, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i39.i.i, !prof !132

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i39.i.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i39.i.i: ; preds = %bb.h, %bb.g
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !133
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = lshr i32 %i.ba, 4
  %i.bc = icmp eq i32 %i.av, %i.bb
  br i1 %i.bc, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.i.i": ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i39.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.050.0.lcssa.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = load i32, ptr %3, align 4
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.i.i", %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i39.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.050.0.lcssa.i.i, i64 12
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.thread.i.i", %._crit_edge.i.i
  %.sroa.050.1.i.i = phi ptr [ %i.bh, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.thread.i.i" ], [ %.sroa.050.0.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.bi = load i32, ptr %.sroa.050.1.i.i, align 4, !tbaa !294
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !131
  %.not.i.not.i.i41.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.not.i.i41.i.i, label %bb.j, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i42.i.i, !prof !132

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i42.i.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i42.i.i: ; preds = %bb.j, %bb.i
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !133
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = lshr i32 %i.bn, 4
  %i.bp = icmp eq i32 %i.bi, %i.bo
  br i1 %i.bp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i": ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i42.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.050.1.i.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = load i32, ptr %3, align 4
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i", %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i42.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.050.1.i.i, i64 12
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.thread.i.i", %._crit_edge.i.i
  %.sroa.050.2.i.i = phi ptr [ %i.bu, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.thread.i.i" ], [ %.sroa.050.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bv = load i32, ptr %.sroa.050.2.i.i, align 4, !tbaa !294
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !131
  %.not.i.not.i.i44.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.not.i.i44.i.i, label %bb.l, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i45.i.i, !prof !132

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i45.i.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i45.i.i: ; preds = %bb.l, %bb.k
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !133
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = icmp eq i32 %i.bv, %i.cb
  br i1 %i.cc, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.i.i": ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i45.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.050.2.i.i, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = load i32, ptr %3, align 4
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.i.i", %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i.i45.i.i
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit31.i.i"
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i, i64 12
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit22": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit34.i.i"
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i, i64 24
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit24": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit37.i.i"
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i, i64 36
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit.i.i", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit22", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit24", %._crit_edge.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.thread.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.050.1.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i" ], [ %1, %._crit_edge.i.i ], [ %.sroa.050.0.lcssa.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit40.i.i" ], [ %1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.thread.i.i" ], [ %.sroa.050.2.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit46.i.i" ], [ %i.cj, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit24" ], [ %i.ch, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit" ], [ %i.ci, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen15ArrayValueEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_L15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EEET_SO_SO_T0_.exit.loopexit.split.loop.exit22" ], [ %.sroa.050.069.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4Luau7CodeGenL15constPropInInstERNS3_14ConstPropStateERNS3_9IrBuilderERNS3_10IrFunctionERNS3_7IrBlockERNS3_6IrInstEjE3$_0EclINS_17__normal_iteratorIPNS3_15ArrayValueEntryESt6vectorISI_SaISI_EEEEEEbT_.exit.i.i" ]
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !315
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store ptr %i.f, ptr %i.a, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !161    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 768614336404564650)
  %i.p = select i1 %i.n, i64 768614336404564650, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !315
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !315, !alias.scope !464
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !161
  store ptr %i.v, ptr %i.a, align 8, !tbaa !202
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !162
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4Luau7CodeGen14ConstPropState30getPreviousVersionedLoadForTagEhNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %2, 4
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = icmp ugt i32 %2, 4095
  br i1 %i.c, label %bb.b, label %_ZNKSt6bitsetILm256EE4testEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %i.b, i64 noundef 256) #24
  unreachable

_ZNKSt6bitsetILm256EE4testEm.exit:                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.g = lshr i64 %i.b, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !181
  %i.j = and i64 %i.b, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not74 = icmp eq i64 %i.l, 0
  br i1 %.not74, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit
  switch i8 %1, label %bb.h [
    i8 1, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 4, i32 %2) ; 2 uses
  %.not41.not = icmp eq ptr %i.m, null
  br i1 %.not41.not, label %.thread, label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 3, i32 %2) ; 2 uses
  %.not40.not = icmp eq ptr %i.n, null
  br i1 %.not40.not, label %.thread, label %.thread.sink.split

bb.f:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 5, i32 %2) ; 2 uses
  %.not39.not = icmp eq ptr %i.o, null
  br i1 %.not39.not, label %.thread, label %.thread.sink.split

bb.g:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 6, i32 %2) ; 2 uses
  %.not38.not = icmp eq ptr %i.p, null
  br i1 %.not38.not, label %.thread, label %.thread.sink.split

bb.h:                                             ; preds = %bb.c
  %i.q = tail call noundef zeroext i1 @_ZN4Luau7CodeGen5isGCOEh(i8 noundef zeroext %1)
  br i1 %i.q, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 2, i32 %2) ; 2 uses
  %.not.not = icmp eq ptr %i.r, null
  br i1 %.not.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink81 = phi ptr [ %i.p, %bb.g ], [ %i.o, %bb.f ], [ %i.n, %bb.e ], [ %i.m, %bb.d ], [ %i.r, %bb.i ]
  %.sink = phi i64 [ 6, %bb.g ], [ 5, %bb.f ], [ 3, %bb.e ], [ 4, %bb.d ], [ 2, %bb.i ]
  %i.s = load i32, ptr %.sink81, align 4, !tbaa !167
  %.sroa.22.0.insert.ext.i54 = zext i32 %i.s to i64
  %.sroa.22.0.insert.shift.i55 = shl nuw i64 %.sroa.22.0.insert.ext.i54, 32
  %.sroa.0.0.insert.insert.i57 = or disjoint i64 %.sroa.22.0.insert.shift.i55, %.sink
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %_ZNKSt6bitsetILm256EE4testEm.exit, %bb.h
  %.sroa.031.5 = phi i64 [ -4294967296, %bb.e ], [ -4294967296, %bb.d ], [ -4294967296, %_ZNKSt6bitsetILm256EE4testEm.exit ], [ -4294967296, %bb.h ], [ -4294967296, %bb.i ], [ -4294967296, %bb.g ], [ -4294967296, %bb.f ], [ %.sroa.0.0.insert.insert.i57, %.thread.sink.split ]
  ret i64 %.sroa.031.5
}

declare void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState7saveTagENS0_4IrOpEh(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 15
  switch i32 %i.a, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread [
    i32 6, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !136
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d)
  store i32 %spec.select.i, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.f
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.i = lshr i32 %1, 4                           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !187
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !167  ; 2 uses
  %i.o = icmp eq i32 %i.i, %i.n
  br i1 %i.o, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !188
  %i.r = add i64 %i.q, -1                         ; 3 uses
  %i.s = zext nneg i32 %i.i to i64
  %i.t = and i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !150
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.01828.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.z, %bb.h ]
  %.01927.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.01927.i.i.i.i ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !167  ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.i
  br i1 %i.x, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.w, %i.n
  br i1 %i.y, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add i64 %.01828.i.i.i.i, 1               ; 3 uses
  %i.aa = add i64 %i.z, %.01927.i.i.i.i
  %i.ab = and i64 %i.aa, %i.r
  %.not.i.i.i.i = icmp ugt i64 %i.z, %i.r
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.f, !llvm.loop !4

_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !268
  %i.af = load i8, ptr %i.ac, align 4, !tbaa !269 ; 2 uses
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !143
  %i.ak = icmp ult i32 %i.ae, %i.aj
  br i1 %i.ak, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i
  %i.al = zext i8 %i.af to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !136
  %..i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.al)
  store i32 %..i, ptr %i.am, align 8, !tbaa !136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ag
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit: ; preds = %bb.i, %bb.b
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.ap, %bb.i ] ; 3 uses
  %i.aq = load i8, ptr %.1.i, align 4, !tbaa !142
  %.not7 = icmp eq i8 %i.aq, %2
  br i1 %.not7, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit
  store i8 %2, ptr %.1.i, align 4, !tbaa !142
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !143
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !143
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread: ; preds = %bb.h, %bb.g, %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i, %bb.c, %bb.d, %bb.a, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit, %bb.j
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen14ConstPropState28invalidateTableStoreLocationENS0_6IrInstENS0_4IrOpEh:bb.a
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = sdiv exact i64 %i.dt, 12
  %i.dv = icmp ult i64 %.1, %i.du
  br i1 %i.dv, label %.lr.ph, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, !llvm.loop !470

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit: ; preds = %bb.w, %bb.q, %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit, %bb.k, %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit.thread, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.a, %._crit_edge
  ret void
}

declare noundef zeroext i1 @_ZN4Luau7CodeGen5isGCOEh(i8 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState23forwardTableStoreToLoadERNS0_6IrInstENS0_4IrOpEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %1, i32 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !130
  switch i8 %i.a, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE9push_backEOS2_.exit [
    i8 10, label %bb.b
    i8 9, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6                   ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !200  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3336 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !201  ; 4 uses
  %i.p = mul i64 %i.o, 3
  %i.q = lshr i64 %i.p, 2
  %.not.i.i = icmp ult i64 %i.m, %i.q
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.t = load i32, ptr %i.s, align 8, !tbaa !167  ; 2 uses
  %i.u = icmp eq i32 %i.t, %i.k
  br i1 %i.u, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add i64 %i.o, -1                         ; 2 uses
  %i.w = and i64 %i.j, 4294967295
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !163
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.01832.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ac, %bb.h ]
  %.pn = phi i64 [ %i.w, %bb.e ], [ %i.ad, %bb.h ]
  %.01931.i.i.i = and i64 %.pn, %i.v              ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01931.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !167  ; 2 uses
  %i.aa = icmp eq i32 %i.z, %i.k
  br i1 %i.aa, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i32 %i.z, %i.t
  br i1 %i.ab, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.ad = add i64 %i.ac, %.01931.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.v
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.f, !llvm.loop !10

.loopexit.i.i:                                    ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !201
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.f, %.loopexit.i.i, %bb.b
  %i.ae = phi i64 [ %.pre.i, %.loopexit.i.i ], [ %i.o, %bb.b ], [ %i.o, %bb.f ]
  %i.af = add i64 %i.ae, -1                       ; 3 uses
  %i.ag = and i64 %i.j, 4294967295
  %i.ah = and i64 %i.ag, %i.af                    ; 3 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !163 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !167 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.am = load i32, ptr %i.al, align 4, !tbaa !167 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.ak
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.ah, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.02134.i.lcssa5.i
  store i32 %i.k, ptr %i.ao, align 4, !tbaa !313
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !200
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.l, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, %bb.i
  %i.ar = phi i32 [ %i.ax, %bb.i ], [ %i.am, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.av, %bb.i ], [ %i.ah, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.at, %bb.i ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %i.as = icmp eq i32 %i.ar, %i.k
  br i1 %i.as, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.at = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.au = add i64 %i.at, %.02134.i7.i
  %i.av = and i64 %i.au, %i.af                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.at, %i.af
  tail call void @llvm.assume(i1 %.not.i3.i)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !167 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, %i.ak
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %i.az = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %3, ptr %i.bb, align 4, !tbaa !167
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %bb.a
  %i.bc = tail call i32 @_ZN4Luau7CodeGen14ConstPropState28getCombinedArrayLoadOffsetOpERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %1, i32 %2) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !129
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 6
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !202 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3376 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !162
  %.not.i.i9 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i.i9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !167
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !52
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !167
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !202
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE9push_backEOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.bd, align 8, !tbaa !161 ; 5 uses
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.m, label %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.by = sdiv exact i64 %i.bw, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 768614336404564650)
  %i.cc = select i1 %i.ca, i64 768614336404564650, i64 %i.cb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cd = mul nuw nsw i64 %i.cc, 12
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #25 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw ; 3 uses
  store i32 %i.bm, ptr %i.cf, align 4, !tbaa !167
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.bc, ptr %.sroa.5.0..sroa_idx11, align 4, !tbaa !52
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %3, ptr %.sroa.6.0..sroa_idx13, align 4, !tbaa !167
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %i.ce, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %i.bt, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !315, !alias.scope !474
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZNKSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !162
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cl) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ce, ptr %i.bd, align 8, !tbaa !161
  store ptr %i.ci, ptr %i.bn, align 8, !tbaa !202
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cm, ptr %i.bp, align 8, !tbaa !162
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.k, %bb.a, %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit
  ret void
}

declare noundef zeroext i1 @_ZN4Luau7CodeGen7compareEddNS0_11IrConditionE(double noundef, double noundef, i8 noundef zeroext) local_unnamed_addr #10

declare i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7CodeGen14ConstPropState31substituteOrRecordVmUpvalueLoadERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %.not.i.not = icmp eq i32 %i.d, 0
  br i1 %.not.i.not, label %bb.b, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !133
  %.sroa.02.0.copyload = load i32, ptr %i.e, align 4, !tbaa !52
  %i.f = lshr i32 %.sroa.02.0.copyload, 4         ; 3 uses
  %i.g = trunc i32 %i.f to i8                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.l = load i8, ptr %i.k, align 8, !tbaa !52    ; 2 uses
  %i.m = icmp eq i8 %i.l, %i.g
  br i1 %i.m, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3304
  %i.o = load i64, ptr %i.n, align 8, !tbaa !271
  %i.p = add i64 %i.o, -1                         ; 3 uses
  %.mask = and i32 %i.f, 255
  %i.q = zext nneg i32 %.mask to i64
  %i.r = and i64 %i.p, %i.q
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.x, %bb.g ]
  %.01931.i.i = phi i64 [ %i.r, %bb.d ], [ %i.z, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01931.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52    ; 2 uses
  %i.v = icmp eq i8 %i.u, %i.g
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i8 %i.u, %i.l
  br i1 %i.w, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add i64 %.01832.i.i, 1                   ; 3 uses
  %i.y = add i64 %i.x, %.01931.i.i
  %i.z = and i64 %i.y, %i.p
  %.not.i.i = icmp ugt i64 %i.x, %i.p
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread, label %bb.e, !llvm.loop !12

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01931.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !167 ; 2 uses
  %.not13 = icmp eq i32 %i.ac, -1
  br i1 %.not13, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.af = shl i32 %i.ac, 4
  %i.ag = or disjoint i32 %i.af, 4
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.ae, ptr noundef nonnull align 8 dereferenceable(59) %1, i32 %i.ag)
  br label %bb.r

_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, %bb.c, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !129
  %i.al = ptrtoint ptr %1 to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 6
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !131
  %.not.i15.not = icmp eq i32 %i.aq, 0
  br i1 %.not.i15.not, label %bb.j, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit16, !prof !132

bb.j:                                             ; preds = %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !133
  %.sroa.0.0.copyload.pre = load i32, ptr %.pre, align 4, !tbaa !52
  %.pre33 = load i64, ptr %i.h, align 8, !tbaa !270
  %.pre34 = lshr i32 %.sroa.0.0.copyload.pre, 4   ; 2 uses
  %.pre35 = trunc i32 %.pre34 to i8
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit16

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit16:     ; preds = %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread, %bb.j
  %.pre-phi36 = phi i8 [ %i.g, %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread ], [ %.pre35, %bb.j ] ; 4 uses
  %.pre-phi = phi i32 [ %i.f, %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread ], [ %.pre34, %bb.j ] ; 2 uses
  %i.ar = phi i64 [ %i.i, %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE4findERKh.exit.thread ], [ %.pre33, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3304 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !271 ; 4 uses
  %i.au = mul i64 %i.at, 3
  %i.av = lshr i64 %i.au, 2
  %.not.i.i17 = icmp ult i64 %i.ar, %i.av
  br i1 %.not.i.i17, label %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit16
  %i.aw = icmp eq i64 %i.ar, 0
  br i1 %i.aw, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !52  ; 2 uses
  %i.az = icmp eq i8 %i.ay, %.pre-phi36
  br i1 %i.az, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add i64 %i.at, -1                       ; 3 uses
  %.mask25 = and i32 %.pre-phi, 255
  %i.bb = zext nneg i32 %.mask25 to i64
  %i.bc = and i64 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !164
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.01832.i.i.i = phi i64 [ 0, %bb.m ], [ %i.bi, %bb.p ]
  %.01931.i.i.i = phi i64 [ %i.bc, %bb.m ], [ %i.bk, %bb.p ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.01931.i.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !52  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, %.pre-phi36
  br i1 %i.bg, label %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = icmp eq i8 %i.bf, %i.ay
  br i1 %i.bh, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.bj = add i64 %i.bi, %.01931.i.i.i
  %i.bk = and i64 %i.bj, %i.ba
  %.not.i.i.i = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !12

.loopexit.i.i:                                    ; preds = %bb.p, %bb.o, %bb.l, %bb.k
  tail call void @_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %.pre.i = load i64, ptr %i.as, align 8, !tbaa !271
  br label %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.n, %.loopexit.i.i, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit16
  %i.bl = phi i64 [ %.pre.i, %.loopexit.i.i ], [ %i.at, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit16 ], [ %i.at, %bb.n ]
  %i.bm = add i64 %i.bl, -1                       ; 3 uses
  %.mask26 = and i32 %.pre-phi, 255
  %i.bn = zext nneg i32 %.mask26 to i64
  %i.bo = and i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !164 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !52  ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, %i.br
  br i1 %i.bu, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.q, %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.bo, %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i ], [ %i.cc, %bb.q ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.02134.i.lcssa5.i
  store i8 %.pre-phi36, ptr %i.bv, align 4, !tbaa !317
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !270
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.h, align 8, !tbaa !270
  br label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEEixERKh.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i, %bb.q
  %i.by = phi i8 [ %i.ce, %bb.q ], [ %i.bt, %_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE14rehash_if_fullERS4_.exit.i ]
end_hunk_2
begin_hunk_3_@_ZN4Luau7CodeGen14ConstPropState28substituteOrRecordBufferLoadERNS0_7IrBlockEjRNS0_6IrInstEh:bb.a
.lr.ph.preheader.i.i.i256:                        ; preds = %bb.bk
  store i32 0, ptr %i.il, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i257

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i257: ; preds = %.lr.ph.preheader.i.i.i256, %bb.bk
  %i.is = load ptr, ptr %i.ik, align 8, !tbaa !133 ; 2 uses
  %.not.i.i258 = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i258, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit259, label %bb.bl

bb.bl:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i257
  call void @_ZdlPv(ptr noundef %i.is) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit259

_ZN4Luau7CodeGen6IrInstD2Ev.exit259:              ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i257, %bb.bl
  call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %2)
  br label %.critedge164

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i249
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i260 = load i32, ptr %i.il, align 8, !tbaa !131
  %.not1.i.i.i261 = icmp eq i32 %.promoted.i.i.i260, 0
  br i1 %.not1.i.i.i261, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263, label %.lr.ph.preheader.i.i.i262

.lr.ph.preheader.i.i.i262:                        ; preds = %bb.bm
  store i32 0, ptr %i.il, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263: ; preds = %.lr.ph.preheader.i.i.i262, %bb.bm
  %i.iu = load ptr, ptr %i.ik, align 8, !tbaa !133 ; 2 uses
  %.not.i.i264 = icmp eq ptr %i.iu, %i.in
  br i1 %.not.i.i264, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit197, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit197.sink.split

_ZN4Luau7CodeGen29producesDirtyHighRegisterBitsENS0_5IrCmdE.exit: ; preds = %bb.bj, %bb.bi
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.ia, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 %.sroa.012.0.copyload)
  br label %.critedge164

bb.bn:                                            ; preds = %bb.ai
  %i.iv = load i8, ptr %.sroa.0290.0308, align 4, !tbaa !479
  %i.iw = icmp eq i8 %i.iv, -46
  br i1 %i.iw, label %bb.bo, label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.ix = load ptr, ptr %i.h, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0290.0308, i64 8
  %.sroa.09.0.copyload = load i32, ptr %i.iy, align 4, !tbaa !52
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.ix, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 %.sroa.09.0.copyload)
  br label %.critedge164

bb.bp:                                            ; preds = %bb.ai
  %i.iz = load i8, ptr %.sroa.0290.0308, align 4, !tbaa !479
  %i.ja = icmp eq i8 %i.iz, -44
  br i1 %i.ja, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.jb = load ptr, ptr %i.h, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0290.0308, i64 8
  %.sroa.08.0.copyload = load i32, ptr %i.jc, align 4, !tbaa !52
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.jb, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 %.sroa.08.0.copyload)
  br label %.critedge164

bb.br:                                            ; preds = %bb.ai
  %i.jd = load i8, ptr %.sroa.0290.0308, align 4, !tbaa !479
  %i.je = icmp eq i8 %i.jd, -42
  br i1 %i.je, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.jf = load ptr, ptr %i.h, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0290.0308, i64 8
  %.sroa.07.0.copyload = load i32, ptr %i.jg, align 4, !tbaa !52
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.jf, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 %.sroa.07.0.copyload)
  br label %.critedge164

bb.bt:                                            ; preds = %bb.ah
  %i.jh = load i8, ptr %.sroa.0290.0308, align 4, !tbaa !479
  %i.ji = load i8, ptr %3, align 8, !tbaa !130
  %i.jj = icmp eq i8 %i.jh, %i.ji
  br i1 %i.jj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jk = load ptr, ptr %i.h, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0290.0308, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.jl, align 4, !tbaa !52
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.jk, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 %.sroa.0.0.copyload)
  br label %.critedge164

bb.bv:                                            ; preds = %bb.ai, %bb.br, %bb.bp, %bb.bn, %bb.bh, %bb.bb, %bb.av, %bb.ap, %bb.aj, %bb.bt, %bb.ag, %bb.af, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit191
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0290.0308, i64 16 ; 2 uses
  %.not296 = icmp eq ptr %i.jm, %i.dp
  br i1 %.not296, label %.critedge167, label %.lr.ph

_ZN4Luau7CodeGen6IrInstD2Ev.exit197.sink.split:   ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i246, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i229, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i212, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i195
  %.sink = phi ptr [ %i.hn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i246 ], [ %i.gt, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i229 ], [ %i.fr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i212 ], [ %i.ex, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i195 ], [ %i.iu, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263 ]
  %.pn.ph = phi { ptr, i32 } [ %i.hm, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i246 ], [ %i.gs, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i229 ], [ %i.fq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i212 ], [ %i.ew, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i195 ], [ %i.it, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263 ]
  call void @_ZdlPv(ptr noundef %.sink) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit197

_ZN4Luau7CodeGen6IrInstD2Ev.exit197:              ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit197.sink.split, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i246, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i229, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i212, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i195
  %.pn = phi { ptr, i32 } [ %i.fq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i212 ], [ %i.gs, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i229 ], [ %i.hm, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i246 ], [ %i.it, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i263 ], [ %i.ew, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i195 ], [ %.pn.ph, %_ZN4Luau7CodeGen6IrInstD2Ev.exit197.sink.split ]
  resume { ptr, i32 } %.pn

.critedge167:                                     ; preds = %bb.bv, %bb.ad
  %i.jn = load i8, ptr %3, align 8, !tbaa !130    ; 2 uses
  %i.jo = load i32, ptr %i.b, align 8, !tbaa !131
  %.not.i266.not = icmp eq i32 %i.jo, 0
  br i1 %.not.i266.not, label %bb.bw, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit267, !prof !132

bb.bw:                                            ; preds = %.critedge167
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit267

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit267:    ; preds = %.critedge167, %bb.bw
  %i.jp = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !52 ; 2 uses
  %i.jr = load ptr, ptr %i.h, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !129
  %i.ju = ptrtoint ptr %3 to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %sh.diff = lshr i64 %i.jw, 2
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.jx = and i32 %tr.sh.diff, -16
  %i.jy = or disjoint i32 %i.jx, 4                ; 2 uses
  %i.jz = load ptr, ptr %i.do, align 8, !tbaa !203 ; 11 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 3568 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !156
  %.not.i268 = icmp eq ptr %i.jz, %i.kb
  br i1 %.not.i268, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit267
  store i8 %i.jn, ptr %i.jz, align 4, !tbaa !322
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 1
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !52
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  store i8 %i.ac, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !52
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 3
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !323
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i32 %i.jq, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !52
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %i.jy, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !52
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 %i.t, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !167
  %i.kc = load ptr, ptr %i.do, align 8, !tbaa !203
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store ptr %i.kd, ptr %i.do, align 8, !tbaa !203
  br label %.critedge164

bb.by:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit267
  %i.ke = load ptr, ptr %i.dm, align 8, !tbaa !155 ; 5 uses
  %i.kf = ptrtoint ptr %i.jz to i64
  %i.kg = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kh = sub i64 %i.kf, %i.kg                    ; 3 uses
  %i.ki = icmp eq i64 %i.kh, 9223372036854775792
  br i1 %i.ki, label %bb.bz, label %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.by
  %i.kj = ashr exact i64 %i.kh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kj, i64 1)
  %i.kk = add nsw i64 %.sroa.speculated.i.i.i, %i.kj ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.kj
  %i.km = tail call i64 @llvm.umin.i64(i64 %i.kk, i64 576460752303423487)
  %i.kn = select i1 %i.kl, i64 576460752303423487, i64 %i.km ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ko = shl nuw nsw i64 %i.kn, 4
  %i.kp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #25 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kh ; 7 uses
  store i8 %i.jn, ptr %i.kq, align 4, !tbaa !322
  %.sroa.6.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %4, ptr %.sroa.6.0..sroa_idx271, align 1, !tbaa !52
  %.sroa.7.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i8 %i.ac, ptr %.sroa.7.0..sroa_idx273, align 2, !tbaa !52
  %.sroa.8.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  store i8 0, ptr %.sroa.8.0..sroa_idx275, align 1, !tbaa !323
  %.sroa.9.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store i32 %i.jq, ptr %.sroa.9.0..sroa_idx277, align 4, !tbaa !52
  %.sroa.10.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i32 %i.jy, ptr %.sroa.10.0..sroa_idx279, align 4, !tbaa !52
  %.sroa.11.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 %i.t, ptr %.sroa.11.0..sroa_idx281, align 4, !tbaa !167
  %.not10.i.i.i.i.i = icmp eq ptr %i.ke, %i.jz
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ks, %.lr.ph.i.i.i.i.i ], [ %i.kp, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i ], [ %i.ke, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !324, !alias.scope !480
  %i.kr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kr, %i.jz
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kp, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ks, %.lr.ph.i.i.i.i.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ku = load ptr, ptr %i.ka, align 8, !tbaa !156
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = sub i64 %i.kv, %i.kg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kw) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ca, %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.kp, ptr %i.dm, align 8, !tbaa !155
  store ptr %i.kt, ptr %i.do, align 8, !tbaa !203
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %i.kn
  store ptr %i.kx, ptr %i.ka, align 8, !tbaa !156
  br label %.critedge164

.critedge164:                                     ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bx, %_ZN4Luau7CodeGen29producesDirtyHighRegisterBitsENS0_5IrCmdE.exit, %bb.bg, %bb.ba, %bb.au, %bb.ao, %bb.bs, %bb.bq, %bb.bo, %_ZN4Luau7CodeGen6IrInstD2Ev.exit242, %_ZN4Luau7CodeGen6IrInstD2Ev.exit225, %_ZN4Luau7CodeGen6IrInstD2Ev.exit208, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %bb.bu, %_ZN4Luau7CodeGen6IrInstD2Ev.exit259, %bb.r, %.critedge158, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState24forwardBufferStoreToLoadERNS0_6IrInstENS0_5IrCmdEh(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306, !nonnull !123, !align !307 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 24 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i = icmp ugt i32 %i.e, 3
  br i1 %.not.i, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.thread, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, !prof !171

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.thread: ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.034.0.copyload149 = load i32, ptr %i.g, align 4, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = lshr i32 %.sroa.034.0.copyload149, 4
  %i.j = zext nneg i32 %i.i to i64
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !276
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit69

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.a
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 4)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !131
  %i.o = icmp ugt i32 %.pre, 1
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.sroa.034.0.copyload = load i32, ptr %i.q, align 4, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = lshr i32 %.sroa.034.0.copyload, 4
  %i.t = zext nneg i32 %i.s to i64
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !276
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !52    ; 2 uses
  br i1 %i.o, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit69, label %bb.b, !prof !297

bb.b:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 2)
  %.pre118 = load ptr, ptr %i.c, align 8, !tbaa !133
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit69

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit69:     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.thread, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, %bb.b
  %i.y = phi i8 [ %i.x, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit ], [ %i.x, %bb.b ], [ %i.n, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.thread ] ; 4 uses
  %i.z = phi ptr [ %i.p, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit ], [ %.pre118, %bb.b ], [ %i.f, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.thread ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = and i32 %i.ab, 15
  %.not = icmp eq i32 %i.ac, 2
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit69
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !203 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !155 ; 2 uses
  %.not116 = icmp eq ptr %i.af, %i.ag
  br i1 %.not116, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE9push_backERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.ah = phi ptr [ %i.ar, %bb.e ], [ %i.ag, %.preheader ] ; 2 uses
  %i.ai = phi ptr [ %i.as, %bb.e ], [ %i.af, %.preheader ] ; 2 uses
  %.0112 = phi i64 [ %.1, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !321
  %i.am = icmp eq i8 %i.al, %i.y
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !324
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !203
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 2 uses
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !203
  %.pre119 = load ptr, ptr %i.ad, align 8, !tbaa !155
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.aq = add nuw i64 %.0112, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = phi ptr [ %.pre119, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  %i.as = phi ptr [ %i.ap, %bb.c ], [ %i.ai, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %.0112, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = icmp ult i64 %.1, %i.aw
  br i1 %i.ax, label %.lr.ph, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE9push_backERKS2_.exit, !llvm.loop !481

bb.f:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit69
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.az = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i70 = icmp ugt i32 %i.az, 1
  br i1 %.not.i70, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit71, label %bb.g, !prof !171

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 2)
  %.pre120 = load ptr, ptr %i.c, align 8, !tbaa !133
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre120, i64 4
  %.sroa.024.0.copyload.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit71

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit71:     ; preds = %bb.f, %bb.g
  %.sroa.024.0.copyload = phi i32 [ %i.ab, %bb.f ], [ %.sroa.024.0.copyload.pre, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bb = lshr i32 %.sroa.024.0.copyload, 4
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !276
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !52 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 9 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !203 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !155 ; 2 uses
  %.not117 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not117, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit71
  %i.bl = zext i8 %3 to i32
  %i.bm = add nsw i32 %i.bg, %i.bl
  br label %bb.i

._crit_edge:                                      ; preds = %bb.r, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit71
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i72 = icmp ugt i32 %i.bn, 2
  br i1 %.not.i72, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73.thread, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73, !prof !171

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73.thread: ; preds = %._crit_edge
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.06.0.copyload151 = load i32, ptr %i.bp, align 4, !tbaa !52 ; 2 uses
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73:     ; preds = %._crit_edge
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
  %.pre126 = load i32, ptr %i.d, align 8, !tbaa !131
  %i.bq = icmp ugt i32 %.pre126, 2
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.06.0.copyload = load i32, ptr %i.bs, align 4, !tbaa !52 ; 3 uses
  br i1 %i.bq, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75, label %bb.h, !prof !297

bb.h:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
  %.pre127 = load ptr, ptr %i.c, align 8, !tbaa !133
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %.pre127, i64 8
  %.pre129 = load i32, ptr %.phi.trans.insert128, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75:     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73.thread, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73, %bb.h
  %.sroa.06.0.copyload152 = phi i32 [ %.sroa.06.0.copyload, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73 ], [ %.sroa.06.0.copyload, %bb.h ], [ %.sroa.06.0.copyload151, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73.thread ] ; 2 uses
  %i.bt = phi i32 [ %.sroa.06.0.copyload, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73 ], [ %.pre129, %bb.h ], [ %.sroa.06.0.copyload151, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit73.thread ] ; 4 uses
  %i.bu = and i32 %i.bt, 15
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.s, label %bb.z

bb.i:                                             ; preds = %.lr.ph114, %bb.r
  %i.bw = phi ptr [ %i.bj, %.lr.ph114 ], [ %i.dm, %bb.r ]
  %i.bx = phi ptr [ %i.bk, %.lr.ph114 ], [ %i.dn, %bb.r ]
  %.057113 = phi i64 [ 0, %.lr.ph114 ], [ %.3, %bb.r ] ; 5 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.057113 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !320 ; 2 uses
  %.not63.not = icmp sgt i32 %i.bm, %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.ca, %i.cd
  %i.cf = icmp slt i32 %i.bg, %i.ce
  %i.cg = select i1 %.not63.not, i1 %i.cf, i1 false
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 2
end_hunk_3
begin_hunk_4_@_ZN4Luau7CodeGen14ConstPropState24forwardBufferStoreToLoadERNS0_6IrInstENS0_5IrCmdEh:bb.a
  %i.dj = load ptr, ptr %i.bi, align 8, !tbaa !203
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -16 ; 2 uses
  store ptr %i.dk, ptr %i.bi, align 8, !tbaa !203
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.dl = add nuw i64 %.057113, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %i.dm = phi ptr [ %i.bw, %bb.q ], [ %.pre125, %bb.o ], [ %i.dk, %bb.p ] ; 2 uses
  %.3 = phi i64 [ %i.dl, %bb.q ], [ %i.de, %bb.o ], [ %.057113, %bb.p ] ; 2 uses
  %i.dn = load ptr, ptr %i.bh, align 8, !tbaa !155 ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 4
  %i.ds = icmp ult i64 %.3, %i.dr
  br i1 %i.ds, label %bb.i, label %._crit_edge

bb.s:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75
  switch i8 %2, label %bb.z [
    i8 -54, label %bb.t
    i8 -51, label %bb.v
    i8 -46, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.dt = load ptr, ptr %0, align 8, !tbaa !314, !nonnull !123, !align !307
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.dv = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i80 = icmp ugt i32 %i.dv, 2
  br i1 %.not.i80, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit81, label %bb.u, !prof !171

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
  %.pre136 = load ptr, ptr %i.c, align 8, !tbaa !133
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.pre136, i64 8
  %.sroa.04.0.copyload.pre = load i32, ptr %.phi.trans.insert137, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit81

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit81:     ; preds = %bb.t, %bb.u
  %.sroa.04.0.copyload = phi i32 [ %i.bt, %bb.t ], [ %.sroa.04.0.copyload.pre, %bb.u ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dx = lshr i32 %.sroa.04.0.copyload, 4
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !276
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !52
  %i.ed = shl i32 %i.ec, 24
  %i.ee = ashr exact i32 %i.ed, 24
  %i.ef = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constIntEi(ptr noundef nonnull align 8 dereferenceable(1056) %i.dt, i32 noundef %i.ee)
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.eg = load ptr, ptr %0, align 8, !tbaa !314, !nonnull !123, !align !307
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.ei = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i82 = icmp ugt i32 %i.ei, 2
  br i1 %.not.i82, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit83, label %bb.w, !prof !171

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !133
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %.pre133, i64 8
  %.sroa.02.0.copyload.pre = load i32, ptr %.phi.trans.insert134, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit83

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit83:     ; preds = %bb.v, %bb.w
  %.sroa.02.0.copyload = phi i32 [ %i.bt, %bb.v ], [ %.sroa.02.0.copyload.pre, %bb.w ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ek = lshr i32 %.sroa.02.0.copyload, 4
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !276
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !52
  %i.eq = shl i32 %i.ep, 16
  %i.er = ashr exact i32 %i.eq, 16
  %i.es = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constIntEi(ptr noundef nonnull align 8 dereferenceable(1056) %i.eg, i32 noundef %i.er)
  br label %bb.z

bb.x:                                             ; preds = %bb.s
  %i.et = load ptr, ptr %0, align 8, !tbaa !314, !nonnull !123, !align !307
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.ev = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i84 = icmp ugt i32 %i.ev, 2
  br i1 %.not.i84, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit85, label %bb.y, !prof !171

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
  %.pre130 = load ptr, ptr %i.c, align 8, !tbaa !133
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %.pre130, i64 8
  %.sroa.0.0.copyload.pre = load i32, ptr %.phi.trans.insert131, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit85

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit85:     ; preds = %bb.x, %bb.y
  %.sroa.0.0.copyload = phi i32 [ %i.bt, %bb.x ], [ %.sroa.0.0.copyload.pre, %bb.y ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ex = lshr i32 %.sroa.0.0.copyload, 4
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !276
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !52
  %i.fd = fptrunc double %i.fc to float
  %i.fe = fpext float %i.fd to double
  %i.ff = tail call i32 @_ZN4Luau7CodeGen9IrBuilder11constDoubleEd(ptr noundef nonnull align 8 dereferenceable(1056) %i.et, double noundef %i.fe)
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit81, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit85, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit83, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75
  %.sroa.06.0 = phi i32 [ %i.ef, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit81 ], [ %i.es, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit83 ], [ %i.ff, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit85 ], [ %.sroa.06.0.copyload152, %bb.s ], [ %.sroa.06.0.copyload152, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit75 ] ; 2 uses
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !131
  %.not.i86.not = icmp eq i32 %i.fg, 0
  br i1 %.not.i86.not, label %bb.aa, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit87, !prof !132

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit87

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit87:     ; preds = %bb.z, %bb.aa
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !52 ; 2 uses
  %i.fj = load ptr, ptr %i.bi, align 8, !tbaa !203 ; 11 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3568 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !156
  %.not.i88 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i88, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit87
  store i8 %2, ptr %i.fj, align 4, !tbaa !322
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store i8 %3, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !52
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !52
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !323
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.fi, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !52
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 %.sroa.06.0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !52
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 %i.bg, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !167
  %i.fm = load ptr, ptr %i.bi, align 8, !tbaa !203
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.bi, align 8, !tbaa !203
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE9push_backERKS2_.exit

bb.ac:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit87
  %i.fo = load ptr, ptr %i.bh, align 8, !tbaa !155 ; 5 uses
  %i.fp = ptrtoint ptr %i.fj to i64
  %i.fq = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775792
  br i1 %i.fs, label %bb.ad, label %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.ft = ashr exact i64 %i.fr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fu, i64 576460752303423487)
  %i.fx = select i1 %i.fv, i64 576460752303423487, i64 %i.fw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fy = shl nuw nsw i64 %i.fx, 4
  %i.fz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #25 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fr ; 7 uses
  store i8 %2, ptr %i.ga, align 4, !tbaa !322
  %.sroa.6.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 %3, ptr %.sroa.6.0..sroa_idx91, align 1, !tbaa !52
  %.sroa.7.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx93, align 2, !tbaa !52
  %.sroa.8.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  store i8 1, ptr %.sroa.8.0..sroa_idx95, align 1, !tbaa !323
  %.sroa.9.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 %i.fi, ptr %.sroa.9.0..sroa_idx97, align 4, !tbaa !52
  %.sroa.10.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i32 %.sroa.06.0, ptr %.sroa.10.0..sroa_idx99, align 4, !tbaa !52
  %.sroa.11.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 %i.bg, ptr %.sroa.11.0..sroa_idx101, align 4, !tbaa !167
  %.not10.i.i.i.i.i = icmp eq ptr %i.fo, %i.fj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i ], [ %i.fz, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i ], [ %i.fo, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !324, !alias.scope !486
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, %i.fj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fz, %_ZNKSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gc, %.lr.ph.i.i.i.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ge = load ptr, ptr %i.fk, align 8, !tbaa !156
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.gg) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fz, ptr %i.bh, align 8, !tbaa !155
  store ptr %i.gd, ptr %i.bi, align 8, !tbaa !203
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fx
  store ptr %i.gh, ptr %i.fk, align 8, !tbaa !156
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.e, %.preheader, %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL20handleBuiltinEffectsERNS0_14ConstPropStateE19LuauBuiltinFunctionji(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit [
    i32 61, label %bb.e
    i32 49, label %bb.d
    i32 52, label %bb.c
    i32 132, label %bb.b
    i32 77, label %bb.b
    i32 75, label %bb.b
    i32 73, label %bb.b
    i32 70, label %bb.b
    i32 67, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203
  %.not.i.i1.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i1.i, label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !203
  br label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState14invalidateHeapEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState14invalidateHeapEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState14invalidateHeapEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit

_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %bb.e, %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.j = load i32, ptr %i.i, align 8, !tbaa !136  ; 3 uses
  %.not4.i = icmp sgt i32 %2, %i.j
  br i1 %.not4.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = sext i32 %2 to i64                       ; 3 uses
  %i.m = add i32 %i.j, 1                          ; 2 uses
  %i.n = sub i32 %i.m, %2
  %xtraiter = and i32 %i.n, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.l ; 3 uses
  store i8 -1, ptr %i.o, align 4, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !143
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !143
  %indvars.iv.next.i.prol = add nsw i64 %i.l, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.l, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.t = icmp eq i32 %i.j, %2
  br i1 %i.t, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  store i8 -1, ptr %i.u, align 4, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !143
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !143
  %i.z = getelementptr [12 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 12
  store i8 -1, ptr %i.aa, align 4, !tbaa !142
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  store i32 0, ptr %i.ab, align 4, !tbaa !52
  %i.ac = getelementptr i8, ptr %i.z, i64 20      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !143
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !143
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.m, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, label %.lr.ph.i.new, !llvm.loop !7

_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau7CodeGen14ConstPropState21getMaxInternalOverlapERSt6vectorINS0_19NumberedInstructionESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !159    ; 10 uses
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %2
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !301  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.e = and i64 %2, 7                            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 8, i64 %i.e
  %n.vec = sub i64 %2, %i.g                       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi89 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %i.x = load i32, ptr %i.p, align 4, !tbaa !300
  %i.y = load i32, ptr %i.q, align 4, !tbaa !300
  %i.z = load i32, ptr %i.r, align 4, !tbaa !300
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !300
  %i.ab = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 1
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 2
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 3
  %i.af = load i32, ptr %i.t, align 4, !tbaa !300
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !300
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !300
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !300
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = icmp uge <4 x i32> %i.ae, %broadcast.splat
  %i.ao = icmp uge <4 x i32> %i.am, %broadcast.splat
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = zext <4 x i1> %i.ao to <4 x i32>
  %i.ar = add <4 x i32> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <4 x i32> %vec.phi89, %i.aq         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !487
end_hunk_4
begin_hunk_5_@_ZN4Luau7CodeGen14ConstPropState21getMaxInternalOverlapERSt6vectorINS0_19NumberedInstructionESaIS3_EEm:bb.a
  %i.ch = load ptr, ptr %i.ax, align 8, !tbaa !172
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !151 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph55, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.cn = phi ptr [ %i.bd, %.lr.ph55 ], [ %i.dp, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.co = phi ptr [ %i.bc, %.lr.ph55 ], [ %i.dq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.cp = phi ptr [ %i.aw, %.lr.ph55 ], [ %i.dr, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %i.cq = phi ptr [ %.pre, %.lr.ph55 ], [ %i.ds, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.cr = phi ptr [ %i.az, %.lr.ph55 ], [ %i.dt, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.04154 = phi i64 [ %i.ba, %.lr.ph55 ], [ %i.du, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %.04154
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !167
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !167
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  store ptr %i.cv, ptr %i.ax, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %bb.c
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775804
  br i1 %i.cz, label %bb.f, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.da = ashr exact i64 %i.cy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 2305843009213693951)
  %i.de = select i1 %i.dc, i64 2305843009213693951, i64 %i.dd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #25 ; 5 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  %i.di = load i32, ptr %i.ct, align 4, !tbaa !167
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !167
  %i.dj = icmp sgt i64 %i.cy, 0
  br i1 %i.dj, label %bb.g, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 4 %i.cp, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.dl = load ptr, ptr %i.bj, align 8, !tbaa !152
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dn) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.dg, ptr %i.av, align 8, !tbaa !151
  store ptr %i.dk, ptr %i.ax, align 8, !tbaa !172
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de ; 2 uses
  store ptr %i.do, ptr %i.bj, align 8, !tbaa !152
  %.pre65 = load ptr, ptr %i.bb, align 8, !tbaa !198
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !159
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.dp = phi ptr [ %i.cn, %bb.d ], [ %.pre66, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 3 uses
  %i.dq = phi ptr [ %i.co, %bb.d ], [ %.pre65, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 3 uses
  %i.dr = phi ptr [ %i.cp, %bb.d ], [ %i.dg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.ds = phi ptr [ %i.cq, %bb.d ], [ %i.do, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.dt = phi ptr [ %i.cv, %bb.d ], [ %i.dk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.du = add nuw i64 %.04154, 1                  ; 2 uses
  %i.dv = ptrtoint ptr %i.dq to i64
  %i.dw = ptrtoint ptr %i.dp to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 12
  %i.dz = icmp ult i64 %i.du, %i.dy
  br i1 %i.dz, label %bb.c, label %._crit_edge56.loopexit, !llvm.loop !489

bb.i:                                             ; preds = %.lr.ph61, %bb.o
  %.060 = phi i64 [ 0, %.lr.ph61 ], [ %.1, %bb.o ] ; 5 uses
  %.03659 = phi i64 [ %i.ba, %.lr.ph61 ], [ %.137, %bb.o ] ; 4 uses
  %.258 = phi i32 [ %.038.lcssa, %.lr.ph61 ], [ %.3, %bb.o ] ; 3 uses
  %.04257 = phi i32 [ %.038.lcssa, %.lr.ph61 ], [ %.143, %bb.o ] ; 4 uses
  %i.ea = icmp ult i64 %.060, %i.cm
  br i1 %i.ea, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.o, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
  %.042.lcssa = phi i32 [ %.038.lcssa, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit ], [ %.143, %bb.o ], [ %.04257, %bb.i ]
  ret i32 %.042.lcssa

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.060
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !167 ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %.03659
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !301 ; 2 uses
  %i.eg = icmp eq i32 %i.ec, %i.ef
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eh = add nuw i64 %.03659, 1
  %i.ei = add nuw i64 %.060, 1
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ej = icmp ult i32 %i.ec, %i.ef
  br i1 %i.ej, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ek = add nsw i32 %.258, -1
  %i.el = add nuw i64 %.060, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.em = add nsw i32 %.258, 1                    ; 2 uses
  %i.en = add nuw i64 %.03659, 1
  %spec.select49 = tail call i32 @llvm.smax.i32(i32 %.04257, i32 %i.em)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.143 = phi i32 [ %.04257, %bb.k ], [ %.04257, %bb.m ], [ %spec.select49, %bb.n ] ; 2 uses
  %.3 = phi i32 [ %.258, %bb.k ], [ %i.ek, %bb.m ], [ %i.em, %bb.n ]
  %.137 = phi i64 [ %i.eh, %bb.k ], [ %.03659, %bb.m ], [ %i.en, %bb.n ] ; 2 uses
  %.1 = phi i64 [ %i.ei, %bb.k ], [ %i.el, %bb.m ], [ %.060, %bb.n ]
  %i.eo = icmp ult i64 %.137, %i.cf
  br i1 %i.eo, label %bb.i, label %.critedge, !llvm.loop !490
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !495
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store ptr %i.f, ptr %i.a, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !159    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 768614336404564650)
  %i.p = select i1 %i.n, i64 768614336404564650, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !495
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !495, !alias.scope !496
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !494

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !159
  store ptr %i.v, ptr %i.a, align 8, !tbaa !198
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !160
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare float @frexpf(float noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen14ConstPropState14invalidateHeapEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not5.i = icmp slt i32 %i.b, 0
  br i1 %.not5.i, label %_ZN4Luau7CodeGen14ConstPropState27invalidateCapturedRegistersEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306, !nonnull !123, !align !307
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = add nuw i32 %i.b, 1
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %exitcond.i = icmp eq i64 %indvars.iv.i, 256
  br i1 %exitcond.i, label %bb.c, label %_ZNKSt6bitsetILm256EE4testEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef 256, i64 noundef 256) #24
  unreachable

_ZNKSt6bitsetILm256EE4testEm.exit.i:              ; preds = %bb.b
  %i.h = lshr i64 %indvars.iv.i, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !181
  %i.k = and i64 %indvars.iv.i, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not4.i = icmp eq i64 %i.m, 0
  br i1 %.not4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  store i8 -1, ptr %i.n, align 4, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !143
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !143
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt6bitsetILm256EE4testEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond9.not.i, label %_ZN4Luau7CodeGen14ConstPropState27invalidateCapturedRegistersEv.exit, label %bb.b, !llvm.loop !497

_ZN4Luau7CodeGen14ConstPropState27invalidateCapturedRegistersEv.exit: ; preds = %bb.e, %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !270
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau7CodeGen14ConstPropState27invalidateCapturedRegistersEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3304
  %i.x = load i64, ptr %i.w, align 8, !tbaa !271  ; 5 uses
  %i.y = icmp ugt i64 %i.x, 32
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !164  ; 6 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef %i.z) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3320 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %xtraiter = and i64 %i.x, 3                     ; 3 uses
  %i.ab = icmp ult i64 %i.x, 4
  br i1 %i.ab, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.x, 60
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ad = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.ad, ptr %i.ac, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !167
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.ah, ptr %i.ag, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !167
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.al, ptr %i.ak, align 4, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 0, ptr %i.am, align 4, !tbaa !167
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.ap, ptr %i.ao, align 4, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store i32 0, ptr %i.aq, align 4, !tbaa !167
  %i.ar = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !5

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ar, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.av, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i.epil ; 2 uses
  %i.at = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.at, ptr %i.as, align 4, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !167
  %i.av = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !498

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  store i64 0, ptr %i.t, align 8, !tbaa !270
  br label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit

_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit: ; preds = %_ZN4Luau7CodeGen14ConstPropState27invalidateCapturedRegistersEv.exit, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3096
  store i8 0, ptr %i.aw, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext range(i8 -1, 12) i8 @_ZN4Luau7CodeGenL20tryGetTagForTypenameESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %0, ptr nofree readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i64 %0, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread [
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i51
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i55
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = xor i16 %i.a, 26990
  %i.c = getelementptr i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 108
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
end_hunk_5
begin_hunk_6_@_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %i.e, 1
  %i.h = add i32 %i.g, %i.e                       ; 2 uses
  %i.i = icmp ugt i32 %i.h, %1
  %i.j = add i32 %1, 4
  %.09.i = select i1 %i.i, i32 %i.h, i32 %i.j     ; 2 uses
  %i.k = zext i32 %.09.i to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !133    ; 6 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.p, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not11.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.r = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 %i.u
  %i.w = getelementptr i8, ptr %i.n, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.x ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.n, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !52
  %wide.load21 = load <4 x i32>, ptr %i.y, align 4, !tbaa !52
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %wide.load21, ptr %i.z, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %i.ab = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !52
  store i32 %i.ab, ptr %.013.i.i.i.i.i, align 4, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !585

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.n, %i.ae
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i
  tail call void @_ZdlPv(ptr noundef %i.n) #23
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, %bb.d
  %.pre = phi i32 [ %i.o, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i ], [ %.pre.pre, %bb.d ]
  store ptr %i.m, ptr %0, align 8, !tbaa !133
  store i32 %.09.i, ptr %i.d, align 4, !tbaa !144
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit, %bb.b
  %i.af = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit ], [ %i.b, %bb.b ] ; 2 uses
  %i.ag = icmp ult i32 %i.af, %1
  br i1 %i.ag, label %.lr.ph13.preheader, label %.loopexit

.lr.ph13.preheader:                               ; preds = %bb.e
  %i.ah = zext i32 %i.af to i64                   ; 4 uses
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ah
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.prol.loopexit, label %.lr.ph13.prol

.lr.ph13.prol:                                    ; preds = %.lr.ph13.preheader, %.lr.ph13.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph13.prol ], [ %i.ah, %.lr.ph13.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph13.prol ], [ 0, %.lr.ph13.preheader ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !133
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.prol
  store i32 0, ptr %i.ak, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph13.prol.loopexit, label %.lr.ph13.prol, !llvm.loop !586

.lr.ph13.prol.loopexit:                           ; preds = %.lr.ph13.prol, %.lr.ph13.preheader
  %indvars.iv.unr = phi i64 [ %i.ah, %.lr.ph13.preheader ], [ %indvars.iv.next.prol, %.lr.ph13.prol ]
  %i.al = sub nsw i64 %i.ah, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.loopexit, label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.prol.loopexit, %.lr.ph13
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph13 ], [ %indvars.iv.unr, %.lr.ph13.prol.loopexit ] ; 5 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !133
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 0, ptr %i.ao, align 4
  %i.ap = load ptr, ptr %0, align 8, !tbaa !133
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 0, ptr %i.ar, align 4
  %i.as = load ptr, ptr %0, align 8, !tbaa !133
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.au, align 4
  %i.av = load ptr, ptr %0, align 8, !tbaa !133
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.ax, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph13, !llvm.loop !587

.loopexit:                                        ; preds = %.lr.ph13.prol.loopexit, %.lr.ph13, %bb.a, %bb.e
  store i32 %1, ptr %i.a, align 8, !tbaa !131
  ret void
}

declare i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #10

declare void @_ZN4Luau7CodeGen9IrBuilder10beginBlockENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), i32) local_unnamed_addr #10

declare void @_ZN4Luau7CodeGen9IrBuilder5cloneESt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(34) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.f, ptr %i.a, align 8, !tbaa !179
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !180    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 40                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 230584300921369395)
  %i.p = select i1 %i.n, i64 230584300921369395, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = mul nuw nsw i64 %i.p, 40
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !alias.scope !591
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !329
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !180
  store ptr %i.v, ptr %i.a, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !329
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(34) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.f, ptr %i.a, align 8, !tbaa !179
  br label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !180    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 40                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 230584300921369395)
  %i.p = select i1 %i.n, i64 230584300921369395, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 40
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !alias.scope !595
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !329
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !180
  store ptr %i.v, ptr %i.a, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !329
  br label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE9push_backEOj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !167
  store i32 %i.e, ptr %i.b, align 4, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJjEEERjDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !151    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !167
  store i32 %i.t, ptr %i.s, align 4, !tbaa !167
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !151
  store ptr %i.v, ptr %i.a, align 8, !tbaa !172
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJjEEERjDpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJjEEERjDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  ret void
}

declare i64 @_ZN4Luau7CodeGen22getLiveInOutValueCountERNS0_10IrFunctionERNS0_7IrBlockEb(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 4 dereferenceable(36), i1 noundef zeroext) local_unnamed_addr #10

declare noundef ptr @_ZN4Luau7CodeGen22tryGetNextBlockInChainERNS0_10IrFunctionERNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 4 dereferenceable(36)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE15_M_range_insertIPjEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPjN9__gnu_cxx17__normal_iteratorIS0_St6vectorIjSaIjEEEEET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPjlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !171

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !172
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !167
  store i32 %i.u, ptr %i.h, align 4, !tbaa !167
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre71, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !172
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !171

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !167
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !167
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !171

bb.k:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPjN9__gnu_cxx17__normal_iteratorIS0_St6vectorIjSaIjEEEEET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPjN9__gnu_cxx17__normal_iteratorIS0_St6vectorIjSaIjEEEEET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !167
  store i32 %i.ag, ptr %1, align 4, !tbaa !167
  br label %_ZSt4copyIPjN9__gnu_cxx17__normal_iteratorIS0_St6vectorIjSaIjEEEEET0_T_S8_S7_.exit

_ZSt9__advanceIPjlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !171

bb.n:                                             ; preds = %_ZSt9__advanceIPjlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !172
  br label %_ZSt22__uninitialized_copy_aIPjS0_jET0_T_S2_S1_RSaIT1_E.exit
end_hunk_6
